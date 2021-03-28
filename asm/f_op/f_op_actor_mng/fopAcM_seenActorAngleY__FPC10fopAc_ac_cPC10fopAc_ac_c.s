lbl_8001A79C:
/* 8001A79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001A7A0  7C 08 02 A6 */	mflr r0
/* 8001A7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001A7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001A7AC  7C 7F 1B 78 */	mr r31, r3
/* 8001A7B0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8001A7B4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8001A7B8  48 25 64 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8001A7BC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8001A7C0  7C 00 18 50 */	subf r0, r0, r3
/* 8001A7C4  7C 03 07 34 */	extsh r3, r0
/* 8001A7C8  48 34 A9 09 */	bl abs
/* 8001A7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001A7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A7D4  7C 08 03 A6 */	mtlr r0
/* 8001A7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A7DC  4E 80 00 20 */	blr 
