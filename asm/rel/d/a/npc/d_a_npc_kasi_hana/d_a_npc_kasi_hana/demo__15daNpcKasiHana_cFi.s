lbl_80A1EB5C:
/* 80A1EB5C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A1EB60  7C 08 02 A6 */	mflr r0
/* 80A1EB64  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A1EB68  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1EB6C  4B 94 36 69 */	bl _savegpr_27
/* 80A1EB70  7C 7E 1B 78 */	mr r30, r3
/* 80A1EB74  3C 80 80 A2 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A213D4@ha */
/* 80A1EB78  3B E4 13 D4 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80A213D4@l */
/* 80A1EB7C  A8 03 14 06 */	lha r0, 0x1406(r3)
/* 80A1EB80  2C 00 00 00 */	cmpwi r0, 0
/* 80A1EB84  41 82 00 18 */	beq lbl_80A1EB9C
/* 80A1EB88  40 80 00 08 */	bge lbl_80A1EB90
/* 80A1EB8C  48 00 02 90 */	b lbl_80A1EE1C
lbl_80A1EB90:
/* 80A1EB90  2C 00 00 02 */	cmpwi r0, 2
/* 80A1EB94  40 80 02 88 */	bge lbl_80A1EE1C
/* 80A1EB98  48 00 00 30 */	b lbl_80A1EBC8
lbl_80A1EB9C:
/* 80A1EB9C  38 80 00 04 */	li r4, 4
/* 80A1EBA0  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A1EBA4  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A1EBA8  38 A0 00 00 */	li r5, 0
/* 80A1EBAC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1EBB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1EBB4  7D 89 03 A6 */	mtctr r12
/* 80A1EBB8  4E 80 04 21 */	bctrl 
/* 80A1EBBC  38 00 00 01 */	li r0, 1
/* 80A1EBC0  B0 1E 14 06 */	sth r0, 0x1406(r30)
/* 80A1EBC4  48 00 02 58 */	b lbl_80A1EE1C
lbl_80A1EBC8:
/* 80A1EBC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1EBCC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1EBD0  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80A1EBD4  28 00 00 00 */	cmplwi r0, 0
/* 80A1EBD8  41 82 02 44 */	beq lbl_80A1EE1C
/* 80A1EBDC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A1EBE0  28 00 00 01 */	cmplwi r0, 1
/* 80A1EBE4  41 82 02 38 */	beq lbl_80A1EE1C
/* 80A1EBE8  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80A1EBEC  7F 83 E3 78 */	mr r3, r28
/* 80A1EBF0  80 9F 01 04 */	lwz r4, 0x104(r31)
/* 80A1EBF4  38 A0 00 00 */	li r5, 0
/* 80A1EBF8  38 C0 00 00 */	li r6, 0
/* 80A1EBFC  4B 62 8F 21 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A1EC00  2C 03 FF FF */	cmpwi r3, -1
/* 80A1EC04  41 82 00 40 */	beq lbl_80A1EC44
/* 80A1EC08  7C 7B 1B 78 */	mr r27, r3
/* 80A1EC0C  93 7E 09 2C */	stw r27, 0x92c(r30)
/* 80A1EC10  7F C3 F3 78 */	mr r3, r30
/* 80A1EC14  7F 64 DB 78 */	mr r4, r27
/* 80A1EC18  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A1EC1C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80A1EC20  39 9F 01 44 */	addi r12, r31, 0x144
/* 80A1EC24  7D 8C 02 14 */	add r12, r12, r0
/* 80A1EC28  4B 94 34 5D */	bl __ptmf_scall
/* 80A1EC2C  60 00 00 00 */	nop 
/* 80A1EC30  2C 03 00 00 */	cmpwi r3, 0
/* 80A1EC34  41 82 00 10 */	beq lbl_80A1EC44
/* 80A1EC38  7F 83 E3 78 */	mr r3, r28
/* 80A1EC3C  7F 64 DB 78 */	mr r4, r27
/* 80A1EC40  4B 62 95 3D */	bl cutEnd__16dEvent_manager_cFi
lbl_80A1EC44:
/* 80A1EC44  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A1EC48  28 00 00 02 */	cmplwi r0, 2
/* 80A1EC4C  40 82 01 D0 */	bne lbl_80A1EE1C
/* 80A1EC50  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80A1EC54  2C 04 FF FF */	cmpwi r4, -1
/* 80A1EC58  41 82 01 C4 */	beq lbl_80A1EE1C
/* 80A1EC5C  7F 83 E3 78 */	mr r3, r28
/* 80A1EC60  4B 62 8E 19 */	bl endCheck__16dEvent_manager_cFs
/* 80A1EC64  2C 03 00 00 */	cmpwi r3, 0
/* 80A1EC68  41 82 01 B4 */	beq lbl_80A1EE1C
/* 80A1EC6C  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A1EC70  2C 00 00 03 */	cmpwi r0, 3
/* 80A1EC74  41 82 00 8C */	beq lbl_80A1ED00
/* 80A1EC78  40 80 00 14 */	bge lbl_80A1EC8C
/* 80A1EC7C  2C 00 00 01 */	cmpwi r0, 1
/* 80A1EC80  41 82 00 18 */	beq lbl_80A1EC98
/* 80A1EC84  40 80 00 BC */	bge lbl_80A1ED40
/* 80A1EC88  48 00 01 10 */	b lbl_80A1ED98
lbl_80A1EC8C:
/* 80A1EC8C  2C 00 00 06 */	cmpwi r0, 6
/* 80A1EC90  40 80 01 08 */	bge lbl_80A1ED98
/* 80A1EC94  48 00 01 00 */	b lbl_80A1ED94
lbl_80A1EC98:
/* 80A1EC98  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A1EC9C  4B 62 37 CD */	bl reset__14dEvt_control_cFv
/* 80A1ECA0  38 00 00 00 */	li r0, 0
/* 80A1ECA4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80A1ECA8  38 00 FF FF */	li r0, -1
/* 80A1ECAC  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80A1ECB0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A1ECB4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A1ECB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1ECBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1ECC0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80A1ECC4  7C 05 07 74 */	extsb r5, r0
/* 80A1ECC8  4B 61 65 39 */	bl onSwitch__10dSv_info_cFii
/* 80A1ECCC  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1ECD0  60 00 00 01 */	ori r0, r0, 1
/* 80A1ECD4  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1ECD8  80 7F 02 A4 */	lwz r3, 0x2a4(r31)
/* 80A1ECDC  80 1F 02 A8 */	lwz r0, 0x2a8(r31)
/* 80A1ECE0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A1ECE4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A1ECE8  80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 80A1ECEC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A1ECF0  7F C3 F3 78 */	mr r3, r30
/* 80A1ECF4  38 81 00 38 */	addi r4, r1, 0x38
/* 80A1ECF8  4B FF EA 85 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1ECFC  48 00 01 20 */	b lbl_80A1EE1C
lbl_80A1ED00:
/* 80A1ED00  80 7F 02 B0 */	lwz r3, 0x2b0(r31)
/* 80A1ED04  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 80A1ED08  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A1ED0C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A1ED10  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 80A1ED14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1ED18  7F C3 F3 78 */	mr r3, r30
/* 80A1ED1C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A1ED20  4B FF EA 5D */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1ED24  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A1ED28  4B 62 37 41 */	bl reset__14dEvt_control_cFv
/* 80A1ED2C  38 00 00 00 */	li r0, 0
/* 80A1ED30  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80A1ED34  38 00 FF FF */	li r0, -1
/* 80A1ED38  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80A1ED3C  48 00 00 E0 */	b lbl_80A1EE1C
lbl_80A1ED40:
/* 80A1ED40  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1ED44  4B FF CD E1 */	bl allDemoNotMove__15daNpcKasi_Mng_cFv
/* 80A1ED48  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A1ED4C  4B 62 37 1D */	bl reset__14dEvt_control_cFv
/* 80A1ED50  38 00 00 00 */	li r0, 0
/* 80A1ED54  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80A1ED58  38 00 FF FF */	li r0, -1
/* 80A1ED5C  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80A1ED60  80 7F 02 BC */	lwz r3, 0x2bc(r31)
/* 80A1ED64  80 1F 02 C0 */	lwz r0, 0x2c0(r31)
/* 80A1ED68  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A1ED6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1ED70  80 1F 02 C4 */	lwz r0, 0x2c4(r31)
/* 80A1ED74  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A1ED78  7F C3 F3 78 */	mr r3, r30
/* 80A1ED7C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A1ED80  4B FF E9 FD */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1ED84  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1ED88  60 00 00 01 */	ori r0, r0, 1
/* 80A1ED8C  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1ED90  48 00 00 8C */	b lbl_80A1EE1C
lbl_80A1ED94:
/* 80A1ED94  4B 84 25 05 */	bl dTimer_show__Fv
lbl_80A1ED98:
/* 80A1ED98  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A1ED9C  4B 62 36 CD */	bl reset__14dEvt_control_cFv
/* 80A1EDA0  38 00 00 00 */	li r0, 0
/* 80A1EDA4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80A1EDA8  38 00 FF FF */	li r0, -1
/* 80A1EDAC  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80A1EDB0  88 7E 14 04 */	lbz r3, 0x1404(r30)
/* 80A1EDB4  7C 60 07 75 */	extsb. r0, r3
/* 80A1EDB8  40 82 00 2C */	bne lbl_80A1EDE4
/* 80A1EDBC  80 7F 02 C8 */	lwz r3, 0x2c8(r31)
/* 80A1EDC0  80 1F 02 CC */	lwz r0, 0x2cc(r31)
/* 80A1EDC4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A1EDC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1EDCC  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 80A1EDD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1EDD4  7F C3 F3 78 */	mr r3, r30
/* 80A1EDD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1EDDC  4B FF E9 A1 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1EDE0  48 00 00 3C */	b lbl_80A1EE1C
lbl_80A1EDE4:
/* 80A1EDE4  7C 60 07 74 */	extsb r0, r3
/* 80A1EDE8  2C 00 00 01 */	cmpwi r0, 1
/* 80A1EDEC  40 82 00 30 */	bne lbl_80A1EE1C
/* 80A1EDF0  38 60 00 06 */	li r3, 6
/* 80A1EDF4  4B 61 08 45 */	bl dComIfG_TimerReStart__Fi
/* 80A1EDF8  80 7F 02 D4 */	lwz r3, 0x2d4(r31)
/* 80A1EDFC  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 80A1EE00  90 61 00 08 */	stw r3, 8(r1)
/* 80A1EE04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1EE08  80 1F 02 DC */	lwz r0, 0x2dc(r31)
/* 80A1EE0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1EE10  7F C3 F3 78 */	mr r3, r30
/* 80A1EE14  38 81 00 08 */	addi r4, r1, 8
/* 80A1EE18  4B FF E9 65 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
lbl_80A1EE1C:
/* 80A1EE1C  38 60 00 01 */	li r3, 1
/* 80A1EE20  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1EE24  4B 94 33 FD */	bl _restgpr_27
/* 80A1EE28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A1EE2C  7C 08 03 A6 */	mtlr r0
/* 80A1EE30  38 21 00 60 */	addi r1, r1, 0x60
/* 80A1EE34  4E 80 00 20 */	blr 
