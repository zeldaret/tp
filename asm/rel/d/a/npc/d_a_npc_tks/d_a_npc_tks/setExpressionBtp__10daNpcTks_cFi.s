lbl_80B1590C:
/* 80B1590C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B15910  7C 08 02 A6 */	mflr r0
/* 80B15914  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B15918  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1591C  4B 84 C8 C1 */	bl _savegpr_29
/* 80B15920  7C 7E 1B 78 */	mr r30, r3
/* 80B15924  7C 9F 23 78 */	mr r31, r4
/* 80B15928  3C 80 80 B2 */	lis r4, l_arcName@ha /* 0x80B1E208@ha */
/* 80B1592C  38 84 E2 08 */	addi r4, r4, l_arcName@l /* 0x80B1E208@l */
/* 80B15930  80 84 00 00 */	lwz r4, 0(r4)
/* 80B15934  57 FD 18 38 */	slwi r29, r31, 3
/* 80B15938  3C A0 80 B2 */	lis r5, l_btpGetParamList@ha /* 0x80B1E1B4@ha */
/* 80B1593C  38 A5 E1 B4 */	addi r5, r5, l_btpGetParamList@l /* 0x80B1E1B4@l */
/* 80B15940  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80B15944  4B 63 D2 25 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80B15948  7C 64 1B 79 */	or. r4, r3, r3
/* 80B1594C  3C 60 80 B2 */	lis r3, l_btpGetParamList@ha /* 0x80B1E1B4@ha */
/* 80B15950  38 03 E1 B4 */	addi r0, r3, l_btpGetParamList@l /* 0x80B1E1B4@l */
/* 80B15954  7C 60 EA 14 */	add r3, r0, r29
/* 80B15958  80 C3 00 04 */	lwz r6, 4(r3)
/* 80B1595C  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80B15960  38 00 F5 7F */	li r0, -2689
/* 80B15964  7C 60 00 38 */	and r0, r3, r0
/* 80B15968  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B1596C  40 82 00 0C */	bne lbl_80B15978
/* 80B15970  38 60 00 01 */	li r3, 1
/* 80B15974  48 00 00 54 */	b lbl_80B159C8
lbl_80B15978:
/* 80B15978  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B1597C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B15980  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B15984  7F C3 F3 78 */	mr r3, r30
/* 80B15988  3C E0 80 B2 */	lis r7, lit_4537@ha /* 0x80B1DE08@ha */
/* 80B1598C  C0 27 DE 08 */	lfs f1, lit_4537@l(r7)  /* 0x80B1DE08@l */
/* 80B15990  4B 63 D3 35 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80B15994  2C 03 00 00 */	cmpwi r3, 0
/* 80B15998  41 82 00 2C */	beq lbl_80B159C4
/* 80B1599C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B159A0  60 00 02 80 */	ori r0, r0, 0x280
/* 80B159A4  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B159A8  2C 1F 00 00 */	cmpwi r31, 0
/* 80B159AC  40 82 00 10 */	bne lbl_80B159BC
/* 80B159B0  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B159B4  60 00 08 00 */	ori r0, r0, 0x800
/* 80B159B8  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80B159BC:
/* 80B159BC  38 60 00 01 */	li r3, 1
/* 80B159C0  48 00 00 08 */	b lbl_80B159C8
lbl_80B159C4:
/* 80B159C4  38 60 00 00 */	li r3, 0
lbl_80B159C8:
/* 80B159C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B159CC  4B 84 C8 5D */	bl _restgpr_29
/* 80B159D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B159D4  7C 08 03 A6 */	mtlr r0
/* 80B159D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B159DC  4E 80 00 20 */	blr 
