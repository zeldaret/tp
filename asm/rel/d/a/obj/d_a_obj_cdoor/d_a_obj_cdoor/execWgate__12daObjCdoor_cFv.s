lbl_80BC7630:
/* 80BC7630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC7634  7C 08 02 A6 */	mflr r0
/* 80BC7638  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC763C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC7640  4B 79 AB 9D */	bl _savegpr_29
/* 80BC7644  7C 7E 1B 78 */	mr r30, r3
/* 80BC7648  3C 60 80 BC */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BC7D58@ha */
/* 80BC764C  3B E3 7D 58 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BC7D58@l */
/* 80BC7650  3C 60 80 BC */	lis r3, struct_80BC7EB8+0x0@ha /* 0x80BC7EB8@ha */
/* 80BC7654  38 A3 7E B8 */	addi r5, r3, struct_80BC7EB8+0x0@l /* 0x80BC7EB8@l */
/* 80BC7658  88 05 00 00 */	lbz r0, 0(r5)
/* 80BC765C  7C 00 07 75 */	extsb. r0, r0
/* 80BC7660  40 82 00 58 */	bne lbl_80BC76B8
/* 80BC7664  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80BC7668  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80BC766C  90 7F 00 54 */	stw r3, 0x54(r31)
/* 80BC7670  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80BC7674  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80BC7678  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80BC767C  38 9F 00 54 */	addi r4, r31, 0x54
/* 80BC7680  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80BC7684  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80BC7688  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BC768C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BC7690  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80BC7694  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BC7698  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80BC769C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80BC76A0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BC76A4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BC76A8  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80BC76AC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BC76B0  38 00 00 01 */	li r0, 1
/* 80BC76B4  98 05 00 00 */	stb r0, 0(r5)
lbl_80BC76B8:
/* 80BC76B8  8B BE 05 B0 */	lbz r29, 0x5b0(r30)
/* 80BC76BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC76C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC76C4  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 80BC76C8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC76CC  7C 05 07 74 */	extsb r5, r0
/* 80BC76D0  4B 46 DC 91 */	bl isSwitch__10dSv_info_cCFii
/* 80BC76D4  98 7E 05 B0 */	stb r3, 0x5b0(r30)
/* 80BC76D8  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80BC76DC  7C 00 E8 40 */	cmplw r0, r29
/* 80BC76E0  41 82 00 38 */	beq lbl_80BC7718
/* 80BC76E4  28 00 00 00 */	cmplwi r0, 0
/* 80BC76E8  41 82 00 10 */	beq lbl_80BC76F8
/* 80BC76EC  7F C3 F3 78 */	mr r3, r30
/* 80BC76F0  48 00 00 7D */	bl init_modeOpen__12daObjCdoor_cFv
/* 80BC76F4  48 00 00 0C */	b lbl_80BC7700
lbl_80BC76F8:
/* 80BC76F8  7F C3 F3 78 */	mr r3, r30
/* 80BC76FC  48 00 01 B5 */	bl init_modeClose__12daObjCdoor_cFv
lbl_80BC7700:
/* 80BC7700  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 80BC7704  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 80BC7708  30 1D FF FF */	addic r0, r29, -1
/* 80BC770C  7C 00 E9 10 */	subfe r0, r0, r29
/* 80BC7710  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC7714  4B 70 0B 45 */	bl setHyrulSewerOpen__10Z2EnvSeMgrFb
lbl_80BC7718:
/* 80BC7718  7F C3 F3 78 */	mr r3, r30
/* 80BC771C  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80BC7720  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BC7724  39 9F 00 54 */	addi r12, r31, 0x54
/* 80BC7728  7D 8C 02 14 */	add r12, r12, r0
/* 80BC772C  4B 79 A9 59 */	bl __ptmf_scall
/* 80BC7730  60 00 00 00 */	nop 
/* 80BC7734  7F C3 F3 78 */	mr r3, r30
/* 80BC7738  4B FF FC 89 */	bl setMatrix__12daObjCdoor_cFv
/* 80BC773C  7F C3 F3 78 */	mr r3, r30
/* 80BC7740  48 00 02 D5 */	bl event_proc_call__12daObjCdoor_cFv
/* 80BC7744  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC7748  4B 79 AA E1 */	bl _restgpr_29
/* 80BC774C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC7750  7C 08 03 A6 */	mtlr r0
/* 80BC7754  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC7758  4E 80 00 20 */	blr 
