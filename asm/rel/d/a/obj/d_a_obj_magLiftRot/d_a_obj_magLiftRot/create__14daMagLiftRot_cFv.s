lbl_80C8EC64:
/* 80C8EC64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8EC68  7C 08 02 A6 */	mflr r0
/* 80C8EC6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8EC70  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8EC74  4B 6D 35 65 */	bl _savegpr_28
/* 80C8EC78  7C 7D 1B 78 */	mr r29, r3
/* 80C8EC7C  3C 80 80 C9 */	lis r4, lit_3627@ha /* 0x80C8FAE8@ha */
/* 80C8EC80  3B E4 FA E8 */	addi r31, r4, lit_3627@l /* 0x80C8FAE8@l */
/* 80C8EC84  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C8EC88  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C8EC8C  40 82 00 70 */	bne lbl_80C8ECFC
/* 80C8EC90  7F A0 EB 79 */	or. r0, r29, r29
/* 80C8EC94  41 82 00 5C */	beq lbl_80C8ECF0
/* 80C8EC98  7C 1C 03 78 */	mr r28, r0
/* 80C8EC9C  4B 3E 99 89 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C8ECA0  3C 60 80 C9 */	lis r3, __vt__14daMagLiftRot_c@ha /* 0x80C8FC78@ha */
/* 80C8ECA4  38 03 FC 78 */	addi r0, r3, __vt__14daMagLiftRot_c@l /* 0x80C8FC78@l */
/* 80C8ECA8  90 1C 05 9C */	stw r0, 0x59c(r28)
/* 80C8ECAC  3B DC 05 AC */	addi r30, r28, 0x5ac
/* 80C8ECB0  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C8FC6C@ha */
/* 80C8ECB4  38 03 FC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C8FC6C@l */
/* 80C8ECB8  90 1C 05 AC */	stw r0, 0x5ac(r28)
/* 80C8ECBC  7F C3 F3 78 */	mr r3, r30
/* 80C8ECC0  38 80 00 00 */	li r4, 0
/* 80C8ECC4  4B 69 97 39 */	bl init__12J3DFrameCtrlFs
/* 80C8ECC8  38 00 00 00 */	li r0, 0
/* 80C8ECCC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C8ECD0  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C8FC6C@ha */
/* 80C8ECD4  38 03 FC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C8FC6C@l */
/* 80C8ECD8  94 1C 05 C4 */	stwu r0, 0x5c4(r28)
/* 80C8ECDC  7F 83 E3 78 */	mr r3, r28
/* 80C8ECE0  38 80 00 00 */	li r4, 0
/* 80C8ECE4  4B 69 97 19 */	bl init__12J3DFrameCtrlFs
/* 80C8ECE8  38 00 00 00 */	li r0, 0
/* 80C8ECEC  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C8ECF0:
/* 80C8ECF0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C8ECF4  60 00 00 08 */	ori r0, r0, 8
/* 80C8ECF8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C8ECFC:
/* 80C8ECFC  38 00 00 00 */	li r0, 0
/* 80C8ED00  98 1D 05 DC */	stb r0, 0x5dc(r29)
/* 80C8ED04  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 80C8ED08  54 60 C6 3F */	rlwinm. r0, r3, 0x18, 0x18, 0x1f
/* 80C8ED0C  41 82 00 0C */	beq lbl_80C8ED18
/* 80C8ED10  28 00 00 FF */	cmplwi r0, 0xff
/* 80C8ED14  40 82 00 0C */	bne lbl_80C8ED20
lbl_80C8ED18:
/* 80C8ED18  54 60 86 3E */	rlwinm r0, r3, 0x10, 0x18, 0x1f
/* 80C8ED1C  98 1D 05 DC */	stb r0, 0x5dc(r29)
lbl_80C8ED20:
/* 80C8ED20  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C8ED24  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 80C8ED28  54 00 10 3A */	slwi r0, r0, 2
/* 80C8ED2C  3C 80 80 C9 */	lis r4, l_arcName@ha /* 0x80C8FBB0@ha */
/* 80C8ED30  38 84 FB B0 */	addi r4, r4, l_arcName@l /* 0x80C8FBB0@l */
/* 80C8ED34  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C8ED38  4B 39 E1 85 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C8ED3C  7C 7E 1B 78 */	mr r30, r3
/* 80C8ED40  2C 1E 00 04 */	cmpwi r30, 4
/* 80C8ED44  40 82 01 EC */	bne lbl_80C8EF30
/* 80C8ED48  38 E0 15 00 */	li r7, 0x1500
/* 80C8ED4C  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 80C8ED50  28 00 00 02 */	cmplwi r0, 2
/* 80C8ED54  40 82 00 08 */	bne lbl_80C8ED5C
/* 80C8ED58  38 E0 25 00 */	li r7, 0x2500
lbl_80C8ED5C:
/* 80C8ED5C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80C8ED60  7F A3 EB 78 */	mr r3, r29
/* 80C8ED64  3C 80 80 C9 */	lis r4, l_arcName@ha /* 0x80C8FBB0@ha */
/* 80C8ED68  38 84 FB B0 */	addi r4, r4, l_arcName@l /* 0x80C8FBB0@l */
/* 80C8ED6C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C8ED70  38 BF 00 3C */	addi r5, r31, 0x3c
/* 80C8ED74  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C8ED78  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C8ED7C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C8ED80  39 00 00 00 */	li r8, 0
/* 80C8ED84  4B 3E 9A 39 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C8ED88  2C 03 00 05 */	cmpwi r3, 5
/* 80C8ED8C  40 82 00 0C */	bne lbl_80C8ED98
/* 80C8ED90  38 60 00 05 */	li r3, 5
/* 80C8ED94  48 00 01 A0 */	b lbl_80C8EF34
lbl_80C8ED98:
/* 80C8ED98  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C8ED9C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8EDA0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80C8EDA4  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C8EDA8  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8EDAC  7F A3 EB 78 */	mr r3, r29
/* 80C8EDB0  4B 38 B7 C9 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C8EDB4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80C8EDB8  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80C8EDBC  60 00 00 01 */	ori r0, r0, 1
/* 80C8EDC0  98 03 00 0B */	stb r0, 0xb(r3)
/* 80C8EDC4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80C8EDC8  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80C8EDCC  60 00 00 02 */	ori r0, r0, 2
/* 80C8EDD0  98 03 00 0B */	stb r0, 0xb(r3)
/* 80C8EDD4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8EDD8  98 1D 05 E1 */	stb r0, 0x5e1(r29)
/* 80C8EDDC  38 00 80 00 */	li r0, -32768
/* 80C8EDE0  B0 1D 05 E2 */	sth r0, 0x5e2(r29)
/* 80C8EDE4  38 00 00 00 */	li r0, 0
/* 80C8EDE8  B0 1D 05 E4 */	sth r0, 0x5e4(r29)
/* 80C8EDEC  88 1D 05 E1 */	lbz r0, 0x5e1(r29)
/* 80C8EDF0  28 00 00 00 */	cmplwi r0, 0
/* 80C8EDF4  40 82 00 14 */	bne lbl_80C8EE08
/* 80C8EDF8  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80C8EDFC  3C 63 00 01 */	addis r3, r3, 1
/* 80C8EE00  38 03 80 00 */	addi r0, r3, -32768
/* 80C8EE04  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_80C8EE08:
/* 80C8EE08  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8EE0C  54 03 C6 3F */	rlwinm. r3, r0, 0x18, 0x18, 0x1f
/* 80C8EE10  41 82 00 0C */	beq lbl_80C8EE1C
/* 80C8EE14  28 03 00 FF */	cmplwi r3, 0xff
/* 80C8EE18  40 82 00 10 */	bne lbl_80C8EE28
lbl_80C8EE1C:
/* 80C8EE1C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C8EE20  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80C8EE24  48 00 00 28 */	b lbl_80C8EE4C
lbl_80C8EE28:
/* 80C8EE28  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80C8EE2C  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80C8EE30  90 61 00 0C */	stw r3, 0xc(r1)
/* 80C8EE34  3C 00 43 30 */	lis r0, 0x4330
/* 80C8EE38  90 01 00 08 */	stw r0, 8(r1)
/* 80C8EE3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C8EE40  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C8EE44  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C8EE48  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80C8EE4C:
/* 80C8EE4C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8EE50  54 00 86 3F */	rlwinm. r0, r0, 0x10, 0x18, 0x1f
/* 80C8EE54  41 82 00 0C */	beq lbl_80C8EE60
/* 80C8EE58  28 00 00 FF */	cmplwi r0, 0xff
/* 80C8EE5C  40 82 00 10 */	bne lbl_80C8EE6C
lbl_80C8EE60:
/* 80C8EE60  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C8EE64  D0 1D 06 30 */	stfs f0, 0x630(r29)
/* 80C8EE68  48 00 00 44 */	b lbl_80C8EEAC
lbl_80C8EE6C:
/* 80C8EE6C  28 03 00 00 */	cmplwi r3, 0
/* 80C8EE70  41 82 00 0C */	beq lbl_80C8EE7C
/* 80C8EE74  28 03 00 FF */	cmplwi r3, 0xff
/* 80C8EE78  40 82 00 10 */	bne lbl_80C8EE88
lbl_80C8EE7C:
/* 80C8EE7C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C8EE80  D0 1D 06 30 */	stfs f0, 0x630(r29)
/* 80C8EE84  48 00 00 28 */	b lbl_80C8EEAC
lbl_80C8EE88:
/* 80C8EE88  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80C8EE8C  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80C8EE90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8EE94  3C 00 43 30 */	lis r0, 0x4330
/* 80C8EE98  90 01 00 08 */	stw r0, 8(r1)
/* 80C8EE9C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C8EEA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C8EEA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C8EEA8  D0 1D 06 30 */	stfs f0, 0x630(r29)
lbl_80C8EEAC:
/* 80C8EEAC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8EEB0  54 1C 46 3E */	srwi r28, r0, 0x18
/* 80C8EEB4  7F A3 EB 78 */	mr r3, r29
/* 80C8EEB8  4B FF FB 71 */	bl setBaseMtx__14daMagLiftRot_cFv
/* 80C8EEBC  28 1C 00 FF */	cmplwi r28, 0xff
/* 80C8EEC0  40 82 00 10 */	bne lbl_80C8EED0
/* 80C8EEC4  7F A3 EB 78 */	mr r3, r29
/* 80C8EEC8  48 00 06 71 */	bl init_modeWait__14daMagLiftRot_cFv
/* 80C8EECC  48 00 00 0C */	b lbl_80C8EED8
lbl_80C8EED0:
/* 80C8EED0  7F A3 EB 78 */	mr r3, r29
/* 80C8EED4  48 00 09 31 */	bl init_modeMoveWait__14daMagLiftRot_cFv
lbl_80C8EED8:
/* 80C8EED8  38 00 00 00 */	li r0, 0
/* 80C8EEDC  B0 1D 05 DE */	sth r0, 0x5de(r29)
/* 80C8EEE0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8EEE4  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 80C8EEE8  B0 1D 05 E6 */	sth r0, 0x5e6(r29)
/* 80C8EEEC  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80C8EEF0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80C8EEF4  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
/* 80C8EEF8  D0 1D 06 14 */	stfs f0, 0x614(r29)
/* 80C8EEFC  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 80C8EF00  D0 1D 05 F0 */	stfs f0, 0x5f0(r29)
/* 80C8EF04  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
/* 80C8EF08  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 80C8EF0C  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 80C8EF10  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 80C8EF14  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 80C8EF18  D0 1D 06 10 */	stfs f0, 0x610(r29)
/* 80C8EF1C  D0 1D 06 18 */	stfs f0, 0x618(r29)
/* 80C8EF20  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 80C8EF24  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 80C8EF28  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 80C8EF2C  D0 1D 06 28 */	stfs f0, 0x628(r29)
lbl_80C8EF30:
/* 80C8EF30  7F C3 F3 78 */	mr r3, r30
lbl_80C8EF34:
/* 80C8EF34  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8EF38  4B 6D 32 ED */	bl _restgpr_28
/* 80C8EF3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8EF40  7C 08 03 A6 */	mtlr r0
/* 80C8EF44  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8EF48  4E 80 00 20 */	blr 
