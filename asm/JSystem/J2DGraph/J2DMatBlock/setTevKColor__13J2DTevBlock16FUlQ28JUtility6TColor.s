lbl_802F1DD4:
/* 802F1DD4  88 05 00 00 */	lbz r0, 0(r5)
/* 802F1DD8  54 84 10 3A */	slwi r4, r4, 2
/* 802F1DDC  7C 63 22 14 */	add r3, r3, r4
/* 802F1DE0  98 03 00 F8 */	stb r0, 0xf8(r3)
/* 802F1DE4  88 05 00 01 */	lbz r0, 1(r5)
/* 802F1DE8  98 03 00 F9 */	stb r0, 0xf9(r3)
/* 802F1DEC  88 05 00 02 */	lbz r0, 2(r5)
/* 802F1DF0  98 03 00 FA */	stb r0, 0xfa(r3)
/* 802F1DF4  88 05 00 03 */	lbz r0, 3(r5)
/* 802F1DF8  98 03 00 FB */	stb r0, 0xfb(r3)
/* 802F1DFC  4E 80 00 20 */	blr 
