package body resolutions is

   -----------------------
   -- estChiffreValable --
   -----------------------

   function estChiffreValable (g : in Type_Grille ; v : Integer ; c : Type_Coordonnee) return Boolean is
      e:Type_Ensemble;
      e_colone:Type_Ensemble;
      e_ligne:Type_Ensemble;
      e_carre:Type_Ensemble;
   begin
      if not caseVide(g,c) then
         raise CASE_NON_VIDE ;
      else
         e_colone := obtenirChiffresDUneColonne(g,obtenirColonne(c));
         e_ligne := obtenirChiffresDUneLigne(g,obtenirLigne(c));
         e_carre := obtenirChiffresDUnCarre(g,obtenirCarre(c));
         if e(v) /= e_colone(v) and e(v) /= e_ligne(v) and e(v) /= e_carre(v) then
            return TRUE ;
         else
            return FALSE ;
         end if;
      end if ;
   end estChiffreValable;

   -------------------------------
   -- obtenirSolutionsPossibles --
   -------------------------------

   function obtenirSolutionsPossibles (g : in Type_Grille;c : in Type_Coordonnee) return Type_Ensemble is
      e : Type_Ensemble
   begin
      if not caseVide(g,c) then
         raise CASE_NON_VIDE ;
      else
         for i in 1..9 loop
            e(i) := estChiffreValable(g,i,c) ;
         end loop;
      return e ;
   end obtenirSolutionsPossibles;

   ------------------------------------------
   -- rechercherSolutionUniqueDansEnsemble --
   ------------------------------------------

         function rechercherSolutionUniqueDansEnsemble (resultats : in Type_Ensemble) return Integer is
            temp:Integer;
         begin
            if nombreChiffres(resultats) = 1 then
               for i in 1..9 loop
                  temp:= resultats(i)*i;
               end loop;
               return temp ;
            else
               if nombreChiffres(resultats) > 1 then
                  raise PLUS_DE_UN_CHIFFRE ;
               else
                  raise ENSEMBLE_VIDE ;
               end if ;
            end if;
         end rechercherSolutionUniqueDansEnsemble;

   --------------------
   -- resoudreSudoku --
   --------------------

      procedure resoudreSudoku (g : in out Type_Grille; trouve : out Boolean) is
         begin
            while not estRemplie(g) loop
               for i in 1..9 loop
                  for j in 1..9 loop
                     c := construireCoordonnees(i,j);
                     if caseVide(g,c) then
                        obtenirSolutionsPossibles(g,c);
                        if nombreChiffres(resultats) = 1 then
                           rechercherSolutionUniqueDansEnsemble(obtenirSolutionsPossibles(g,c));
                        end if;
                     end if;
                  end loop;
               end loop;
            end loop;
      end resoudreSudoku;

end resolutions;
