-- 13-01-2020

package body grilleSudoku is

   ----------------------
   -- construireGrille --
   ----------------------

   function construireGrille return Type_Grille is
   begin

      return construireGrille;
   end construireGrille;

   --------------
   -- caseVide --
   --------------

   function caseVide
     (g : in Type_Grille;
      c : in Type_Coordonnee)
      return Boolean
   is
   begin

      return caseVide (g => g, c => c);
   end caseVide;

   --------------------
   -- obtenirChiffre --
   --------------------

   function obtenirChiffre
     (g : in Type_Grille;
      c : in Type_Coordonnee)
      return Integer
   is
   begin

      return obtenirChiffre (g => g, c => c);
   end obtenirChiffre;

   --------------------
   -- nombreChiffres --
   --------------------

   function nombreChiffres (g : in Type_Grille) return Integer is
   begin

      return nombreChiffres (g => g);
   end nombreChiffres;

   ------------------
   -- fixerChiffre --
   ------------------

   procedure fixerChiffre
     (g : in out Type_Grille;
      c : in     Type_Coordonnee;
      v : in     Integer)
   is
   begin

   end fixerChiffre;

   ---------------
   -- viderCase --
   ---------------

   procedure viderCase (g : in out Type_Grille; c : in out Type_Coordonnee) is
   begin

   end viderCase;

   ----------------
   -- estRemplie --
   ----------------

   function estRemplie (g : in Type_Grille) return Boolean is
   begin

      return estRemplie (g => g);
   end estRemplie;

   ------------------------------
   -- obtenirChiffresDUneLigne --
   ------------------------------

   function obtenirChiffresDUneLigne
     (g        : in Type_Grille;
      numLigne : in Integer)
      return Type_Ensemble
   is
   begin

      return obtenirChiffresDUneLigne (g => g, numLigne => numLigne);
   end obtenirChiffresDUneLigne;

   --------------------------------
   -- obtenirChiffresDUneColonne --
   --------------------------------

   function obtenirChiffresDUneColonne (g: in Type_Grille; numColonne : in Integer return Type_Ensemble is
   begin

      return obtenirChiffresDUneColonne (g => g, numColonne => numColonne);
   end obtenirChiffresDUneColonne;

   -----------------------------
   -- obtenirChiffresDUnCarre --
   -----------------------------

   function obtenirChiffresDUnCarre (g: in Type_Grille; numCarre : in Integer) return Type_Ensemble is
   begin

      return obtenirChiffresDUnCarre (g => g, numCarre => numCarre);
   end obtenirChiffresDUnCarre;

end grilleSudoku;
