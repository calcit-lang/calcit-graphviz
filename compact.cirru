
{} (:package |triadica)
  :configs $ {} (:init-fn |triadica.main/main!) (:reload-fn |triadica.main/reload!) (:version |0.0.1)
    :modules $ [] |calcit.std/
  :entries $ {}
    :run-tests $ {} (:init-fn |triadica.test/run-tests) (:reload-fn |triadica.test/run-tests)
      :modules $ []
  :files $ {}
    |triadica.core $ {}
      :defs $ {}
        |arrow $ quote
          defn arrow (from to ? options)
            if (empty? options)
              str "\"  " $ str (wrap from) "\" -> " (wrap to)
              str "\"  " $ str-spaced (wrap from) "\"->" (wrap to) "\"[" (render-options options) "\"]"
        |connect $ quote
          defn connect (from to options)
            if (empty? options)
              str "\"  " $ str (wrap from) "\" -- " (wrap to)
              str "\"  " $ str-spaced (wrap from) "\"--" (wrap to) "\"[" (render-options options) "\"]"
        |digraph $ quote
          defn digraph (options & children)
            str &newline "\"digraph {" (render-option-lines options) &newline (join-str children &newline) &newline "\"}" &newline
        |graph $ quote
          defn graph (options & children)
            str &newline "\"graph {" (render-option-lines options) &newline (join-str children &newline) &newline "\"}" &newline
        |node $ quote
          defn node (name ? options)
            if (empty? options)
              str "\"  " $ wrap name
              str "\"  " (wrap name) "\" [ " (render-options options) "\" ]"
        |render-dot $ quote
          defn render-dot $
        |render-dot-file $ quote
          defn render-dot-file (name)
            &call-dylib-edn (get-dylib-path "\"/dylibs/libtriadica") "\"render_dot_file" name
        |render-option-lines $ quote
          defn render-option-lines (options)
            if (empty? options) "\"" $ -> options (.to-list)
              map $ fn (pair)
                str (first pair) "\" = " $ last pair
              .join-str &newline
        |render-options $ quote
          defn render-options (o)
            -> o (.to-list)
              map $ fn (entry)
                str
                  turn-string $ first entry
                  , "\"=" $ wrap
                    turn-string $ last entry
              .join-str "\" "
        |str-spaced $ quote
          defn str-spaced (& children) (join-str children "\" ")
        |wrap $ quote
          defn wrap (x)
            if (includes? x "\" ") (str "\"\"" x "\"\"") x
      :ns $ quote
        ns triadica.core $ :require
          triadica.$meta :refer $ calcit-dirname
          triadica.util :refer $ get-dylib-path
    |triadica.main $ {}
      :defs $ {}
        |*counter $ quote (defatom *counter 0)
        |concat-them $ quote
          defn concat-them (children) (concat & children)
        |gen-counter-id! $ quote
          defn gen-counter-id! ()
            reset! *counter $ inc @*counter
            str "\"p" @*counter
        |main! $ quote
          defn main! () $ render-demo!
        |make-data-tree $ quote
          defn make-data-tree (tree parent-id)
            if (list? tree)
              -> tree
                map $ fn (child)
                  let
                      child-id $ if (string? child) (turn-string child) (gen-counter-id!)
                    wo-log $ str (make-data-tree child child-id) &newline
                      node parent-id $ {} (:shape :diamond) (:style :filled) (:fillcolor :cyan) (:fontcolor :darkturquoise)
                      arrow parent-id child-id $ {}
                .join-str &newline
              node (turn-string tree)
                {} (:style :filled) (:fillcolor :darkgoldenrod1)
        |make-tree-demo $ quote
          defn make-tree-demo (vec-tree) (reset! *counter 0) (; println "\"data" vec-tree)
            wo-log $ digraph ({})
              node "\"graph" $ {} (:ranksep 0.3) (:nodesep 0.25) (:splines :line)
              make-data-tree vec-tree $ gen-counter-id!
        |reload! $ quote
          defn reload! () $ render-demo!
        |render-demo! $ quote
          defn render-demo! ()
            ; write-file "\"output/demo.dot" $ w-log
              digraph nil (node "\"A")
                node "\"B" $ {} (:color :red) (:shape :diamond)
                node "\"C" $ {} (:style :filled) (:fillcolor :red) (:fontcolor :white) (:color :none)
                arrow "\"A" "\"B" $ {} (:arrowhead :inv)
                arrow "\"A" "\"C" $ {}
                arrow "\"A" "\"E" $ {}
            apply-args
                []
                , 0
              fn (acc n)
                if (< n 10)
                  do
                    ; println $ parse-cirru-list (&format-ternary-tree acc)
                    write-file "\"output/demo.dot" $ make-tree-demo
                      wo-log $ first
                        parse-cirru-list $ &format-ternary-tree acc
                    println n "\"result:" $ execute!
                      [] "\"dot" "\"-T" "\"svg" "\"-K" "\"dot" "\"output/demo.dot" "\"-o" $ str "\"output/demo" n "\".svg"
                    recur (conj acc n) (inc n)
                  , nil
            ; write-file "\"output/demo.dot" $ make-tree-demo tree-data
        |tree-data $ quote
          def tree-data $ quote
              0 1 2
              ((3 4 5) (6 7 8) (9 10 11))
                (((12 13 14) (15 16 17) (18 19 20)) ((21 22 23) (24 25 26) (27 28 29)) ((30 31 32) (33 34 35) (36 37 38)))
                  ((39 40 41) (42 43 44) (45 46 47))
                    (48 49 50) (51 52 53) (54 55 56)
                    (57 58 59) (60 61 62) (63 64 65)
                  (66 67 68) (69 70 71) (72 73 74)
                75 76 77
              78 79
      :ns $ quote
        ns triadica.main $ :require
          triadica.core :refer $ digraph node arrow connect
          calcit.std.process :refer $ execute!
    |triadica.test $ {}
      :defs $ {}
        |run-tests $ quote
          defn run-tests () (println "\"%%%% test for lib") (println calcit-filename calcit-dirname)
            println $ render-dot-file
              {} $ :type :graph
      :ns $ quote
        ns triadica.test $ :require
          triadica.core :refer $ render-dot-file
          triadica.$meta :refer $ calcit-dirname calcit-filename
    |triadica.util $ {}
      :defs $ {}
        |get-dylib-ext $ quote
          defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ quote
          defn get-dylib-path (p)
            str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ quote
          defn or-current-path (p)
            if (blank? p) "\"." p
      :ns $ quote
        ns triadica.util $ :require
          triadica.$meta :refer $ calcit-dirname calcit-filename
