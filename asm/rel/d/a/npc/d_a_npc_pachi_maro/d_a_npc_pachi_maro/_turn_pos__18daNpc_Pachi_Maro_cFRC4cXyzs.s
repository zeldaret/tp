lbl_80A99948:
/* 80A99948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9994C  7C 08 02 A6 */	mflr r0
/* 80A99950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A99958  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9995C  7C 7E 1B 78 */	mr r30, r3
/* 80A99960  7C BF 2B 78 */	mr r31, r5
/* 80A99964  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A99968  4B 7D 72 9D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A9996C  7C 64 1B 78 */	mr r4, r3
/* 80A99970  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80A99974  7F E5 FB 78 */	mr r5, r31
/* 80A99978  4B 7D 72 19 */	bl cLib_chaseAngleS__FPsss
/* 80A9997C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A99980  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A99984  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A99988  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A9998C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A99990  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A99994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A99998  7C 08 03 A6 */	mtlr r0
/* 80A9999C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A999A0  4E 80 00 20 */	blr 
