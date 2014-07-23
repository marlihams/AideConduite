(defvar *base_regles* '(
                       ((niveau 0) (permis < 1) (pratique < 1000) (conducteur novice_inexperimente))
                       ((niveau 0) (permis < 1) (pratique >= 1000) (conducteur novice_experimente))
                       ((niveau 0) (permis >= 1) (permis < 5) (pratique < 10000) (conducteur conducteur_inexperimente))
                       ((niveau 0) (permis >= 5) (pratique < 10000) (conducteur conducteur_inexperimente))
                       ((niveau 0) (permis >= 1) (permis < 5) (pratique >= 10000) (pratique < 100000) (conducteur conducteur_experimente))
                       ((niveau 0) (permis >= 5) (pratique >= 10000) (pratique < 100000) (conducteur conducteur_experimente))
                       ((niveau 0) (permis >= 5) (pratique >= 100000) (conducteur conducteur_tres_experimente))
                       ((niveau 0) (acc_tangentielle > 4) (vehicule renversement_eleve))
                       ((niveau 0) (acc_tangentielle <= 4) (acc_tangentielle > 2) (vitesse > vitesse_limite) (vehicule derapage_eleve))
                       ((niveau 0) (acc_tangentielle <= 4) (acc_tangentielle > 2) (vitesse < vitesse_limite) (vehicule derapage))
                       ((niveau 0) (acc_tangentielle <= 2) (acc_tangentielle >= 0) (vitesse > vitesse_limite) (vehicule  derapage))
                       ((niveau 0) (acc_tangentielle <= 2) (acc_tangentielle >= 0) (vitesse < vitesse_limite) (vehicule peu_risque))    
                       ((niveau 0) (etat_route eql neige) (environnement tres_risque))
                       ((niveau 0) (etat_route eql glissant) (environnement tres_risque))
                       ((niveau 0) (etat_route eql seche) (acc_normale > 4) (environnement tres_risque))
                       ((niveau 0) (etat_route eql seche) (acc_normale < 5) (acc_normale > 2) (environnement moyennement_risque))
                       ((niveau 0) (etat_route eql seche) (acc_normale <= 2) (acc_normale >= 0) (environnement peu_risque)) 
                  ((niveau 1) (conducteur eql novice_inexperimente) (vehicule eql renversement_eleve) (niveau_risque 10))
                  ((niveau 1) (conducteur eql novice_inexperimente) (vehicule eql  derapage_eleve) (environnement eql  tres_risque) (niveau_risque 10)) 
                  ((niveau 1) (conducteur eql novice_inexperimente) (vehicule eql derapage_eleve) (environnement eql moyennement_risque) (niveau_risque 9))
                  ((niveau 1) (conducteur eql novice_inexperimente) (vehicule eql derapage_eleve) (environnement eql  peu_risque) (niveau_risque 9))
                  ((niveau 1) (conducteur  eql novice_inexperimente) (vehicule eql  derapage) (niveau_risque 9))
                  ((niveau 1) (conducteur eql novice_inexperimente) (vehicule eql peu_risque) (environnement eql  tres_risque) (niveau_risque 8))
                  ((niveau 1) (conducteur eql novice_inexperimente) (vehicule eql peu_risque) (environnement eql moyennement_risque) (niveau_risque 6))
  		  ((niveau 1) (conducteur eql novice_inexperimente) (vehicule eql peu_risque) (environnement  eql peu_risque) (niveau_risque 5))                 
		  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql renversement_eleve) (environnement eql  tres_risque) (niveau_risque 10))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql renversement_eleve) (environnement  eql moyennement_risque) (niveau_risque 9))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql renversement_eleve) (environnement eql peu_risque) (niveau_risque 9))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule  eql derapage_eleve) (environnement eql tres_risque) (niveau_risque 9))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql derapage_eleve) (environnement eql moyennement_risque) (niveau_risque 8))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql derapage_eleve) (environnement eql peu_risque) (niveau_risque 8))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql derapage) (environnement eql  tres_risque) (niveau_risque 8))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql derapage) (environnement eql  moyennement_risque) (niveau_risque 7))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql derapage) (environnement  eql peu_risque) (niveau_risque 6))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql peu_risque) (environnement eql tres_risque) (niveau_risque 6))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql peu_risque) (environnement eql moyennement_risque) (niveau_risque 5))
                  ((niveau 1) (conducteur eql novice_experimente) (vehicule eql  peu_risque) (environnement eql peu_risque) (niveau_risque 4))                   
		  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule eql  renversement_eleve) (environnement eql tres_risque) (niveau_risque 10))
                  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule eql renversement_eleve) (environnement eql moyennement_risque) (niveau_risque 8))
                  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule eql renversement_eleve) (environnement eql  peu_risque) (niveau_risque 8))
                  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule eql  derapage_eleve) (environnement  eql tres_risque) (niveau_risque 8))
                  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule eql  derapage_eleve) (environnement eql moyennement_risque) (niveau_risque 7))
                  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule eql  derapage_eleve) (environnement eql  peu_risque) (niveau_risque 7))
                  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule  eql derapage) (niveau_risque 7))
                  ((niveau 1) (conducteur eql conducteur_inexperimente) (vehicule eql peu_risque) (environnement eql  tres_risque) (niveau_risque 5))
                  ((niveau 1) (conducteur eql  conducteur_inexperimente) (vehicule eql peu_risque) (environnement  eql moyennement_risque) (niveau_risque 4))
                  ((niveau 1) (conducteur eql  conducteur_inexperimente) (vehicule eql peu_risque) (environnement eql peu_risque) (niveau_risque 3))                  
		  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule eql renversement_eleve) (environnement  eql tres_risque) (niveau_risque 10))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule eql renversement_eleve) (environnement eql moyennement_risque) (niveau_risque 7))
                  ((niveau 1) (conducteur  eql conducteur_experimente) (vehicule eql  renversement_eleve) (environnement eql peu_risque) (niveau_risque 6))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule  eql derapage_eleve) (environnement eql  tres_risque) (niveau_risque 7))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule  eql derapage_eleve) (environnement eql moyennement_risque) (niveau_risque 6))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule  eql derapage_eleve) (environnement eql peu_risque) (niveau_risque 5))
                  ((niveau 1) (conducteur eql  conducteur_experimente) (vehicule eql derapage) (environnement eql  tres_risque) (niveau_risque 6))
                  ((niveau 1) (conducteur eql  conducteur_experimente) (vehicule  eql derapage) (environnement eql  moyennement_risque) (niveau_risque 5))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule  eql derapage) (environnement eql peu_risque) (niveau_risque 4))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule  eql peu_risque) (environnement eql  tres_risque) (niveau_risque 4))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule   eql peu_risque) (environnement eql  moyennement_risque) (niveau_risque 3))
                  ((niveau 1) (conducteur eql conducteur_experimente) (vehicule  eql peu_risque) (environnement peu_risque) (niveau_risque 2)) 				
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule  eql renversement_eleve) (environnement  eql tres_risque) (niveau_risque 10))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule eql renversement_eleve) (environnement  eql moyennement_risque) (niveau_risque 6))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule eql renversement_eleve) (environnement eql  peu_risque) (niveau_risque 5))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule eql  derapage_eleve) (environnement  eql tres_risque) (niveau_risque 5))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule  eql derapage_eleve) (environnement  eql moyennement_risque) (niveau_risque 4))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule  eql derapage_eleve) (environnement eql  peu_risque) (niveau_risque 4))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule  eql derapage) (environnement  eql tres_risque) (niveau_risque 5))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule  eql derapage) (environnement eql moyennement_risque) (niveau_risque 4))
                  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule eql  derapage) (environnement eql peu_risque) (niveau_risque 3))
		  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule eql  peu_risque) (environnement eql  tres_risque) (niveau_risque 3))
		  ((niveau 1) (conducteur eql conducteur_tres_experimente) (vehicule eql  peu_risque) (environnement  eql moyennement_risque) (niveau_risque 2))
		  ((niveau 1) (conducteur eql  conducteur_tres_experimente) (vehicule eql  peu_risque) (environnement  eql peu_risque) (niveau_risque 1))
                        ))



;;;;;;;;;;;;fonctions de service;;;;;;;;;;;;;;;;;;;;

(defun getv (a_liste prop)
  (cdr (assoc prop a_liste)))



-*-*-*-*-*-*-*----- extraire la valeur d'une propriété dans une a-liste -----*-*-*

(defun get_value (a_liste valeur)
  (let ((real_val (car (getv a_liste valeur))))   ;;;extrait le dernier element de la liste contenant la propriété dans la a-liste
  (cond ((integerp valeur) valeur)               ;;;si la propiete est un entier la retourne
        ((null real_val ) valeur)               ;;;si la valeur extraite est nil retourne le nom de la propriété
        (t real_val))))           ;;;; sinon retourne la valeur réelle extraite


-*-*-*-*-*-*--- extraire le dernier élément d'une a_liste passée en paramètre ----*-*-*

(defun last_element (a_liste)
  (car (last a_liste)))

-*-*-*-*-*-*--- extraire le niveau d'une règle ----*-*-*

(defun get_niveau (regle)
  (cadr (assoc 'niveau regle)))


-*-*-*----*-*-* extraire la liste des propriétés à tester d'un fait ----*-*-*-*

(defun get_premier_element (a_liste)
  (mapcar #'car a_liste))

-*-*-*-**----- fonction qui extrait la liste des regles du niveau passé en paramètre-*-*-*-*

(defun  extrait_niveau (niveau)
  (let (result)
    (dolist (x *base_regles*)
      (let ((var (cadr (assoc 'niveau x))))
        (when (= var niveau) 
          (setq result (cons x result))))) 
    result))

-*-*-*-*-*-*-- extraire la liste de règles utiles dans l'ensemble des règles pour le fait passé en paramètre--*-*-*

(defun get_regle_utile (liste regle)
  (let ((element (car liste)) regle_utile)  ;;extrait le nom du fait
    (loop
      (let* ((sous_regle (cdr (pop regle)))           ;;parcours de la liste des règles passée en paramètre
            (type (car (last_element  sous_regle))))  ;;extrait le car de la conclusion pour connaitre l'element dont la regle donne le niveau de risque        
            (if (eql element type)
                (setq regle_utile (cons  sous_regle regle_utile)))  ;;si ce type est égale aunom du fait alors la regle est selectionnée
      (unless regle (return-from get_regle_utile regle_utile))))))     ;;retourne la liste des regles selectionnées


-*-*-*-*-*----- fonction qui extrait la vitesse limite d'un fait( environnement) de la base de faits --*-*-*

(defun take_base_fait (base) 
  (let (result)
    (dolist (x base)  
      (when (setq result (assoc 'vitesse_limite (cdr x) )))) result))





-*-*-*-*-*----- fonction qui extrait un fait dont le nom est connu de la base de faits ---*-*-*

(defun get_variable (base_fait variable)
  (let ((var (take_base_fait base_fait)) ;;; on recupere le couple (vitesse_limite val) dans la base des faits
         result)
    
      (dolist (x base_fait)
                      (if (eql (car x) variable)   ;; parcours de la base de faits
                          (setq result x)))
    (cond ((eql variable 'conducteur) result)      
          ((eql variable  'vehicule) (cons variable (cons var (cdr result)))) ;;transfert de vitesse_limitte dans véhicule venant du fait environnement 
          (t (cons variable (remove var (cdr result)))))))  ;; si on veut extraire l'environnement , on y enleve la vitesse limitte.


-*-*-*-*-- fonction qui extrait la liste des règles candidates *-*-*-*-*-*-*-*-*-*-**-**-*

(defun take_regle_candidate (variable a_liste  regle)
  " pour chaque regle de regle si le couple (variable valeur) de la a_liste  est vérifié dans la regle \
cette dernière est une regle candidate " 
  
  (let ((val_variable (get_value a_liste variable)) liste_regle_candidate)
    (cond ((null variable) nil)  
           (t            
            (loop 
             (unless regle (return-from take_regle_candidate liste_regle_candidate))  ;; a la fin du parcout  on retourne la  liste de regles candidates 
              (let ((element_regle (pop regle)) cible)      
                (setq cible (getv element_regle variable))
                (when cible
   " recherche de la valeur de la variable dans la regle et la comparer avec sa valeur dans la a_liste "
                
                (let ((fn (car cible))                                    
                      (valeur (get_value a_liste (cadr cible))))     
                     (if (funcall fn val_variable  valeur)
                       (setq liste_regle_candidate (cons element_regle  liste_regle_candidate))))) 
                ))))))  


-*-*-*-*-*------ fonction qui determine le niveau d'un fait passé en paramètre.-----*-*-*-*

(defun det_niveau (liste sous_base_regle)
  " on confronte la liste a la base des regles pour determiner le niveau de la liste \
  ce niveau sera de la forme  (attribut valeur) "
  
  (let ((variable_a_verifiee (get_premier_element (cdr liste)))
              (regle_concernee (get_regle_utile liste sous_base_regle)))
   (if (member 'vitesse_limite variable_a_verifiee) 
       (setq variable_a_verifiee (remove 'vitesse_limite variable_a_verifiee)))
    
    (dolist (x variable_a_verifiee)
                  (let ((regle_candidate (take_regle_candidate  x (cdr liste) regle_concernee)))
              (loop 
         (let ((regle (pop regle_candidate)) resultat)
     (setq resultat (check_regle (cdr liste) regle)) ;;; verifier la validité de la regle candidate
     (when resultat (return-from det_niveau resultat)))
         (unless regle_candidate (return nil)))))))


 -*-*-*-*----- verifie la validité d'une regle*-*-*-*-*-*-*-*-*-*-*-*-**
(defun check_regle (a_liste regle)
    " une regle est vrai si tous les elements qui le compose sont vraie\
pour celà parcourir tous les elements de la regle et verifier la valider "
     
  (let ((conclusion  (last_element regle)) liste)
    (setq liste (remove conclusion regle :test #' equal))
    (loop
      (unless liste (return-from check_regle conclusion))
      (let ((element (pop liste)) fn valeur_regle valeur_aliste)
             (setq valeur_aliste (getv a_liste (car element)))

        (when valeur_aliste
          (let ((fn (cadr element))  
               (valeur_regle (get_value a_liste (last_element element))))
        
   " on verifie que les deux variables sont de meme nature avant d'appliquer la fonction  fn "
        (setq res 
                (funcall fn (car valeur_aliste)  valeur_regle))  
        (if (not res)  
            (return-from check_regle nil)))) ;;;  si presence d'un attribut qui est faux donc cette regle n'est pas valide
      ))))


-*-*-*-*------- fonction qui affiche la conclusion(niveau de risque) ainsi obtenu *-*-*-*-**--*

(defun afficher_conclusion (conclusion)
  (setq lis '(*************************************************************************************************))
  (let ((risk (cadr conclusion)))
    (format t "~& ~{~s~}"lis)
    (cond 
     ((or (= 9 risk) (= 10 risk)) (format t "~%Votre niveau de risque est:~a~% Vous êtes dans une situation extrêmement risquée" risk))
     ((or (= 7 risk) (=  8 risk)) (format t "~%Votre niveau de risque est :~a~% vous êtes dans une situation très risquée" risk))
     ((or (= 5 risk) (= 6 risk)) (format t "~%Votre niveau de risque est :~a~% vous êtes dans une situation moyennement risquée" risk))
     (t  (format t "~%Votre niveau de risque est :~a~% vous êtes dans une situation peu risquée" risk)))
    (print conclusion))
  (format t "~& ~{~s~}"lis))


-*-*-*-*-*----- fonction qui determine le niveai de risque d'une situation de conduite ----*-*-*

(defun explore (base_fait)
  (let* ((regle_0 (extrait_niveau 0))
         (regle_1 (extrait_niveau 1))
        (var_conducteur  (get_variable base_fait 'conducteur))
        (var_vehicule (get_variable base_fait 'vehicule))
        (var_environnement (get_variable base_fait 'environnement))
        (niveau_conducteur (det_niveau var_conducteur regle_0))
        (niveau_vehicule (det_niveau var_vehicule regle_0))
         (niveau_environnement (det_niveau var_environnement regle_0)))
   

    (setq liste `(,niveau_conducteur ,niveau_vehicule ,niveau_environnement))
    (dolist (x liste)
      (when (not x) (error "il n'y a pas de solution pour votre cas")))
    (setq conclusion_niveau_0 (cons 'niveau_risque liste))    
    (setq base_fait (cons conclusion_niveau_0 base_fait))          
     (setq conclusion (det_niveau conclusion_niveau_0 regle_1))
      (if conclusion  
        (afficher_conclusion  conclusion)
     (error "aucune conclusion convenable a votre situtation n'a été trouvé"))
    ))





!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!chainage en arriere!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

                   ******************GET_FAIT**********************
(defun get_fait (niveau)
" a partir du niveau de risque , on recherche les faits qui sont responsables "
  
  (let ((regle_init (backtrack niveau)) (liste (question)) regle base_fait)      
    
" on trie les regles de la base des regles du niveau 0 pour etre plus precis sur les faits "
    
    (setq regle (mapcar #'(lambda (x) 
                            (take_regle_candidate x liste regle_init))
                  (get_premier_element liste)))
    (print regle)
    (dolist (sous_regle  regle)
" les reponses aux questions posées nous permets de reduire les faits de la  base_fait "
      
      
      (when (setq conclusion (check_regle liste (car sous_regle)))
        
        (setq base_fait (append base_fait `(,conclusion ,(pop liste))))))
    " on verifie si les questions posées sont suffisantes "    
      (print "*****************resultat*************************")
    (cond 
     ((base_fait_est_precis? base_fait) )
          (t (print "les conditions des faits initiaux les plus probables sont:")
             regle))))


    
       **********REGLE_EST_BONNE****************
 
(defun base_fait_est_precis? (liste)
" on verifie si les reponses aux questions posées nous permettent d'obtenir une base_fait dont chaque  attribut est unique"
  
  (let ((liste_sans_doublon (get_premier_element liste))
        liste_inter)
"   on recupere la liste de tous les attributs pour voir si un attribut est present plusieurs fois "     
        
    (dolist (x liste_sans_doublon liste)
      (if (member x liste_inter)              ;;;; si un attribut est present plusieurs les questions posées sont insuffisantes
          (return-from base_fait_est_precis? nil)
        (setq liste_inter (cons x liste_inter))))))


        
          ************** QUESTION***************        
(defun question ()
  (format t "quelle est lâge de votre permis ? ")
  (setq permis (read))
  (format t "quelle est l'etat de la route (seche, neige, glissant ) ?")
  (setq  etat_route (read))
  (format t "quelle est l'acceleration tangentielle ?")
  (setq  acc_tangentielle (read))
  (setq semi_base_fait `((permis ,permis) (etat_route ,etat_route) (acc_tangentielle ,acc_tangentielle))))
(defun take_valeur (liste)
 " cette fonction recupere les valeurs des attributs de chaque liste de la a_liste qui compose la regle passée en parametre"
  
  (let (result)
    (dolist (sous_liste liste result)
      (setq result (append result 
                           (mapcar #'(lambda(x) (last_element x)) sous_liste))))))


**************AUTRE FONCTION DE SERVICE********

(defun regle_utile (niveau regle)
" recherche et selectionne dans la base des regles ceux  dont le niveau de risque 
correspond a niveau (parametre de la fonction)  "
  
  (let (result)
    (loop
      (unless regle (return-from regle_utile result))
      (let* ((sous_regle (pop regle))
            (niveau_risque (last_element sous_regle)))
        (when (eql (cadr niveau_risque) niveau)
          " renvoie la liste des regles utile en supprimant la conclusion  (niveau_risque ) et
le niveau  (niveau val)  de chaque regle "      
          
          (setq result (cons (cdr (remove niveau_risque sous_regle :test #' equal)) result) ))))))


           ***********************BACKTRACK*******************
(defun backtrack (niveau)

  (let ((regle_1 (extrait_niveau 1))
        (regle_0 (extrait_niveau 0))
        regle_besoin liste_var_unique result conclusion regle)
    (setq regle_besoin (regle_utile niveau regle_1))
    (setq liste_conclusion (take_valeur regle_besoin))
    (dolist (x liste_conclusion)
      (when (not (member x liste_var_unique))
        (setq liste_var_unique (cons x liste_var_unique))))
    (loop
      (unless liste_var_unique (return-from backtrack regle))
      (let* ((element (pop liste_var_unique))
            (conclusion (regle_utile  element regle_0)))
        (setq regle (append conclusion regle))))))

  
************************************************test************************************************
Vous pouvez si vous le souhaitez modifier les paramètres suivant pour mieux voire les fonctionnalités du système


(setq base_fait '((conducteur (permis 4) (pratique 10000 )) (vehicule (vitesse 60) (acc_tangentielle 3)) 
                  (environnement (etat_route seche) (vitesse_limite 50) (acc_normale 2))))


(explore base_fait)

(get_fait 10)
(get_fait 1)
(get_fait 7)
