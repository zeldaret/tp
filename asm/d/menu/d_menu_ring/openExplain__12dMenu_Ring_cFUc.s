lbl_801EF48C:
/* 801EF48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EF490  7C 08 02 A6 */	mflr r0
/* 801EF494  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EF498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EF49C  93 C1 00 08 */	stw r30, 8(r1)
/* 801EF4A0  7C 7E 1B 78 */	mr r30, r3
/* 801EF4A4  88 A3 06 CF */	lbz r5, 0x6cf(r3)
/* 801EF4A8  28 05 00 FF */	cmplwi r5, 0xff
/* 801EF4AC  40 82 00 70 */	bne lbl_801EF51C
/* 801EF4B0  88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 801EF4B4  28 00 00 FF */	cmplwi r0, 0xff
/* 801EF4B8  40 82 00 64 */	bne lbl_801EF51C
/* 801EF4BC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801EF4C0  28 00 00 FF */	cmplwi r0, 0xff
/* 801EF4C4  41 82 00 50 */	beq lbl_801EF514
/* 801EF4C8  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EF4CC  7C 9E 02 14 */	add r4, r30, r0
/* 801EF4D0  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EF4D4  4B FF EC 89 */	bl getItemMaxNum__12dMenu_Ring_cFUc
/* 801EF4D8  7C 7F 1B 78 */	mr r31, r3
/* 801EF4DC  7F C3 F3 78 */	mr r3, r30
/* 801EF4E0  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EF4E4  7C 9E 02 14 */	add r4, r30, r0
/* 801EF4E8  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EF4EC  4B FF EB 6D */	bl getItemNum__12dMenu_Ring_cFUc
/* 801EF4F0  7C 65 1B 78 */	mr r5, r3
/* 801EF4F4  80 7E 03 70 */	lwz r3, 0x370(r30)
/* 801EF4F8  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EF4FC  7C 9E 02 14 */	add r4, r30, r0
/* 801EF500  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EF504  7F E6 FB 78 */	mr r6, r31
/* 801EF508  38 E0 00 00 */	li r7, 0
/* 801EF50C  4B FE CE 35 */	bl openExplain__19dMenu_ItemExplain_cFUcUcUcb
/* 801EF510  48 00 00 38 */	b lbl_801EF548
lbl_801EF514:
/* 801EF514  38 60 00 00 */	li r3, 0
/* 801EF518  48 00 00 30 */	b lbl_801EF548
lbl_801EF51C:
/* 801EF51C  88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 801EF520  28 00 00 FF */	cmplwi r0, 0xff
/* 801EF524  41 82 00 08 */	beq lbl_801EF52C
/* 801EF528  7C 05 03 78 */	mr r5, r0
lbl_801EF52C:
/* 801EF52C  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 801EF530  80 7E 03 70 */	lwz r3, 0x370(r30)
/* 801EF534  38 82 AA 24 */	la r4, i_nameID(r2) /* 80454424-_SDA2_BASE_ */
/* 801EF538  7C 84 00 2E */	lwzx r4, r4, r0
/* 801EF53C  38 A2 AA 2C */	la r5, i_expID(r2) /* 8045442C-_SDA2_BASE_ */
/* 801EF540  7C A5 00 2E */	lwzx r5, r5, r0
/* 801EF544  4B FE D1 F5 */	bl openExplainTx__19dMenu_ItemExplain_cFUlUl
lbl_801EF548:
/* 801EF548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EF54C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801EF550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EF554  7C 08 03 A6 */	mtlr r0
/* 801EF558  38 21 00 10 */	addi r1, r1, 0x10
/* 801EF55C  4E 80 00 20 */	blr 
