lbl_806C84A0:
/* 806C84A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C84A4  7C 08 02 A6 */	mflr r0
/* 806C84A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C84AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C84B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C84B4  7C 7E 1B 78 */	mr r30, r3
/* 806C84B8  7C 9F 23 78 */	mr r31, r4
/* 806C84BC  7C A6 2B 78 */	mr r6, r5
/* 806C84C0  38 61 00 08 */	addi r3, r1, 8
/* 806C84C4  A8 BE 0B 8C */	lha r5, 0xb8c(r30)
/* 806C84C8  4B BA 88 F8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806C84CC  7F E3 FB 78 */	mr r3, r31
/* 806C84D0  38 81 00 08 */	addi r4, r1, 8
/* 806C84D4  4B BA 87 30 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806C84D8  A8 1E 0B 8C */	lha r0, 0xb8c(r30)
/* 806C84DC  7C 03 00 50 */	subf r0, r3, r0
/* 806C84E0  7C 03 07 34 */	extsh r3, r0
/* 806C84E4  4B C9 CB EC */	b abs
/* 806C84E8  38 80 20 00 */	li r4, 0x2000
/* 806C84EC  7C 80 1A 78 */	xor r0, r4, r3
/* 806C84F0  7C 03 0E 70 */	srawi r3, r0, 1
/* 806C84F4  7C 00 20 38 */	and r0, r0, r4
/* 806C84F8  7C 00 18 50 */	subf r0, r0, r3
/* 806C84FC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 806C8500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C8504  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C8508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C850C  7C 08 03 A6 */	mtlr r0
/* 806C8510  38 21 00 20 */	addi r1, r1, 0x20
/* 806C8514  4E 80 00 20 */	blr 
