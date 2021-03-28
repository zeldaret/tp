lbl_806F3388:
/* 806F3388  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F338C  7C 08 02 A6 */	mflr r0
/* 806F3390  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F3394  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806F3398  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806F339C  7C 7F 1B 78 */	mr r31, r3
/* 806F33A0  3C 60 80 6F */	lis r3, lit_3767@ha
/* 806F33A4  3B C3 55 14 */	addi r30, r3, lit_3767@l
/* 806F33A8  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806F33AC  2C 00 00 0F */	cmpwi r0, 0xf
/* 806F33B0  40 82 00 48 */	bne lbl_806F33F8
/* 806F33B4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F33B8  38 63 00 0C */	addi r3, r3, 0xc
/* 806F33BC  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 806F33C0  4B C3 50 6C */	b checkPass__12J3DFrameCtrlFf
/* 806F33C4  2C 03 00 00 */	cmpwi r3, 0
/* 806F33C8  41 82 00 30 */	beq lbl_806F33F8
/* 806F33CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E4@ha */
/* 806F33D0  38 03 04 E4 */	addi r0, r3, 0x04E4 /* 0x000704E4@l */
/* 806F33D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806F33D8  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F33DC  38 81 00 1C */	addi r4, r1, 0x1c
/* 806F33E0  38 A0 FF FF */	li r5, -1
/* 806F33E4  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F33E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F33EC  7D 89 03 A6 */	mtctr r12
/* 806F33F0  4E 80 04 21 */	bctrl 
/* 806F33F4  48 00 01 84 */	b lbl_806F3578
lbl_806F33F8:
/* 806F33F8  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806F33FC  2C 00 00 0B */	cmpwi r0, 0xb
/* 806F3400  40 82 00 4C */	bne lbl_806F344C
/* 806F3404  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F3408  38 63 00 0C */	addi r3, r3, 0xc
/* 806F340C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F3410  4B C3 50 1C */	b checkPass__12J3DFrameCtrlFf
/* 806F3414  2C 03 00 00 */	cmpwi r3, 0
/* 806F3418  41 82 00 34 */	beq lbl_806F344C
/* 806F341C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E5@ha */
/* 806F3420  38 03 04 E5 */	addi r0, r3, 0x04E5 /* 0x000704E5@l */
/* 806F3424  90 01 00 18 */	stw r0, 0x18(r1)
/* 806F3428  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F342C  38 81 00 18 */	addi r4, r1, 0x18
/* 806F3430  38 A0 00 00 */	li r5, 0
/* 806F3434  38 C0 FF FF */	li r6, -1
/* 806F3438  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F343C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F3440  7D 89 03 A6 */	mtctr r12
/* 806F3444  4E 80 04 21 */	bctrl 
/* 806F3448  48 00 01 30 */	b lbl_806F3578
lbl_806F344C:
/* 806F344C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806F3450  2C 00 00 0A */	cmpwi r0, 0xa
/* 806F3454  40 82 00 34 */	bne lbl_806F3488
/* 806F3458  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E6@ha */
/* 806F345C  38 03 04 E6 */	addi r0, r3, 0x04E6 /* 0x000704E6@l */
/* 806F3460  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F3464  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F3468  38 81 00 14 */	addi r4, r1, 0x14
/* 806F346C  38 A0 00 00 */	li r5, 0
/* 806F3470  38 C0 FF FF */	li r6, -1
/* 806F3474  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F3478  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806F347C  7D 89 03 A6 */	mtctr r12
/* 806F3480  4E 80 04 21 */	bctrl 
/* 806F3484  48 00 00 F4 */	b lbl_806F3578
lbl_806F3488:
/* 806F3488  2C 00 00 0D */	cmpwi r0, 0xd
/* 806F348C  40 82 00 48 */	bne lbl_806F34D4
/* 806F3490  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F3494  38 63 00 0C */	addi r3, r3, 0xc
/* 806F3498  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 806F349C  4B C3 4F 90 */	b checkPass__12J3DFrameCtrlFf
/* 806F34A0  2C 03 00 00 */	cmpwi r3, 0
/* 806F34A4  41 82 00 30 */	beq lbl_806F34D4
/* 806F34A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704EB@ha */
/* 806F34AC  38 03 04 EB */	addi r0, r3, 0x04EB /* 0x000704EB@l */
/* 806F34B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F34B4  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F34B8  38 81 00 10 */	addi r4, r1, 0x10
/* 806F34BC  38 A0 FF FF */	li r5, -1
/* 806F34C0  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F34C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F34C8  7D 89 03 A6 */	mtctr r12
/* 806F34CC  4E 80 04 21 */	bctrl 
/* 806F34D0  48 00 00 A8 */	b lbl_806F3578
lbl_806F34D4:
/* 806F34D4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806F34D8  2C 00 00 12 */	cmpwi r0, 0x12
/* 806F34DC  40 82 00 48 */	bne lbl_806F3524
/* 806F34E0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F34E4  38 63 00 0C */	addi r3, r3, 0xc
/* 806F34E8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F34EC  4B C3 4F 40 */	b checkPass__12J3DFrameCtrlFf
/* 806F34F0  2C 03 00 00 */	cmpwi r3, 0
/* 806F34F4  41 82 00 30 */	beq lbl_806F3524
/* 806F34F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F0@ha */
/* 806F34FC  38 03 04 F0 */	addi r0, r3, 0x04F0 /* 0x000704F0@l */
/* 806F3500  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F3504  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F3508  38 81 00 0C */	addi r4, r1, 0xc
/* 806F350C  38 A0 FF FF */	li r5, -1
/* 806F3510  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F3514  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F3518  7D 89 03 A6 */	mtctr r12
/* 806F351C  4E 80 04 21 */	bctrl 
/* 806F3520  48 00 00 58 */	b lbl_806F3578
lbl_806F3524:
/* 806F3524  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806F3528  2C 00 00 07 */	cmpwi r0, 7
/* 806F352C  41 82 00 0C */	beq lbl_806F3538
/* 806F3530  2C 00 00 08 */	cmpwi r0, 8
/* 806F3534  40 82 00 44 */	bne lbl_806F3578
lbl_806F3538:
/* 806F3538  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F353C  38 63 00 0C */	addi r3, r3, 0xc
/* 806F3540  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 806F3544  4B C3 4E E8 */	b checkPass__12J3DFrameCtrlFf
/* 806F3548  2C 03 00 00 */	cmpwi r3, 0
/* 806F354C  41 82 00 2C */	beq lbl_806F3578
/* 806F3550  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705AA@ha */
/* 806F3554  38 03 05 AA */	addi r0, r3, 0x05AA /* 0x000705AA@l */
/* 806F3558  90 01 00 08 */	stw r0, 8(r1)
/* 806F355C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F3560  38 81 00 08 */	addi r4, r1, 8
/* 806F3564  38 A0 FF FF */	li r5, -1
/* 806F3568  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F356C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F3570  7D 89 03 A6 */	mtctr r12
/* 806F3574  4E 80 04 21 */	bctrl 
lbl_806F3578:
/* 806F3578  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806F357C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806F3580  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F3584  7C 08 03 A6 */	mtlr r0
/* 806F3588  38 21 00 30 */	addi r1, r1, 0x30
/* 806F358C  4E 80 00 20 */	blr 
