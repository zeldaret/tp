lbl_80A94B24:
/* 80A94B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A94B28  7C 08 02 A6 */	mflr r0
/* 80A94B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A94B30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A94B34  7C 7F 1B 78 */	mr r31, r3
/* 80A94B38  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A94B3C  4B 7D C0 C8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A94B40  B0 7F 0D 7A */	sth r3, 0xd7a(r31)
/* 80A94B44  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80A94B48  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 80A94B4C  38 60 00 01 */	li r3, 1
/* 80A94B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A94B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A94B58  7C 08 03 A6 */	mtlr r0
/* 80A94B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A94B60  4E 80 00 20 */	blr 
