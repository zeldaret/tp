lbl_80C57194:
/* 80C57194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57198  7C 08 02 A6 */	mflr r0
/* 80C5719C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C571A0  88 03 07 40 */	lbz r0, 0x740(r3)
/* 80C571A4  28 00 00 00 */	cmplwi r0, 0
/* 80C571A8  41 82 00 0C */	beq lbl_80C571B4
/* 80C571AC  38 63 07 48 */	addi r3, r3, 0x748
/* 80C571B0  4B 55 07 7C */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C571B4:
/* 80C571B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C571B8  7C 08 03 A6 */	mtlr r0
/* 80C571BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C571C0  4E 80 00 20 */	blr 
