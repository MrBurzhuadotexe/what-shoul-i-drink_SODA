;;; ***************************
;;; * DEFTEMPLATES & DEFFACTS *
;;; ***************************

(deftemplate UI-state
   (slot id (default-dynamic (gensym*)))
   (slot display)
   (slot images (default none))
   (slot relation-asserted (default none))
   (slot response (default none))
   (multislot valid-answers)
   (slot state (default middle)))

(deftemplate state-list
   (slot current)
   (multislot sequence))

(deffacts startup
   (state-list))


;;;****************
;;;* STARTUP RULE *
;;;****************

(defrule system-banner ""

  =>

  (assert (UI-state (display WelcomeMessage)
                    (relation-asserted start)
                    (state initial)
                    (valid-answers))))







;;;***************
;;;* QUERY RULES *
;;;***************

(defrule start_RULE ""
    (logical (start))
    =>
    (assert (UI-state (display StartMessage)
                      (relation-asserted Mexico)
                      (valid-answers Yes No)))
)

(defrule pwnNoobsR ""
    (logical (Mexico No))
    =>
    (assert (UI-state (display pwnNoobsQ)
                      (relation-asserted noobs)
                      (valid-answers Yes No)))
)

(defrule dietR ""
    (logical (noobs No))
    =>
    (assert (UI-state (display dietQ)
                      (relation-asserted diet)
                      (valid-answers Yes No)))
)

(defrule ostentatiousR ""
    (logical (diet Yes))
    =>
    (assert (UI-state (display ostentatiousQ)
                      (relation-asserted ostentatious)
                      (valid-answers Yes No)))
)

(defrule boostR ""
    (logical (ostentatious No))
    =>
    (assert (UI-state (display boostQ)
                      (valid-answers Yes No)))
)

(defrule animatedR ""
    (logical (diet No))
    =>
    (assert (UI-state (display animatedQ)
                      (relation-asserted animated)
                      (valid-answers Yes No)))
)

(defrule juggaloR ""
    (logical (animated No))
    =>
    (assert (UI-state (display juggaloQ)
                      (relation-asserted juggalo)
                      (valid-answers Yes No)))
)

(defrule dirtR ""
    (logical (juggalo No))
    =>
    (assert (UI-state (display dirtQ)
                      (relation-asserted dirt)
                      (valid-answers Yes No)))
)

(defrule TayR ""
    (logical (dirt No))
    =>
    (assert (UI-state (display TayQ)
                      (relation-asserted Tay)
                      (valid-answers Yes No)))
)

(defrule BrazilR ""
    (logical (Tay No))
    =>
    (assert (UI-state (display BrazilQ)
                      (relation-asserted Brazil)
                      (valid-answers Yes No)))
)

(defrule doleR ""
    (logical (Brazil No))
    =>
    (assert (UI-state (display doleQ)
                      (relation-asserted dole)
                      (valid-answers Yes No)))
)

(defrule fluxR ""
    (logical (dole No))
    =>
    (assert (UI-state (display fluxQ)
                      (relation-asserted flux)
                      (valid-answers Yes No)))
)

(defrule gumR ""
    (logical (flux No))
    =>
    (assert (UI-state (display gumQ)
                      (relation-asserted gum)
                      (valid-answers Yes No)))
)

(defrule all-nighterR ""
    (logical (gum No))
    =>
    (assert (UI-state (display all-nighterQ)
                      (relation-asserted all-nighter)
                      (valid-answers Yes No)))
)

(defrule tescoR ""
    (logical (all-nighter No))
    =>
    (assert (UI-state (display tescoQ)
                      (relation-asserted tesco)
                      (valid-answers Yes No)))
)

(defrule picnicR ""
    (logical (tesco No))
    =>
    (assert (UI-state (display picnicQ)
                      (relation-asserted picnic)
                      (valid-answers Yes No)))
)

(defrule buyR ""
    (logical (picnic No))
    =>
    (assert (UI-state (display buyQ)
                      (relation-asserted buy)
                      (valid-answers Yes No)))
)

(defrule TylerR ""
    (logical (buy No))
    =>
    (assert (UI-state (display TylerQ)
                      (relation-asserted Tyler)
                      (valid-answers Yes No)))
)

(defrule rootbeerR ""
    (logical (Tyler No))
    =>
    (assert (UI-state (display rootbeerQ)
                      (relation-asserted rootbeer)
                      (valid-answers Yes No)))
)

(defrule tummyR ""
    (logical (rootbeer No))
    =>
    (assert (UI-state (display tummyQ)
                      (relation-asserted tummy)
                      (valid-answers Yes No)))
)

(defrule HFCSR ""
    (logical (tummy No))
    =>
    (assert (UI-state (display HFCSQ)
                      (relation-asserted HFCS)
                      (valid-answers Yes No)))
)

(defrule cherryR ""
    (logical (HFCS No))
    =>
    (assert (UI-state (display cherryQ)
                      (relation-asserted cherry)
                      (valid-answers Yes No)))
)

(defrule caffeineR ""
    (logical (cherry No))
    =>
    (assert (UI-state (display caffeineQ)
                      (relation-asserted caffeine)
                      (valid-answers Yes No)))
)

(defrule backpackR ""
    (logical (caffeine No))
    =>
    (assert (UI-state (display backpackQ)
                      (relation-asserted backpack)
                      (valid-answers Yes No)))
)

(defrule singR ""
    (logical (backpack No))
    =>
    (assert (UI-state (display singQ)
                      (relation-asserted sing)
                      (valid-answers Yes No)))
)

(defrule simplerR ""
    (logical (sing No))
    =>
    (assert (UI-state (display simplerQ)
                      (relation-asserted simpler)
                      (valid-answers Yes No)))
)

(defrule qualityR ""
    (logical (rootbeer Yes))
    =>
    (assert (UI-state (display qualityQ)
                      (relation-asserted quality)
                      (valid-answers Yes No)))
)

(defrule tasteR ""
    (logical (HFCS Yes))
    =>
    (assert (UI-state (display tasteQ)
                      (relation-asserted taste)
                      (valid-answers Yes No)))
)

(defrule mexico ""
    (logical (Mexico Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images mexico)
                      (state final)))
)

(defrule noobs ""
    (logical (noobs Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images noobs)
                      (state final)))
)

(defrule ost ""
    (logical (ostentatious Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images ost)
                      (state final)))
)

(defrule boostyes ""
    (logical (boost Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images boostyes)
                      (state final)))
)

(defrule boostno ""
    (logical (boost No))
    =>
    (assert (UI-state (display finalMessage)
                      (images boostNo)
                      (state final)))
)

(defrule anim ""
    (logical (anim Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images anim)
                      (state final)))
)

(defrule jug ""
    (logical (juggalo Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images jug)
                      (state final)))
)

(defrule dirt""
    (logical (dirt Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images dirt)
                      (state final)))
)

(defrule tay ""
    (logical (Tay Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images tay)
                      (state final)))
)

(defrule brazil ""
    (logical (Brazil Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images brazil)
                      (state final)))
)

(defrule dole ""
    (logical (dole Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images dole)
                      (state final)))
)

(defrule cap ""
    (logical (capacitor Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images cap)
                      (state final)))
)

(defrule gum ""
    (logical (gum Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images gum)
                      (state final)))
)

(defrule all ""
    (logical (all-nighter Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images all)
                      (state final)))
)

(defrule tesco ""
    (logical (tesco Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images tesco)
                      (state final)))
)

(defrule picnic ""
    (logical (picnic Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images picnic)
                      (state final)))
)

(defrule buy ""
    (logical (buy Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images buy)
                      (state final)))
)

(defrule tyler ""
    (logical (Tyler Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images tyler)
                      (state final)))
)

(defrule qualityyes ""
    (logical (quality Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images qualityyes)
                      (state final)))
)

(defrule qualityno ""
    (logical (quality No))
    =>
    (assert (UI-state (display finalMessage)
                      (images qualityno)
                      (state final)))
)

(defrule tummy ""
    (logical (tummy Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images tummy)
                      (state final)))
)

(defrule tasteyes ""
    (logical (taste Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images tasteyes)
                      (state final)))
)

(defrule tasteno ""
    (logical (taste Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images tasteno)
                      (state final)))
)

(defrule cherry ""
    (logical (cherry Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images cherry)
                      (state final)))
)

(defrule caf ""
    (logical (caf No))
    =>
    (assert (UI-state (display finalMessage)
                      (images caf)
                      (state final)))
)

(defrule back ""
    (logical (back Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images back)
                      (state final)))
)

(defrule sing ""
    (logical (sing Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images sing)
                      (state final)))
)

(defrule sing ""
    (logical (sing Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images sing)
                      (state final)))
)

(defrule simpleryes ""
    (logical (simpler Yes))
    =>
    (assert (UI-state (display finalMessage)
                      (images simpleryes)
                      (state final)))
)

(defrule simplerno ""
    (logical (simpler No))
    =>
    (assert (UI-state (display finalMessage)
                      (images simplerno)
                      (state final)))
)









;;;*************************
;;;* GUI INTERACTION RULES *
;;;*************************

(defrule ask-question

   (declare (salience 5))

   (UI-state (id ?id))

   ?f <- (state-list (sequence $?s&:(not (member$ ?id ?s))))

   =>

   (modify ?f (current ?id)
              (sequence ?id ?s))

   (halt))

(defrule handle-next-no-change-none-middle-of-chain

   (declare (salience 10))

   ?f1 <- (next ?id)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))

   =>

   (retract ?f1)

   (modify ?f2 (current ?nid))

   (halt))

(defrule handle-next-response-none-end-of-chain

   (declare (salience 10))

   ?f <- (next ?id)

   (state-list (sequence ?id $?))

   (UI-state (id ?id)
             (relation-asserted ?relation))

   =>

   (retract ?f)

   (assert (add-response ?id)))

(defrule handle-next-no-change-middle-of-chain

   (declare (salience 10))

   ?f1 <- (next ?id ?response)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))

   (UI-state (id ?id) (response ?response))

   =>

   (retract ?f1)

   (modify ?f2 (current ?nid))

   (halt))

(defrule handle-next-change-middle-of-chain

   (declare (salience 10))

   (next ?id ?response)

   ?f1 <- (state-list (current ?id) (sequence ?nid $?b ?id $?e))

   (UI-state (id ?id) (response ~?response))

   ?f2 <- (UI-state (id ?nid))

   =>

   (modify ?f1 (sequence ?b ?id ?e))

   (retract ?f2))

(defrule handle-next-response-end-of-chain

   (declare (salience 10))

   ?f1 <- (next ?id ?response)

   (state-list (sequence ?id $?))

   ?f2 <- (UI-state (id ?id)
                    (response ?expected)
                    (relation-asserted ?relation))

   =>

   (retract ?f1)

   (if (neq ?response ?expected)
      then
      (modify ?f2 (response ?response)))

   (assert (add-response ?id ?response)))

(defrule handle-add-response

   (declare (salience 10))

   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))

   ?f1 <- (add-response ?id ?response)

   =>

   (str-assert (str-cat "(" ?relation " " ?response ")"))

   (retract ?f1))

(defrule handle-add-response-none

   (declare (salience 10))

   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))

   ?f1 <- (add-response ?id)

   =>

   (str-assert (str-cat "(" ?relation ")"))

   (retract ?f1))

(defrule handle-prev

   (declare (salience 10))

   ?f1 <- (prev ?id)

   ?f2 <- (state-list (sequence $?b ?id ?p $?e))

   =>

   (retract ?f1)

   (modify ?f2 (current ?p))

   (halt))