with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

package Utils is

   package String_Vectors is new
     Ada.Containers.Vectors
       (Index_Type   => Positive,
        Element_Type => Unbounded_String);

   -- Function to split a string into an array of substrings
   function Split
     (Source : Unbounded_String; Delimiter : Character) return String_Vectors;

end Utils;
