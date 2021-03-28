lbl_80A1F1E4:
/* 80A1F1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1F1E8  7C 08 02 A6 */	mflr r0
/* 80A1F1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1F1F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1F1F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A1F1F8  7C 7E 1B 78 */	mr r30, r3
/* 80A1F1FC  7C BF 2B 78 */	mr r31, r5
/* 80A1F200  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A1F204  4B 85 1A 00 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A1F208  7C 64 1B 78 */	mr r4, r3
/* 80A1F20C  38 7E 08 F2 */	addi r3, r30, 0x8f2
/* 80A1F210  7F E5 FB 78 */	mr r5, r31
/* 80A1F214  4B 85 19 7C */	b cLib_chaseAngleS__FPsss
/* 80A1F218  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A1F21C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A1F220  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A1F224  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A1F228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1F22C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A1F230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1F234  7C 08 03 A6 */	mtlr r0
/* 80A1F238  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1F23C  4E 80 00 20 */	blr 
