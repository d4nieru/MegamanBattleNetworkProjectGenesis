if bc.StreamIndex[0] = bc.streamindex[0]+1{
    with(bc) {StreamIndex[0]++;}
}
if bc.StreamIndex[1] = bc.streamindex[1]+1{
    with(bc) {StreamIndex[1]++;}
}
if bc.StreamIndex[2] = bc.streamindex[2]+1{
    with(bc) {StreamIndex[2]++;}
}

if Stream != noone{
    instance_create(0,0,obj_fade);
    with(obj_player){
        with(instance_create(x,y,obj_stream_transformation)){
            image_index = 0;
            sprite_index = Stream;
        }
    }
    Stream = noone;
}
