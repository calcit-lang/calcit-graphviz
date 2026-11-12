
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
        'DotScalar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion DotScalar String Tag Number Bool Symbol
          :examples $ []
          :schema $ quote UnionDef
        'arrow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn arrow (from to options)
            if (empty-options? options)
              str "|  " $ str (wrap from) "| -> " $ wrap to
              str "|  " $ str-spaced (wrap from) |-> (wrap to) |[ (render-options options) |]
          :examples $ []
          :schema $ quote $ Fn String String Options (-> String) (:generics Options)
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (from to options)
            if (empty-options? options)
              str "|  " $ str (wrap from) "| -- " $ wrap to
              str "|  " $ str-spaced (wrap from) |-- (wrap to) |[ (render-options options) |]
          :examples $ []
          :schema $ quote $ Fn String String Options (-> String) (:generics Options)
        'decode-attributes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-attributes (options)
            map (map-entries options)
              fn (entry)
                assert-type
                  [] (:key entry)
                    read-scalar $ :value entry
                  Tuple Tag $ Option DotScalar
          :examples $ []
          :schema $ quote $ Fn (Map Tag V)
            -> $ List $ Tuple Tag (Option DotScalar)
            :generics V
        'digraph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn digraph (options & children)
            str &newline "|digraph {" (render-option-lines options) &newline (join-string children &newline) &newline |} &newline
          :examples $ []
          :schema $ quote $ Fn Options (& String) (-> String) (:generics Options)
        'dot-scalar-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dot-scalar-text (value)
            format-scalar $ read-scalar value
          :examples $ []
          :schema $ quote $ Fn V (-> String) (:generics V)
        'empty-options? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn empty-options? (options)
            if (map? options) (&map:empty? options)
              or (nil? options) (empty? options)
          :examples $ []
          :schema $ quote $ Fn Options (-> Bool) (:generics Options)
        'format-scalar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-scalar (value)
            match value
              (:none) |
              (:some scalar)
                match scalar
                  (String text) (to-string text)
                  (Tag tag) (to-string tag)
                  (Number number) (to-string number)
                  (Bool boolean) (to-string boolean)
                  (Symbol symbol) (to-string symbol)
          :examples $ []
          :schema $ quote $ Fn (Option DotScalar) (-> String)
        'graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn graph (options & children)
            str &newline "|graph {" (render-option-lines options) &newline (join-string children &newline) &newline |} &newline
          :examples $ []
          :schema $ quote $ Fn Options (& String) (-> String) (:generics Options)
        'node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn node (name options)
            if (empty-options? options)
              str "|  " $ wrap name
              str "|  " (wrap name) "| [ " (render-options options) "| ]"
          :examples $ []
          :schema $ quote $ Fn String Options (-> String) (:generics Options)
        'read-attributes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-attributes (raw)
            decode-attributes $ decode-map-as raw $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Raw
            -> $ List $ Tuple Tag (Option DotScalar)
            :generics Raw
        'read-scalar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-scalar (value)
            if (nil? value) None $ match (try-decode-map-as value triadica.core/DotScalar)
              (:ok scalar) (Some scalar)
              (:err _)
                raise "|DOT values must be scalar text, tags, numbers, booleans, symbols or nil"
          :examples $ []
          :schema $ quote $ Fn V
            -> $ Option DotScalar
            :generics V
        'render-attributes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-attributes (options assignment separator)
            render-decoded-attributes (decode-attributes options) assignment separator
          :examples $ []
          :schema $ quote $ Fn (Map Tag V) String String (-> String) (:generics V)
        'render-decoded-attributes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-decoded-attributes (attributes assignment separator)
            join-string
              map attributes $ fn (entry)
                let[] (key value) entry $ str (to-string key) assignment $ wrap (format-scalar value)
              , separator
          :examples $ []
          :schema $ quote $ Fn
            List $ Tuple Tag $ Option DotScalar
            , String String (-> String)
        'render-option-lines $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-option-lines (options)
            if (nil? options) | $ render-decoded-attributes (read-attributes options) "| = " &newline
          :examples $ []
          :schema $ quote $ Fn Options (-> String) (:generics Options)
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
          :code $ quote $ defn render-options (options)
            render-decoded-attributes (read-attributes options) |= "| "
          :examples $ []
          :schema $ quote $ Fn Options (-> String) (:generics Options)
          :tests $ [] $ %{} 'TestEntry (:name |formats-typed-attributes)
            :code $ quote $ do
              assert= |color=red $ render-options $ {} (:color :red)
              assert= "|label=\"two words\"" $ render-options $ {} (:label "|two words")
        'str-spaced $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn str-spaced (& children) (join-string children "| ")
          :examples $ []
          :schema $ quote $ Fn (& String) (-> String)
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
          :schema $ quote $ Ref Number
        'DemoTree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion DemoTree Number (List DemoTree)
          :examples $ []
          :schema $ quote UnionDef
        'DotTree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion DotTree triadica.core/DotScalar
            List $ Option DotTree
          :examples $ []
          :schema $ quote UnionDef
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
          :schema $ quote $ Fn (-> String) (:features :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (render-demo!)
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'make-data-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-data-tree (tree parent-id)
            match tree
              (:none) (render-leaf None)
              (:some value)
                match value
                  (List children)
                    -> children
                      map $ fn (child)
                        let
                            child-id $ match child
                              (:some next)
                                match next
                                  (String text) text
                                  _ $ gen-counter-id!
                              (:none) (gen-counter-id!)
                          str (make-data-tree child child-id) &newline
                            node parent-id $ {} (:shape :diamond) (:style :filled) (:fillcolor :cyan) (:fontcolor :darkturquoise)
                            arrow parent-id child-id $ {}
                      join-string &newline
                  (String leaf)
                    render-leaf $ Some leaf
                  (Tag leaf)
                    render-leaf $ Some leaf
                  (Number leaf)
                    render-leaf $ Some leaf
                  (Bool leaf)
                    render-leaf $ Some leaf
                  (Symbol leaf)
                    render-leaf $ Some leaf
          :examples $ []
          :schema $ quote $ Fn (Option DotTree) String (-> String) (:features :state)
        'make-tree-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-tree-demo (vec-tree) (reset! *counter 0) (; println |data vec-tree)
            digraph ({})
              node |graph $ {} (:ranksep 0.3) (:nodesep 0.25) (:splines :line)
              make-data-tree (read-tree vec-tree) (gen-counter-id!)
          :examples $ []
          :schema $ quote $ Fn T (-> String) (:generics T) (:features :state)
        'read-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-tree (raw)
            if (list? raw)
              Some $ map
                decode-map-as raw $ List Dynamic
                , read-tree
              match (triadica.core/read-scalar raw)
                (:none) None
                (:some scalar) (Some scalar)
          :examples $ []
          :schema $ quote $ Fn T
            -> $ Option DotTree
            :generics T
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (render-demo!)
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'render-demo! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-demo! ()
            loop
                acc $ range 0
                n 0
              if (< n 10)
                do
                  write-file |output/demo.dot $ make-tree-demo $ demo-tree acc
                  println n |result: $ execute! $ [] |dot |-T |svg |-K |dot |output/demo.dot |-o (str |output/demo n |.svg)
                  recur (conj acc n) (inc n)
                , &unit
            ; write-file |output/demo.dot $ make-tree-demo tree-data
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
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
        'render-leaf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-leaf (value)
            node (triadica.core/format-scalar value)
              {} (:style :filled) (:fillcolor :darkgoldenrod1)
          :examples $ []
          :schema $ quote $ Fn (Option triadica.core/DotScalar) (-> String)
        'tree-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tree-data
            decode-map-as
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
              List triadica.main/DemoTree
          :examples $ []
          :schema $ quote $ List DemoTree
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
          :schema $ quote $ Fn (-> Unit) (:features :io)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns triadica.test
          :require
            triadica.core :refer $ digraph
            triadica.$meta :refer $ calcit-dirname calcit-filename
