import geometry;
size(2cm);

point pA[], pB[];
pA.cyclic = true;

pA.push((0,0));
pA.push((3,0));
pA.push((4,1));
pA.push((2,4));
pA.push((0,3));

guide pentA, pentA1, pentB;
for (int i = 0; i < 5; ++i) {
    pB[i] = extension(pA[i], pA[i+2], pA[i+1], pA[i+3]);
    pentA = pentA--pA[i];
    pentA1 = pentA1--pA[2i];
    pentB = pentB--pB[i];
}
pentA = pentA--cycle;
pentA1 = pentA1--cycle;
pentB = pentB--cycle;

fill(pentB, gray(0.85));
draw(pentA);
draw(pentA1);

