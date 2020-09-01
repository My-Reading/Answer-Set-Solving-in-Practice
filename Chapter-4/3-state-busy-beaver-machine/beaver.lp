start(a).
blank(0).
tape(n, 0, n).

trans(a, 0, 1, b, r).
trans(a, 1, 1, c, l).
trans(b, 0, 1, a, l).
trans(b, 1, 1, b, r).
trans(c, 0, 1, b, l).
trans(c, 1, 1, h, r).
