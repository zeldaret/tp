lbl_809F4638:
/* 809F4638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F463C  7C 08 02 A6 */	mflr r0
/* 809F4640  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F4644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F4648  7C 7F 1B 78 */	mr r31, r3
/* 809F464C  38 80 00 00 */	li r4, 0
/* 809F4650  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 809F4654  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809F4658  41 82 00 14 */	beq lbl_809F466C
/* 809F465C  38 9F 05 D0 */	addi r4, r31, 0x5d0
/* 809F4660  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809F4664  48 00 33 CD */	bl getGroundSlope__13daNpc_GWolf_cFR12dBgS_ObjAcchs
/* 809F4668  7C 64 1B 78 */	mr r4, r3
lbl_809F466C:
/* 809F466C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 809F4670  38 A0 00 03 */	li r5, 3
/* 809F4674  38 C0 00 80 */	li r6, 0x80
/* 809F4678  4B 87 BF 90 */	b cLib_addCalcAngleS2__FPssss
/* 809F467C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 809F4680  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809F4684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F4688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F468C  7C 08 03 A6 */	mtlr r0
/* 809F4690  38 21 00 10 */	addi r1, r1, 0x10
/* 809F4694  4E 80 00 20 */	blr 
