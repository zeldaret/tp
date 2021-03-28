lbl_80D0FE60:
/* 80D0FE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0FE64  7C 08 02 A6 */	mflr r0
/* 80D0FE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0FE6C  88 03 0D E0 */	lbz r0, 0xde0(r3)
/* 80D0FE70  28 00 00 00 */	cmplwi r0, 0
/* 80D0FE74  40 82 00 0C */	bne lbl_80D0FE80
/* 80D0FE78  38 60 00 01 */	li r3, 1
/* 80D0FE7C  48 00 00 44 */	b lbl_80D0FEC0
lbl_80D0FE80:
/* 80D0FE80  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80D0FE84  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0FE88  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0FE8C  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80D0FE90  80 84 00 08 */	lwz r4, 8(r4)
/* 80D0FE94  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80D0FE98  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80D0FE9C  38 80 00 00 */	li r4, 0
/* 80D0FEA0  38 A0 00 00 */	li r5, 0
/* 80D0FEA4  3C C0 80 D1 */	lis r6, m__16daObjTks_Param_c@ha
/* 80D0FEA8  38 C6 27 3C */	addi r6, r6, m__16daObjTks_Param_c@l
/* 80D0FEAC  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80D0FEB0  38 C0 00 00 */	li r6, 0
/* 80D0FEB4  38 E0 00 00 */	li r7, 0
/* 80D0FEB8  4B 44 23 F4 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 80D0FEBC  38 60 00 01 */	li r3, 1
lbl_80D0FEC0:
/* 80D0FEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0FEC4  7C 08 03 A6 */	mtlr r0
/* 80D0FEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0FECC  4E 80 00 20 */	blr 
