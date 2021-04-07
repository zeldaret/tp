lbl_80D0EB40:
/* 80D0EB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0EB44  7C 08 02 A6 */	mflr r0
/* 80D0EB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0EB4C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D0EB50  4B 49 8C 41 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 80D0EB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0EB58  7C 08 03 A6 */	mtlr r0
/* 80D0EB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0EB60  4E 80 00 20 */	blr 
