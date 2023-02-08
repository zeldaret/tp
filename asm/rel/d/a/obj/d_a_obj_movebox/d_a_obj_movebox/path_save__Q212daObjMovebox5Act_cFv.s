lbl_8047E92C:
/* 8047E92C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047E930  7C 08 02 A6 */	mflr r0
/* 8047E934  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047E938  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8047E93C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8047E940  39 61 00 30 */	addi r11, r1, 0x30
/* 8047E944  4B EE 38 91 */	bl _savegpr_27
/* 8047E948  7C 7F 1B 78 */	mr r31, r3
/* 8047E94C  A0 03 08 B0 */	lhz r0, 0x8b0(r3)
/* 8047E950  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8047E954  4B FF FC D5 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047E958  7C 7C 1B 78 */	mr r28, r3
/* 8047E95C  7F E3 FB 78 */	mr r3, r31
/* 8047E960  38 80 00 04 */	li r4, 4
/* 8047E964  38 A0 00 1C */	li r5, 0x1c
/* 8047E968  48 00 23 71 */	bl func_80480CD8
/* 8047E96C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 8047E970  2C 1D 00 FF */	cmpwi r29, 0xff
/* 8047E974  41 82 01 B4 */	beq lbl_8047EB28
/* 8047E978  2C 1C 00 FF */	cmpwi r28, 0xff
/* 8047E97C  41 82 01 AC */	beq lbl_8047EB28
/* 8047E980  A0 1F 08 B0 */	lhz r0, 0x8b0(r31)
/* 8047E984  7C 00 46 70 */	srawi r0, r0, 8
/* 8047E988  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8047E98C  2C 1D 00 FF */	cmpwi r29, 0xff
/* 8047E990  38 00 00 04 */	li r0, 4
/* 8047E994  40 82 00 08 */	bne lbl_8047E99C
/* 8047E998  38 00 00 02 */	li r0, 2
lbl_8047E99C:
/* 8047E99C  7C 1B 03 78 */	mr r27, r0
/* 8047E9A0  80 7F 08 B4 */	lwz r3, 0x8b4(r31)
/* 8047E9A4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8047E9A8  7C 00 18 00 */	cmpw r0, r3
/* 8047E9AC  40 81 00 08 */	ble lbl_8047E9B4
/* 8047E9B0  7C 7B 1B 78 */	mr r27, r3
lbl_8047E9B4:
/* 8047E9B4  3B 80 00 00 */	li r28, 0
/* 8047E9B8  3C 60 80 48 */	lis r3, lit_4161@ha /* 0x80481668@ha */
/* 8047E9BC  C3 E3 16 68 */	lfs f31, lit_4161@l(r3)  /* 0x80481668@l */
/* 8047E9C0  48 00 00 40 */	b lbl_8047EA00
lbl_8047E9C4:
/* 8047E9C4  80 7F 08 B4 */	lwz r3, 0x8b4(r31)
/* 8047E9C8  7F 84 E3 78 */	mr r4, r28
/* 8047E9CC  4B BD 2D E5 */	bl dPath_GetPnt__FPC5dPathi
/* 8047E9D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047E9D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047E9D8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047E9DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8047E9E0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8047E9E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8047E9E8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8047E9EC  38 81 00 08 */	addi r4, r1, 8
/* 8047E9F0  4B EC 89 AD */	bl PSVECSquareDistance
/* 8047E9F4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8047E9F8  41 80 00 10 */	blt lbl_8047EA08
/* 8047E9FC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8047EA00:
/* 8047EA00  7C 1C D8 00 */	cmpw r28, r27
/* 8047EA04  41 80 FF C0 */	blt lbl_8047E9C4
lbl_8047EA08:
/* 8047EA08  7C 1C D8 00 */	cmpw r28, r27
/* 8047EA0C  40 80 00 A4 */	bge lbl_8047EAB0
/* 8047EA10  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 8047EA14  41 82 00 28 */	beq lbl_8047EA3C
/* 8047EA18  7F E3 FB 78 */	mr r3, r31
/* 8047EA1C  4B FF FC 0D */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047EA20  7C 64 1B 78 */	mr r4, r3
/* 8047EA24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047EA28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047EA2C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8047EA30  7C 05 07 74 */	extsb r5, r0
/* 8047EA34  4B BB 67 CD */	bl onSwitch__10dSv_info_cFii
/* 8047EA38  48 00 00 24 */	b lbl_8047EA5C
lbl_8047EA3C:
/* 8047EA3C  7F E3 FB 78 */	mr r3, r31
/* 8047EA40  4B FF FB E9 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047EA44  7C 64 1B 78 */	mr r4, r3
/* 8047EA48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047EA4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047EA50  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8047EA54  7C 05 07 74 */	extsb r5, r0
/* 8047EA58  4B BB 68 59 */	bl offSwitch__10dSv_info_cFii
lbl_8047EA5C:
/* 8047EA5C  2C 1D 00 FF */	cmpwi r29, 0xff
/* 8047EA60  41 82 00 50 */	beq lbl_8047EAB0
/* 8047EA64  57 80 07 BD */	rlwinm. r0, r28, 0, 0x1e, 0x1e
/* 8047EA68  41 82 00 28 */	beq lbl_8047EA90
/* 8047EA6C  A0 1F 08 B0 */	lhz r0, 0x8b0(r31)
/* 8047EA70  7C 00 46 70 */	srawi r0, r0, 8
/* 8047EA74  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8047EA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047EA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047EA80  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8047EA84  7C 05 07 74 */	extsb r5, r0
/* 8047EA88  4B BB 67 79 */	bl onSwitch__10dSv_info_cFii
/* 8047EA8C  48 00 00 24 */	b lbl_8047EAB0
lbl_8047EA90:
/* 8047EA90  A0 1F 08 B0 */	lhz r0, 0x8b0(r31)
/* 8047EA94  7C 00 46 70 */	srawi r0, r0, 8
/* 8047EA98  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8047EA9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047EAA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047EAA4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8047EAA8  7C 05 07 74 */	extsb r5, r0
/* 8047EAAC  4B BB 68 05 */	bl offSwitch__10dSv_info_cFii
lbl_8047EAB0:
/* 8047EAB0  28 1E 00 0F */	cmplwi r30, 0xf
/* 8047EAB4  41 82 00 74 */	beq lbl_8047EB28
/* 8047EAB8  3B 60 00 00 */	li r27, 0
/* 8047EABC  7F E3 FB 78 */	mr r3, r31
/* 8047EAC0  4B FF FB 69 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047EAC4  7C 64 1B 78 */	mr r4, r3
/* 8047EAC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047EACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047EAD0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8047EAD4  7C 05 07 74 */	extsb r5, r0
/* 8047EAD8  4B BB 68 89 */	bl isSwitch__10dSv_info_cCFii
/* 8047EADC  2C 03 00 00 */	cmpwi r3, 0
/* 8047EAE0  41 82 00 08 */	beq lbl_8047EAE8
/* 8047EAE4  3B 60 00 01 */	li r27, 1
lbl_8047EAE8:
/* 8047EAE8  A0 1F 08 B0 */	lhz r0, 0x8b0(r31)
/* 8047EAEC  7C 00 46 70 */	srawi r0, r0, 8
/* 8047EAF0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8047EAF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047EAF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047EAFC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8047EB00  7C 05 07 74 */	extsb r5, r0
/* 8047EB04  4B BB 68 5D */	bl isSwitch__10dSv_info_cCFii
/* 8047EB08  2C 03 00 00 */	cmpwi r3, 0
/* 8047EB0C  41 82 00 08 */	beq lbl_8047EB14
/* 8047EB10  3B 7B 00 02 */	addi r27, r27, 2
lbl_8047EB14:
/* 8047EB14  7C 1E D8 00 */	cmpw r30, r27
/* 8047EB18  40 82 00 10 */	bne lbl_8047EB28
/* 8047EB1C  38 00 00 00 */	li r0, 0
/* 8047EB20  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8047EB24  98 03 00 14 */	stb r0, 0x14(r3)
lbl_8047EB28:
/* 8047EB28  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8047EB2C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8047EB30  39 61 00 30 */	addi r11, r1, 0x30
/* 8047EB34  4B EE 36 ED */	bl _restgpr_27
/* 8047EB38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047EB3C  7C 08 03 A6 */	mtlr r0
/* 8047EB40  38 21 00 40 */	addi r1, r1, 0x40
/* 8047EB44  4E 80 00 20 */	blr 
