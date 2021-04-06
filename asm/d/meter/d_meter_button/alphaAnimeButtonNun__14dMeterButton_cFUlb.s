lbl_80203B1C:
/* 80203B1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203B20  7C 08 02 A6 */	mflr r0
/* 80203B24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80203B28  39 61 00 20 */	addi r11, r1, 0x20
/* 80203B2C  48 15 E6 B1 */	bl _savegpr_29
/* 80203B30  7C 7E 1B 78 */	mr r30, r3
/* 80203B34  7C 9F 23 78 */	mr r31, r4
/* 80203B38  7C BD 2B 78 */	mr r29, r5
/* 80203B3C  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80203B40  40 82 00 A0 */	bne lbl_80203BE0
/* 80203B44  48 03 46 E9 */	bl getStatus__12dMsgObject_cFv
/* 80203B48  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80203B4C  20 60 00 01 */	subfic r3, r0, 1
/* 80203B50  30 03 FF FF */	addic r0, r3, -1
/* 80203B54  7C 00 19 10 */	subfe r0, r0, r3
/* 80203B58  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80203B5C  40 82 00 84 */	bne lbl_80203BE0
/* 80203B60  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80203B64  41 82 00 7C */	beq lbl_80203BE0
/* 80203B68  A8 1E 04 96 */	lha r0, 0x496(r30)
/* 80203B6C  2C 00 00 00 */	cmpwi r0, 0
/* 80203B70  41 81 00 70 */	bgt lbl_80203BE0
/* 80203B74  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80203B78  40 82 00 68 */	bne lbl_80203BE0
/* 80203B7C  57 E0 00 43 */	rlwinm. r0, r31, 0, 1, 1
/* 80203B80  40 82 00 60 */	bne lbl_80203BE0
/* 80203B84  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 80203B88  40 82 00 58 */	bne lbl_80203BE0
/* 80203B8C  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80203B90  41 82 00 30 */	beq lbl_80203BC0
/* 80203B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80203B98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80203B9C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80203BA0  28 00 00 00 */	cmplwi r0, 0
/* 80203BA4  41 82 00 10 */	beq lbl_80203BB4
/* 80203BA8  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80203BAC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80203BB0  48 00 00 08 */	b lbl_80203BB8
lbl_80203BB4:
/* 80203BB4  38 00 00 00 */	li r0, 0
lbl_80203BB8:
/* 80203BB8  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80203BBC  40 82 00 24 */	bne lbl_80203BE0
lbl_80203BC0:
/* 80203BC0  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80203BC4  40 82 00 1C */	bne lbl_80203BE0
/* 80203BC8  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80203BCC  40 82 00 14 */	bne lbl_80203BE0
/* 80203BD0  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80203BD4  40 82 00 0C */	bne lbl_80203BE0
/* 80203BD8  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80203BDC  41 82 00 1C */	beq lbl_80203BF8
lbl_80203BE0:
/* 80203BE0  7F C3 F3 78 */	mr r3, r30
/* 80203BE4  48 00 42 B9 */	bl setAlphaButtonNunAnimeMin__14dMeterButton_cFv
/* 80203BE8  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 80203BEC  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80203BF0  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 80203BF4  48 00 00 20 */	b lbl_80203C14
lbl_80203BF8:
/* 80203BF8  7F C3 F3 78 */	mr r3, r30
/* 80203BFC  48 00 43 39 */	bl setAlphaButtonNunAnimeMax__14dMeterButton_cFv
/* 80203C00  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 80203C04  60 00 02 00 */	ori r0, r0, 0x200
/* 80203C08  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 80203C0C  38 60 00 01 */	li r3, 1
/* 80203C10  48 00 00 08 */	b lbl_80203C18
lbl_80203C14:
/* 80203C14  38 60 00 00 */	li r3, 0
lbl_80203C18:
/* 80203C18  39 61 00 20 */	addi r11, r1, 0x20
/* 80203C1C  48 15 E6 0D */	bl _restgpr_29
/* 80203C20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80203C24  7C 08 03 A6 */	mtlr r0
/* 80203C28  38 21 00 20 */	addi r1, r1, 0x20
/* 80203C2C  4E 80 00 20 */	blr 
