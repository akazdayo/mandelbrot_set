struct CameraUniform {
    pos: vec2<f32>,
    zoom: f32,
    width: f32,
    height: f32,
    padding: f32,
}
@group(0) @binding(0)
var<uniform> camera_w: CameraUniform;

struct VertexInput {
    @location(0) position: vec2<f32>,
}

struct VertexOutput {
    @builtin(position) clip_position: vec4<f32>,
}

const model_matrix: mat4x4<f32> = mat4x4<f32>(
    1, 0, 0, 0,
    0, 1, 0, 0,
    0, 0, 1, 0,
    0, 0, 0, 1,
);

@vertex
fn vs_main(
    model: VertexInput,
) -> VertexOutput {
    var out: VertexOutput;

    out.clip_position = vec4<f32>(model.position, 0.0, 1.0) * model_matrix;

    return out;
}
@fragment fn fs_10ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = 0;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 10; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 10;

    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_20ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = 0;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 20; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 20;

    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_50ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = 0;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 50; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 50;

    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_100ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = -1;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 100; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }

    var p = f32(count) / 100;
    
    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_200ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = -1;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 200; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 200;
    
    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_500ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = 0;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 500; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 500;
    
    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_1000ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = 0;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 1000; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 1000;
    
    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_2000ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = 0;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 2000; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 2000;
    
    return vec4<f32>(p, p, p, 1.0);
}
@fragment fn fs_5000ex(in: VertexOutput) -> @location(0) vec4<f32> {
    var count = 0;
    var d = vec2<f32>(0.0, 0.0);
    var f = vec2<f32>(
        (in.clip_position.x - camera_w.width  / 2) / 500 / camera_w.zoom + camera_w.pos.x,
        (in.clip_position.y - camera_w.height / 2) / 500 / camera_w.zoom - camera_w.pos.y,
    );
    var end: bool;

    end = false;
    for (var i = 0; i < 5000; i++) {
        var new_x = d.x*d.x - d.y*d.y + f.x; 
        d.y = d.x * d.y * 2.0 + f.y;
        d.x = new_x;
        if d.x*d.x + d.y*d.y >= 4.0 && !end {
            end = true;
            count = i;
        }
    }
    var p = f32(count) / 5000;
    
    return vec4<f32>(p, p, p, 1.0);
}