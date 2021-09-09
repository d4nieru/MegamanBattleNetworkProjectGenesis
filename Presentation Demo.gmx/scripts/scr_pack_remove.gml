for(o = 0; o < 99; o += 1){
    if CTA[o] = 0 && CTO != noone{
         CTO[o] = noone;
         for(w = o; w < 98; w += 1){
            CTO[w] = CTO[w+1];
            CTA[w] = CTA[w+1];
         }
         CTO[99] = noone;
         CTA[99] = 0;
    }
}
