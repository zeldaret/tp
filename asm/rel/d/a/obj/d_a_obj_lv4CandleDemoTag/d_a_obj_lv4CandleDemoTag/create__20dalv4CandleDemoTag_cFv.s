lbl_80C5CA90:
/* 80C5CA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CA94  7C 08 02 A6 */	mflr r0
/* 80C5CA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CA9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5CAA0  7C 7F 1B 78 */	mr r31, r3
/* 80C5CAA4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5CAA8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5CAAC  40 82 00 48 */	bne lbl_80C5CAF4
/* 80C5CAB0  28 1F 00 00 */	cmplwi r31, 0
/* 80C5CAB4  41 82 00 34 */	beq lbl_80C5CAE8
/* 80C5CAB8  4B 3B C0 AD */	bl __ct__10fopAc_ac_cFv
/* 80C5CABC  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C5D310@ha */
/* 80C5CAC0  38 03 D3 10 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C5D310@l */
/* 80C5CAC4  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80C5CAC8  93 FF 05 74 */	stw r31, 0x574(r31)
/* 80C5CACC  38 00 00 00 */	li r0, 0
/* 80C5CAD0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80C5CAD4  3C 60 80 C6 */	lis r3, __vt__20dalv4CandleDemoTag_c@ha /* 0x80C5D2E8@ha */
/* 80C5CAD8  38 63 D2 E8 */	addi r3, r3, __vt__20dalv4CandleDemoTag_c@l /* 0x80C5D2E8@l */
/* 80C5CADC  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80C5CAE0  38 03 00 08 */	addi r0, r3, 8
/* 80C5CAE4  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_80C5CAE8:
/* 80C5CAE8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C5CAEC  60 00 00 08 */	ori r0, r0, 8
/* 80C5CAF0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C5CAF4:
/* 80C5CAF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5CAF8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C5CAFC  98 1F 05 85 */	stb r0, 0x585(r31)
/* 80C5CB00  88 7F 05 85 */	lbz r3, 0x585(r31)
/* 80C5CB04  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C5CB08  7C 04 07 74 */	extsb r4, r0
/* 80C5CB0C  4B 3F 4C E1 */	bl dPath_GetRoomPath__Fii
/* 80C5CB10  28 03 00 00 */	cmplwi r3, 0
/* 80C5CB14  40 82 00 0C */	bne lbl_80C5CB20
/* 80C5CB18  38 60 00 00 */	li r3, 0
/* 80C5CB1C  48 00 00 74 */	b lbl_80C5CB90
lbl_80C5CB20:
/* 80C5CB20  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5CB24  98 1F 05 86 */	stb r0, 0x586(r31)
/* 80C5CB28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5CB2C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C5CB30  98 1F 05 87 */	stb r0, 0x587(r31)
/* 80C5CB34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5CB38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5CB3C  88 9F 05 87 */	lbz r4, 0x587(r31)
/* 80C5CB40  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5CB44  7C 05 07 74 */	extsb r5, r0
/* 80C5CB48  4B 3D 87 69 */	bl offSwitch__10dSv_info_cFii
/* 80C5CB4C  7F E3 FB 78 */	mr r3, r31
/* 80C5CB50  4B FF FF 09 */	bl setBaseMtx__20dalv4CandleDemoTag_cFv
/* 80C5CB54  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80C5CB58  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5CB5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5CB60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5CB64  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5CB68  7C 05 07 74 */	extsb r5, r0
/* 80C5CB6C  4B 3D 87 F5 */	bl isSwitch__10dSv_info_cCFii
/* 80C5CB70  2C 03 00 00 */	cmpwi r3, 0
/* 80C5CB74  41 82 00 10 */	beq lbl_80C5CB84
/* 80C5CB78  7F E3 FB 78 */	mr r3, r31
/* 80C5CB7C  48 00 03 B9 */	bl init_modeEnd__20dalv4CandleDemoTag_cFv
/* 80C5CB80  48 00 00 0C */	b lbl_80C5CB8C
lbl_80C5CB84:
/* 80C5CB84  7F E3 FB 78 */	mr r3, r31
/* 80C5CB88  48 00 01 1D */	bl init_modeWatch__20dalv4CandleDemoTag_cFv
lbl_80C5CB8C:
/* 80C5CB8C  38 60 00 04 */	li r3, 4
lbl_80C5CB90:
/* 80C5CB90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5CB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CB98  7C 08 03 A6 */	mtlr r0
/* 80C5CB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CBA0  4E 80 00 20 */	blr 
