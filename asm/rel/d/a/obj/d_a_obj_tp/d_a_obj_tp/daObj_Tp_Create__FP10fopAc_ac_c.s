lbl_80D1E950:
/* 80D1E950  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D1E954  7C 08 02 A6 */	mflr r0
/* 80D1E958  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D1E95C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D1E960  4B 64 38 74 */	b _savegpr_27
/* 80D1E964  7C 7E 1B 78 */	mr r30, r3
/* 80D1E968  3C 80 80 D2 */	lis r4, lit_3879@ha
/* 80D1E96C  3B E4 EE 2C */	addi r31, r4, lit_3879@l
/* 80D1E970  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D1E974  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D1E978  40 82 00 A8 */	bne lbl_80D1EA20
/* 80D1E97C  7F C0 F3 79 */	or. r0, r30, r30
/* 80D1E980  41 82 00 94 */	beq lbl_80D1EA14
/* 80D1E984  7C 1B 03 78 */	mr r27, r0
/* 80D1E988  4B 2F A1 DC */	b __ct__10fopAc_ac_cFv
/* 80D1E98C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D1E990  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D1E994  90 1B 06 20 */	stw r0, 0x620(r27)
/* 80D1E998  38 7B 06 24 */	addi r3, r27, 0x624
/* 80D1E99C  4B 36 4D C4 */	b __ct__10dCcD_GSttsFv
/* 80D1E9A0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D1E9A4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D1E9A8  90 7B 06 20 */	stw r3, 0x620(r27)
/* 80D1E9AC  38 03 00 20 */	addi r0, r3, 0x20
/* 80D1E9B0  90 1B 06 24 */	stw r0, 0x624(r27)
/* 80D1E9B4  3B 7B 06 44 */	addi r27, r27, 0x644
/* 80D1E9B8  7F 63 DB 78 */	mr r3, r27
/* 80D1E9BC  4B 36 50 6C */	b __ct__12dCcD_GObjInfFv
/* 80D1E9C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D1E9C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D1E9C8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80D1E9CC  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha
/* 80D1E9D0  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D1E9D4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80D1E9D8  3C 60 80 D2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D1E9DC  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D1E9E0  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80D1E9E4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D1E9E8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D1E9EC  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80D1E9F0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D1E9F4  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80D1E9F8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D1E9FC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D1EA00  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80D1EA04  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D1EA08  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80D1EA0C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D1EA10  90 1B 01 38 */	stw r0, 0x138(r27)
lbl_80D1EA14:
/* 80D1EA14  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D1EA18  60 00 00 08 */	ori r0, r0, 8
/* 80D1EA1C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D1EA20:
/* 80D1EA20  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D1EA24  3C 80 80 D2 */	lis r4, stringBase0@ha
/* 80D1EA28  38 84 EE 98 */	addi r4, r4, stringBase0@l
/* 80D1EA2C  4B 30 E4 90 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D1EA30  7C 7D 1B 78 */	mr r29, r3
/* 80D1EA34  2C 1D 00 04 */	cmpwi r29, 4
/* 80D1EA38  40 82 02 9C */	bne lbl_80D1ECD4
/* 80D1EA3C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1EA40  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D1EA44  98 1E 05 94 */	stb r0, 0x594(r30)
/* 80D1EA48  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1EA4C  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80D1EA50  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80D1EA54  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1EA58  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D1EA5C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D1EA60  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1EA64  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D1EA68  98 1E 05 95 */	stb r0, 0x595(r30)
/* 80D1EA6C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1EA70  54 00 46 3E */	srwi r0, r0, 0x18
/* 80D1EA74  98 1E 05 96 */	stb r0, 0x596(r30)
/* 80D1EA78  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80D1EA7C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D1EA80  41 82 00 0C */	beq lbl_80D1EA8C
/* 80D1EA84  98 1E 05 97 */	stb r0, 0x597(r30)
/* 80D1EA88  48 00 00 0C */	b lbl_80D1EA94
lbl_80D1EA8C:
/* 80D1EA8C  38 00 00 FF */	li r0, 0xff
/* 80D1EA90  98 1E 05 97 */	stb r0, 0x597(r30)
lbl_80D1EA94:
/* 80D1EA94  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80D1EA98  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D1EA9C  98 1E 05 98 */	stb r0, 0x598(r30)
/* 80D1EAA0  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 80D1EAA4  28 00 00 FF */	cmplwi r0, 0xff
/* 80D1EAA8  40 82 00 0C */	bne lbl_80D1EAB4
/* 80D1EAAC  38 00 00 00 */	li r0, 0
/* 80D1EAB0  98 1E 05 98 */	stb r0, 0x598(r30)
lbl_80D1EAB4:
/* 80D1EAB4  88 7E 05 95 */	lbz r3, 0x595(r30)
/* 80D1EAB8  28 03 00 FF */	cmplwi r3, 0xff
/* 80D1EABC  41 82 01 28 */	beq lbl_80D1EBE4
/* 80D1EAC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D1EAC4  7C 04 07 74 */	extsb r4, r0
/* 80D1EAC8  4B 33 2D 24 */	b dPath_GetRoomPath__Fii
/* 80D1EACC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1EAD0  40 82 00 0C */	bne lbl_80D1EADC
/* 80D1EAD4  38 60 00 05 */	li r3, 5
/* 80D1EAD8  48 00 02 00 */	b lbl_80D1ECD8
lbl_80D1EADC:
/* 80D1EADC  83 BF 00 08 */	lwz r29, 8(r31)
/* 80D1EAE0  38 61 00 10 */	addi r3, r1, 0x10
/* 80D1EAE4  38 80 00 00 */	li r4, 0
/* 80D1EAE8  38 A0 00 00 */	li r5, 0
/* 80D1EAEC  38 C0 00 00 */	li r6, 0
/* 80D1EAF0  4B 54 89 04 */	b __ct__5csXyzFsss
/* 80D1EAF4  3B 80 00 00 */	li r28, 0
/* 80D1EAF8  3B 60 00 00 */	li r27, 0
/* 80D1EAFC  48 00 00 CC */	b lbl_80D1EBC8
lbl_80D1EB00:
/* 80D1EB00  88 1D 00 03 */	lbz r0, 3(r29)
/* 80D1EB04  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 80D1EB08  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1EB0C  54 00 00 0E */	rlwinm r0, r0, 0, 0, 7
/* 80D1EB10  64 00 00 FF */	oris r0, r0, 0xff
/* 80D1EB14  7F 60 03 78 */	or r0, r27, r0
/* 80D1EB18  7C 65 03 78 */	or r5, r3, r0
/* 80D1EB1C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D1EB20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D1EB24  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80D1EB28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D1EB2C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80D1EB30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D1EB34  88 1D 00 00 */	lbz r0, 0(r29)
/* 80D1EB38  1C 00 01 6C */	mulli r0, r0, 0x16c
/* 80D1EB3C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80D1EB40  88 7E 05 97 */	lbz r3, 0x597(r30)
/* 80D1EB44  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 80D1EB48  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 80D1EB4C  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80D1EB50  A0 7F 00 00 */	lhz r3, 0(r31)
/* 80D1EB54  38 03 FF FF */	addi r0, r3, -1
/* 80D1EB58  7C 1C 00 00 */	cmpw r28, r0
/* 80D1EB5C  40 82 00 18 */	bne lbl_80D1EB74
/* 80D1EB60  88 1F 00 05 */	lbz r0, 5(r31)
/* 80D1EB64  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D1EB68  40 82 00 18 */	bne lbl_80D1EB80
/* 80D1EB6C  60 A5 00 F0 */	ori r5, r5, 0xf0
/* 80D1EB70  48 00 00 10 */	b lbl_80D1EB80
lbl_80D1EB74:
/* 80D1EB74  38 1C 00 01 */	addi r0, r28, 1
/* 80D1EB78  54 00 20 36 */	slwi r0, r0, 4
/* 80D1EB7C  7C A5 03 78 */	or r5, r5, r0
lbl_80D1EB80:
/* 80D1EB80  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D1EB84  7C 07 07 74 */	extsb r7, r0
/* 80D1EB88  38 00 00 00 */	li r0, 0
/* 80D1EB8C  90 01 00 08 */	stw r0, 8(r1)
/* 80D1EB90  38 60 00 30 */	li r3, 0x30
/* 80D1EB94  28 1E 00 00 */	cmplwi r30, 0
/* 80D1EB98  41 82 00 0C */	beq lbl_80D1EBA4
/* 80D1EB9C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80D1EBA0  48 00 00 08 */	b lbl_80D1EBA8
lbl_80D1EBA4:
/* 80D1EBA4  38 80 FF FF */	li r4, -1
lbl_80D1EBA8:
/* 80D1EBA8  38 C1 00 18 */	addi r6, r1, 0x18
/* 80D1EBAC  39 01 00 10 */	addi r8, r1, 0x10
/* 80D1EBB0  39 20 00 00 */	li r9, 0
/* 80D1EBB4  39 40 FF FF */	li r10, -1
/* 80D1EBB8  4B 2F B3 38 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80D1EBBC  3B 9C 00 01 */	addi r28, r28, 1
/* 80D1EBC0  3B 7B 01 00 */	addi r27, r27, 0x100
/* 80D1EBC4  3B BD 00 10 */	addi r29, r29, 0x10
lbl_80D1EBC8:
/* 80D1EBC8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80D1EBCC  7C 1C 00 00 */	cmpw r28, r0
/* 80D1EBD0  41 80 FF 30 */	blt lbl_80D1EB00
/* 80D1EBD4  38 00 00 01 */	li r0, 1
/* 80D1EBD8  98 1E 05 A4 */	stb r0, 0x5a4(r30)
/* 80D1EBDC  38 60 00 05 */	li r3, 5
/* 80D1EBE0  48 00 00 F8 */	b lbl_80D1ECD8
lbl_80D1EBE4:
/* 80D1EBE4  7F C3 F3 78 */	mr r3, r30
/* 80D1EBE8  3C 80 80 D2 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D1EBEC  38 84 E4 C0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D1EBF0  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80D1EBF4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80D1EBF8  38 A0 0F C0 */	li r5, 0xfc0
/* 80D1EBFC  41 82 00 08 */	beq lbl_80D1EC04
/* 80D1EC00  38 A0 24 B0 */	li r5, 0x24b0
lbl_80D1EC04:
/* 80D1EC04  4B 2F B8 AC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D1EC08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1EC0C  40 82 00 0C */	bne lbl_80D1EC18
/* 80D1EC10  38 60 00 05 */	li r3, 5
/* 80D1EC14  48 00 00 C4 */	b lbl_80D1ECD8
lbl_80D1EC18:
/* 80D1EC18  80 9E 06 04 */	lwz r4, 0x604(r30)
/* 80D1EC1C  28 04 00 00 */	cmplwi r4, 0
/* 80D1EC20  41 82 00 28 */	beq lbl_80D1EC48
/* 80D1EC24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1EC28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1EC2C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D1EC30  7F C5 F3 78 */	mr r5, r30
/* 80D1EC34  4B 35 5D D4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D1EC38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1EC3C  41 82 00 0C */	beq lbl_80D1EC48
/* 80D1EC40  38 60 00 05 */	li r3, 5
/* 80D1EC44  48 00 00 94 */	b lbl_80D1ECD8
lbl_80D1EC48:
/* 80D1EC48  38 00 00 00 */	li r0, 0
/* 80D1EC4C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80D1EC50  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D1EC54  80 63 00 04 */	lwz r3, 4(r3)
/* 80D1EC58  38 03 00 24 */	addi r0, r3, 0x24
/* 80D1EC5C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D1EC60  7F C3 F3 78 */	mr r3, r30
/* 80D1EC64  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80D1EC68  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80D1EC6C  FC 60 08 90 */	fmr f3, f1
/* 80D1EC70  4B 2F B8 B8 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D1EC74  7F C3 F3 78 */	mr r3, r30
/* 80D1EC78  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D1EC7C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80D1EC80  FC 60 08 90 */	fmr f3, f1
/* 80D1EC84  4B 2F B8 B4 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D1EC88  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80D1EC8C  4B 54 8C C8 */	b cM_rndF__Ff
/* 80D1EC90  FC 00 08 1E */	fctiwz f0, f1
/* 80D1EC94  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D1EC98  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D1EC9C  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 80D1ECA0  38 7E 06 08 */	addi r3, r30, 0x608
/* 80D1ECA4  38 80 00 FF */	li r4, 0xff
/* 80D1ECA8  38 A0 00 00 */	li r5, 0
/* 80D1ECAC  7F C6 F3 78 */	mr r6, r30
/* 80D1ECB0  4B 36 4B B0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D1ECB4  38 7E 06 44 */	addi r3, r30, 0x644
/* 80D1ECB8  3C 80 80 D2 */	lis r4, cc_cyl_src@ha
/* 80D1ECBC  38 84 EF 08 */	addi r4, r4, cc_cyl_src@l
/* 80D1ECC0  4B 36 5B F4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D1ECC4  38 1E 06 08 */	addi r0, r30, 0x608
/* 80D1ECC8  90 1E 06 88 */	stw r0, 0x688(r30)
/* 80D1ECCC  7F C3 F3 78 */	mr r3, r30
/* 80D1ECD0  4B FF EB F9 */	bl daObj_Tp_Execute__FP12obj_tp_class
lbl_80D1ECD4:
/* 80D1ECD4  7F A3 EB 78 */	mr r3, r29
lbl_80D1ECD8:
/* 80D1ECD8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D1ECDC  4B 64 35 44 */	b _restgpr_27
/* 80D1ECE0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D1ECE4  7C 08 03 A6 */	mtlr r0
/* 80D1ECE8  38 21 00 50 */	addi r1, r1, 0x50
/* 80D1ECEC  4E 80 00 20 */	blr 
