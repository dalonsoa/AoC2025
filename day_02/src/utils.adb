with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

package body Utils is

   -- Function to split a string into an array of substrings
   function Split
     (Source : Unbounded_String; Delimiter : Character)
      return Ada.Containers.Vectors.Vector
   is
      package String_Vectors is new
        Ada.Containers.Vectors
          (Index_Type   => Positive,
           Element_Type => Unbounded_String);
      Result : String_Vectors.Vector;
      Start  : Positive := Source'First;
      Stop   : Natural;
   begin
      loop
         -- Find the next delimiter
         Stop := Index (Source (Start .. Source'Last), Delimiter);

         if Stop = 0 then
            -- No more delimiters, add the rest of the string
            Result.Append (Source (Start .. Source'Last));
            exit;
         else
            -- Add substring before the delimiter
            Result.Append (Source (Start .. Start + Stop - 2));
            -- Move start position after the delimiter
            Start := Start + Stop;
         end if;
      end loop;

      return Result;
   end Split;

end Utils;
