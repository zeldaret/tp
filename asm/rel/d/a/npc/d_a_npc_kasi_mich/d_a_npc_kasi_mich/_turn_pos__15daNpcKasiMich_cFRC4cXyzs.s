lbl_80A294A4:
/* 80A294A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A294A8  7C 08 02 A6 */	mflr r0
/* 80A294AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A294B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A294B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A294B8  7C 7E 1B 78 */	mr r30, r3
/* 80A294BC  7C BF 2B 78 */	mr r31, r5
/* 80A294C0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A294C4  4B 84 77 41 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A294C8  7C 64 1B 78 */	mr r4, r3
/* 80A294CC  38 7E 08 F2 */	addi r3, r30, 0x8f2
/* 80A294D0  7F E5 FB 78 */	mr r5, r31
/* 80A294D4  4B 84 76 BD */	bl cLib_chaseAngleS__FPsss
/* 80A294D8  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A294DC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A294E0  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A294E4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A294E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A294EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A294F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A294F4  7C 08 03 A6 */	mtlr r0
/* 80A294F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A294FC  4E 80 00 20 */	blr 
