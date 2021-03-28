lbl_804EF6B4:
/* 804EF6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF6B8  7C 08 02 A6 */	mflr r0
/* 804EF6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF6C0  3C A0 80 50 */	lis r5, lit_1109@ha
/* 804EF6C4  38 C5 AE 58 */	addi r6, r5, lit_1109@l
/* 804EF6C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 804EF6CC  D0 06 01 08 */	stfs f0, 0x108(r6)
/* 804EF6D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804EF6D4  38 A6 01 08 */	addi r5, r6, 0x108
/* 804EF6D8  D0 05 00 04 */	stfs f0, 4(r5)
/* 804EF6DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 804EF6E0  D0 05 00 08 */	stfs f0, 8(r5)
/* 804EF6E4  D0 26 01 14 */	stfs f1, 0x114(r6)
/* 804EF6E8  D0 46 01 18 */	stfs f2, 0x118(r6)
/* 804EF6EC  98 86 01 1C */	stb r4, 0x11c(r6)
/* 804EF6F0  3C 60 80 4F */	lis r3, s_hasira_sub__FPvPv@ha
/* 804EF6F4  38 63 F2 9C */	addi r3, r3, s_hasira_sub__FPvPv@l
/* 804EF6F8  38 80 00 00 */	li r4, 0
/* 804EF6FC  4B B3 1C 3C */	b fpcEx_Search__FPFPvPv_PvPv
/* 804EF700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF704  7C 08 03 A6 */	mtlr r0
/* 804EF708  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF70C  4E 80 00 20 */	blr 
