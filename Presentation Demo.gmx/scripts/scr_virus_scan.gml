//Row 1
with(instance_place(140,91,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

with(instance_place(140,115,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

with(instance_place(140,139,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

//Row2
with(instance_place(180,91,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

with(instance_place(180,115,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

with(instance_place(180,139,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

//Row3
with(instance_place(220,91,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

with(instance_place(220,115,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

with(instance_place(220,139,obj_panel_blue)){
     if place_meeting(x,y,obj_virus) && !Virus_Found{
         if obj_field.VS[1] = ""{
           obj_field.VS[1] = instance_place(x,y,obj_virus).Name;
           with(instance_place(x,y,obj_virus)) {Fade_Order = 1};
           with(instance_place(x,y,obj_virus)) {Virus_Number = 1};
           Virus_Found = true;
           exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] = ""{
              obj_field.VS[2] = instance_place(x,y,obj_virus).Name;
              with(instance_place(x,y,obj_virus)) {Fade_Order = 2};
              with(instance_place(x,y,obj_virus)) {Virus_Number = 2};
              Virus_Found = true;
              exit;
         }
         if obj_field.VS[1] != "" && obj_field.VS[2] != "" && obj_field.VS[3] = ""{
            obj_field.VS[3] = instance_place(x,y,obj_virus).Name;
            with(instance_place(x,y,obj_virus)) {Fade_Order = 3};
            with(instance_place(x,y,obj_virus)) {Virus_Number = 3};
            Virus_Found = true;
            exit;
         }
     }
}

Virus_Scan = false;
