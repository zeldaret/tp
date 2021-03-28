lbl_8078294C:
/* 8078294C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80782950  7C 08 02 A6 */	mflr r0
/* 80782954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80782958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078295C  93 C1 00 08 */	stw r30, 8(r1)
/* 80782960  7C 7E 1B 78 */	mr r30, r3
/* 80782964  88 03 06 04 */	lbz r0, 0x604(r3)
/* 80782968  28 00 00 01 */	cmplwi r0, 1
/* 8078296C  40 82 00 34 */	bne lbl_807829A0
/* 80782970  3C 60 80 78 */	lis r3, lit_3758@ha
/* 80782974  C0 03 4D D8 */	lfs f0, lit_3758@l(r3)
/* 80782978  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8078297C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80782980  A8 9E 06 00 */	lha r4, 0x600(r30)
/* 80782984  38 A0 02 00 */	li r5, 0x200
/* 80782988  4B AE E2 08 */	b cLib_chaseAngleS__FPsss
/* 8078298C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80782990  A8 9E 06 00 */	lha r4, 0x600(r30)
/* 80782994  38 A0 02 00 */	li r5, 0x200
/* 80782998  4B AE E1 F8 */	b cLib_chaseAngleS__FPsss
/* 8078299C  48 00 00 34 */	b lbl_807829D0
lbl_807829A0:
/* 807829A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807829A4  38 9E 05 F4 */	addi r4, r30, 0x5f4
/* 807829A8  4B AE E2 5C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807829AC  7C 7F 1B 78 */	mr r31, r3
/* 807829B0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807829B4  7F E4 FB 78 */	mr r4, r31
/* 807829B8  38 A0 02 00 */	li r5, 0x200
/* 807829BC  4B AE E1 D4 */	b cLib_chaseAngleS__FPsss
/* 807829C0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807829C4  7F E4 FB 78 */	mr r4, r31
/* 807829C8  38 A0 02 00 */	li r5, 0x200
/* 807829CC  4B AE E1 C4 */	b cLib_chaseAngleS__FPsss
lbl_807829D0:
/* 807829D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807829D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 807829D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807829DC  7C 08 03 A6 */	mtlr r0
/* 807829E0  38 21 00 10 */	addi r1, r1, 0x10
/* 807829E4  4E 80 00 20 */	blr 
