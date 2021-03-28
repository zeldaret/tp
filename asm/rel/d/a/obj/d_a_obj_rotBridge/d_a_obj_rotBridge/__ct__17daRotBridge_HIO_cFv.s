lbl_80CBE98C:
/* 80CBE98C  3C 80 80 CC */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80CBE990  38 04 F7 74 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80CBE994  90 03 00 00 */	stw r0, 0(r3)
/* 80CBE998  3C 80 80 CC */	lis r4, __vt__17daRotBridge_HIO_c@ha
/* 80CBE99C  38 04 F7 68 */	addi r0, r4, __vt__17daRotBridge_HIO_c@l
/* 80CBE9A0  90 03 00 00 */	stw r0, 0(r3)
/* 80CBE9A4  38 00 00 3C */	li r0, 0x3c
/* 80CBE9A8  98 03 00 05 */	stb r0, 5(r3)
/* 80CBE9AC  38 00 00 01 */	li r0, 1
/* 80CBE9B0  98 03 00 06 */	stb r0, 6(r3)
/* 80CBE9B4  38 00 00 03 */	li r0, 3
/* 80CBE9B8  98 03 00 04 */	stb r0, 4(r3)
/* 80CBE9BC  3C 80 80 CC */	lis r4, lit_3626@ha
/* 80CBE9C0  C0 04 F6 68 */	lfs f0, lit_3626@l(r4)
/* 80CBE9C4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CBE9C8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CBE9CC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80CBE9D0  38 00 00 00 */	li r0, 0
/* 80CBE9D4  98 03 00 14 */	stb r0, 0x14(r3)
/* 80CBE9D8  4E 80 00 20 */	blr 
