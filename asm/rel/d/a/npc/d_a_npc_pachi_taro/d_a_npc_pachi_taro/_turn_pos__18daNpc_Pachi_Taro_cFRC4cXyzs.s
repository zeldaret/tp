lbl_80A9E270:
/* 80A9E270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9E274  7C 08 02 A6 */	mflr r0
/* 80A9E278  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9E27C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9E280  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9E284  7C 7E 1B 78 */	mr r30, r3
/* 80A9E288  7C BF 2B 78 */	mr r31, r5
/* 80A9E28C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A9E290  4B 7D 29 74 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A9E294  7C 64 1B 78 */	mr r4, r3
/* 80A9E298  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80A9E29C  7F E5 FB 78 */	mr r5, r31
/* 80A9E2A0  4B 7D 28 F0 */	b cLib_chaseAngleS__FPsss
/* 80A9E2A4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A9E2A8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A9E2AC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A9E2B0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A9E2B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9E2B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9E2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E2C0  7C 08 03 A6 */	mtlr r0
/* 80A9E2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E2C8  4E 80 00 20 */	blr 
