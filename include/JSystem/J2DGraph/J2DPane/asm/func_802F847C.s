/* 802F847C 002F53BC  C0 02 C7 F0 */ lfs f0, lbl_804561F0-_SDA2_BASE_(r2)
/* 802F8480 002F53C0  3C 60 80 43 */ lis r3, lbl_804349B0@ha
/* 802F8484 002F53C4  D4 03 49 B0 */ stfsu f0, lbl_804349B0@l(r3)
/* 802F8488 002F53C8  D0 03 00 04 */ stfs f0, 4(r3)
/* 802F848C 002F53CC  D0 03 00 08 */ stfs f0, 8(r3)
/* 802F8490 002F53D0  D0 03 00 0C */ stfs f0, 0xc(r3)
/* 802F8494 002F53D4  4E 80 00 20 */ blr
