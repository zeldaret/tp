lbl_8072E528:
/* 8072E528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072E52C  7C 08 02 A6 */	mflr r0
/* 8072E530  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072E534  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072E538  7C 7F 1B 78 */	mr r31, r3
/* 8072E53C  38 80 00 1B */	li r4, 0x1b
/* 8072E540  4B FF FD DD */	bl checkBck__8daE_OC_cFi
/* 8072E544  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072E548  41 82 00 48 */	beq lbl_8072E590
/* 8072E54C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072E550  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E554  3C 80 80 73 */	lis r4, lit_3912@ha
/* 8072E558  C0 24 5B 2C */	lfs f1, lit_3912@l(r4)
/* 8072E55C  4B BF 9E D0 */	b checkPass__12J3DFrameCtrlFf
/* 8072E560  2C 03 00 00 */	cmpwi r3, 0
/* 8072E564  41 82 00 2C */	beq lbl_8072E590
/* 8072E568  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070180@ha */
/* 8072E56C  38 03 01 80 */	addi r0, r3, 0x0180 /* 0x00070180@l */
/* 8072E570  90 01 00 08 */	stw r0, 8(r1)
/* 8072E574  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E578  38 81 00 08 */	addi r4, r1, 8
/* 8072E57C  38 A0 FF FF */	li r5, -1
/* 8072E580  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E584  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072E588  7D 89 03 A6 */	mtctr r12
/* 8072E58C  4E 80 04 21 */	bctrl 
lbl_8072E590:
/* 8072E590  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072E594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072E598  7C 08 03 A6 */	mtlr r0
/* 8072E59C  38 21 00 20 */	addi r1, r1, 0x20
/* 8072E5A0  4E 80 00 20 */	blr 
