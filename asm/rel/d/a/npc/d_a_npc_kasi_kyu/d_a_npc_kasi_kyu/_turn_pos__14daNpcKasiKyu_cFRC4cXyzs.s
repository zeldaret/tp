lbl_80A24D10:
/* 80A24D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24D14  7C 08 02 A6 */	mflr r0
/* 80A24D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A24D20  93 C1 00 08 */	stw r30, 8(r1)
/* 80A24D24  7C 7E 1B 78 */	mr r30, r3
/* 80A24D28  7C BF 2B 78 */	mr r31, r5
/* 80A24D2C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A24D30  4B 84 BE D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A24D34  7C 64 1B 78 */	mr r4, r3
/* 80A24D38  38 7E 08 F2 */	addi r3, r30, 0x8f2
/* 80A24D3C  7F E5 FB 78 */	mr r5, r31
/* 80A24D40  4B 84 BE 50 */	b cLib_chaseAngleS__FPsss
/* 80A24D44  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A24D48  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A24D4C  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A24D50  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A24D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A24D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A24D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A24D60  7C 08 03 A6 */	mtlr r0
/* 80A24D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24D68  4E 80 00 20 */	blr 
