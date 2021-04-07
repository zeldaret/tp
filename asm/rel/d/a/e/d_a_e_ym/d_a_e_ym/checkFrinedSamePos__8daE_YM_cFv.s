lbl_80812FCC:
/* 80812FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80812FD0  7C 08 02 A6 */	mflr r0
/* 80812FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80812FD8  7C 64 1B 78 */	mr r4, r3
/* 80812FDC  88 03 06 AA */	lbz r0, 0x6aa(r3)
/* 80812FE0  28 00 00 00 */	cmplwi r0, 0
/* 80812FE4  40 82 00 18 */	bne lbl_80812FFC
/* 80812FE8  60 00 00 80 */	ori r0, r0, 0x80
/* 80812FEC  98 04 06 AA */	stb r0, 0x6aa(r4)
/* 80812FF0  3C 60 80 81 */	lis r3, s_ym_sub__FPvPv@ha /* 0x80812F0C@ha */
/* 80812FF4  38 63 2F 0C */	addi r3, r3, s_ym_sub__FPvPv@l /* 0x80812F0C@l */
/* 80812FF8  4B 80 E3 41 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80812FFC:
/* 80812FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80813000  7C 08 03 A6 */	mtlr r0
/* 80813004  38 21 00 10 */	addi r1, r1, 0x10
/* 80813008  4E 80 00 20 */	blr 
