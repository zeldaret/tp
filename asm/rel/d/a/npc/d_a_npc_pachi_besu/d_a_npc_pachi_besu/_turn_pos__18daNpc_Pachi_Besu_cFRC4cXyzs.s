lbl_80A94AC8:
/* 80A94AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A94ACC  7C 08 02 A6 */	mflr r0
/* 80A94AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A94AD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A94AD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A94ADC  7C 7E 1B 78 */	mr r30, r3
/* 80A94AE0  7C BF 2B 78 */	mr r31, r5
/* 80A94AE4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A94AE8  4B 7D C1 1C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A94AEC  7C 64 1B 78 */	mr r4, r3
/* 80A94AF0  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80A94AF4  7F E5 FB 78 */	mr r5, r31
/* 80A94AF8  4B 7D C0 98 */	b cLib_chaseAngleS__FPsss
/* 80A94AFC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A94B00  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A94B04  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A94B08  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A94B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A94B10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A94B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A94B18  7C 08 03 A6 */	mtlr r0
/* 80A94B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A94B20  4E 80 00 20 */	blr 
