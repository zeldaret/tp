lbl_80BE7A14:
/* 80BE7A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7A18  7C 08 02 A6 */	mflr r0
/* 80BE7A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7A20  38 63 07 1C */	addi r3, r3, 0x71c
/* 80BE7A24  4B 5B FD 6C */	b dKy_plight_set__FP15LIGHT_INFLUENCE
/* 80BE7A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7A2C  7C 08 03 A6 */	mtlr r0
/* 80BE7A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7A34  4E 80 00 20 */	blr 
