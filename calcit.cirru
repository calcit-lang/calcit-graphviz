
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |triadica)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'triadica.main/main!) (:mode :native) (:reload-fn 'triadica.main/reload!)
      :feature-policy $ {}
      :modules $ [] |calcit.std/
      :type-slots $ {}
    :run-tests $ {} (:description |) (:init-fn 'triadica.test/run-tests) (:mode :native) (:reload-fn 'triadica.test/run-tests)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    |triadica.core $ %{} 'FileEntry
      :defs $ {}
        |arrow $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn arrow (from to ? options)
              if (empty? options)
                str "|  " $ str (wrap from) "| -> " (wrap to)
                str "|  " $ str-spaced (wrap from) |-> (wrap to) |[ (render-options options) |]
          :examples $ []
          :schema $ :: 'Dynamic
        |connect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect (from to options)
              if (empty? options)
                str "|  " $ str (wrap from) "| -- " (wrap to)
                str "|  " $ str-spaced (wrap from) |-- (wrap to) |[ (render-options options) |]
          :examples $ []
          :schema $ :: 'Dynamic
        |digraph $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn digraph (options & children)
              str &newline "|digraph {" (render-option-lines options) &newline (join-str children &newline) &newline |} &newline
          :examples $ []
          :schema $ :: 'Dynamic
        |graph $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn graph (options & children)
              str &newline "|graph {" (render-option-lines options) &newline (join-str children &newline) &newline |} &newline
          :examples $ []
          :schema $ :: 'Dynamic
        |node $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn node (name ? options)
              if (empty? options)
                str "|  " $ wrap name
                str "|  " (wrap name) "| [ " (render-options options) "| ]"
          :examples $ []
          :schema $ :: 'Dynamic
        |render-dot $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-dot $
          :examples $ []
          :schema $ :: 'Dynamic
        |render-dot-file $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-dot-file (name)
              &call-dylib-edn (get-dylib-path |/dylibs/libtriadica) |render_dot_file name
          :examples $ []
          :schema $ :: 'Dynamic
        |render-option-lines $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-option-lines (options)
              if (empty? options) | $ -> options (.to-list)
                map $ fn (pair)
                  str (first pair) "| = " $ last pair
                .join-str &newline
          :examples $ []
          :schema $ :: 'Dynamic
        |render-options $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-options (o)
              -> o (.to-list)
                map $ fn (entry)
                  str
                    turn-string $ first entry
                    , |= $ wrap
                      turn-string $ last entry
                .join-str "| "
          :examples $ []
          :schema $ :: 'Dynamic
        |str-spaced $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn str-spaced (& children) (join-str children "| ")
          :examples $ []
          :schema $ :: 'Dynamic
        |wrap $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn wrap (x)
              if (includes? x "| ") (str "|\"" x "|\"") x
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns triadica.core $ :require
            triadica.$meta :refer $ calcit-dirname
            triadica.util :refer $ get-dylib-path
    |triadica.main $ %{} 'FileEntry
      :defs $ {}
        |*counter $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *counter 0)
          :examples $ []
          :schema $ :: 'Dynamic
        |concat-them $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn concat-them (children) (concat & children)
          :examples $ []
          :schema $ :: 'Dynamic
        |gen-counter-id! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn gen-counter-id! ()
              reset! *counter $ inc @*counter
              str |p @*counter
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ render-demo!
          :examples $ []
          :schema $ :: 'Dynamic
        |make-data-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote
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
          :examples $ []
          :schema $ :: 'Dynamic
        |make-tree-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn make-tree-demo (vec-tree) (reset! *counter 0) (; println |data vec-tree)
              wo-log $ digraph ({})
                node |graph $ {} (:ranksep 0.3) (:nodesep 0.25) (:splines :line)
                make-data-tree vec-tree $ gen-counter-id!
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ render-demo!
          :examples $ []
          :schema $ :: 'Dynamic
        |render-demo! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-demo! ()
              ; write-file |output/demo.dot $ w-log
                digraph nil (node |A)
                  node |B $ {} (:color :red) (:shape :diamond)
                  node |C $ {} (:style :filled) (:fillcolor :red) (:fontcolor :white) (:color :none)
                  arrow |A |B $ {} (:arrowhead :inv)
                  arrow |A |C $ {}
                  arrow |A |E $ {}
              apply-args
                  []
                  , 0
                fn (acc n)
                  if (< n 10)
                    do
                      ; println $ parse-cirru-list (&format-ternary-tree acc)
                      write-file |output/demo.dot $ make-tree-demo
                        wo-log $ first
                          parse-cirru-list $ &format-ternary-tree acc
                      println n |result: $ execute!
                        [] |dot |-T |svg |-K |dot |output/demo.dot |-o $ str |output/demo n |.svg
                      recur (conj acc n) (inc n)
                    , nil
              ; write-file |output/demo.dot $ make-tree-demo tree-data
          :examples $ []
          :schema $ :: 'Dynamic
        |tree-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
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
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns triadica.main $ :require
            triadica.core :refer $ digraph node arrow connect
            calcit.std.process :refer $ execute!
    |triadica.test $ %{} 'FileEntry
      :defs $ {}
        |run-tests $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (println "|%%%% test for lib") (println calcit-filename calcit-dirname)
              println $ render-dot-file
                {} $ :type :graph
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns triadica.test $ :require
            triadica.core :refer $ render-dot-file
            triadica.$meta :refer $ calcit-dirname calcit-filename
    |triadica.util $ %{} 'FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) |.so (:macos |.dylib) (:windows |.dll)
          :examples $ []
          :schema $ :: 'Dynamic
        |get-dylib-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-dylib-path (p)
              str (or-current-path calcit-dirname) p $ get-dylib-ext
          :examples $ []
          :schema $ :: 'Dynamic
        |or-current-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) |. p
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns triadica.util $ :require
            triadica.$meta :refer $ calcit-dirname calcit-filename
