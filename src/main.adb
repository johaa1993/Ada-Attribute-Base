with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;

procedure Main is

   use Ada.Text_IO;
   use Ada.Float_Text_IO;
   use Ada.Integer_Text_IO;


   type Index is new Integer range 3 .. 5;
   type Feature is new Float range 0.0 .. 1.0;

   package Index_IO is new Ada.Text_IO.Integer_IO (Index);
   package Feature_IO is new Ada.Text_IO.Float_IO (Feature);

   use Index_IO;
   use Feature_IO;


begin

   Put_Line ("Index ");
   Put (Index'First, 20);
   Put (Index'Last, 20);
   New_Line;
   Put (Integer (Index'Base'First), 20);
   Put (Integer (Index'Base'Last), 20);

   New_Line (2);

   Put_Line ("Feature ");
   Put (Feature'First, 40, 3, 0);
   Put (" ");
   Put (Feature'Last, 40, 3, 0);
   New_Line;
   Put (Float (Feature'Base'First), 40, 3, 0);
   Put (" ");
   Put (Float (Feature'Base'Last), 40, 3, 0);
   New_Line;

   null;
end;
