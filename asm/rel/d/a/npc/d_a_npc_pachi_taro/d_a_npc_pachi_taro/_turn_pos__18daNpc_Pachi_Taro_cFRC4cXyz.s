lbl_80A9E2CC:
/* 80A9E2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9E2D0  7C 08 02 A6 */	mflr r0
/* 80A9E2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9E2D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9E2DC  7C 7F 1B 78 */	mr r31, r3
/* 80A9E2E0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A9E2E4  4B 7D 29 21 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A9E2E8  B0 7F 0D 7A */	sth r3, 0xd7a(r31)
/* 80A9E2EC  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80A9E2F0  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 80A9E2F4  38 60 00 01 */	li r3, 1
/* 80A9E2F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9E2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E300  7C 08 03 A6 */	mtlr r0
/* 80A9E304  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E308  4E 80 00 20 */	blr 
