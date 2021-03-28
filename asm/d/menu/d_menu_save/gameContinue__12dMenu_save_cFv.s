lbl_801F2BF8:
/* 801F2BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F2BFC  7C 08 02 A6 */	mflr r0
/* 801F2C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F2C04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F2C08  7C 7F 1B 78 */	mr r31, r3
/* 801F2C0C  38 80 00 00 */	li r4, 0
/* 801F2C10  38 A0 00 01 */	li r5, 1
/* 801F2C14  48 00 22 35 */	bl errYesNoSelect__12dMenu_save_cFUcUc
/* 801F2C18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F2C1C  41 82 01 48 */	beq lbl_801F2D64
/* 801F2C20  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F2C24  28 00 00 01 */	cmplwi r0, 1
/* 801F2C28  40 82 00 B4 */	bne lbl_801F2CDC
/* 801F2C2C  38 00 00 9F */	li r0, 0x9f
/* 801F2C30  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F2C34  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F2C38  38 81 00 0C */	addi r4, r1, 0xc
/* 801F2C3C  38 A0 00 00 */	li r5, 0
/* 801F2C40  38 C0 00 00 */	li r6, 0
/* 801F2C44  38 E0 00 00 */	li r7, 0
/* 801F2C48  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F2C4C  FC 40 08 90 */	fmr f2, f1
/* 801F2C50  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F2C54  FC 80 18 90 */	fmr f4, f3
/* 801F2C58  39 00 00 00 */	li r8, 0
/* 801F2C5C  48 0B 8D 29 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F2C60  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F2C64  2C 00 00 03 */	cmpwi r0, 3
/* 801F2C68  41 82 00 3C */	beq lbl_801F2CA4
/* 801F2C6C  40 80 00 10 */	bge lbl_801F2C7C
/* 801F2C70  2C 00 00 01 */	cmpwi r0, 1
/* 801F2C74  40 80 00 10 */	bge lbl_801F2C84
/* 801F2C78  48 00 00 2C */	b lbl_801F2CA4
lbl_801F2C7C:
/* 801F2C7C  2C 00 00 05 */	cmpwi r0, 5
/* 801F2C80  40 80 00 24 */	bge lbl_801F2CA4
lbl_801F2C84:
/* 801F2C84  38 00 00 01 */	li r0, 1
/* 801F2C88  98 1F 01 BB */	stb r0, 0x1bb(r31)
/* 801F2C8C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801F2C90  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801F2C94  88 83 00 DD */	lbz r4, 0xdd(r3)
/* 801F2C98  28 04 00 00 */	cmplwi r4, 0
/* 801F2C9C  41 82 00 08 */	beq lbl_801F2CA4
/* 801F2CA0  48 02 B1 79 */	bl setMiniGameItem__13dMeter2Info_cFUc
lbl_801F2CA4:
/* 801F2CA4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F2CA8  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F2CAC  4B FA 25 F5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F2CB0  38 00 00 04 */	li r0, 4
/* 801F2CB4  98 1F 01 BA */	stb r0, 0x1ba(r31)
/* 801F2CB8  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F2CBC  28 00 00 04 */	cmplwi r0, 4
/* 801F2CC0  40 82 00 10 */	bne lbl_801F2CD0
/* 801F2CC4  7F E3 FB 78 */	mr r3, r31
/* 801F2CC8  4B FF EF 31 */	bl closeSelect2__12dMenu_save_cFv
/* 801F2CCC  48 00 00 98 */	b lbl_801F2D64
lbl_801F2CD0:
/* 801F2CD0  38 00 00 29 */	li r0, 0x29
/* 801F2CD4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2CD8  48 00 00 8C */	b lbl_801F2D64
lbl_801F2CDC:
/* 801F2CDC  38 00 00 02 */	li r0, 2
/* 801F2CE0  90 01 00 08 */	stw r0, 8(r1)
/* 801F2CE4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F2CE8  38 81 00 08 */	addi r4, r1, 8
/* 801F2CEC  38 A0 00 00 */	li r5, 0
/* 801F2CF0  38 C0 00 00 */	li r6, 0
/* 801F2CF4  38 E0 00 00 */	li r7, 0
/* 801F2CF8  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F2CFC  FC 40 08 90 */	fmr f2, f1
/* 801F2D00  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F2D04  FC 80 18 90 */	fmr f4, f3
/* 801F2D08  39 00 00 00 */	li r8, 0
/* 801F2D0C  48 0B 8C 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F2D10  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F2D14  28 00 00 02 */	cmplwi r0, 2
/* 801F2D18  41 82 00 0C */	beq lbl_801F2D24
/* 801F2D1C  28 00 00 03 */	cmplwi r0, 3
/* 801F2D20  40 82 00 18 */	bne lbl_801F2D38
lbl_801F2D24:
/* 801F2D24  38 00 00 0F */	li r0, 0xf
/* 801F2D28  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F2D2C  38 00 00 24 */	li r0, 0x24
/* 801F2D30  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2D34  48 00 00 30 */	b lbl_801F2D64
lbl_801F2D38:
/* 801F2D38  28 00 00 04 */	cmplwi r0, 4
/* 801F2D3C  40 82 00 18 */	bne lbl_801F2D54
/* 801F2D40  38 00 00 04 */	li r0, 4
/* 801F2D44  98 1F 01 BA */	stb r0, 0x1ba(r31)
/* 801F2D48  7F E3 FB 78 */	mr r3, r31
/* 801F2D4C  4B FF EE AD */	bl closeSelect2__12dMenu_save_cFv
/* 801F2D50  48 00 00 14 */	b lbl_801F2D64
lbl_801F2D54:
/* 801F2D54  38 00 00 1E */	li r0, 0x1e
/* 801F2D58  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F2D5C  38 00 00 23 */	li r0, 0x23
/* 801F2D60  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2D64:
/* 801F2D64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F2D68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F2D6C  7C 08 03 A6 */	mtlr r0
/* 801F2D70  38 21 00 20 */	addi r1, r1, 0x20
/* 801F2D74  4E 80 00 20 */	blr 
