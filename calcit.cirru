
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |triadica
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'triadica.main/main!) (:mode :native) (:reload-fn 'triadica.main/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |calcit.std/
      :type-slots $ {}
    :run-tests $ {} (:description |) (:init-fn 'triadica.test/run-tests) (:mode :native) (:reload-fn 'triadica.test/run-tests) (:target :native)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'triadica.core $ %{} 'FileEntry
      :defs $ {}
        'arrow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn arrow (from to options)
            if
              or (nil? options) (empty? options)
              str "|  " $ str (wrap from) "| -> " $ wrap to
              str "|  " $ str-spaced (wrap from) |-> (wrap to) |[ (render-options options) |]
          :examples $ []
          :schema $ quote $ Fn String String Dynamic (-> String)
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (from to options)
            if
              or (nil? options) (empty? options)
              str "|  " $ str (wrap from) "| -- " $ wrap to
              str "|  " $ str-spaced (wrap from) |-- (wrap to) |[ (render-options options) |]
          :examples $ []
          :schema $ quote $ Fn String String Dynamic (-> String)
        'digraph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn digraph (options & children)
            str &newline "|digraph {" (render-option-lines options) &newline (join-string children &newline) &newline |} &newline
          :examples $ []
          :schema $ quote $ Fn Dynamic & String (-> String)
        'dot-scalar-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dot-scalar-text (value)
            cond
                string? value
                to-string value
              (tag? value) (to-string value)
              (number? value) (to-string value)
              (bool? value) (to-string value)
              (symbol? value) (to-string value)
              (nil? value) (to-string value)
              true $ raise "|DOT values must be scalar text, tags, numbers, booleans, symbols or nil"
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
        'graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn graph (options & children)
            str &newline "|graph {" (render-option-lines options) &newline (join-string children &newline) &newline |} &newline
          :examples $ []
          :schema $ quote $ Fn Dynamic & String (-> String)
        'node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn node (name options)
            if
              or (nil? options) (empty? options)
              str "|  " $ wrap name
              str "|  " (wrap name) "| [ " (render-options options) "| ]"
          :examples $ []
          :schema $ quote $ Fn String Dynamic (-> String)
        'render-option-lines $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-option-lines (options)
            if (nil? options) | $ join-string
              map
                map-entries $ decode-map-as options $ :: 'Map 'Tag 'Dynamic
                fn (entry)
                  str
                    to-string $ :key entry
                    , "| = " $ wrap $ dot-scalar-text (:value entry)
              , &newline
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |graph-attribute-scalars)
            :code $ quote $ do
              assert= "|rankdir = LR" $ render-option-lines $ {} (:rankdir :LR)
              assert= "|label = \"two words\"" $ render-option-lines $ {} (:label "|two words")
              assert= | $ render-option-lines nil
              assert= | $ render-option-lines $ {}
              assert= true $ try
                do
                  render-option-lines $ {} $ :label ([] 1)
                  , false
                fn (error) true
        'render-options $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-options (o)
            join-string
              map
                map-entries $ decode-map-as o $ :: 'Map 'Tag 'Dynamic
                fn (entry)
                  str
                    to-string $ :key entry
                    , |= $ wrap $ dot-scalar-text (:value entry)
              , "| "
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |formats-typed-attributes)
            :code $ quote $ do
              assert= |color=red $ render-options $ {} (:color :red)
              assert= "|label=\"two words\"" $ render-options $ {} (:label "|two words")
        'str-spaced $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn str-spaced (& children) (join-string children "| ")
          :examples $ []
          :schema $ quote $ Fn & String (-> String)
        'wrap $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn wrap (x)
            if (includes? x "| ") (str "|\"" x "|\"") x
          :examples $ []
          :schema $ quote $ Fn String (-> String)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns triadica.core
    'triadica.main $ %{} 'FileEntry
      :defs $ {}
        '*counter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *counter 0
          :examples $ []
          :schema $ quote Dynamic
        'demo-tree $ %{} 'CodeEntry
          :doc "|Explicit ordered teaching tree: group numeric leaves in threes. Demo data only, not Calcit List storage layout."
          :code $ quote $ defn demo-tree (values)
            .map
              range 0 (.len values) 3
              fn (start)
                .map
                  .take (.drop values start) 3
                  fn (value) (str value)
          :examples $ []
          :schema $ quote $ Fn (List Number)
            -> $ List $ List String
        'gen-counter-id! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn gen-counter-id! ()
            reset! *counter $ inc @*counter
            str |p @*counter
          :examples $ []
          :schema $ quote $ Fn (-> String)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (render-demo!)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'make-data-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-data-tree (tree parent-id)
            if (list? tree)
              -> tree
                map $ fn (child)
                  let
                      child-id $ if (string? child) (to-string child) (gen-counter-id!)
                    str (make-data-tree child child-id) &newline
                      node parent-id $ {} (:shape :diamond) (:style :filled) (:fillcolor :cyan) (:fontcolor :darkturquoise)
                      arrow parent-id child-id $ {}
                join-string &newline
              node (triadica.core/dot-scalar-text tree)
                {} (:style :filled) (:fillcolor :darkgoldenrod1)
          :examples $ []
          :schema $ quote $ Fn Dynamic String (-> String)
        'make-tree-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-tree-demo (vec-tree) (reset! *counter 0) (; println |data vec-tree)
            digraph ({})
              node |graph $ {} (:ranksep 0.3) (:nodesep 0.25) (:splines :line)
              make-data-tree vec-tree $ gen-counter-id!
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (render-demo!)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-demo! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-demo! ()
            ; write-file |output/demo.dot $ w-log $ digraph nil (node |A)
              node |B $ {} (:color :red) (:shape :diamond)
              node |C $ {} (:style :filled) (:fillcolor :red) (:fontcolor :white) (:color :none)
              arrow |A |B $ {} $ :arrowhead :inv
              arrow |A |C $ {}
              arrow |A |E $ {}
            loop
                acc $ range 0
                n 0
              if (< n 10)
                do
                  write-file |output/demo.dot $ make-tree-demo $ demo-tree acc
                  println n |result: $ execute! $ [] |dot |-T |svg |-K |dot |output/demo.dot |-o (str |output/demo n |.svg)
                  recur (conj acc n) (inc n)
                , nil
            ; write-file |output/demo.dot $ make-tree-demo tree-data
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
          :tests $ [] $ %{} 'TestEntry (:name |formats-list-accumulator)
            :code $ quote $ do
              assert= ([])
                demo-tree $ range 0
              assert=
                [] $ [] |0
                demo-tree $ range 1
              assert=
                [] ([] |0 |1 |2) ([] |3)
                demo-tree $ range 4
              assert=
                [] ([] |0 |1 |2) ([] |3 |4 |5) ([] |6 |7 |8)
                demo-tree $ range 9
        'tree-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tree-data
            quote $
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
          :schema $ quote Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns triadica.main
          :require
            triadica.core :refer $ digraph node arrow connect
            calcit.std.process :refer $ execute!
    'triadica.test $ %{} 'FileEntry
      :defs $ {} $ 'run-tests
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-tests () (println "|%%%% test for lib") (println calcit-filename calcit-dirname)
            println $ digraph $ {} (:type :graph)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns triadica.test
          :require
            triadica.core :refer $ digraph
            triadica.$meta :refer $ calcit-dirname calcit-filename
