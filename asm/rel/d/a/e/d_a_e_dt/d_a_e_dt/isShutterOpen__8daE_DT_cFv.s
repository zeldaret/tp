lbl_806B01B4:
/* 806B01B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B01B8  7C 08 02 A6 */	mflr r0
/* 806B01BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B01C0  38 60 00 47 */	li r3, 0x47
/* 806B01C4  38 81 00 08 */	addi r4, r1, 8
/* 806B01C8  4B 96 98 65 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 806B01CC  80 61 00 08 */	lwz r3, 8(r1)
/* 806B01D0  28 03 00 00 */	cmplwi r3, 0
/* 806B01D4  41 82 00 18 */	beq lbl_806B01EC
/* 806B01D8  88 03 05 D9 */	lbz r0, 0x5d9(r3)
/* 806B01DC  28 00 00 00 */	cmplwi r0, 0
/* 806B01E0  41 82 00 0C */	beq lbl_806B01EC
/* 806B01E4  38 60 00 01 */	li r3, 1
/* 806B01E8  48 00 00 08 */	b lbl_806B01F0
lbl_806B01EC:
/* 806B01EC  38 60 00 00 */	li r3, 0
lbl_806B01F0:
/* 806B01F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B01F4  7C 08 03 A6 */	mtlr r0
/* 806B01F8  38 21 00 10 */	addi r1, r1, 0x10
/* 806B01FC  4E 80 00 20 */	blr 
