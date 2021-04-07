lbl_8077E870:
/* 8077E870  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8077E874  7C 08 02 A6 */	mflr r0
/* 8077E878  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8077E87C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8077E880  4B BE 39 51 */	bl _savegpr_26
/* 8077E884  7C 7C 1B 78 */	mr r28, r3
/* 8077E888  3C 80 80 78 */	lis r4, lit_3903@ha /* 0x80780DC4@ha */
/* 8077E88C  3B C4 0D C4 */	addi r30, r4, lit_3903@l /* 0x80780DC4@l */
/* 8077E890  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077E894  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077E898  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 8077E89C  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 8077E8A0  7C 00 07 74 */	extsb r0, r0
/* 8077E8A4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8077E8A8  7C 9F 02 14 */	add r4, r31, r0
/* 8077E8AC  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 8077E8B0  3B 40 00 01 */	li r26, 1
/* 8077E8B4  A8 03 30 38 */	lha r0, 0x3038(r3)
/* 8077E8B8  28 00 00 0D */	cmplwi r0, 0xd
/* 8077E8BC  41 81 03 D4 */	bgt lbl_8077EC90
/* 8077E8C0  3C 80 80 78 */	lis r4, lit_5617@ha /* 0x80781134@ha */
/* 8077E8C4  38 84 11 34 */	addi r4, r4, lit_5617@l /* 0x80781134@l */
/* 8077E8C8  54 00 10 3A */	slwi r0, r0, 2
/* 8077E8CC  7C 04 00 2E */	lwzx r0, r4, r0
/* 8077E8D0  7C 09 03 A6 */	mtctr r0
/* 8077E8D4  4E 80 04 20 */	bctr 
lbl_8077E8D8:
/* 8077E8D8  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 8077E8DC  28 00 00 02 */	cmplwi r0, 2
/* 8077E8E0  41 82 00 28 */	beq lbl_8077E908
/* 8077E8E4  38 80 00 02 */	li r4, 2
/* 8077E8E8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8077E8EC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8077E8F0  38 C0 00 00 */	li r6, 0
/* 8077E8F4  4B 89 D0 15 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8077E8F8  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 8077E8FC  60 00 00 02 */	ori r0, r0, 2
/* 8077E900  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 8077E904  48 00 04 F4 */	b lbl_8077EDF8
lbl_8077E908:
/* 8077E908  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077E90C  4B 9E 2B C5 */	bl Stop__9dCamera_cFv
/* 8077E910  38 00 00 02 */	li r0, 2
/* 8077E914  B0 1C 30 38 */	sth r0, 0x3038(r28)
/* 8077E918  38 00 00 00 */	li r0, 0
/* 8077E91C  B0 1C 30 3A */	sth r0, 0x303a(r28)
/* 8077E920  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8077E924  D0 1C 30 5C */	stfs f0, 0x305c(r28)
/* 8077E928  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8077E92C  D0 1C 30 54 */	stfs f0, 0x3054(r28)
/* 8077E930  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8077E934  D0 1C 30 58 */	stfs f0, 0x3058(r28)
/* 8077E938  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077E93C  D0 1C 30 60 */	stfs f0, 0x3060(r28)
/* 8077E940  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077E944  38 80 00 03 */	li r4, 3
/* 8077E948  4B 9E 46 C5 */	bl SetTrimSize__9dCamera_cFl
lbl_8077E94C:
/* 8077E94C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077E950  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077E954  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8077E958  4B 88 DA 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 8077E95C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077E960  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8077E964  C0 1C 30 54 */	lfs f0, 0x3054(r28)
/* 8077E968  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8077E96C  C0 1C 30 58 */	lfs f0, 0x3058(r28)
/* 8077E970  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8077E974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077E978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077E97C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8077E980  38 BC 30 3C */	addi r5, r28, 0x303c
/* 8077E984  4B BC 83 E9 */	bl PSMTXMultVec
/* 8077E988  38 7C 30 3C */	addi r3, r28, 0x303c
/* 8077E98C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8077E990  7C 65 1B 78 */	mr r5, r3
/* 8077E994  4B BC 86 FD */	bl PSVECAdd
/* 8077E998  38 7C 30 54 */	addi r3, r28, 0x3054
/* 8077E99C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8077E9A0  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 8077E9A4  C0 7E 00 EC */	lfs f3, 0xec(r30)
/* 8077E9A8  C0 1C 30 60 */	lfs f0, 0x3060(r28)
/* 8077E9AC  EC 63 00 32 */	fmuls f3, f3, f0
/* 8077E9B0  4B AF 10 8D */	bl cLib_addCalc2__FPffff
/* 8077E9B4  38 7C 30 58 */	addi r3, r28, 0x3058
/* 8077E9B8  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8077E9BC  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 8077E9C0  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 8077E9C4  C0 1C 30 60 */	lfs f0, 0x3060(r28)
/* 8077E9C8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8077E9CC  4B AF 10 71 */	bl cLib_addCalc2__FPffff
/* 8077E9D0  38 7C 30 60 */	addi r3, r28, 0x3060
/* 8077E9D4  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 8077E9D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077E9DC  C0 7E 00 FC */	lfs f3, 0xfc(r30)
/* 8077E9E0  4B AF 10 5D */	bl cLib_addCalc2__FPffff
/* 8077E9E4  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8077E9E8  D0 1C 30 48 */	stfs f0, 0x3048(r28)
/* 8077E9EC  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8077E9F0  D0 1C 30 4C */	stfs f0, 0x304c(r28)
/* 8077E9F4  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8077E9F8  D0 1C 30 50 */	stfs f0, 0x3050(r28)
/* 8077E9FC  C0 3C 30 4C */	lfs f1, 0x304c(r28)
/* 8077EA00  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8077EA04  EC 01 00 2A */	fadds f0, f1, f0
/* 8077EA08  D0 1C 30 4C */	stfs f0, 0x304c(r28)
/* 8077EA0C  A8 1C 30 3A */	lha r0, 0x303a(r28)
/* 8077EA10  2C 00 00 89 */	cmpwi r0, 0x89
/* 8077EA14  40 82 02 7C */	bne lbl_8077EC90
/* 8077EA18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077EA1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077EA20  88 9C 05 B7 */	lbz r4, 0x5b7(r28)
/* 8077EA24  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8077EA28  7C 05 07 74 */	extsb r5, r0
/* 8077EA2C  4B 8B 69 35 */	bl isSwitch__10dSv_info_cCFii
/* 8077EA30  2C 03 00 00 */	cmpwi r3, 0
/* 8077EA34  40 82 00 1C */	bne lbl_8077EA50
/* 8077EA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077EA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077EA40  88 9C 05 B7 */	lbz r4, 0x5b7(r28)
/* 8077EA44  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8077EA48  7C 05 07 74 */	extsb r5, r0
/* 8077EA4C  4B 8B 67 B5 */	bl onSwitch__10dSv_info_cFii
lbl_8077EA50:
/* 8077EA50  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077EA54  4B 9E 2A 59 */	bl Start__9dCamera_cFv
/* 8077EA58  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077EA5C  38 80 00 00 */	li r4, 0
/* 8077EA60  4B 9E 45 AD */	bl SetTrimSize__9dCamera_cFl
/* 8077EA64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077EA68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077EA6C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8077EA70  4B 8C 39 F9 */	bl reset__14dEvt_control_cFv
/* 8077EA74  7F 83 E3 78 */	mr r3, r28
/* 8077EA78  4B 89 B2 05 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8077EA7C  48 00 02 14 */	b lbl_8077EC90
lbl_8077EA80:
/* 8077EA80  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 8077EA84  28 00 00 02 */	cmplwi r0, 2
/* 8077EA88  41 82 00 28 */	beq lbl_8077EAB0
/* 8077EA8C  38 80 00 02 */	li r4, 2
/* 8077EA90  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8077EA94  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8077EA98  38 C0 00 00 */	li r6, 0
/* 8077EA9C  4B 89 CE 6D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8077EAA0  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 8077EAA4  60 00 00 02 */	ori r0, r0, 2
/* 8077EAA8  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 8077EAAC  48 00 03 4C */	b lbl_8077EDF8
lbl_8077EAB0:
/* 8077EAB0  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077EAB4  4B 9E 2A 1D */	bl Stop__9dCamera_cFv
/* 8077EAB8  38 00 00 0B */	li r0, 0xb
/* 8077EABC  B0 1C 30 38 */	sth r0, 0x3038(r28)
/* 8077EAC0  38 00 00 00 */	li r0, 0
/* 8077EAC4  B0 1C 30 3A */	sth r0, 0x303a(r28)
/* 8077EAC8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8077EACC  D0 1C 30 5C */	stfs f0, 0x305c(r28)
/* 8077EAD0  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8077EAD4  D0 1C 30 48 */	stfs f0, 0x3048(r28)
/* 8077EAD8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8077EADC  D0 1C 30 4C */	stfs f0, 0x304c(r28)
/* 8077EAE0  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8077EAE4  D0 1C 30 50 */	stfs f0, 0x3050(r28)
/* 8077EAE8  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8077EAEC  D0 1C 30 3C */	stfs f0, 0x303c(r28)
/* 8077EAF0  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 8077EAF4  D0 1C 30 40 */	stfs f0, 0x3040(r28)
/* 8077EAF8  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8077EAFC  D0 1C 30 44 */	stfs f0, 0x3044(r28)
/* 8077EB00  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077EB04  38 80 00 03 */	li r4, 3
/* 8077EB08  4B 9E 45 05 */	bl SetTrimSize__9dCamera_cFl
/* 8077EB0C  38 00 00 03 */	li r0, 3
/* 8077EB10  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 8077EB14  38 00 00 00 */	li r0, 0
/* 8077EB18  90 1B 06 0C */	stw r0, 0x60c(r27)
lbl_8077EB1C:
/* 8077EB1C  3B 40 00 00 */	li r26, 0
/* 8077EB20  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8077EB24  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8077EB28  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077EB2C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8077EB30  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8077EB34  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8077EB38  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8077EB3C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8077EB40  38 A0 00 00 */	li r5, 0
/* 8077EB44  38 C0 00 00 */	li r6, 0
/* 8077EB48  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8077EB4C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8077EB50  7D 89 03 A6 */	mtctr r12
/* 8077EB54  4E 80 04 21 */	bctrl 
/* 8077EB58  A8 1C 30 3A */	lha r0, 0x303a(r28)
/* 8077EB5C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 8077EB60  40 82 01 30 */	bne lbl_8077EC90
/* 8077EB64  38 00 00 0C */	li r0, 0xc
/* 8077EB68  B0 1C 30 38 */	sth r0, 0x3038(r28)
/* 8077EB6C  38 00 00 00 */	li r0, 0
/* 8077EB70  B0 1C 30 3A */	sth r0, 0x303a(r28)
/* 8077EB74  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8077EB78  D0 1C 30 5C */	stfs f0, 0x305c(r28)
lbl_8077EB7C:
/* 8077EB7C  3B 40 00 00 */	li r26, 0
/* 8077EB80  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 8077EB84  D0 1C 30 48 */	stfs f0, 0x3048(r28)
/* 8077EB88  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 8077EB8C  D0 1C 30 4C */	stfs f0, 0x304c(r28)
/* 8077EB90  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8077EB94  D0 1C 30 50 */	stfs f0, 0x3050(r28)
/* 8077EB98  38 7C 30 48 */	addi r3, r28, 0x3048
/* 8077EB9C  38 9B 05 50 */	addi r4, r27, 0x550
/* 8077EBA0  7C 65 1B 78 */	mr r5, r3
/* 8077EBA4  4B BC 84 ED */	bl PSVECAdd
/* 8077EBA8  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 8077EBAC  D0 1C 30 3C */	stfs f0, 0x303c(r28)
/* 8077EBB0  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 8077EBB4  D0 1C 30 40 */	stfs f0, 0x3040(r28)
/* 8077EBB8  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8077EBBC  D0 1C 30 44 */	stfs f0, 0x3044(r28)
/* 8077EBC0  38 7C 30 3C */	addi r3, r28, 0x303c
/* 8077EBC4  38 9B 05 50 */	addi r4, r27, 0x550
/* 8077EBC8  7C 65 1B 78 */	mr r5, r3
/* 8077EBCC  4B BC 84 C5 */	bl PSVECAdd
/* 8077EBD0  A8 1C 30 3A */	lha r0, 0x303a(r28)
/* 8077EBD4  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8077EBD8  40 82 00 B8 */	bne lbl_8077EC90
/* 8077EBDC  38 00 00 0D */	li r0, 0xd
/* 8077EBE0  B0 1C 30 38 */	sth r0, 0x3038(r28)
/* 8077EBE4  38 00 00 00 */	li r0, 0
/* 8077EBE8  B0 1C 30 3A */	sth r0, 0x303a(r28)
/* 8077EBEC  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 8077EBF0  D0 1C 30 5C */	stfs f0, 0x305c(r28)
/* 8077EBF4  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8077EBF8  D0 1C 30 48 */	stfs f0, 0x3048(r28)
/* 8077EBFC  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 8077EC00  D0 1C 30 4C */	stfs f0, 0x304c(r28)
/* 8077EC04  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8077EC08  D0 1C 30 50 */	stfs f0, 0x3050(r28)
/* 8077EC0C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 8077EC10  D0 1C 30 3C */	stfs f0, 0x303c(r28)
/* 8077EC14  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8077EC18  D0 1C 30 40 */	stfs f0, 0x3040(r28)
/* 8077EC1C  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 8077EC20  D0 1C 30 44 */	stfs f0, 0x3044(r28)
/* 8077EC24  48 00 00 6C */	b lbl_8077EC90
lbl_8077EC28:
/* 8077EC28  3B 40 00 00 */	li r26, 0
/* 8077EC2C  A8 1C 30 3A */	lha r0, 0x303a(r28)
/* 8077EC30  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8077EC34  40 82 00 5C */	bne lbl_8077EC90
/* 8077EC38  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077EC3C  4B 9E 28 71 */	bl Start__9dCamera_cFv
/* 8077EC40  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077EC44  38 80 00 00 */	li r4, 0
/* 8077EC48  4B 9E 43 C5 */	bl SetTrimSize__9dCamera_cFl
/* 8077EC4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077EC50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077EC54  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8077EC58  4B 8C 38 11 */	bl reset__14dEvt_control_cFv
/* 8077EC5C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8077EC60  38 00 00 02 */	li r0, 2
/* 8077EC64  B0 03 06 04 */	sth r0, 0x604(r3)
/* 8077EC68  38 00 00 01 */	li r0, 1
/* 8077EC6C  90 03 06 14 */	stw r0, 0x614(r3)
/* 8077EC70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077EC74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077EC78  38 80 00 0E */	li r4, 0xe
/* 8077EC7C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8077EC80  7C 05 07 74 */	extsb r5, r0
/* 8077EC84  4B 8B 65 7D */	bl onSwitch__10dSv_info_cFii
/* 8077EC88  38 00 00 00 */	li r0, 0
/* 8077EC8C  B0 1C 30 38 */	sth r0, 0x3038(r28)
lbl_8077EC90:
/* 8077EC90  A8 1C 30 38 */	lha r0, 0x3038(r28)
/* 8077EC94  2C 00 00 00 */	cmpwi r0, 0
/* 8077EC98  41 82 01 60 */	beq lbl_8077EDF8
/* 8077EC9C  C0 1C 30 48 */	lfs f0, 0x3048(r28)
/* 8077ECA0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8077ECA4  C0 1C 30 4C */	lfs f0, 0x304c(r28)
/* 8077ECA8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8077ECAC  C0 1C 30 50 */	lfs f0, 0x3050(r28)
/* 8077ECB0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8077ECB4  C0 1C 30 3C */	lfs f0, 0x303c(r28)
/* 8077ECB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8077ECBC  C0 1C 30 40 */	lfs f0, 0x3040(r28)
/* 8077ECC0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8077ECC4  C0 1C 30 44 */	lfs f0, 0x3044(r28)
/* 8077ECC8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8077ECCC  7F 40 07 75 */	extsb. r0, r26
/* 8077ECD0  41 82 00 D4 */	beq lbl_8077EDA4
/* 8077ECD4  38 61 00 68 */	addi r3, r1, 0x68
/* 8077ECD8  4B 8F 8F 91 */	bl __ct__11dBgS_LinChkFv
/* 8077ECDC  38 61 00 68 */	addi r3, r1, 0x68
/* 8077ECE0  38 9C 30 48 */	addi r4, r28, 0x3048
/* 8077ECE4  38 BC 30 3C */	addi r5, r28, 0x303c
/* 8077ECE8  7F 86 E3 78 */	mr r6, r28
/* 8077ECEC  4B 8F 90 79 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8077ECF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077ECF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077ECF8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8077ECFC  38 81 00 68 */	addi r4, r1, 0x68
/* 8077ED00  4B 8F 56 B5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8077ED04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8077ED08  41 82 00 90 */	beq lbl_8077ED98
/* 8077ED0C  38 61 00 38 */	addi r3, r1, 0x38
/* 8077ED10  38 81 00 50 */	addi r4, r1, 0x50
/* 8077ED14  38 A1 00 44 */	addi r5, r1, 0x44
/* 8077ED18  4B AE 7E 1D */	bl __mi__4cXyzCFRC3Vec
/* 8077ED1C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8077ED20  38 81 00 38 */	addi r4, r1, 0x38
/* 8077ED24  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8077ED28  4B AE 7E 5D */	bl __ml__4cXyzCFf
/* 8077ED2C  38 61 00 20 */	addi r3, r1, 0x20
/* 8077ED30  38 81 00 98 */	addi r4, r1, 0x98
/* 8077ED34  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8077ED38  4B AE 7D AD */	bl __pl__4cXyzCFRC3Vec
/* 8077ED3C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8077ED40  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8077ED44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8077ED48  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8077ED4C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8077ED50  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8077ED54  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8077ED58  EC 42 00 28 */	fsubs f2, f2, f0
/* 8077ED5C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8077ED60  EC 01 00 28 */	fsubs f0, f1, f0
/* 8077ED64  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8077ED68  EC 00 00 32 */	fmuls f0, f0, f0
/* 8077ED6C  EC 41 00 2A */	fadds f2, f1, f0
/* 8077ED70  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077ED74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077ED78  40 81 00 0C */	ble lbl_8077ED84
/* 8077ED7C  FC 00 10 34 */	frsqrte f0, f2
/* 8077ED80  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8077ED84:
/* 8077ED84  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8077ED88  C0 1C 30 58 */	lfs f0, 0x3058(r28)
/* 8077ED8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8077ED90  EC 01 00 2A */	fadds f0, f1, f0
/* 8077ED94  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_8077ED98:
/* 8077ED98  38 61 00 68 */	addi r3, r1, 0x68
/* 8077ED9C  38 80 FF FF */	li r4, -1
/* 8077EDA0  4B 8F 8F 3D */	bl __dt__11dBgS_LinChkFv
lbl_8077EDA4:
/* 8077EDA4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8077EDA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8077EDAC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8077EDB0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8077EDB4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8077EDB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8077EDBC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8077EDC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8077EDC4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8077EDC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8077EDCC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8077EDD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8077EDD4  38 7D 02 48 */	addi r3, r29, 0x248
/* 8077EDD8  38 81 00 14 */	addi r4, r1, 0x14
/* 8077EDDC  38 A1 00 08 */	addi r5, r1, 8
/* 8077EDE0  C0 3C 30 5C */	lfs f1, 0x305c(r28)
/* 8077EDE4  38 C0 00 00 */	li r6, 0
/* 8077EDE8  4B A0 1C F9 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8077EDEC  A8 7C 30 3A */	lha r3, 0x303a(r28)
/* 8077EDF0  38 03 00 01 */	addi r0, r3, 1
/* 8077EDF4  B0 1C 30 3A */	sth r0, 0x303a(r28)
lbl_8077EDF8:
/* 8077EDF8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8077EDFC  4B BE 34 21 */	bl _restgpr_26
/* 8077EE00  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8077EE04  7C 08 03 A6 */	mtlr r0
/* 8077EE08  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8077EE0C  4E 80 00 20 */	blr 
