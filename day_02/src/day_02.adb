with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Fixed;     use Ada.Strings.Fixed;
with Ada.Containers.Vectors;
with Utils;

procedure Day_02 is
   use Utils;

   F         : File_Type;
   Words     : String_Vectors.Vector;
   File_Name : constant String := "test_input.txt";
begin
   Open (F, In_File, File_Name);
   Words := Split (Get_Line (F), ',');
   Close (F);

   Put (Integer'Image (Words'Length));

--  for I in Words.First_Index .. Words.Last_Index loop
--     Put_Line ("Part " & Integer'Image (I) & ": " & Words (I));
--  end loop;

end Day_02;
