
{}
  :configs $ {} (:init-fn |triadica.main/main!) (:port 6001) (:reload-fn |triadica.main/reload!) (:version |0.0.1)
    :modules $ [] |calcit.std/
  :entries $ {}
    :run-tests $ {} (:init-fn |triadica.test/run-tests) (:reload-fn |triadica.test/run-tests)
      :modules $ []
  :ir $ {} (:package |triadica)
    :files $ {}
      |triadica.core $ {}
        :configs $ {}
        :defs $ {}
          |arrow $ {} (:at 1639849056831) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849056831) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639931034354) (:by |u0) (:text |arrow) (:type :leaf)
              |r $ {} (:at 1639849056831) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849745967) (:by |u0) (:text |from) (:type :leaf)
                  |j $ {} (:at 1639849747379) (:by |u0) (:text |to) (:type :leaf)
                  |n $ {} (:at 1639849749083) (:by |u0) (:text |?) (:type :leaf)
                  |r $ {} (:at 1639849748499) (:by |u0) (:text |options) (:type :leaf)
              |v $ {} (:at 1639850452904) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1639850453419) (:by |u0) (:text |if) (:type :leaf)
                  |L $ {} (:at 1639850453709) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639850455132) (:by |u0) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1639850456551) (:by |u0) (:text |options) (:type :leaf)
                  |P $ {} (:at 1639850470991) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1639850471871) (:by |u0) (:text |str) (:type :leaf)
                      |L $ {} (:at 1639850473322) (:by |u0) (:text "|\"  ") (:type :leaf)
                      |T $ {} (:at 1639850457355) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639850458342) (:by |u0) (:text |str) (:type :leaf)
                          |j $ {} (:at 1639851212398) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1639851213916) (:by |u0) (:text |wrap) (:type :leaf)
                              |T $ {} (:at 1639851215395) (:by |u0) (:text |from) (:type :leaf)
                          |n $ {} (:at 1639850470086) (:by |u0) (:text "|\" -> ") (:type :leaf)
                          |r $ {} (:at 1639851216446) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1639851216980) (:by |u0) (:text |wrap) (:type :leaf)
                              |T $ {} (:at 1639850465800) (:by |u0) (:text |to) (:type :leaf)
                  |T $ {} (:at 1639849848063) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1639849848824) (:by |u0) (:text |str) (:type :leaf)
                      |L $ {} (:at 1639849864954) (:by |u0) (:text "|\"  ") (:type :leaf)
                      |T $ {} (:at 1639849750795) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639849841127) (:by |u0) (:text |str-spaced) (:type :leaf)
                          |r $ {} (:at 1639851218017) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1639851218605) (:by |u0) (:text |wrap) (:type :leaf)
                              |T $ {} (:at 1639849758379) (:by |u0) (:text |from) (:type :leaf)
                          |v $ {} (:at 1639849853376) (:by |u0) (:text "|\"->") (:type :leaf)
                          |x $ {} (:at 1639851219935) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1639851220738) (:by |u0) (:text |wrap) (:type :leaf)
                              |T $ {} (:at 1639849763518) (:by |u0) (:text |to) (:type :leaf)
                          |y $ {} (:at 1639849855162) (:by |u0) (:text "|\"[") (:type :leaf)
                          |yD $ {} (:at 1639849775685) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639849777297) (:by |u0) (:text |render-options) (:type :leaf)
                              |j $ {} (:at 1639849780261) (:by |u0) (:text |options) (:type :leaf)
                          |yT $ {} (:at 1639849774056) (:by |u0) (:text "|\"]") (:type :leaf)
          |connect $ {} (:at 1639931142987) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639931142987) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639931168580) (:by |u0) (:text |connect) (:type :leaf)
              |r $ {} (:at 1639931142987) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931144645) (:by |u0) (:text |from) (:type :leaf)
                  |j $ {} (:at 1639931146730) (:by |u0) (:text |to) (:type :leaf)
                  |r $ {} (:at 1639931147729) (:by |u0) (:text |options) (:type :leaf)
              |v $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931148590) (:by |u0) (:text |if) (:type :leaf)
                  |j $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931148590) (:by |u0) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1639931148590) (:by |u0) (:text |options) (:type :leaf)
                  |r $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931148590) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1639931148590) (:by |u0) (:text "|\"  ") (:type :leaf)
                      |r $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639931148590) (:by |u0) (:text |str) (:type :leaf)
                          |j $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931148590) (:by |u0) (:text |wrap) (:type :leaf)
                              |j $ {} (:at 1639931148590) (:by |u0) (:text |from) (:type :leaf)
                          |r $ {} (:at 1639931150899) (:by |u0) (:text "|\" -- ") (:type :leaf)
                          |v $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931148590) (:by |u0) (:text |wrap) (:type :leaf)
                              |j $ {} (:at 1639931148590) (:by |u0) (:text |to) (:type :leaf)
                  |v $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931148590) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1639931148590) (:by |u0) (:text "|\"  ") (:type :leaf)
                      |r $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639931148590) (:by |u0) (:text |str-spaced) (:type :leaf)
                          |j $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931148590) (:by |u0) (:text |wrap) (:type :leaf)
                              |j $ {} (:at 1639931148590) (:by |u0) (:text |from) (:type :leaf)
                          |r $ {} (:at 1639931152743) (:by |u0) (:text "|\"--") (:type :leaf)
                          |v $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931148590) (:by |u0) (:text |wrap) (:type :leaf)
                              |j $ {} (:at 1639931148590) (:by |u0) (:text |to) (:type :leaf)
                          |x $ {} (:at 1639931148590) (:by |u0) (:text "|\"[") (:type :leaf)
                          |y $ {} (:at 1639931148590) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931148590) (:by |u0) (:text |render-options) (:type :leaf)
                              |j $ {} (:at 1639931148590) (:by |u0) (:text |options) (:type :leaf)
                          |yT $ {} (:at 1639931148590) (:by |u0) (:text "|\"]") (:type :leaf)
          |digraph $ {} (:at 1639849067899) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849067899) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639850305296) (:by |u0) (:text |digraph) (:type :leaf)
              |r $ {} (:at 1639849067899) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849385784) (:by |u0) (:text |options) (:type :leaf)
                  |j $ {} (:at 1639849386797) (:by |u0) (:text |&) (:type :leaf)
                  |r $ {} (:at 1639849388963) (:by |u0) (:text |children) (:type :leaf)
              |v $ {} (:at 1639849402350) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1639849403370) (:by |u0) (:text |str) (:type :leaf)
                  |H $ {} (:at 1639850537563) (:by |u0) (:text |&newline) (:type :leaf)
                  |L $ {} (:at 1639850535160) (:by |u0) (:text "|\"digraph {") (:type :leaf)
                  |T $ {} (:at 1639849390823) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639849637984) (:by |u0) (:text |render-option-lines) (:type :leaf)
                      |j $ {} (:at 1639849399459) (:by |u0) (:text |options) (:type :leaf)
                  |f $ {} (:at 1639849558110) (:by |u0) (:text |&newline) (:type :leaf)
                  |r $ {} (:at 1639849407193) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639849417997) (:by |u0) (:text |join-str) (:type :leaf)
                      |j $ {} (:at 1639849421952) (:by |u0) (:text |children) (:type :leaf)
                      |r $ {} (:at 1639849709882) (:by |u0) (:text |&newline) (:type :leaf)
                  |v $ {} (:at 1639849469233) (:by |u0) (:text |&newline) (:type :leaf)
                  |x $ {} (:at 1639849474710) (:by |u0) (:text "|\"}") (:type :leaf)
                  |y $ {} (:at 1639849478594) (:by |u0) (:text |&newline) (:type :leaf)
          |graph $ {} (:at 1639931379739) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639931379739) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639931381237) (:by |u0) (:text |graph) (:type :leaf)
              |r $ {} (:at 1639931379739) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931379739) (:by |u0) (:text |options) (:type :leaf)
                  |j $ {} (:at 1639931379739) (:by |u0) (:text |&) (:type :leaf)
                  |r $ {} (:at 1639931379739) (:by |u0) (:text |children) (:type :leaf)
              |v $ {} (:at 1639931379739) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931379739) (:by |u0) (:text |str) (:type :leaf)
                  |j $ {} (:at 1639931379739) (:by |u0) (:text |&newline) (:type :leaf)
                  |r $ {} (:at 1639931383797) (:by |u0) (:text "|\"graph {") (:type :leaf)
                  |v $ {} (:at 1639931379739) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931379739) (:by |u0) (:text |render-option-lines) (:type :leaf)
                      |j $ {} (:at 1639931379739) (:by |u0) (:text |options) (:type :leaf)
                  |x $ {} (:at 1639931379739) (:by |u0) (:text |&newline) (:type :leaf)
                  |y $ {} (:at 1639931379739) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931379739) (:by |u0) (:text |join-str) (:type :leaf)
                      |j $ {} (:at 1639931379739) (:by |u0) (:text |children) (:type :leaf)
                      |r $ {} (:at 1639931379739) (:by |u0) (:text |&newline) (:type :leaf)
                  |yT $ {} (:at 1639931379739) (:by |u0) (:text |&newline) (:type :leaf)
                  |yj $ {} (:at 1639931379739) (:by |u0) (:text "|\"}") (:type :leaf)
                  |yr $ {} (:at 1639931379739) (:by |u0) (:text |&newline) (:type :leaf)
          |node $ {} (:at 1639849053598) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849053598) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849053598) (:by |u0) (:text |node) (:type :leaf)
              |r $ {} (:at 1639849053598) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849596138) (:by |u0) (:text |name) (:type :leaf)
                  |b $ {} (:at 1639849687718) (:by |u0) (:text |?) (:type :leaf)
                  |j $ {} (:at 1639849598213) (:by |u0) (:text |options) (:type :leaf)
              |v $ {} (:at 1639850434519) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1639850435241) (:by |u0) (:text |if) (:type :leaf)
                  |L $ {} (:at 1639850435491) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639850438088) (:by |u0) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1639850440408) (:by |u0) (:text |options) (:type :leaf)
                  |P $ {} (:at 1639850442486) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639850443117) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1639850446633) (:by |u0) (:text "|\"  ") (:type :leaf)
                      |r $ {} (:at 1639851348861) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1639851352978) (:by |u0) (:text |wrap) (:type :leaf)
                          |T $ {} (:at 1639850448331) (:by |u0) (:text |name) (:type :leaf)
                  |T $ {} (:at 1639849598911) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639849602388) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1639849605703) (:by |u0) (:text "|\"  ") (:type :leaf)
                      |r $ {} (:at 1639851354173) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1639851355070) (:by |u0) (:text |wrap) (:type :leaf)
                          |T $ {} (:at 1639849607065) (:by |u0) (:text |name) (:type :leaf)
                      |v $ {} (:at 1639849620139) (:by |u0) (:text "|\" [ ") (:type :leaf)
                      |w $ {} (:at 1639849621603) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639849623232) (:by |u0) (:text |render-options) (:type :leaf)
                          |j $ {} (:at 1639849624406) (:by |u0) (:text |options) (:type :leaf)
                      |x $ {} (:at 1639849618516) (:by |u0) (:text "|\" ]") (:type :leaf)
          |render-dot $ {} (:at 1639849050913) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849050913) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849050913) (:by |u0) (:text |render-dot) (:type :leaf)
              |r $ {} (:at 1639849050913) (:by |u0) (:type :expr)
                :data $ {}
          |render-dot-file $ {} (:at 1630219258753) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1630219258753) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639848965402) (:by |u0) (:text |render-dot-file) (:type :leaf)
              |r $ {} (:at 1630219268038) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1630219268038) (:by |u0) (:text |name) (:type :leaf)
              |v $ {} (:at 1630219268038) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1633253263271) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |b $ {} (:at 1634804189975) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634804196083) (:by |u0) (:text |get-dylib-path) (:type :leaf)
                      |j $ {} (:at 1639848755364) (:by |u0) (:text "|\"/dylibs/libtriadica") (:type :leaf)
                  |r $ {} (:at 1639848839962) (:by |u0) (:text "|\"render_dot_file") (:type :leaf)
                  |v $ {} (:at 1630219268038) (:by |u0) (:text |name) (:type :leaf)
          |render-option-lines $ {} (:at 1639849638882) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849638882) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849638882) (:by |u0) (:text |render-option-lines) (:type :leaf)
              |r $ {} (:at 1639849638882) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849638882) (:by |u0) (:text |options) (:type :leaf)
              |v $ {} (:at 1639850513121) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1639850513738) (:by |u0) (:text |if) (:type :leaf)
                  |L $ {} (:at 1639850513976) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639850516152) (:by |u0) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1639850517958) (:by |u0) (:text |options) (:type :leaf)
                  |P $ {} (:at 1639850518843) (:by |u0) (:text "|\"") (:type :leaf)
                  |T $ {} (:at 1639849647243) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639849901939) (:by |u0) (:text |->) (:type :leaf)
                      |j $ {} (:at 1639849904339) (:by |u0) (:text |options) (:type :leaf)
                      |r $ {} (:at 1639849908960) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639849908346) (:by |u0) (:text |.to-list) (:type :leaf)
                      |v $ {} (:at 1639849911630) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639849912387) (:by |u0) (:text |map) (:type :leaf)
                          |j $ {} (:at 1639849912838) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639849913113) (:by |u0) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1639849913433) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639849922200) (:by |u0) (:text |pair) (:type :leaf)
                              |r $ {} (:at 1639849923560) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639849924225) (:by |u0) (:text |str) (:type :leaf)
                                  |j $ {} (:at 1639849925515) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639849930615) (:by |u0) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1639849931884) (:by |u0) (:text |pair) (:type :leaf)
                                  |r $ {} (:at 1639849936845) (:by |u0) (:text "|\" = ") (:type :leaf)
                                  |v $ {} (:at 1639849938109) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639849939702) (:by |u0) (:text |last) (:type :leaf)
                                      |j $ {} (:at 1639849940589) (:by |u0) (:text |pair) (:type :leaf)
                      |x $ {} (:at 1639849943935) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639849947640) (:by |u0) (:text |.join-str) (:type :leaf)
                          |j $ {} (:at 1639849951127) (:by |u0) (:text |&newline) (:type :leaf)
          |render-options $ {} (:at 1639849427139) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849428528) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849427139) (:by |u0) (:text |render-options) (:type :leaf)
              |r $ {} (:at 1639849427139) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849431800) (:by |u0) (:text |o) (:type :leaf)
              |v $ {} (:at 1639849432631) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849976576) (:by |u0) (:text |->) (:type :leaf)
                  |j $ {} (:at 1639849977390) (:by |u0) (:text |o) (:type :leaf)
                  |r $ {} (:at 1639849978184) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639849979322) (:by |u0) (:text |.to-list) (:type :leaf)
                  |v $ {} (:at 1639849979823) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639849983034) (:by |u0) (:text |map) (:type :leaf)
                      |j $ {} (:at 1639849986621) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639849983789) (:by |u0) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1639849987063) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639849991005) (:by |u0) (:text |entry) (:type :leaf)
                          |r $ {} (:at 1639849991579) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639849992931) (:by |u0) (:text |str) (:type :leaf)
                              |j $ {} (:at 1639850024978) (:by |u0) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1639850026972) (:by |u0) (:text |turn-string) (:type :leaf)
                                  |T $ {} (:at 1639849993896) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639849994604) (:by |u0) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1639849996239) (:by |u0) (:text |entry) (:type :leaf)
                              |r $ {} (:at 1639850005377) (:by |u0) (:text "|\"=") (:type :leaf)
                              |v $ {} (:at 1639851225439) (:by |u0) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1639851226115) (:by |u0) (:text |wrap) (:type :leaf)
                                  |T $ {} (:at 1639850030730) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1639850031485) (:by |u0) (:text |turn-string) (:type :leaf)
                                      |T $ {} (:at 1639850006755) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639850007882) (:by |u0) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1639850009434) (:by |u0) (:text |entry) (:type :leaf)
                  |x $ {} (:at 1639850010841) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639850093917) (:by |u0) (:text |.join-str) (:type :leaf)
                      |j $ {} (:at 1639850014773) (:by |u0) (:text "|\" ") (:type :leaf)
          |str-spaced $ {} (:at 1639849815704) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849822792) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849820852) (:by |u0) (:text |str-spaced) (:type :leaf)
              |r $ {} (:at 1639849815704) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849824006) (:by |u0) (:text |&) (:type :leaf)
                  |j $ {} (:at 1639849825147) (:by |u0) (:text |children) (:type :leaf)
              |v $ {} (:at 1639849825704) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849827514) (:by |u0) (:text |join-str) (:type :leaf)
                  |j $ {} (:at 1639849834389) (:by |u0) (:text |children) (:type :leaf)
                  |r $ {} (:at 1639849837219) (:by |u0) (:text "|\" ") (:type :leaf)
          |wrap $ {} (:at 1639851229255) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639851231155) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639851229255) (:by |u0) (:text |wrap) (:type :leaf)
              |r $ {} (:at 1639851229255) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639851232478) (:by |u0) (:text |x) (:type :leaf)
              |v $ {} (:at 1639851233078) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639851233795) (:by |u0) (:text |if) (:type :leaf)
                  |j $ {} (:at 1639851236780) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639851240243) (:by |u0) (:text |includes?) (:type :leaf)
                      |j $ {} (:at 1639851240716) (:by |u0) (:text |x) (:type :leaf)
                      |r $ {} (:at 1639851242090) (:by |u0) (:text "|\" ") (:type :leaf)
                  |r $ {} (:at 1639851244867) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639851300141) (:by |u0) (:text |str) (:type :leaf)
                      |b $ {} (:at 1639851302265) (:by |u0) (:text "|\"\"") (:type :leaf)
                      |j $ {} (:at 1639851246921) (:by |u0) (:text |x) (:type :leaf)
                      |r $ {} (:at 1639851303312) (:by |u0) (:text "|\"\"") (:type :leaf)
                  |v $ {} (:at 1639851249487) (:by |u0) (:text |x) (:type :leaf)
        :ns $ {} (:at 1630171366222) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1630171366222) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1630171366222) (:by |u0) (:text |triadica.core) (:type :leaf)
            |r $ {} (:at 1630175118985) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1630175119637) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1630175120856) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1639848618051) (:by |u0) (:text |triadica.$meta) (:type :leaf)
                    |j $ {} (:at 1630175127717) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1630175128076) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1630175130627) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                |r $ {} (:at 1633181140100) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1639848619134) (:by |u0) (:text |triadica.util) (:type :leaf)
                    |j $ {} (:at 1633181140100) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1633181140100) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634804181370) (:by |u0) (:text |get-dylib-path) (:type :leaf)
        :proc $ {} (:at 1630171366222) (:by |u0) (:type :expr)
          :data $ {}
      |triadica.main $ {}
        :configs $ {}
        :defs $ {}
          |*counter $ {} (:at 1639931710354) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639931712001) (:by |u0) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1639931710354) (:by |u0) (:text |*counter) (:type :leaf)
              |r $ {} (:at 1639931714725) (:by |u0) (:text |0) (:type :leaf)
          |concat-them $ {} (:at 1639932286054) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639932287588) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639932319066) (:by |u0) (:text |concat-them) (:type :leaf)
              |r $ {} (:at 1639932286054) (:by |u0) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1639932294172) (:by |u0) (:text |children) (:type :leaf)
              |v $ {} (:at 1639932295056) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639932304578) (:by |u0) (:text |concat) (:type :leaf)
                  |j $ {} (:at 1639932305582) (:by |u0) (:text |&) (:type :leaf)
                  |r $ {} (:at 1639932307472) (:by |u0) (:text |children) (:type :leaf)
          |gen-counter-id! $ {} (:at 1639931754168) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639931755440) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639931754168) (:by |u0) (:text |gen-counter-id!) (:type :leaf)
              |r $ {} (:at 1639931754168) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1639931756221) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931759707) (:by |u0) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1639931761780) (:by |u0) (:text |*counter) (:type :leaf)
                  |r $ {} (:at 1639931763381) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931765587) (:by |u0) (:text |inc) (:type :leaf)
                      |j $ {} (:at 1639931768965) (:by |u0) (:text |@*counter) (:type :leaf)
              |x $ {} (:at 1639932439575) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1639932440648) (:by |u0) (:text |str) (:type :leaf)
                  |L $ {} (:at 1639932441816) (:by |u0) (:text "|\"p") (:type :leaf)
                  |T $ {} (:at 1639931772189) (:by |u0) (:text |@*counter) (:type :leaf)
          |main! $ {} (:at 1639849262834) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849262834) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849262834) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1639849262834) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1639849294197) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849296642) (:by |u0) (:text |render-demo!) (:type :leaf)
          |make-data-tree $ {} (:at 1639931835600) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639931835600) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639931835600) (:by |u0) (:text |make-data-tree) (:type :leaf)
              |r $ {} (:at 1639931835600) (:by |u0) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1639931850746) (:by |u0) (:text |tree) (:type :leaf)
                  |r $ {} (:at 1639931919808) (:by |u0) (:text |parent-id) (:type :leaf)
              |v $ {} (:at 1639931841216) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931841963) (:by |u0) (:text |if) (:type :leaf)
                  |j $ {} (:at 1639931845210) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931846589) (:by |u0) (:text |list?) (:type :leaf)
                      |j $ {} (:at 1639931849205) (:by |u0) (:text |tree) (:type :leaf)
                  |n $ {} (:at 1639931886979) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1639931958498) (:by |u0) (:text |->) (:type :leaf)
                      |b $ {} (:at 1639931959346) (:by |u0) (:text |tree) (:type :leaf)
                      |n $ {} (:at 1639931959853) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639931962248) (:by |u0) (:text |map) (:type :leaf)
                          |j $ {} (:at 1639931963439) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931963761) (:by |u0) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1639931964035) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931966366) (:by |u0) (:text |child) (:type :leaf)
                              |r $ {} (:at 1639931966744) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931967329) (:by |u0) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1639931968123) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931968266) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931972065) (:by |u0) (:text |child-id) (:type :leaf)
                                          |j $ {} (:at 1639932858686) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1639932859429) (:by |u0) (:text |if) (:type :leaf)
                                              |L $ {} (:at 1639932859634) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1640104722741) (:by |u0) (:text |string?) (:type :leaf)
                                                  |j $ {} (:at 1639932863389) (:by |u0) (:text |child) (:type :leaf)
                                              |P $ {} (:at 1639932867714) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1639932869913) (:by |u0) (:text |turn-string) (:type :leaf)
                                                  |T $ {} (:at 1639932865651) (:by |u0) (:text |child) (:type :leaf)
                                              |T $ {} (:at 1639931973988) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1639931973988) (:by |u0) (:text |gen-counter-id!) (:type :leaf)
                                  |v $ {} (:at 1639932144758) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1639932670370) (:by |u0) (:text |wo-log) (:type :leaf)
                                      |T $ {} (:at 1639932130415) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1639932379672) (:by |u0) (:text |str) (:type :leaf)
                                          |T $ {} (:at 1639932103440) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1639932105696) (:by |u0) (:text |make-data-tree) (:type :leaf)
                                              |j $ {} (:at 1639932109038) (:by |u0) (:text |child) (:type :leaf)
                                              |r $ {} (:at 1639932110931) (:by |u0) (:text |child-id) (:type :leaf)
                                          |b $ {} (:at 1639932387740) (:by |u0) (:text |&newline) (:type :leaf)
                                          |f $ {} (:at 1639932612481) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1639932614107) (:by |u0) (:text |node) (:type :leaf)
                                              |j $ {} (:at 1639932616073) (:by |u0) (:text |parent-id) (:type :leaf)
                                              |r $ {} (:at 1639932616845) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1639932617845) (:by |u0) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1639932618210) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1639932619203) (:by |u0) (:text |:shape) (:type :leaf)
                                                      |j $ {} (:at 1639932622374) (:by |u0) (:text |:diamond) (:type :leaf)
                                                  |r $ {} (:at 1639932678785) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1639932681105) (:by |u0) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1639932682060) (:by |u0) (:text |:filled) (:type :leaf)
                                                  |v $ {} (:at 1639932682698) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1639932687255) (:by |u0) (:text |:fillcolor) (:type :leaf)
                                                      |j $ {} (:at 1639932707344) (:by |u0) (:text |:cyan) (:type :leaf)
                                                  |x $ {} (:at 1639932980759) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1639932989718) (:by |u0) (:text |:fontcolor) (:type :leaf)
                                                      |j $ {} (:at 1639932983893) (:by |u0) (:text |:darkturquoise) (:type :leaf)
                                          |j $ {} (:at 1639932138686) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1639932138686) (:by |u0) (:text |arrow) (:type :leaf)
                                              |j $ {} (:at 1639932138686) (:by |u0) (:text |parent-id) (:type :leaf)
                                              |r $ {} (:at 1639932138686) (:by |u0) (:text |child-id) (:type :leaf)
                                              |v $ {} (:at 1639932138686) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1639932138686) (:by |u0) (:text |{}) (:type :leaf)
                      |t $ {} (:at 1639932024923) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639932027016) (:by |u0) (:text |.join-str) (:type :leaf)
                          |j $ {} (:at 1639932029368) (:by |u0) (:text |&newline) (:type :leaf)
                  |r $ {} (:at 1639931852635) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931856850) (:by |u0) (:text |node) (:type :leaf)
                      |j $ {} (:at 1639931859026) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639932876101) (:by |u0) (:text |turn-string) (:type :leaf)
                          |j $ {} (:at 1639932929466) (:by |u0) (:text |tree) (:type :leaf)
                      |r $ {} (:at 1639931999908) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639932000251) (:by |u0) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1639932759625) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639932761767) (:by |u0) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1639932763629) (:by |u0) (:text |:filled) (:type :leaf)
                          |j $ {} (:at 1639932744420) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639932758375) (:by |u0) (:text |:fillcolor) (:type :leaf)
                              |j $ {} (:at 1639932751362) (:by |u0) (:text |:darkgoldenrod1) (:type :leaf)
          |make-tree-demo $ {} (:at 1639931540177) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639931541878) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639931540177) (:by |u0) (:text |make-tree-demo) (:type :leaf)
              |r $ {} (:at 1639931540177) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1640104141707) (:by |u0) (:text |vec-tree) (:type :leaf)
              |s $ {} (:at 1639931718021) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931720665) (:by |u0) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1639931722984) (:by |u0) (:text |*counter) (:type :leaf)
                  |r $ {} (:at 1639931723394) (:by |u0) (:text |0) (:type :leaf)
              |sT $ {} (:at 1639932231501) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1639933167834) (:by |u0) (:text |;) (:type :leaf)
                  |T $ {} (:at 1639932233480) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1639932234690) (:by |u0) (:text "|\"data") (:type :leaf)
                  |r $ {} (:at 1640104139227) (:by |u0) (:text |vec-tree) (:type :leaf)
              |t $ {} (:at 1639932179952) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1639933156693) (:by |u0) (:text |wo-log) (:type :leaf)
                  |T $ {} (:at 1639932500089) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1639932501823) (:by |u0) (:text |digraph) (:type :leaf)
                      |L $ {} (:at 1640106043067) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1640106045933) (:by |u0) (:text |{}) (:type :leaf)
                      |P $ {} (:at 1640106054959) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1640106055719) (:by |u0) (:text |node) (:type :leaf)
                          |j $ {} (:at 1640106063802) (:by |u0) (:text "|\"graph") (:type :leaf)
                          |r $ {} (:at 1640106064172) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1640106064554) (:by |u0) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1640106065180) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1640106070032) (:by |u0) (:text |:ranksep) (:type :leaf)
                                  |j $ {} (:at 1640106071838) (:by |u0) (:text |0.3) (:type :leaf)
                              |r $ {} (:at 1640106121224) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1640106122710) (:by |u0) (:text |:nodesep) (:type :leaf)
                                  |j $ {} (:at 1640106126386) (:by |u0) (:text |0.25) (:type :leaf)
                              |v $ {} (:at 1640106131201) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1640106132817) (:by |u0) (:text |:splines) (:type :leaf)
                                  |j $ {} (:at 1640106134488) (:by |u0) (:text |:line) (:type :leaf)
                      |T $ {} (:at 1639931705517) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639931810870) (:by |u0) (:text |make-data-tree) (:type :leaf)
                          |X $ {} (:at 1640104136180) (:by |u0) (:text |vec-tree) (:type :leaf)
                          |b $ {} (:at 1639931915850) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931915850) (:by |u0) (:text |gen-counter-id!) (:type :leaf)
          |reload! $ {} (:at 1639849265279) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849265279) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849272210) (:by |u0) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1639849265279) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1639849284250) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639849326314) (:by |u0) (:text |render-demo!) (:type :leaf)
          |render-demo! $ {} (:at 1639849297673) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639849297673) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1639849297673) (:by |u0) (:text |render-demo!) (:type :leaf)
              |r $ {} (:at 1639849297673) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1639850110529) (:by |u0) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1639931521380) (:by |u0) (:text |;) (:type :leaf)
                  |D $ {} (:at 1639850124101) (:by |u0) (:text |write-file) (:type :leaf)
                  |L $ {} (:at 1639850118420) (:by |u0) (:text "|\"output/demo.dot") (:type :leaf)
                  |T $ {} (:at 1639850179173) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1639850180297) (:by |u0) (:text |w-log) (:type :leaf)
                      |T $ {} (:at 1639849298448) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639850311421) (:by |u0) (:text |digraph) (:type :leaf)
                          |b $ {} (:at 1639849509264) (:by |u0) (:text |nil) (:type :leaf)
                          |j $ {} (:at 1639849668044) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639849668505) (:by |u0) (:text |node) (:type :leaf)
                              |j $ {} (:at 1639849669696) (:by |u0) (:text "|\"A") (:type :leaf)
                          |r $ {} (:at 1639849692977) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639849694121) (:by |u0) (:text |node) (:type :leaf)
                              |j $ {} (:at 1639849694688) (:by |u0) (:text "|\"B") (:type :leaf)
                              |r $ {} (:at 1639849695876) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639849696851) (:by |u0) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1639849697147) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639849699534) (:by |u0) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1639849700267) (:by |u0) (:text |:red) (:type :leaf)
                                  |r $ {} (:at 1639851085160) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639851086628) (:by |u0) (:text |:shape) (:type :leaf)
                                      |j $ {} (:at 1639851098360) (:by |u0) (:text |:diamond) (:type :leaf)
                          |t $ {} (:at 1639850847108) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639850847704) (:by |u0) (:text |node) (:type :leaf)
                              |j $ {} (:at 1639851337520) (:by |u0) (:text "|\"C") (:type :leaf)
                              |r $ {} (:at 1639851118687) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639851119117) (:by |u0) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1639851119438) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639851121459) (:by |u0) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1639851122813) (:by |u0) (:text |:filled) (:type :leaf)
                                  |r $ {} (:at 1639851123362) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639851125852) (:by |u0) (:text |:fillcolor) (:type :leaf)
                                      |j $ {} (:at 1639851127380) (:by |u0) (:text |:red) (:type :leaf)
                                  |v $ {} (:at 1639851131012) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639851134979) (:by |u0) (:text |:fontcolor) (:type :leaf)
                                      |r $ {} (:at 1639851137444) (:by |u0) (:text |:white) (:type :leaf)
                                  |x $ {} (:at 1639851140495) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639851142033) (:by |u0) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1639851159956) (:by |u0) (:text |:none) (:type :leaf)
                          |v $ {} (:at 1639849729553) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931042980) (:by |u0) (:text |arrow) (:type :leaf)
                              |j $ {} (:at 1639849732818) (:by |u0) (:text "|\"A") (:type :leaf)
                              |r $ {} (:at 1639849734668) (:by |u0) (:text "|\"B") (:type :leaf)
                              |v $ {} (:at 1639849736314) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639849736695) (:by |u0) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1639851102425) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639851108010) (:by |u0) (:text |:arrowhead) (:type :leaf)
                                      |j $ {} (:at 1639851110914) (:by |u0) (:text |:inv) (:type :leaf)
                          |x $ {} (:at 1639849729553) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931045083) (:by |u0) (:text |arrow) (:type :leaf)
                              |j $ {} (:at 1639849732818) (:by |u0) (:text "|\"A") (:type :leaf)
                              |r $ {} (:at 1639851063961) (:by |u0) (:text "|\"C") (:type :leaf)
                              |v $ {} (:at 1639849736314) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639849736695) (:by |u0) (:text |{}) (:type :leaf)
                          |y $ {} (:at 1639849729553) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931124973) (:by |u0) (:text |arrow) (:type :leaf)
                              |j $ {} (:at 1639849732818) (:by |u0) (:text "|\"A") (:type :leaf)
                              |r $ {} (:at 1639851070157) (:by |u0) (:text "|\"E") (:type :leaf)
                              |v $ {} (:at 1639849736314) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639849736695) (:by |u0) (:text |{}) (:type :leaf)
              |vT $ {} (:at 1640104166491) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1640104170997) (:by |u0) (:text |apply-args) (:type :leaf)
                  |j $ {} (:at 1640104171416) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1640104181280) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1640104180694) (:by |u0) (:text |[]) (:type :leaf)
                      |b $ {} (:at 1640104224359) (:by |u0) (:text |0) (:type :leaf)
                  |r $ {} (:at 1640104191867) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1640104192778) (:by |u0) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1640104193146) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1640104193868) (:by |u0) (:text |acc) (:type :leaf)
                          |b $ {} (:at 1640104247827) (:by |u0) (:text |n) (:type :leaf)
                      |r $ {} (:at 1640104196452) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1640104197172) (:by |u0) (:text |if) (:type :leaf)
                          |j $ {} (:at 1640104197860) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1640104241935) (:by |u0) (:text |<) (:type :leaf)
                              |j $ {} (:at 1640104205520) (:by |u0) (:text |n) (:type :leaf)
                              |r $ {} (:at 1640109255629) (:by |u0) (:text |10) (:type :leaf)
                          |r $ {} (:at 1640104264242) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1640104798793) (:by |u0) (:text |do) (:type :leaf)
                              |H $ {} (:at 1640104347935) (:by |u0) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1640104663329) (:by |u0) (:text |;) (:type :leaf)
                                  |T $ {} (:at 1640104348968) (:by |u0) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1640104649582) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1658818221336) (:by |u0) (:text |parse-cirru-list) (:type :leaf)
                                      |T $ {} (:at 1640104349351) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1640104387176) (:by |u0) (:text |&format-ternary-tree) (:type :leaf)
                                          |j $ {} (:at 1640104356077) (:by |u0) (:text |acc) (:type :leaf)
                              |L $ {} (:at 1640104291735) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1640104291735) (:by |u0) (:text |write-file) (:type :leaf)
                                  |j $ {} (:at 1640104291735) (:by |u0) (:text "|\"output/demo.dot") (:type :leaf)
                                  |r $ {} (:at 1640104291735) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1640104291735) (:by |u0) (:text |make-tree-demo) (:type :leaf)
                                      |j $ {} (:at 1640104693620) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1640104750093) (:by |u0) (:text |wo-log) (:type :leaf)
                                          |T $ {} (:at 1640104871849) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1640104874927) (:by |u0) (:text |first) (:type :leaf)
                                              |T $ {} (:at 1640104660890) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1658818223674) (:by |u0) (:text |parse-cirru-list) (:type :leaf)
                                                  |j $ {} (:at 1640104660890) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1640104660890) (:by |u0) (:text |&format-ternary-tree) (:type :leaf)
                                                      |j $ {} (:at 1640104660890) (:by |u0) (:text |acc) (:type :leaf)
                              |P $ {} (:at 1640104777118) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1640104777118) (:by |u0) (:text |println) (:type :leaf)
                                  |b $ {} (:at 1640105686666) (:by |u0) (:text |n) (:type :leaf)
                                  |j $ {} (:at 1640104777118) (:by |u0) (:text "|\"result:") (:type :leaf)
                                  |r $ {} (:at 1640104777118) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1640104777118) (:by |u0) (:text |execute!) (:type :leaf)
                                      |j $ {} (:at 1640104777118) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1640104777118) (:by |u0) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1640104777118) (:by |u0) (:text "|\"dot") (:type :leaf)
                                          |r $ {} (:at 1640104777118) (:by |u0) (:text "|\"-T") (:type :leaf)
                                          |v $ {} (:at 1640104777118) (:by |u0) (:text "|\"svg") (:type :leaf)
                                          |w $ {} (:at 1640105695237) (:by |u0) (:text "|\"-K") (:type :leaf)
                                          |wT $ {} (:at 1640105928778) (:by |u0) (:text "|\"dot") (:type :leaf)
                                          |x $ {} (:at 1640104777118) (:by |u0) (:text "|\"output/demo.dot") (:type :leaf)
                                          |y $ {} (:at 1640104777118) (:by |u0) (:text "|\"-o") (:type :leaf)
                                          |yT $ {} (:at 1640104815270) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1640104816137) (:by |u0) (:text |str) (:type :leaf)
                                              |T $ {} (:at 1640104820436) (:by |u0) (:text "|\"output/demo") (:type :leaf)
                                              |b $ {} (:at 1640104823829) (:by |u0) (:text |n) (:type :leaf)
                                              |j $ {} (:at 1640104821286) (:by |u0) (:text "|\".svg") (:type :leaf)
                              |T $ {} (:at 1640104206706) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1640104211270) (:by |u0) (:text |recur) (:type :leaf)
                                  |j $ {} (:at 1640104211723) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1640104212254) (:by |u0) (:text |conj) (:type :leaf)
                                      |j $ {} (:at 1640104213503) (:by |u0) (:text |acc) (:type :leaf)
                                      |r $ {} (:at 1640104250369) (:by |u0) (:text |n) (:type :leaf)
                                  |r $ {} (:at 1640104232853) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1640104233555) (:by |u0) (:text |inc) (:type :leaf)
                                      |j $ {} (:at 1640104251819) (:by |u0) (:text |n) (:type :leaf)
                          |v $ {} (:at 1640104260066) (:by |u0) (:text |nil) (:type :leaf)
              |w $ {} (:at 1639931522565) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1640104287773) (:by |u0) (:text |;) (:type :leaf)
                  |T $ {} (:at 1639931524101) (:by |u0) (:text |write-file) (:type :leaf)
                  |j $ {} (:at 1639931528884) (:by |u0) (:text "|\"output/demo.dot") (:type :leaf)
                  |r $ {} (:at 1639931532762) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931538538) (:by |u0) (:text |make-tree-demo) (:type :leaf)
                      |j $ {} (:at 1640104144556) (:by |u0) (:text |tree-data) (:type :leaf)
          |tree-data $ {} (:at 1639931548696) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1639931548696) (:by |u0) (:text |def) (:type :leaf)
              |j $ {} (:at 1639931548696) (:by |u0) (:text |tree-data) (:type :leaf)
              |r $ {} (:at 1639931548696) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1639931550867) (:by |u0) (:text |quote) (:type :leaf)
                  |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639931551472) (:by |u0) (:text |0) (:type :leaf)
                          |j $ {} (:at 1639931551472) (:by |u0) (:text |1) (:type :leaf)
                          |r $ {} (:at 1639931551472) (:by |u0) (:text |2) (:type :leaf)
                      |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931551472) (:by |u0) (:text |3) (:type :leaf)
                                  |j $ {} (:at 1639931551472) (:by |u0) (:text |4) (:type :leaf)
                                  |r $ {} (:at 1639931551472) (:by |u0) (:text |5) (:type :leaf)
                              |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931551472) (:by |u0) (:text |6) (:type :leaf)
                                  |j $ {} (:at 1639931551472) (:by |u0) (:text |7) (:type :leaf)
                                  |r $ {} (:at 1639931551472) (:by |u0) (:text |8) (:type :leaf)
                              |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931551472) (:by |u0) (:text |9) (:type :leaf)
                                  |j $ {} (:at 1639931551472) (:by |u0) (:text |10) (:type :leaf)
                                  |r $ {} (:at 1639931551472) (:by |u0) (:text |11) (:type :leaf)
                          |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |12) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |13) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |14) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |15) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |16) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |17) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |18) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |19) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |20) (:type :leaf)
                                  |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |21) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |22) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |23) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |24) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |25) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |26) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |27) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |28) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |29) (:type :leaf)
                                  |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |30) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |31) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |32) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |33) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |34) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |35) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |36) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |37) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |38) (:type :leaf)
                              |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |39) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |40) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |41) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |42) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |43) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |44) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |45) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |46) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |47) (:type :leaf)
                                  |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |48) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |49) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |50) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |51) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |52) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |53) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |54) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |55) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |56) (:type :leaf)
                                  |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |57) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |58) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |59) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |60) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |61) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |62) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1639931551472) (:by |u0) (:text |63) (:type :leaf)
                                          |j $ {} (:at 1639931551472) (:by |u0) (:text |64) (:type :leaf)
                                          |r $ {} (:at 1639931551472) (:by |u0) (:text |65) (:type :leaf)
                              |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:text |66) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:text |67) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:text |68) (:type :leaf)
                                  |j $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:text |69) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:text |70) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:text |71) (:type :leaf)
                                  |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1639931551472) (:by |u0) (:text |72) (:type :leaf)
                                      |j $ {} (:at 1639931551472) (:by |u0) (:text |73) (:type :leaf)
                                      |r $ {} (:at 1639931551472) (:by |u0) (:text |74) (:type :leaf)
                          |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639931551472) (:by |u0) (:text |75) (:type :leaf)
                              |j $ {} (:at 1639931551472) (:by |u0) (:text |76) (:type :leaf)
                              |r $ {} (:at 1639931551472) (:by |u0) (:text |77) (:type :leaf)
                      |r $ {} (:at 1639931551472) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639931551472) (:by |u0) (:text |78) (:type :leaf)
                          |j $ {} (:at 1639931551472) (:by |u0) (:text |79) (:type :leaf)
        :ns $ {} (:at 1639849082586) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1639849082586) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1639849082586) (:by |u0) (:text |triadica.main) (:type :leaf)
            |r $ {} (:at 1639849490482) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1639849491219) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1639849491646) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1639849495320) (:by |u0) (:text |triadica.core) (:type :leaf)
                    |j $ {} (:at 1639849498320) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1639849498595) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1639850313347) (:by |u0) (:text |digraph) (:type :leaf)
                        |j $ {} (:at 1639849502180) (:by |u0) (:text |node) (:type :leaf)
                        |r $ {} (:at 1639931049472) (:by |u0) (:text |arrow) (:type :leaf)
                        |v $ {} (:at 1639931173074) (:by |u0) (:text |connect) (:type :leaf)
                |r $ {} (:at 1639850643625) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1639850643975) (:by |u0) (:text |calcit.std.process) (:type :leaf)
                    |j $ {} (:at 1639850645234) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1639850645518) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1639850648505) (:by |u0) (:text |execute!) (:type :leaf)
        :proc $ {} (:at 1639849082586) (:by |u0) (:type :expr)
          :data $ {}
      |triadica.test $ {}
        :configs $ {}
        :defs $ {}
          |run-tests $ {} (:at 1633150008092) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1633150011172) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633150008092) (:by |u0) (:text |run-tests) (:type :leaf)
              |r $ {} (:at 1633150008092) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634703837934) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634703847178) (:by |u0) (:text "|\"%%%% test for lib") (:type :leaf)
              |x $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634703837934) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634703837934) (:by |u0) (:text |calcit-filename) (:type :leaf)
                  |r $ {} (:at 1634703837934) (:by |u0) (:text |calcit-dirname) (:type :leaf)
              |y $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634703837934) (:by |u0) (:text |println) (:type :leaf)
                  |r $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1639848972215) (:by |u0) (:text |render-dot-file) (:type :leaf)
                      |j $ {} (:at 1639848708409) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1639848709023) (:by |u0) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1639848709661) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1639848715342) (:by |u0) (:text |:type) (:type :leaf)
                              |j $ {} (:at 1639848720383) (:by |u0) (:text |:graph) (:type :leaf)
        :ns $ {} (:at 1633149625774) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1633149625774) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1633149625774) (:by |u0) (:text |triadica.test) (:type :leaf)
            |r $ {} (:at 1633149974572) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1633149975596) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1634703855566) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1639848637644) (:by |u0) (:text |triadica.core) (:type :leaf)
                    |j $ {} (:at 1634703859915) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634703860100) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1639848973965) (:by |u0) (:text |render-dot-file) (:type :leaf)
                |r $ {} (:at 1634703941759) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1639848638610) (:by |u0) (:text |triadica.$meta) (:type :leaf)
                    |j $ {} (:at 1634703941759) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634703941759) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634703941759) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                        |j $ {} (:at 1634703953240) (:by |u0) (:text |calcit-filename) (:type :leaf)
        :proc $ {} (:at 1633149625774) (:by |u0) (:type :expr)
          :data $ {}
      |triadica.util $ {}
        :configs $ {}
        :defs $ {}
          |get-dylib-ext $ {} (:at 1630231398718) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1630231418304) (:by |u0) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1633181058353) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
              |r $ {} (:at 1630231398718) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1630231403270) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1630231423910) (:by |u0) (:text |case-default) (:type :leaf)
                  |b $ {} (:at 1630231429893) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630231433951) (:by |u0) (:text |&get-os) (:type :leaf)
                  |j $ {} (:at 1630231427453) (:by |u0) (:text "|\".so") (:type :leaf)
                  |r $ {} (:at 1630231437150) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630231439152) (:by |u0) (:text |:macos) (:type :leaf)
                      |j $ {} (:at 1630231447585) (:by |u0) (:text "|\".dylib") (:type :leaf)
                  |v $ {} (:at 1630231448478) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630231449901) (:by |u0) (:text |:windows) (:type :leaf)
                      |j $ {} (:at 1630231461388) (:by |u0) (:text "|\".dll") (:type :leaf)
          |get-dylib-path $ {} (:at 1634804142034) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634804142034) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634804142034) (:by |u0) (:text |get-dylib-path) (:type :leaf)
              |n $ {} (:at 1634804146574) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634804230294) (:by |u0) (:text |p) (:type :leaf)
              |r $ {} (:at 1634804145483) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634804145483) (:by |u0) (:text |str) (:type :leaf)
                  |j $ {} (:at 1634804145483) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634804145483) (:by |u0) (:text |or-current-path) (:type :leaf)
                      |j $ {} (:at 1634804145483) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                  |r $ {} (:at 1634804157377) (:by |u0) (:text |p) (:type :leaf)
                  |v $ {} (:at 1634804145483) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634804145483) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
          |or-current-path $ {} (:at 1630245582276) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1630245583936) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633181131099) (:by |u0) (:text |or-current-path) (:type :leaf)
              |r $ {} (:at 1630245582276) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1630245585364) (:by |u0) (:text |p) (:type :leaf)
              |v $ {} (:at 1630245585942) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1630245586336) (:by |u0) (:text |if) (:type :leaf)
                  |j $ {} (:at 1630245586894) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630245614560) (:by |u0) (:text |blank?) (:type :leaf)
                      |j $ {} (:at 1630245615061) (:by |u0) (:text |p) (:type :leaf)
                  |r $ {} (:at 1630245616843) (:by |u0) (:text "|\".") (:type :leaf)
                  |v $ {} (:at 1630245618366) (:by |u0) (:text |p) (:type :leaf)
        :ns $ {} (:at 1633181044360) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1633181044360) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1633181044360) (:by |u0) (:text |triadica.util) (:type :leaf)
            |r $ {} (:at 1634804160546) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1634804161330) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1634804162771) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1639848649662) (:by |u0) (:text |triadica.$meta) (:type :leaf)
                    |j $ {} (:at 1634804168120) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634804168421) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634804171748) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                        |j $ {} (:at 1634804175462) (:by |u0) (:text |calcit-filename) (:type :leaf)
        :proc $ {} (:at 1633181044360) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
