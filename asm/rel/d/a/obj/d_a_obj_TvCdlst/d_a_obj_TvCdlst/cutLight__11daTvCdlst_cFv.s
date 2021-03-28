lbl_80B9F220:
/* 80B9F220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F224  7C 08 02 A6 */	mflr r0
/* 80B9F228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F22C  88 03 07 0C */	lbz r0, 0x70c(r3)
/* 80B9F230  28 00 00 00 */	cmplwi r0, 0
/* 80B9F234  41 82 00 0C */	beq lbl_80B9F240
/* 80B9F238  38 63 07 14 */	addi r3, r3, 0x714
/* 80B9F23C  4B 60 86 F0 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80B9F240:
/* 80B9F240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F244  7C 08 03 A6 */	mtlr r0
/* 80B9F248  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F24C  4E 80 00 20 */	blr 
