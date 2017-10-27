size(0,2cm);

pair points[];
points.push((0,0));
path[] carcass;

void add(pair d) {
    int n = points.length;
    carcass = carcass ^^ shift(d) * carcass;
    for (int i = 0; i < n; ++i) {
        pair old_point = points[i];
        pair new_point = old_point + d;
        points.push(new_point);
        carcass = carcass ^^ old_point--new_point;
    }
}

add((1,0));
add((0,1));
add((0.25,0.25));
add((1.75,-0.25));

for (int i = 0; i < points.length; ++i) {
    dot(points[i]);
}
draw(carcass);

