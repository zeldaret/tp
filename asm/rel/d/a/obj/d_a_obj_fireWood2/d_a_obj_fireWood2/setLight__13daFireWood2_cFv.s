lbl_80BE86CC:
/* 80BE86CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE86D0  7C 08 02 A6 */	mflr r0
/* 80BE86D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE86D8  88 03 07 18 */	lbz r0, 0x718(r3)
/* 80BE86DC  28 00 00 00 */	cmplwi r0, 0
/* 80BE86E0  41 82 00 0C */	beq lbl_80BE86EC
/* 80BE86E4  38 63 07 20 */	addi r3, r3, 0x720
/* 80BE86E8  4B 5B F0 A9 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
lbl_80BE86EC:
/* 80BE86EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE86F0  7C 08 03 A6 */	mtlr r0
/* 80BE86F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE86F8  4E 80 00 20 */	blr 
