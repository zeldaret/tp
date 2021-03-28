lbl_800C5964:
/* 800C5964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5968  7C 08 02 A6 */	mflr r0
/* 800C596C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C5970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C5974  7C 7F 1B 78 */	mr r31, r3
/* 800C5978  A8 63 30 08 */	lha r3, 0x3008(r3)
/* 800C597C  2C 03 00 00 */	cmpwi r3, 0
/* 800C5980  41 82 00 10 */	beq lbl_800C5990
/* 800C5984  38 03 FF FF */	addi r0, r3, -1
/* 800C5988  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800C598C  48 00 00 10 */	b lbl_800C599C
lbl_800C5990:
/* 800C5990  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800C5994  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800C5998  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800C599C:
/* 800C599C  7F E3 FB 78 */	mr r3, r31
/* 800C59A0  48 00 BA 45 */	bl checkCutTurnInput__9daAlink_cCFv
/* 800C59A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C59A8  41 82 00 1C */	beq lbl_800C59C4
/* 800C59AC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C59B0  28 00 01 03 */	cmplwi r0, 0x103
/* 800C59B4  40 82 00 10 */	bne lbl_800C59C4
/* 800C59B8  7F E3 FB 78 */	mr r3, r31
/* 800C59BC  48 00 BA 69 */	bl getCutTurnDirection__9daAlink_cCFv
/* 800C59C0  90 7F 31 98 */	stw r3, 0x3198(r31)
lbl_800C59C4:
/* 800C59C4  7F E3 FB 78 */	mr r3, r31
/* 800C59C8  4B FF FD 39 */	bl backJumpSpeedDec__9daAlink_cFv
/* 800C59CC  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800C59D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C59D4  41 82 00 24 */	beq lbl_800C59F8
/* 800C59D8  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800C59DC  48 09 8A F1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C59E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C59E4  41 82 00 14 */	beq lbl_800C59F8
/* 800C59E8  7F E3 FB 78 */	mr r3, r31
/* 800C59EC  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 800C59F0  48 00 00 65 */	bl procBackJumpLandInit__9daAlink_cFi
/* 800C59F4  48 00 00 40 */	b lbl_800C5A34
lbl_800C59F8:
/* 800C59F8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800C59FC  28 00 00 10 */	cmplwi r0, 0x10
/* 800C5A00  41 82 00 34 */	beq lbl_800C5A34
/* 800C5A04  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800C5A08  C0 3F 34 FC */	lfs f1, 0x34fc(r31)
/* 800C5A0C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_backJump_c0@ha
/* 800C5A10  38 A3 D8 2C */	addi r5, r3, m__22daAlinkHIO_backJump_c0@l
/* 800C5A14  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 800C5A18  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C5A1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800C5A20  40 80 00 14 */	bge lbl_800C5A34
/* 800C5A24  7F E3 FB 78 */	mr r3, r31
/* 800C5A28  38 80 00 02 */	li r4, 2
/* 800C5A2C  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 800C5A30  48 00 10 19 */	bl procFallInit__9daAlink_cFif
lbl_800C5A34:
/* 800C5A34  7F E3 FB 78 */	mr r3, r31
/* 800C5A38  4B FF 3F 15 */	bl checkItemChangeFromButton__9daAlink_cFv
/* 800C5A3C  38 60 00 01 */	li r3, 1
/* 800C5A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C5A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C5A48  7C 08 03 A6 */	mtlr r0
/* 800C5A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C5A50  4E 80 00 20 */	blr 
