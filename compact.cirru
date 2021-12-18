
{} (:package |triadica)
  :configs $ {} (:init-fn |triadica.main/main!) (:reload-fn |triadica.main/reload!)
    :modules $ [] |calcit.std/
    :version |0.0.1
  :entries $ {}
    :run-tests $ {} (:init-fn |triadica.test/run-tests) (:reload-fn |triadica.test/run-tests)
      :modules $ []
  :files $ {}
    |triadica.core $ {}
      :ns $ quote
        ns triadica.core $ :require
          triadica.$meta :refer $ calcit-dirname
          triadica.util :refer $ get-dylib-path
      :defs $ {}
        |digraph $ quote
          defn digraph (options & children)
            str &newline "\"digraph {" (render-option-lines options) &newline (join-str children &newline) &newline "\"}" &newline
        |edge $ quote
          defn edge (from to ? options)
            if (empty? options)
              str "\"  " $ str (wrap from) "\" -> " (wrap to)
              str "\"  " $ str-spaced (wrap from) "\"->" (wrap to) "\"[" (render-options options) "\"]"
        |node $ quote
          defn node (name ? options)
            if (empty? options)
              str "\"  " $ wrap name
              str "\"  " (wrap name) "\" [ " (render-options options) "\" ]"
        |wrap $ quote
          defn wrap (x)
            if (includes? x "\" ") (str "\"\"" x "\"\"") x
        |render-option-lines $ quote
          defn render-option-lines (options)
            if (empty? options) "\"" $ -> options (.to-list)
              map $ fn (pair)
                str (first pair) "\" = " $ last pair
              .join-str &newline
        |str-spaced $ quote
          defn str-spaced (& children) (join-str children "\" ")
        |render-dot $ quote
          defn render-dot $
        |render-options $ quote
          defn render-options (o)
            -> o (.to-list)
              map $ fn (entry)
                str
                  turn-string $ first entry
                  , "\"=" $ wrap
                    turn-string $ last entry
              .join-str "\" "
        |render-dot-file $ quote
          defn render-dot-file (name)
            &call-dylib-edn (get-dylib-path "\"/dylibs/libtriadica") "\"render_dot_file" name
    |triadica.test $ {}
      :ns $ quote
        ns triadica.test $ :require
          triadica.core :refer $ render-dot-file
          triadica.$meta :refer $ calcit-dirname calcit-filename
      :defs $ {}
        |run-tests $ quote
          defn run-tests () (println "\"%%%% test for lib") (println calcit-filename calcit-dirname)
            println $ render-dot-file
              {} $ :type :graph
    |triadica.util $ {}
      :ns $ quote
        ns triadica.util $ :require
          triadica.$meta :refer $ calcit-dirname calcit-filename
      :defs $ {}
        |get-dylib-ext $ quote
          defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ quote
          defn get-dylib-path (p)
            str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ quote
          defn or-current-path (p)
            if (blank? p) "\"." p
    |triadica.main $ {}
      :ns $ quote
        ns triadica.main $ :require
          triadica.core :refer $ digraph node edge
          calcit.std.process :refer $ execute!
      :defs $ {}
        |main! $ quote
          defn main! () $ render-demo!
        |reload! $ quote
          defn reload! () $ render-demo!
        |render-demo! $ quote
          defn render-demo! ()
            write-file "\"output/demo.dot" $ w-log
              digraph nil (node "\"A")
                node "\"B" $ {} (:color :red) (:shape :diamond)
                node "\"C" $ {} (:style :filled) (:fillcolor :red) (:fontcolor :white) (:color :none)
                edge "\"A" "\"B" $ {} (:arrowhead :inv)
                edge "\"A" "\"C" $ {}
                edge "\"A" "\"E" $ {}
            println $ execute! ([] "\"dot" "\"-T" "\"svg" "\"output/demo.dot" "\"-o" "\"output/demo.svg")
