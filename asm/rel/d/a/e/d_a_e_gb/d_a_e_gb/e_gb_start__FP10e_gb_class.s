lbl_806C33C8:
/* 806C33C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C33CC  7C 08 02 A6 */	mflr r0
/* 806C33D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C33D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C33D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C33DC  7C 7E 1B 78 */	mr r30, r3
/* 806C33E0  3C 80 80 6C */	lis r4, lit_3906@ha
/* 806C33E4  3B E4 74 E8 */	addi r31, r4, lit_3906@l
/* 806C33E8  38 00 00 14 */	li r0, 0x14
/* 806C33EC  B0 03 06 CE */	sth r0, 0x6ce(r3)
/* 806C33F0  A8 03 06 9C */	lha r0, 0x69c(r3)
/* 806C33F4  2C 00 00 02 */	cmpwi r0, 2
/* 806C33F8  41 82 00 4C */	beq lbl_806C3444
/* 806C33FC  40 80 00 10 */	bge lbl_806C340C
/* 806C3400  2C 00 00 00 */	cmpwi r0, 0
/* 806C3404  41 82 00 18 */	beq lbl_806C341C
/* 806C3408  48 00 01 38 */	b lbl_806C3540
lbl_806C340C:
/* 806C340C  2C 00 00 04 */	cmpwi r0, 4
/* 806C3410  41 82 00 70 */	beq lbl_806C3480
/* 806C3414  40 80 01 2C */	bge lbl_806C3540
/* 806C3418  48 00 00 50 */	b lbl_806C3468
lbl_806C341C:
/* 806C341C  38 00 00 01 */	li r0, 1
/* 806C3420  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C3424  38 80 00 11 */	li r4, 0x11
/* 806C3428  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C342C  38 A0 00 02 */	li r5, 2
/* 806C3430  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C3434  4B FF E9 09 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C3438  38 00 00 01 */	li r0, 1
/* 806C343C  B0 1E 0E 90 */	sth r0, 0xe90(r30)
/* 806C3440  48 00 01 00 */	b lbl_806C3540
lbl_806C3444:
/* 806C3444  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806C3448  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806C344C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806C3450  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806C3454  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806C3458  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806C345C  38 00 00 03 */	li r0, 3
/* 806C3460  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C3464  48 00 00 DC */	b lbl_806C3540
lbl_806C3468:
/* 806C3468  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806C346C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806C3470  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806C3474  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806C3478  4B BA C5 C4 */	b cLib_addCalc2__FPffff
/* 806C347C  48 00 00 C4 */	b lbl_806C3540
lbl_806C3480:
/* 806C3480  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C3484  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C3488  80 63 00 00 */	lwz r3, 0(r3)
/* 806C348C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 806C3490  4B 94 8F 4C */	b mDoMtx_YrotS__FPA4_fs
/* 806C3494  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806C3498  D0 01 00 08 */	stfs f0, 8(r1)
/* 806C349C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806C34A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806C34A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C34A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806C34AC  38 61 00 08 */	addi r3, r1, 8
/* 806C34B0  38 9E 06 A8 */	addi r4, r30, 0x6a8
/* 806C34B4  4B BA DA 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C34B8  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 806C34BC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806C34C0  7C 65 1B 78 */	mr r5, r3
/* 806C34C4  4B C8 3B CC */	b PSVECAdd
/* 806C34C8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806C34CC  C0 3E 06 A8 */	lfs f1, 0x6a8(r30)
/* 806C34D0  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C34D4  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 806C34D8  4B BA C5 64 */	b cLib_addCalc2__FPffff
/* 806C34DC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806C34E0  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 806C34E4  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C34E8  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 806C34EC  4B BA C5 50 */	b cLib_addCalc2__FPffff
/* 806C34F0  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 806C34F4  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 806C34F8  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C34FC  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 806C3500  4B BA C5 3C */	b cLib_addCalc2__FPffff
/* 806C3504  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806C3508  38 80 C0 00 */	li r4, -16384
/* 806C350C  38 A0 00 10 */	li r5, 0x10
/* 806C3510  38 C0 02 00 */	li r6, 0x200
/* 806C3514  4B BA D0 F4 */	b cLib_addCalcAngleS2__FPssss
/* 806C3518  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806C351C  38 80 40 00 */	li r4, 0x4000
/* 806C3520  38 A0 00 10 */	li r5, 0x10
/* 806C3524  38 C0 02 00 */	li r6, 0x200
/* 806C3528  4B BA D0 E0 */	b cLib_addCalcAngleS2__FPssss
/* 806C352C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806C3530  38 80 20 00 */	li r4, 0x2000
/* 806C3534  38 A0 00 10 */	li r5, 0x10
/* 806C3538  38 C0 01 00 */	li r6, 0x100
/* 806C353C  4B BA D0 CC */	b cLib_addCalcAngleS2__FPssss
lbl_806C3540:
/* 806C3540  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C3544  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C3548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C354C  7C 08 03 A6 */	mtlr r0
/* 806C3550  38 21 00 20 */	addi r1, r1, 0x20
/* 806C3554  4E 80 00 20 */	blr 
