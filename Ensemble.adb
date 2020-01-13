package body ensemble is

   ------------------------
   -- construireEnsemble --
   ------------------------

   function construireEnsemble return Type_Ensemble is
      e : Type_Ensemble ;
   begin
      return e ;
   end construireEnsemble;

   ------------------
   -- ensembleVide --
   ------------------

   function ensembleVide (e : in Type_Ensemble) return Boolean is
      i:Integer;
      b:Boolean;
   begin
      b := FALSE ;
      for i in 1..9 loop
         if e = 1 then
            b := TRUE;
         end if;
      end loop;
      return b;
   end ensembleVide;

   -----------------------
   -- appartientChiffre --
   -----------------------

   function appartientChiffre (e : in Type_Ensemble ; v : Integer) return Boolean
   is
   begin
      return (e(v) = 1) ;
   end appartientChiffre;

   --------------------
   -- nombreChiffres --
   --------------------

   function nombreChiffres (e : in Type_Ensemble) return Integer is
      i:Integer;
      nb_elements:Integer;
   begin
      nb_elements := 0 ;
      for i in 1..9 loop
         if i = 1 then
            nb_elements := nb_elements + 1 ;
         end if;
      end loop;
      return nb_elements ;
   end nombreChiffres;

   --------------------
   -- ajouterChiffre --
   --------------------

   procedure ajouterChiffre (e : in out Type_Ensemble; v : in Integer) is
   begin
      if appartientChiffre(e,v) = 1 then
         raise APPARTIENT_ENSEMBLE ;
      else
         e(v) := 1 ;
      end if;
   end ajouterChiffre;

   --------------------
   -- retirerChiffre --
   --------------------

   procedure retirerChiffre (e : in out Type_Ensemble; v : in Integer) is
   begin
      if appartientChiffre(e,v) = 0 then
         raise NON_APPARTIENT_ENSEMBLE ;
      else
         e(v) := 0 ;
      end if;
   end retirerChiffre;

end ensemble;
