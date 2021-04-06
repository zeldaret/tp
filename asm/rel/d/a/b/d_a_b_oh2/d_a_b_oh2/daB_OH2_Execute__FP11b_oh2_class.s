lbl_8061E410:
/* 8061E410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061E414  7C 08 02 A6 */	mflr r0
/* 8061E418  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061E41C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061E420  7C 7F 1B 78 */	mr r31, r3
/* 8061E424  4B 9F 9E 85 */	bl cDmrNowMidnaTalk__Fv
/* 8061E428  2C 03 00 00 */	cmpwi r3, 0
/* 8061E42C  41 82 00 0C */	beq lbl_8061E438
/* 8061E430  38 60 00 01 */	li r3, 1
/* 8061E434  48 00 00 A0 */	b lbl_8061E4D4
lbl_8061E438:
/* 8061E438  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8061E43C  2C 00 00 00 */	cmpwi r0, 0
/* 8061E440  40 82 00 24 */	bne lbl_8061E464
/* 8061E444  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 8061E448  90 01 00 08 */	stw r0, 8(r1)
/* 8061E44C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8061E450  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8061E454  38 81 00 08 */	addi r4, r1, 8
/* 8061E458  4B 9F B3 A1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8061E45C  3C 80 80 62 */	lis r4, boss@ha /* 0x8061EAE8@ha */
/* 8061E460  90 64 EA E8 */	stw r3, boss@l(r4)  /* 0x8061EAE8@l */
lbl_8061E464:
/* 8061E464  3C 60 80 62 */	lis r3, boss@ha /* 0x8061EAE8@ha */
/* 8061E468  80 03 EA E8 */	lwz r0, boss@l(r3)  /* 0x8061EAE8@l */
/* 8061E46C  28 00 00 00 */	cmplwi r0, 0
/* 8061E470  40 82 00 0C */	bne lbl_8061E47C
/* 8061E474  38 60 00 01 */	li r3, 1
/* 8061E478  48 00 00 5C */	b lbl_8061E4D4
lbl_8061E47C:
/* 8061E47C  A8 7F 05 CC */	lha r3, 0x5cc(r31)
/* 8061E480  38 03 00 01 */	addi r0, r3, 1
/* 8061E484  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 8061E488  38 60 00 00 */	li r3, 0
/* 8061E48C  38 00 00 04 */	li r0, 4
/* 8061E490  7C 09 03 A6 */	mtctr r0
lbl_8061E494:
/* 8061E494  38 A3 05 D2 */	addi r5, r3, 0x5d2
/* 8061E498  7C 9F 2A AE */	lhax r4, r31, r5
/* 8061E49C  2C 04 00 00 */	cmpwi r4, 0
/* 8061E4A0  41 82 00 0C */	beq lbl_8061E4AC
/* 8061E4A4  38 04 FF FF */	addi r0, r4, -1
/* 8061E4A8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8061E4AC:
/* 8061E4AC  38 63 00 02 */	addi r3, r3, 2
/* 8061E4B0  42 00 FF E4 */	bdnz lbl_8061E494
/* 8061E4B4  A8 7F 05 DA */	lha r3, 0x5da(r31)
/* 8061E4B8  2C 03 00 00 */	cmpwi r3, 0
/* 8061E4BC  41 82 00 0C */	beq lbl_8061E4C8
/* 8061E4C0  38 03 FF FF */	addi r0, r3, -1
/* 8061E4C4  B0 1F 05 DA */	sth r0, 0x5da(r31)
lbl_8061E4C8:
/* 8061E4C8  7F E3 FB 78 */	mr r3, r31
/* 8061E4CC  4B FF FD 0D */	bl action__FP11b_oh2_class
/* 8061E4D0  38 60 00 01 */	li r3, 1
lbl_8061E4D4:
/* 8061E4D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061E4D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061E4DC  7C 08 03 A6 */	mtlr r0
/* 8061E4E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8061E4E4  4E 80 00 20 */	blr 
