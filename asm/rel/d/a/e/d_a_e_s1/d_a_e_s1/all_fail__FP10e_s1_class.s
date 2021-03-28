lbl_8077CAA4:
/* 8077CAA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077CAA8  7C 08 02 A6 */	mflr r0
/* 8077CAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077CAB0  7C 64 1B 78 */	mr r4, r3
/* 8077CAB4  3C 60 80 78 */	lis r3, s_allfail_sub__FPvPv@ha
/* 8077CAB8  38 63 CA 0C */	addi r3, r3, s_allfail_sub__FPvPv@l
/* 8077CABC  4B 8A 48 7C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8077CAC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077CAC4  7C 08 03 A6 */	mtlr r0
/* 8077CAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8077CACC  4E 80 00 20 */	blr 
