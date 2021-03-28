lbl_80C89A24:
/* 80C89A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89A28  7C 08 02 A6 */	mflr r0
/* 80C89A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C89A34  7C 7F 1B 78 */	mr r31, r3
/* 80C89A38  48 00 00 41 */	bl liftReset__10daL8Lift_cFv
/* 80C89A3C  38 00 00 09 */	li r0, 9
/* 80C89A40  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C89A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C89A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89A4C  7C 08 03 A6 */	mtlr r0
/* 80C89A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89A54  4E 80 00 20 */	blr 
