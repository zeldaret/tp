lbl_8072E910:
/* 8072E910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072E914  7C 08 02 A6 */	mflr r0
/* 8072E918  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072E91C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072E920  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8072E924  7C 7E 1B 78 */	mr r30, r3
/* 8072E928  3C 80 80 73 */	lis r4, lit_3911@ha
/* 8072E92C  3B E4 5B 28 */	addi r31, r4, lit_3911@l
/* 8072E930  38 80 00 1C */	li r4, 0x1c
/* 8072E934  4B FF F9 E9 */	bl checkBck__8daE_OC_cFi
/* 8072E938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072E93C  41 82 01 04 */	beq lbl_8072EA40
/* 8072E940  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072E944  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E948  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8072E94C  4B BF 9A E0 */	b checkPass__12J3DFrameCtrlFf
/* 8072E950  2C 03 00 00 */	cmpwi r3, 0
/* 8072E954  41 82 00 30 */	beq lbl_8072E984
/* 8072E958  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018D@ha */
/* 8072E95C  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0007018D@l */
/* 8072E960  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072E964  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072E968  38 81 00 10 */	addi r4, r1, 0x10
/* 8072E96C  38 A0 FF FF */	li r5, -1
/* 8072E970  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072E974  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072E978  7D 89 03 A6 */	mtctr r12
/* 8072E97C  4E 80 04 21 */	bctrl 
/* 8072E980  48 00 00 C0 */	b lbl_8072EA40
lbl_8072E984:
/* 8072E984  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072E988  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E98C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8072E990  4B BF 9A 9C */	b checkPass__12J3DFrameCtrlFf
/* 8072E994  2C 03 00 00 */	cmpwi r3, 0
/* 8072E998  40 82 00 1C */	bne lbl_8072E9B4
/* 8072E99C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072E9A0  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E9A4  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8072E9A8  4B BF 9A 84 */	b checkPass__12J3DFrameCtrlFf
/* 8072E9AC  2C 03 00 00 */	cmpwi r3, 0
/* 8072E9B0  41 82 00 34 */	beq lbl_8072E9E4
lbl_8072E9B4:
/* 8072E9B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070178@ha */
/* 8072E9B8  38 03 01 78 */	addi r0, r3, 0x0178 /* 0x00070178@l */
/* 8072E9BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072E9C0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072E9C4  38 81 00 0C */	addi r4, r1, 0xc
/* 8072E9C8  38 A0 00 00 */	li r5, 0
/* 8072E9CC  38 C0 FF FF */	li r6, -1
/* 8072E9D0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072E9D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072E9D8  7D 89 03 A6 */	mtctr r12
/* 8072E9DC  4E 80 04 21 */	bctrl 
/* 8072E9E0  48 00 00 60 */	b lbl_8072EA40
lbl_8072E9E4:
/* 8072E9E4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072E9E8  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E9EC  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8072E9F0  4B BF 9A 3C */	b checkPass__12J3DFrameCtrlFf
/* 8072E9F4  2C 03 00 00 */	cmpwi r3, 0
/* 8072E9F8  40 82 00 1C */	bne lbl_8072EA14
/* 8072E9FC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072EA00  38 63 00 0C */	addi r3, r3, 0xc
/* 8072EA04  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8072EA08  4B BF 9A 24 */	b checkPass__12J3DFrameCtrlFf
/* 8072EA0C  2C 03 00 00 */	cmpwi r3, 0
/* 8072EA10  41 82 00 30 */	beq lbl_8072EA40
lbl_8072EA14:
/* 8072EA14  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070179@ha */
/* 8072EA18  38 03 01 79 */	addi r0, r3, 0x0179 /* 0x00070179@l */
/* 8072EA1C  90 01 00 08 */	stw r0, 8(r1)
/* 8072EA20  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072EA24  38 81 00 08 */	addi r4, r1, 8
/* 8072EA28  38 A0 00 00 */	li r5, 0
/* 8072EA2C  38 C0 FF FF */	li r6, -1
/* 8072EA30  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072EA34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072EA38  7D 89 03 A6 */	mtctr r12
/* 8072EA3C  4E 80 04 21 */	bctrl 
lbl_8072EA40:
/* 8072EA40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072EA44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8072EA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072EA4C  7C 08 03 A6 */	mtlr r0
/* 8072EA50  38 21 00 20 */	addi r1, r1, 0x20
/* 8072EA54  4E 80 00 20 */	blr 
