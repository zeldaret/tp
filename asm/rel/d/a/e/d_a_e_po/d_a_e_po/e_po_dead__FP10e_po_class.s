lbl_8074EA6C:
/* 8074EA6C  94 21 FE 00 */	stwu r1, -0x200(r1)
/* 8074EA70  7C 08 02 A6 */	mflr r0
/* 8074EA74  90 01 02 04 */	stw r0, 0x204(r1)
/* 8074EA78  39 61 02 00 */	addi r11, r1, 0x200
/* 8074EA7C  4B C1 37 3D */	bl _savegpr_20
/* 8074EA80  7C 7F 1B 78 */	mr r31, r3
/* 8074EA84  3C 60 80 75 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80757AA4@ha */
/* 8074EA88  3B 43 7A A4 */	addi r26, r3, cNullVec__6Z2Calc@l /* 0x80757AA4@l */
/* 8074EA8C  3C 60 80 75 */	lis r3, lit_3917@ha /* 0x807576FC@ha */
/* 8074EA90  3B C3 76 FC */	addi r30, r3, lit_3917@l /* 0x807576FC@l */
/* 8074EA94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074EA98  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074EA9C  83 95 5D AC */	lwz r28, 0x5dac(r21)
/* 8074EAA0  88 15 5D B0 */	lbz r0, 0x5db0(r21)
/* 8074EAA4  7C 00 07 74 */	extsb r0, r0
/* 8074EAA8  38 75 5D 74 */	addi r3, r21, 0x5d74
/* 8074EAAC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8074EAB0  7F A3 00 2E */	lwzx r29, r3, r0
/* 8074EAB4  82 95 5D 74 */	lwz r20, 0x5d74(r21)
/* 8074EAB8  38 61 01 58 */	addi r3, r1, 0x158
/* 8074EABC  4B 92 91 AD */	bl __ct__11dBgS_LinChkFv
/* 8074EAC0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8074EAC4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8074EAC8  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8074EACC  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8074EAD0  38 61 01 04 */	addi r3, r1, 0x104
/* 8074EAD4  4B 92 8A A9 */	bl __ct__11dBgS_GndChkFv
/* 8074EAD8  38 00 00 0A */	li r0, 0xa
/* 8074EADC  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 8074EAE0  82 D5 5D AC */	lwz r22, 0x5dac(r21)
/* 8074EAE4  7F E3 FB 78 */	mr r3, r31
/* 8074EAE8  7E C4 B3 78 */	mr r4, r22
/* 8074EAEC  4B 8C BC 25 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074EAF0  7C 64 1B 78 */	mr r4, r3
/* 8074EAF4  7E C3 B3 78 */	mr r3, r22
/* 8074EAF8  3C 84 00 01 */	addis r4, r4, 1
/* 8074EAFC  38 04 80 00 */	addi r0, r4, -32768
/* 8074EB00  7C 04 07 34 */	extsh r4, r0
/* 8074EB04  81 96 06 28 */	lwz r12, 0x628(r22)
/* 8074EB08  81 8C 01 E4 */	lwz r12, 0x1e4(r12)
/* 8074EB0C  7D 89 03 A6 */	mtctr r12
/* 8074EB10  4E 80 04 21 */	bctrl 
/* 8074EB14  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 8074EB18  28 00 00 33 */	cmplwi r0, 0x33
/* 8074EB1C  41 81 15 7C */	bgt lbl_80750098
/* 8074EB20  3C 60 80 75 */	lis r3, lit_5635@ha /* 0x80757B08@ha */
/* 8074EB24  38 63 7B 08 */	addi r3, r3, lit_5635@l /* 0x80757B08@l */
/* 8074EB28  54 00 10 3A */	slwi r0, r0, 2
/* 8074EB2C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8074EB30  7C 09 03 A6 */	mtctr r0
/* 8074EB34  4E 80 04 20 */	bctr 
lbl_8074EB38:
/* 8074EB38  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8074EB3C  28 00 00 02 */	cmplwi r0, 2
/* 8074EB40  41 82 00 5C */	beq lbl_8074EB9C
/* 8074EB44  7F E3 FB 78 */	mr r3, r31
/* 8074EB48  38 80 00 02 */	li r4, 2
/* 8074EB4C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8074EB50  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8074EB54  38 C0 00 00 */	li r6, 0
/* 8074EB58  4B 8C CD B1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8074EB5C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8074EB60  60 00 00 02 */	ori r0, r0, 2
/* 8074EB64  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8074EB68  C0 14 00 D8 */	lfs f0, 0xd8(r20)
/* 8074EB6C  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 8074EB70  C0 14 00 DC */	lfs f0, 0xdc(r20)
/* 8074EB74  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 8074EB78  C0 14 00 E0 */	lfs f0, 0xe0(r20)
/* 8074EB7C  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8074EB80  C0 14 00 E4 */	lfs f0, 0xe4(r20)
/* 8074EB84  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 8074EB88  C0 14 00 E8 */	lfs f0, 0xe8(r20)
/* 8074EB8C  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 8074EB90  C0 14 00 EC */	lfs f0, 0xec(r20)
/* 8074EB94  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 8074EB98  48 00 15 00 */	b lbl_80750098
lbl_8074EB9C:
/* 8074EB9C  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074EBA0  4B A1 29 31 */	bl Stop__9dCamera_cFv
/* 8074EBA4  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074EBA8  38 80 00 03 */	li r4, 3
/* 8074EBAC  4B A1 44 61 */	bl SetTrimSize__9dCamera_cFl
/* 8074EBB0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8074EBB4  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 8074EBB8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8074EBBC  38 00 00 03 */	li r0, 3
/* 8074EBC0  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074EBC4  48 00 14 D4 */	b lbl_80750098
lbl_8074EBC8:
/* 8074EBC8  7F E3 FB 78 */	mr r3, r31
/* 8074EBCC  38 80 00 FF */	li r4, 0xff
/* 8074EBD0  4B FF DA 1D */	bl mArg0Check__FP10e_po_classs
/* 8074EBD4  2C 03 00 02 */	cmpwi r3, 2
/* 8074EBD8  40 82 00 34 */	bne lbl_8074EC0C
/* 8074EBDC  38 00 00 00 */	li r0, 0
/* 8074EBE0  B0 1A 00 36 */	sth r0, 0x36(r26)
/* 8074EBE4  38 00 00 03 */	li r0, 3
/* 8074EBE8  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 8074EBEC  88 9F 05 BF */	lbz r4, 0x5bf(r31)
/* 8074EBF0  28 04 00 FF */	cmplwi r4, 0xff
/* 8074EBF4  41 82 00 18 */	beq lbl_8074EC0C
/* 8074EBF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074EBFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074EC00  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8074EC04  7C 05 07 74 */	extsb r5, r0
/* 8074EC08  4B 8E 66 A9 */	bl offSwitch__10dSv_info_cFii
lbl_8074EC0C:
/* 8074EC0C  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 8074EC10  7F E4 FB 78 */	mr r4, r31
/* 8074EC14  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8074EC18  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8074EC1C  7D 89 03 A6 */	mtctr r12
/* 8074EC20  4E 80 04 21 */	bctrl 
/* 8074EC24  2C 03 00 00 */	cmpwi r3, 0
/* 8074EC28  41 82 00 1C */	beq lbl_8074EC44
/* 8074EC2C  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 8074EC30  7F E4 FB 78 */	mr r4, r31
/* 8074EC34  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8074EC38  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8074EC3C  7D 89 03 A6 */	mtctr r12
/* 8074EC40  4E 80 04 21 */	bctrl 
lbl_8074EC44:
/* 8074EC44  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8074EC48  60 00 02 00 */	ori r0, r0, 0x200
/* 8074EC4C  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 8074EC50  38 00 00 01 */	li r0, 1
/* 8074EC54  98 1F 07 59 */	stb r0, 0x759(r31)
/* 8074EC58  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074EC5C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8074EC60  7F E3 FB 78 */	mr r3, r31
/* 8074EC64  38 80 00 08 */	li r4, 8
/* 8074EC68  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8074EC6C  38 A0 00 00 */	li r5, 0
/* 8074EC70  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074EC74  4B FF D9 ED */	bl anm_init__FP10e_po_classifUcf
/* 8074EC78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070522@ha */
/* 8074EC7C  38 03 05 22 */	addi r0, r3, 0x0522 /* 0x00070522@l */
/* 8074EC80  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8074EC84  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8074EC88  38 81 00 4C */	addi r4, r1, 0x4c
/* 8074EC8C  38 A0 FF FF */	li r5, -1
/* 8074EC90  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 8074EC94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074EC98  7D 89 03 A6 */	mtctr r12
/* 8074EC9C  4E 80 04 21 */	bctrl 
/* 8074ECA0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8074ECA4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8074ECA8  80 63 00 00 */	lwz r3, 0(r3)
/* 8074ECAC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8074ECB0  3C 84 00 01 */	addis r4, r4, 1
/* 8074ECB4  38 04 80 00 */	addi r0, r4, -32768
/* 8074ECB8  7C 04 07 34 */	extsh r4, r0
/* 8074ECBC  4B 8B D7 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 8074ECC0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074ECC4  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8074ECC8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8074ECCC  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074ECD0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8074ECD4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8074ECD8  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8074ECDC  38 81 00 EC */	addi r4, r1, 0xec
/* 8074ECE0  4B B2 22 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8074ECE4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8074ECE8  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8074ECEC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8074ECF0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074ECF4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8074ECF8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8074ECFC  38 61 00 EC */	addi r3, r1, 0xec
/* 8074ED00  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8074ED04  7C 65 1B 78 */	mr r5, r3
/* 8074ED08  4B BF 83 89 */	bl PSVECAdd
/* 8074ED0C  38 61 01 58 */	addi r3, r1, 0x158
/* 8074ED10  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8074ED14  38 A1 00 EC */	addi r5, r1, 0xec
/* 8074ED18  7F E6 FB 78 */	mr r6, r31
/* 8074ED1C  4B 92 90 49 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8074ED20  38 00 00 00 */	li r0, 0
/* 8074ED24  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 8074ED28  B0 1F 07 4E */	sth r0, 0x74e(r31)
/* 8074ED2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074ED30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074ED34  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8074ED38  38 81 01 58 */	addi r4, r1, 0x158
/* 8074ED3C  4B 92 56 79 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8074ED40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8074ED44  41 82 00 14 */	beq lbl_8074ED58
/* 8074ED48  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8074ED4C  3C 63 00 01 */	addis r3, r3, 1
/* 8074ED50  38 03 80 00 */	addi r0, r3, -32768
/* 8074ED54  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8074ED58:
/* 8074ED58  38 00 00 00 */	li r0, 0
/* 8074ED5C  98 1F 07 DD */	stb r0, 0x7dd(r31)
/* 8074ED60  38 00 00 01 */	li r0, 1
/* 8074ED64  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074ED68  48 00 13 30 */	b lbl_80750098
lbl_8074ED6C:
/* 8074ED6C  88 1F 07 DD */	lbz r0, 0x7dd(r31)
/* 8074ED70  28 00 00 00 */	cmplwi r0, 0
/* 8074ED74  40 82 00 68 */	bne lbl_8074EDDC
/* 8074ED78  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8074ED7C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8074ED80  FC 00 00 1E */	fctiwz f0, f0
/* 8074ED84  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 8074ED88  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 8074ED8C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8074ED90  40 82 00 4C */	bne lbl_8074EDDC
/* 8074ED94  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070523@ha */
/* 8074ED98  38 03 05 23 */	addi r0, r3, 0x0523 /* 0x00070523@l */
/* 8074ED9C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8074EDA0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074EDA4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074EDA8  80 63 00 00 */	lwz r3, 0(r3)
/* 8074EDAC  38 81 00 48 */	addi r4, r1, 0x48
/* 8074EDB0  38 BF 07 7C */	addi r5, r31, 0x77c
/* 8074EDB4  38 C0 00 00 */	li r6, 0
/* 8074EDB8  38 E0 00 00 */	li r7, 0
/* 8074EDBC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074EDC0  FC 40 08 90 */	fmr f2, f1
/* 8074EDC4  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074EDC8  FC 80 18 90 */	fmr f4, f3
/* 8074EDCC  39 00 00 00 */	li r8, 0
/* 8074EDD0  4B B5 CB B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8074EDD4  38 00 00 01 */	li r0, 1
/* 8074EDD8  98 1F 07 DD */	stb r0, 0x7dd(r31)
lbl_8074EDDC:
/* 8074EDDC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8074EDE0  38 80 00 01 */	li r4, 1
/* 8074EDE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074EDE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074EDEC  40 82 00 18 */	bne lbl_8074EE04
/* 8074EDF0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074EDF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074EDF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074EDFC  41 82 00 08 */	beq lbl_8074EE04
/* 8074EE00  38 80 00 00 */	li r4, 0
lbl_8074EE04:
/* 8074EE04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074EE08  41 82 12 90 */	beq lbl_80750098
/* 8074EE0C  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 8074EE10  2C 00 00 01 */	cmpwi r0, 1
/* 8074EE14  41 82 00 34 */	beq lbl_8074EE48
/* 8074EE18  40 80 00 10 */	bge lbl_8074EE28
/* 8074EE1C  2C 00 00 00 */	cmpwi r0, 0
/* 8074EE20  40 80 00 14 */	bge lbl_8074EE34
/* 8074EE24  48 00 00 4C */	b lbl_8074EE70
lbl_8074EE28:
/* 8074EE28  2C 00 00 03 */	cmpwi r0, 3
/* 8074EE2C  40 80 00 44 */	bge lbl_8074EE70
/* 8074EE30  48 00 00 2C */	b lbl_8074EE5C
lbl_8074EE34:
/* 8074EE34  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074EE38  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074EE3C  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 8074EE40  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 8074EE44  48 00 00 3C */	b lbl_8074EE80
lbl_8074EE48:
/* 8074EE48  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074EE4C  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074EE50  A8 03 00 2C */	lha r0, 0x2c(r3)
/* 8074EE54  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 8074EE58  48 00 00 28 */	b lbl_8074EE80
lbl_8074EE5C:
/* 8074EE5C  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074EE60  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074EE64  A8 03 00 2E */	lha r0, 0x2e(r3)
/* 8074EE68  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 8074EE6C  48 00 00 14 */	b lbl_8074EE80
lbl_8074EE70:
/* 8074EE70  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074EE74  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074EE78  A8 03 00 30 */	lha r0, 0x30(r3)
/* 8074EE7C  B0 1F 07 4A */	sth r0, 0x74a(r31)
lbl_8074EE80:
/* 8074EE80  38 00 00 07 */	li r0, 7
/* 8074EE84  B0 1F 07 4C */	sth r0, 0x74c(r31)
/* 8074EE88  7F E3 FB 78 */	mr r3, r31
/* 8074EE8C  38 80 00 0B */	li r4, 0xb
/* 8074EE90  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074EE94  38 A0 00 02 */	li r5, 2
/* 8074EE98  FC 40 08 90 */	fmr f2, f1
/* 8074EE9C  4B FF D7 C5 */	bl anm_init__FP10e_po_classifUcf
/* 8074EEA0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074EEA4  D0 1F 07 D0 */	stfs f0, 0x7d0(r31)
/* 8074EEA8  38 00 00 02 */	li r0, 2
/* 8074EEAC  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074EEB0  48 00 11 E8 */	b lbl_80750098
lbl_8074EEB4:
/* 8074EEB4  A8 1F 07 4C */	lha r0, 0x74c(r31)
/* 8074EEB8  2C 00 00 00 */	cmpwi r0, 0
/* 8074EEBC  40 82 00 10 */	bne lbl_8074EECC
/* 8074EEC0  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8074EEC4  60 00 00 01 */	ori r0, r0, 1
/* 8074EEC8  B0 1F 05 8E */	sth r0, 0x58e(r31)
lbl_8074EECC:
/* 8074EECC  A8 1F 07 4E */	lha r0, 0x74e(r31)
/* 8074EED0  2C 00 00 00 */	cmpwi r0, 0
/* 8074EED4  40 82 00 AC */	bne lbl_8074EF80
/* 8074EED8  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 8074EEDC  2C 00 00 00 */	cmpwi r0, 0
/* 8074EEE0  41 82 00 1C */	beq lbl_8074EEFC
/* 8074EEE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074EEE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074EEEC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8074EEF0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8074EEF4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8074EEF8  40 82 00 88 */	bne lbl_8074EF80
lbl_8074EEFC:
/* 8074EEFC  38 00 00 14 */	li r0, 0x14
/* 8074EF00  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074EF04  38 00 00 00 */	li r0, 0
/* 8074EF08  98 1F 07 59 */	stb r0, 0x759(r31)
/* 8074EF0C  A0 7F 05 8E */	lhz r3, 0x58e(r31)
/* 8074EF10  38 00 FF E8 */	li r0, -24
/* 8074EF14  7C 60 00 38 */	and r0, r3, r0
/* 8074EF18  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 8074EF1C  7F E3 FB 78 */	mr r3, r31
/* 8074EF20  38 80 00 08 */	li r4, 8
/* 8074EF24  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8074EF28  38 A0 00 00 */	li r5, 0
/* 8074EF2C  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8074EF30  4B FF D7 31 */	bl anm_init__FP10e_po_classifUcf
/* 8074EF34  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CC@ha */
/* 8074EF38  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000700CC@l */
/* 8074EF3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8074EF40  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8074EF44  38 81 00 44 */	addi r4, r1, 0x44
/* 8074EF48  38 A0 FF FF */	li r5, -1
/* 8074EF4C  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 8074EF50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074EF54  7D 89 03 A6 */	mtctr r12
/* 8074EF58  4E 80 04 21 */	bctrl 
/* 8074EF5C  38 00 00 3C */	li r0, 0x3c
/* 8074EF60  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 8074EF64  38 61 01 04 */	addi r3, r1, 0x104
/* 8074EF68  38 80 FF FF */	li r4, -1
/* 8074EF6C  4B 92 86 85 */	bl __dt__11dBgS_GndChkFv
/* 8074EF70  38 61 01 58 */	addi r3, r1, 0x158
/* 8074EF74  38 80 FF FF */	li r4, -1
/* 8074EF78  4B 92 8D 65 */	bl __dt__11dBgS_LinChkFv
/* 8074EF7C  48 00 12 1C */	b lbl_80750198
lbl_8074EF80:
/* 8074EF80  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8074EF84  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8074EF88  41 82 00 24 */	beq lbl_8074EFAC
/* 8074EF8C  A0 7F 05 8E */	lhz r3, 0x58e(r31)
/* 8074EF90  38 00 FF E8 */	li r0, -24
/* 8074EF94  7C 60 00 38 */	and r0, r3, r0
/* 8074EF98  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 8074EF9C  38 00 00 C8 */	li r0, 0xc8
/* 8074EFA0  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 8074EFA4  38 00 00 1F */	li r0, 0x1f
/* 8074EFA8  B0 1F 07 4E */	sth r0, 0x74e(r31)
lbl_8074EFAC:
/* 8074EFAC  A8 1F 07 4E */	lha r0, 0x74e(r31)
/* 8074EFB0  2C 00 00 01 */	cmpwi r0, 1
/* 8074EFB4  40 82 10 E4 */	bne lbl_80750098
/* 8074EFB8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8074EFBC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8074EFC0  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8074EFC4  38 A0 00 20 */	li r5, 0x20
/* 8074EFC8  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 8074EFCC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8074EFD0  7D 89 03 A6 */	mtctr r12
/* 8074EFD4  4E 80 04 21 */	bctrl 
/* 8074EFD8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070539@ha */
/* 8074EFDC  38 03 05 39 */	addi r0, r3, 0x0539 /* 0x00070539@l */
/* 8074EFE0  90 01 00 40 */	stw r0, 0x40(r1)
/* 8074EFE4  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8074EFE8  38 81 00 40 */	addi r4, r1, 0x40
/* 8074EFEC  38 A0 00 00 */	li r5, 0
/* 8074EFF0  38 C0 FF FF */	li r6, -1
/* 8074EFF4  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 8074EFF8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8074EFFC  7D 89 03 A6 */	mtctr r12
/* 8074F000  4E 80 04 21 */	bctrl 
/* 8074F004  7F E3 FB 78 */	mr r3, r31
/* 8074F008  38 80 00 0A */	li r4, 0xa
/* 8074F00C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074F010  38 A0 00 00 */	li r5, 0
/* 8074F014  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074F018  4B FF D6 49 */	bl anm_init__FP10e_po_classifUcf
/* 8074F01C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8074F020  54 00 00 3E */	slwi r0, r0, 0
/* 8074F024  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8074F028  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8074F02C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8074F030  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8074F034  38 00 00 03 */	li r0, 3
/* 8074F038  98 1F 0B 62 */	stb r0, 0xb62(r31)
/* 8074F03C  38 00 00 05 */	li r0, 5
/* 8074F040  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8074F044  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8074F048  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8074F04C  60 00 40 00 */	ori r0, r0, 0x4000
/* 8074F050  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8074F054  38 00 00 32 */	li r0, 0x32
/* 8074F058  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074F05C  48 00 10 3C */	b lbl_80750098
lbl_8074F060:
/* 8074F060  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8074F064  38 80 00 01 */	li r4, 1
/* 8074F068  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074F06C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074F070  40 82 00 18 */	bne lbl_8074F088
/* 8074F074  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074F078  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074F07C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074F080  41 82 00 08 */	beq lbl_8074F088
/* 8074F084  38 80 00 00 */	li r4, 0
lbl_8074F088:
/* 8074F088  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074F08C  41 82 10 0C */	beq lbl_80750098
/* 8074F090  38 00 00 01 */	li r0, 1
/* 8074F094  98 1F 07 5A */	stb r0, 0x75a(r31)
/* 8074F098  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8074F09C  54 00 00 3E */	slwi r0, r0, 0
/* 8074F0A0  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8074F0A4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8074F0A8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8074F0AC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8074F0B0  38 00 00 00 */	li r0, 0
/* 8074F0B4  98 1F 05 46 */	stb r0, 0x546(r31)
/* 8074F0B8  98 1F 04 96 */	stb r0, 0x496(r31)
/* 8074F0BC  3C 60 80 75 */	lis r3, d_a_e_po__stringBase0@ha /* 0x80757A88@ha */
/* 8074F0C0  38 63 7A 88 */	addi r3, r3, d_a_e_po__stringBase0@l /* 0x80757A88@l */
/* 8074F0C4  38 80 00 17 */	li r4, 0x17
/* 8074F0C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074F0CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074F0D0  3C A5 00 02 */	addis r5, r5, 2
/* 8074F0D4  38 C0 00 80 */	li r6, 0x80
/* 8074F0D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8074F0DC  4B 8E D2 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8074F0E0  7C 64 1B 78 */	mr r4, r3
/* 8074F0E4  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8074F0E8  38 A0 00 00 */	li r5, 0
/* 8074F0EC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074F0F0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074F0F4  FC 60 08 90 */	fmr f3, f1
/* 8074F0F8  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 8074F0FC  4B 8C 1D 75 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8074F100  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CB@ha */
/* 8074F104  38 03 00 CB */	addi r0, r3, 0x00CB /* 0x000700CB@l */
/* 8074F108  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8074F10C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8074F110  38 81 00 3C */	addi r4, r1, 0x3c
/* 8074F114  38 A0 FF FF */	li r5, -1
/* 8074F118  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 8074F11C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074F120  7D 89 03 A6 */	mtctr r12
/* 8074F124  4E 80 04 21 */	bctrl 
/* 8074F128  38 00 00 04 */	li r0, 4
/* 8074F12C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074F130  48 00 0F 68 */	b lbl_80750098
lbl_8074F134:
/* 8074F134  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8074F138  83 23 00 04 */	lwz r25, 4(r3)
/* 8074F13C  3A 80 00 00 */	li r20, 0
/* 8074F140  3A E0 00 00 */	li r23, 0
/* 8074F144  3B 00 00 00 */	li r24, 0
/* 8074F148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074F14C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074F150  3A BA 00 50 */	addi r21, r26, 0x50
lbl_8074F154:
/* 8074F154  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F158  38 00 00 FF */	li r0, 0xff
/* 8074F15C  90 01 00 08 */	stw r0, 8(r1)
/* 8074F160  38 80 00 00 */	li r4, 0
/* 8074F164  90 81 00 0C */	stw r4, 0xc(r1)
/* 8074F168  38 00 FF FF */	li r0, -1
/* 8074F16C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074F170  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074F174  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074F178  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8074F17C  7E DF C2 14 */	add r22, r31, r24
/* 8074F180  80 96 0E 84 */	lwz r4, 0xe84(r22)
/* 8074F184  38 A0 00 00 */	li r5, 0
/* 8074F188  7C D5 BA 2E */	lhzx r6, r21, r23
/* 8074F18C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8074F190  39 00 00 00 */	li r8, 0
/* 8074F194  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8074F198  39 41 00 E0 */	addi r10, r1, 0xe0
/* 8074F19C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F1A0  4B 8F E3 2D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074F1A4  90 76 0E 84 */	stw r3, 0xe84(r22)
/* 8074F1A8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F1AC  38 63 02 10 */	addi r3, r3, 0x210
/* 8074F1B0  80 96 0E 84 */	lwz r4, 0xe84(r22)
/* 8074F1B4  4B 8F C7 65 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8074F1B8  7C 65 1B 79 */	or. r5, r3, r3
/* 8074F1BC  41 82 00 1C */	beq lbl_8074F1D8
/* 8074F1C0  80 79 00 84 */	lwz r3, 0x84(r25)
/* 8074F1C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074F1C8  38 63 03 00 */	addi r3, r3, 0x300
/* 8074F1CC  38 85 00 68 */	addi r4, r5, 0x68
/* 8074F1D0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 8074F1D4  4B B3 16 0D */	bl func_802807E0
lbl_8074F1D8:
/* 8074F1D8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F1DC  38 00 00 FF */	li r0, 0xff
/* 8074F1E0  90 01 00 08 */	stw r0, 8(r1)
/* 8074F1E4  38 80 00 00 */	li r4, 0
/* 8074F1E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8074F1EC  38 00 FF FF */	li r0, -1
/* 8074F1F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074F1F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074F1F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074F1FC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8074F200  80 96 0E 94 */	lwz r4, 0xe94(r22)
/* 8074F204  38 A0 00 00 */	li r5, 0
/* 8074F208  7C D5 BA 2E */	lhzx r6, r21, r23
/* 8074F20C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8074F210  39 00 00 00 */	li r8, 0
/* 8074F214  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8074F218  39 41 00 E0 */	addi r10, r1, 0xe0
/* 8074F21C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F220  4B 8F E2 AD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074F224  90 76 0E 94 */	stw r3, 0xe94(r22)
/* 8074F228  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F22C  38 63 02 10 */	addi r3, r3, 0x210
/* 8074F230  80 96 0E 94 */	lwz r4, 0xe94(r22)
/* 8074F234  4B 8F C6 E5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8074F238  7C 65 1B 79 */	or. r5, r3, r3
/* 8074F23C  41 82 00 1C */	beq lbl_8074F258
/* 8074F240  80 79 00 84 */	lwz r3, 0x84(r25)
/* 8074F244  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074F248  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 8074F24C  38 85 00 68 */	addi r4, r5, 0x68
/* 8074F250  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 8074F254  4B B3 15 8D */	bl func_802807E0
lbl_8074F258:
/* 8074F258  3A 94 00 01 */	addi r20, r20, 1
/* 8074F25C  2C 14 00 04 */	cmpwi r20, 4
/* 8074F260  3A F7 00 02 */	addi r23, r23, 2
/* 8074F264  3B 18 00 04 */	addi r24, r24, 4
/* 8074F268  41 80 FE EC */	blt lbl_8074F154
/* 8074F26C  3B 00 00 00 */	li r24, 0
/* 8074F270  3A E0 00 00 */	li r23, 0
/* 8074F274  3A C0 00 00 */	li r22, 0
/* 8074F278  3A BA 00 58 */	addi r21, r26, 0x58
/* 8074F27C  3B 5A 00 5C */	addi r26, r26, 0x5c
lbl_8074F280:
/* 8074F280  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F284  38 00 00 FF */	li r0, 0xff
/* 8074F288  90 01 00 08 */	stw r0, 8(r1)
/* 8074F28C  38 80 00 00 */	li r4, 0
/* 8074F290  90 81 00 0C */	stw r4, 0xc(r1)
/* 8074F294  38 00 FF FF */	li r0, -1
/* 8074F298  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074F29C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074F2A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074F2A4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8074F2A8  7E 9F B2 14 */	add r20, r31, r22
/* 8074F2AC  80 94 0E A4 */	lwz r4, 0xea4(r20)
/* 8074F2B0  38 A0 00 00 */	li r5, 0
/* 8074F2B4  7C D5 BA 2E */	lhzx r6, r21, r23
/* 8074F2B8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8074F2BC  39 00 00 00 */	li r8, 0
/* 8074F2C0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8074F2C4  39 41 00 E0 */	addi r10, r1, 0xe0
/* 8074F2C8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F2CC  4B 8F E2 01 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074F2D0  90 74 0E A4 */	stw r3, 0xea4(r20)
/* 8074F2D4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F2D8  38 63 02 10 */	addi r3, r3, 0x210
/* 8074F2DC  80 94 0E A4 */	lwz r4, 0xea4(r20)
/* 8074F2E0  4B 8F C6 39 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8074F2E4  7C 65 1B 79 */	or. r5, r3, r3
/* 8074F2E8  41 82 00 1C */	beq lbl_8074F304
/* 8074F2EC  80 79 00 84 */	lwz r3, 0x84(r25)
/* 8074F2F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074F2F4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8074F2F8  38 85 00 68 */	addi r4, r5, 0x68
/* 8074F2FC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 8074F300  4B B3 14 E1 */	bl func_802807E0
lbl_8074F304:
/* 8074F304  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F308  38 00 00 FF */	li r0, 0xff
/* 8074F30C  90 01 00 08 */	stw r0, 8(r1)
/* 8074F310  38 80 00 00 */	li r4, 0
/* 8074F314  90 81 00 0C */	stw r4, 0xc(r1)
/* 8074F318  38 00 FF FF */	li r0, -1
/* 8074F31C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074F320  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074F324  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074F328  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8074F32C  80 94 0E AC */	lwz r4, 0xeac(r20)
/* 8074F330  38 A0 00 00 */	li r5, 0
/* 8074F334  7C DA BA 2E */	lhzx r6, r26, r23
/* 8074F338  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8074F33C  39 00 00 00 */	li r8, 0
/* 8074F340  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8074F344  39 41 00 E0 */	addi r10, r1, 0xe0
/* 8074F348  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F34C  4B 8F E1 81 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074F350  90 74 0E AC */	stw r3, 0xeac(r20)
/* 8074F354  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8074F358  38 63 02 10 */	addi r3, r3, 0x210
/* 8074F35C  80 94 0E AC */	lwz r4, 0xeac(r20)
/* 8074F360  4B 8F C5 B9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8074F364  7C 65 1B 79 */	or. r5, r3, r3
/* 8074F368  41 82 00 1C */	beq lbl_8074F384
/* 8074F36C  80 79 00 84 */	lwz r3, 0x84(r25)
/* 8074F370  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074F374  38 63 01 50 */	addi r3, r3, 0x150
/* 8074F378  38 85 00 68 */	addi r4, r5, 0x68
/* 8074F37C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 8074F380  4B B3 14 61 */	bl func_802807E0
lbl_8074F384:
/* 8074F384  3B 18 00 01 */	addi r24, r24, 1
/* 8074F388  2C 18 00 02 */	cmpwi r24, 2
/* 8074F38C  3A F7 00 02 */	addi r23, r23, 2
/* 8074F390  3A D6 00 04 */	addi r22, r22, 4
/* 8074F394  41 80 FE EC */	blt lbl_8074F280
/* 8074F398  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8074F39C  38 80 00 01 */	li r4, 1
/* 8074F3A0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074F3A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074F3A8  40 82 00 18 */	bne lbl_8074F3C0
/* 8074F3AC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074F3B0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074F3B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074F3B8  41 82 00 08 */	beq lbl_8074F3C0
/* 8074F3BC  38 80 00 00 */	li r4, 0
lbl_8074F3C0:
/* 8074F3C0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074F3C4  40 82 00 10 */	bne lbl_8074F3D4
/* 8074F3C8  38 00 00 14 */	li r0, 0x14
/* 8074F3CC  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 8074F3D0  48 00 0C C8 */	b lbl_80750098
lbl_8074F3D4:
/* 8074F3D4  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8074F3D8  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 8074F3DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8074F3E0  41 82 00 08 */	beq lbl_8074F3E8
/* 8074F3E4  D0 3F 07 8C */	stfs f1, 0x78c(r31)
lbl_8074F3E8:
/* 8074F3E8  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 8074F3EC  2C 00 00 00 */	cmpwi r0, 0
/* 8074F3F0  40 82 0C A8 */	bne lbl_80750098
/* 8074F3F4  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8074F3F8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8074F3FC  38 BF 07 88 */	addi r5, r31, 0x788
/* 8074F400  4B B1 77 35 */	bl __mi__4cXyzCFRC3Vec
/* 8074F404  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8074F408  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8074F40C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8074F410  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074F414  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8074F418  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8074F41C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8074F420  4B B1 7D 09 */	bl atan2sX_Z__4cXyzCFv
/* 8074F424  3C 63 00 01 */	addis r3, r3, 1
/* 8074F428  38 03 80 00 */	addi r0, r3, -32768
/* 8074F42C  7C 04 07 34 */	extsh r4, r0
/* 8074F430  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8074F434  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8074F438  80 63 00 00 */	lwz r3, 0(r3)
/* 8074F43C  4B 8B CF A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8074F440  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074F444  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8074F448  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074F44C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8074F450  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8074F454  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8074F458  38 81 00 EC */	addi r4, r1, 0xec
/* 8074F45C  4B B2 1A 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8074F460  38 61 00 EC */	addi r3, r1, 0xec
/* 8074F464  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8074F468  7C 65 1B 78 */	mr r5, r3
/* 8074F46C  4B BF 7C 25 */	bl PSVECAdd
/* 8074F470  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8074F474  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 8074F478  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8074F47C  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 8074F480  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8074F484  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 8074F488  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074F48C  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 8074F490  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8074F494  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074F498  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 8074F49C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8074F4A0  38 81 00 EC */	addi r4, r1, 0xec
/* 8074F4A4  4B B2 1A 49 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8074F4A8  38 61 00 EC */	addi r3, r1, 0xec
/* 8074F4AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8074F4B0  7C 65 1B 78 */	mr r5, r3
/* 8074F4B4  4B BF 7B DD */	bl PSVECAdd
/* 8074F4B8  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8074F4BC  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 8074F4C0  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8074F4C4  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 8074F4C8  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8074F4CC  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8074F4D0  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 8074F4D4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8074F4D8  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 8074F4DC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8074F4E0  C0 1F 08 4C */	lfs f0, 0x84c(r31)
/* 8074F4E4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8074F4E8  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 8074F4EC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8074F4F0  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 8074F4F4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8074F4F8  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 8074F4FC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8074F500  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074F504  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8074F508  38 A1 00 BC */	addi r5, r1, 0xbc
/* 8074F50C  4B A3 15 9D */	bl Set__9dCamera_cF4cXyz4cXyz
/* 8074F510  88 9F 05 BD */	lbz r4, 0x5bd(r31)
/* 8074F514  28 04 00 FF */	cmplwi r4, 0xff
/* 8074F518  41 82 00 18 */	beq lbl_8074F530
/* 8074F51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074F520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074F524  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8074F528  7C 05 07 74 */	extsb r5, r0
/* 8074F52C  4B 8E 5C D5 */	bl onSwitch__10dSv_info_cFii
lbl_8074F530:
/* 8074F530  38 00 00 32 */	li r0, 0x32
/* 8074F534  B0 1F 07 4C */	sth r0, 0x74c(r31)
/* 8074F538  38 00 00 05 */	li r0, 5
/* 8074F53C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074F540  48 00 0B 58 */	b lbl_80750098
lbl_8074F544:
/* 8074F544  38 7F 08 00 */	addi r3, r31, 0x800
/* 8074F548  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8074F54C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8074F550  4B B2 05 31 */	bl cLib_addCalc0__FPfff
/* 8074F554  A8 7F 07 4C */	lha r3, 0x74c(r31)
/* 8074F558  7C 60 07 35 */	extsh. r0, r3
/* 8074F55C  41 82 01 D8 */	beq lbl_8074F734
/* 8074F560  2C 03 00 01 */	cmpwi r3, 1
/* 8074F564  40 82 0B 34 */	bne lbl_80750098
/* 8074F568  C0 1F 07 88 */	lfs f0, 0x788(r31)
/* 8074F56C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074F570  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8074F574  40 82 00 68 */	bne lbl_8074F5DC
/* 8074F578  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 8074F57C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8074F580  40 82 00 5C */	bne lbl_8074F5DC
/* 8074F584  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8074F588  80 63 00 04 */	lwz r3, 4(r3)
/* 8074F58C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8074F590  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074F594  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 8074F598  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8074F59C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8074F5A0  80 84 00 00 */	lwz r4, 0(r4)
/* 8074F5A4  4B BF 6F 0D */	bl PSMTXCopy
/* 8074F5A8  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8074F5AC  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8074F5B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074F5B4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074F5B8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8074F5BC  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8074F5C0  38 9F 07 88 */	addi r4, r31, 0x788
/* 8074F5C4  4B B2 19 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8074F5C8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8074F5CC  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 8074F5D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8074F5D4  41 82 00 08 */	beq lbl_8074F5DC
/* 8074F5D8  D0 3F 07 8C */	stfs f1, 0x78c(r31)
lbl_8074F5DC:
/* 8074F5DC  A8 1F 07 64 */	lha r0, 0x764(r31)
/* 8074F5E0  B0 01 00 54 */	sth r0, 0x54(r1)
/* 8074F5E4  A8 1F 07 66 */	lha r0, 0x766(r31)
/* 8074F5E8  B0 01 00 56 */	sth r0, 0x56(r1)
/* 8074F5EC  A8 1F 07 68 */	lha r0, 0x768(r31)
/* 8074F5F0  B0 01 00 58 */	sth r0, 0x58(r1)
/* 8074F5F4  3A E0 00 00 */	li r23, 0
/* 8074F5F8  B2 E1 00 58 */	sth r23, 0x58(r1)
/* 8074F5FC  B2 E1 00 54 */	sth r23, 0x54(r1)
/* 8074F600  C0 1F 07 88 */	lfs f0, 0x788(r31)
/* 8074F604  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8074F608  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 8074F60C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074F610  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 8074F614  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8074F618  3A 80 00 00 */	li r20, 0
/* 8074F61C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074F620  3A C3 61 C0 */	addi r22, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074F624  3A BA 00 40 */	addi r21, r26, 0x40
lbl_8074F628:
/* 8074F628  80 76 5D 3C */	lwz r3, 0x5d3c(r22)
/* 8074F62C  38 80 00 00 */	li r4, 0
/* 8074F630  90 81 00 08 */	stw r4, 8(r1)
/* 8074F634  38 00 FF FF */	li r0, -1
/* 8074F638  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074F63C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8074F640  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074F644  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074F648  38 80 00 00 */	li r4, 0
/* 8074F64C  7C B5 A2 2E */	lhzx r5, r21, r20
/* 8074F650  38 C1 00 F8 */	addi r6, r1, 0xf8
/* 8074F654  38 E0 00 00 */	li r7, 0
/* 8074F658  39 01 00 54 */	addi r8, r1, 0x54
/* 8074F65C  39 21 00 E0 */	addi r9, r1, 0xe0
/* 8074F660  39 40 00 FF */	li r10, 0xff
/* 8074F664  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F668  4B 8F D4 29 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074F66C  3A F7 00 01 */	addi r23, r23, 1
/* 8074F670  2C 17 00 07 */	cmpwi r23, 7
/* 8074F674  3A 94 00 02 */	addi r20, r20, 2
/* 8074F678  41 80 FF B0 */	blt lbl_8074F628
/* 8074F67C  38 00 00 32 */	li r0, 0x32
/* 8074F680  B0 1F 07 4E */	sth r0, 0x74e(r31)
/* 8074F684  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801CF@ha */
/* 8074F688  38 03 01 CF */	addi r0, r3, 0x01CF /* 0x000801CF@l */
/* 8074F68C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8074F690  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074F694  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074F698  80 63 00 00 */	lwz r3, 0(r3)
/* 8074F69C  38 81 00 38 */	addi r4, r1, 0x38
/* 8074F6A0  38 BF 07 88 */	addi r5, r31, 0x788
/* 8074F6A4  38 C0 00 00 */	li r6, 0
/* 8074F6A8  38 E0 00 00 */	li r7, 0
/* 8074F6AC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F6B0  FC 40 08 90 */	fmr f2, f1
/* 8074F6B4  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074F6B8  FC 80 18 90 */	fmr f4, f3
/* 8074F6BC  39 00 00 00 */	li r8, 0
/* 8074F6C0  4B B5 C2 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8074F6C4  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8074F6C8  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 8074F6CC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8074F6D0  41 82 09 C8 */	beq lbl_80750098
/* 8074F6D4  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8074F6D8  EC 20 08 2A */	fadds f1, f0, f1
/* 8074F6DC  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 8074F6E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8074F6E4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8074F6E8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8074F6EC  D0 1F 07 C4 */	stfs f0, 0x7c4(r31)
/* 8074F6F0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D0@ha */
/* 8074F6F4  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000801D0@l */
/* 8074F6F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8074F6FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074F700  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074F704  80 63 00 00 */	lwz r3, 0(r3)
/* 8074F708  38 81 00 34 */	addi r4, r1, 0x34
/* 8074F70C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8074F710  38 C0 00 00 */	li r6, 0
/* 8074F714  38 E0 00 00 */	li r7, 0
/* 8074F718  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F71C  FC 40 08 90 */	fmr f2, f1
/* 8074F720  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074F724  FC 80 18 90 */	fmr f4, f3
/* 8074F728  39 00 00 00 */	li r8, 0
/* 8074F72C  4B B5 CD E1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8074F730  48 00 09 68 */	b lbl_80750098
lbl_8074F734:
/* 8074F734  A8 1F 07 4E */	lha r0, 0x74e(r31)
/* 8074F738  2C 00 00 00 */	cmpwi r0, 0
/* 8074F73C  41 82 00 48 */	beq lbl_8074F784
/* 8074F740  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D0@ha */
/* 8074F744  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000801D0@l */
/* 8074F748  90 01 00 30 */	stw r0, 0x30(r1)
/* 8074F74C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074F750  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074F754  80 63 00 00 */	lwz r3, 0(r3)
/* 8074F758  38 81 00 30 */	addi r4, r1, 0x30
/* 8074F75C  38 BF 07 88 */	addi r5, r31, 0x788
/* 8074F760  38 C0 00 00 */	li r6, 0
/* 8074F764  38 E0 00 00 */	li r7, 0
/* 8074F768  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F76C  FC 40 08 90 */	fmr f2, f1
/* 8074F770  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074F774  FC 80 18 90 */	fmr f4, f3
/* 8074F778  39 00 00 00 */	li r8, 0
/* 8074F77C  4B B5 CD 91 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8074F780  48 00 09 18 */	b lbl_80750098
lbl_8074F784:
/* 8074F784  38 00 00 00 */	li r0, 0
/* 8074F788  B0 01 00 58 */	sth r0, 0x58(r1)
/* 8074F78C  B0 01 00 56 */	sth r0, 0x56(r1)
/* 8074F790  B0 01 00 54 */	sth r0, 0x54(r1)
/* 8074F794  88 1F 07 58 */	lbz r0, 0x758(r31)
/* 8074F798  28 00 00 00 */	cmplwi r0, 0
/* 8074F79C  40 82 00 4C */	bne lbl_8074F7E8
/* 8074F7A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D1@ha */
/* 8074F7A4  38 03 01 D1 */	addi r0, r3, 0x01D1 /* 0x000801D1@l */
/* 8074F7A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8074F7AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074F7B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074F7B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8074F7B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8074F7BC  38 BF 07 88 */	addi r5, r31, 0x788
/* 8074F7C0  38 C0 00 00 */	li r6, 0
/* 8074F7C4  38 E0 00 00 */	li r7, 0
/* 8074F7C8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F7CC  FC 40 08 90 */	fmr f2, f1
/* 8074F7D0  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074F7D4  FC 80 18 90 */	fmr f4, f3
/* 8074F7D8  39 00 00 00 */	li r8, 0
/* 8074F7DC  4B B5 C1 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8074F7E0  38 00 00 01 */	li r0, 1
/* 8074F7E4  98 1F 07 58 */	stb r0, 0x758(r31)
lbl_8074F7E8:
/* 8074F7E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D0@ha */
/* 8074F7EC  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000801D0@l */
/* 8074F7F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8074F7F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074F7F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074F7FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8074F800  38 81 00 28 */	addi r4, r1, 0x28
/* 8074F804  38 BF 07 88 */	addi r5, r31, 0x788
/* 8074F808  38 C0 00 00 */	li r6, 0
/* 8074F80C  38 E0 00 00 */	li r7, 0
/* 8074F810  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F814  FC 40 08 90 */	fmr f2, f1
/* 8074F818  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074F81C  FC 80 18 90 */	fmr f4, f3
/* 8074F820  39 00 00 00 */	li r8, 0
/* 8074F824  4B B5 CC E9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8074F828  C0 3F 07 8C */	lfs f1, 0x78c(r31)
/* 8074F82C  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 8074F830  EC 01 00 2A */	fadds f0, f1, f0
/* 8074F834  D0 1F 07 8C */	stfs f0, 0x78c(r31)
/* 8074F838  C0 1F 07 88 */	lfs f0, 0x788(r31)
/* 8074F83C  EC 00 00 28 */	fsubs f0, f0, f0
/* 8074F840  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 8074F844  C0 3F 07 8C */	lfs f1, 0x78c(r31)
/* 8074F848  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 8074F84C  EC 01 00 2A */	fadds f0, f1, f0
/* 8074F850  EC 01 00 28 */	fsubs f0, f1, f0
/* 8074F854  D0 1F 08 18 */	stfs f0, 0x818(r31)
/* 8074F858  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 8074F85C  EC 00 00 28 */	fsubs f0, f0, f0
/* 8074F860  D0 1F 08 1C */	stfs f0, 0x81c(r31)
/* 8074F864  38 7F 08 14 */	addi r3, r31, 0x814
/* 8074F868  7C 64 1B 78 */	mr r4, r3
/* 8074F86C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8074F870  4B BF 78 69 */	bl PSVECScale
/* 8074F874  3A 80 00 00 */	li r20, 0
/* 8074F878  3A E0 00 00 */	li r23, 0
/* 8074F87C  3B 00 00 00 */	li r24, 0
/* 8074F880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074F884  3A C3 61 C0 */	addi r22, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074F888  3A BF 08 14 */	addi r21, r31, 0x814
/* 8074F88C  3B 3A 00 60 */	addi r25, r26, 0x60
lbl_8074F890:
/* 8074F890  80 76 5D 3C */	lwz r3, 0x5d3c(r22)
/* 8074F894  38 00 00 FF */	li r0, 0xff
/* 8074F898  90 01 00 08 */	stw r0, 8(r1)
/* 8074F89C  38 80 00 00 */	li r4, 0
/* 8074F8A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8074F8A4  38 00 FF FF */	li r0, -1
/* 8074F8A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074F8AC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074F8B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074F8B4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8074F8B8  3B 58 0E 7C */	addi r26, r24, 0xe7c
/* 8074F8BC  7C 9F D0 2E */	lwzx r4, r31, r26
/* 8074F8C0  38 A0 00 00 */	li r5, 0
/* 8074F8C4  7C D9 BA 2E */	lhzx r6, r25, r23
/* 8074F8C8  38 FF 07 88 */	addi r7, r31, 0x788
/* 8074F8CC  39 00 00 00 */	li r8, 0
/* 8074F8D0  39 21 00 54 */	addi r9, r1, 0x54
/* 8074F8D4  39 41 00 E0 */	addi r10, r1, 0xe0
/* 8074F8D8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074F8DC  4B 8F DB F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074F8E0  7C 7F D1 2E */	stwx r3, r31, r26
/* 8074F8E4  80 76 5D 3C */	lwz r3, 0x5d3c(r22)
/* 8074F8E8  38 63 02 10 */	addi r3, r3, 0x210
/* 8074F8EC  7C 9F D0 2E */	lwzx r4, r31, r26
/* 8074F8F0  4B 8F C0 29 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8074F8F4  28 03 00 00 */	cmplwi r3, 0
/* 8074F8F8  41 82 00 14 */	beq lbl_8074F90C
/* 8074F8FC  3C 80 80 45 */	lis r4, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 8074F900  38 04 0E C8 */	addi r0, r4, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 8074F904  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 8074F908  92 A3 00 C0 */	stw r21, 0xc0(r3)
lbl_8074F90C:
/* 8074F90C  3A 94 00 01 */	addi r20, r20, 1
/* 8074F910  2C 14 00 02 */	cmpwi r20, 2
/* 8074F914  3A F7 00 02 */	addi r23, r23, 2
/* 8074F918  3B 18 00 04 */	addi r24, r24, 4
/* 8074F91C  41 80 FF 74 */	blt lbl_8074F890
/* 8074F920  38 00 00 00 */	li r0, 0
/* 8074F924  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8074F928  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 8074F92C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8074F930  41 82 00 24 */	beq lbl_8074F954
/* 8074F934  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8074F938  EC 20 08 2A */	fadds f1, f0, f1
/* 8074F93C  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 8074F940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074F944  4C 40 13 82 */	cror 2, 0, 2
/* 8074F948  40 82 00 10 */	bne lbl_8074F958
/* 8074F94C  38 00 00 01 */	li r0, 1
/* 8074F950  48 00 00 08 */	b lbl_8074F958
lbl_8074F954:
/* 8074F954  38 00 00 01 */	li r0, 1
lbl_8074F958:
/* 8074F958  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8074F95C  41 82 07 3C */	beq lbl_80750098
/* 8074F960  38 80 F0 00 */	li r4, -4096
/* 8074F964  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 8074F968  7C 84 03 78 */	or r4, r4, r0
/* 8074F96C  38 60 01 79 */	li r3, 0x179
/* 8074F970  38 BF 07 88 */	addi r5, r31, 0x788
/* 8074F974  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074F978  7C 06 07 74 */	extsb r6, r0
/* 8074F97C  38 E0 00 00 */	li r7, 0
/* 8074F980  39 00 00 00 */	li r8, 0
/* 8074F984  39 20 FF FF */	li r9, -1
/* 8074F988  4B 8C A4 11 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8074F98C  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 8074F990  38 00 00 07 */	li r0, 7
/* 8074F994  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074F998  38 00 00 32 */	li r0, 0x32
/* 8074F99C  B0 1F 07 4C */	sth r0, 0x74c(r31)
/* 8074F9A0  48 00 06 F8 */	b lbl_80750098
lbl_8074F9A4:
/* 8074F9A4  A8 1F 07 4C */	lha r0, 0x74c(r31)
/* 8074F9A8  2C 00 00 00 */	cmpwi r0, 0
/* 8074F9AC  40 82 00 CC */	bne lbl_8074FA78
/* 8074F9B0  38 00 00 09 */	li r0, 9
/* 8074F9B4  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074F9B8  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 8074F9BC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8074F9C0  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 8074F9C4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8074F9C8  C0 1F 08 4C */	lfs f0, 0x84c(r31)
/* 8074F9CC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8074F9D0  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 8074F9D4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8074F9D8  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 8074F9DC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8074F9E0  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 8074F9E4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8074F9E8  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074F9EC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8074F9F0  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8074F9F4  4B A3 12 25 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8074F9F8  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074F9FC  4B A1 1A B1 */	bl Start__9dCamera_cFv
/* 8074FA00  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074FA04  38 80 00 00 */	li r4, 0
/* 8074FA08  4B A1 36 05 */	bl SetTrimSize__9dCamera_cFl
/* 8074FA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074FA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074FA14  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8074FA18  4B 8F 2A 51 */	bl reset__14dEvt_control_cFv
/* 8074FA1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074FA20  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074FA24  88 64 01 0C */	lbz r3, 0x10c(r4)
/* 8074FA28  28 03 00 FF */	cmplwi r3, 0xff
/* 8074FA2C  40 80 00 0C */	bge lbl_8074FA38
/* 8074FA30  38 03 00 01 */	addi r0, r3, 1
/* 8074FA34  98 04 01 0C */	stb r0, 0x10c(r4)
lbl_8074FA38:
/* 8074FA38  88 04 01 0C */	lbz r0, 0x10c(r4)
/* 8074FA3C  28 00 00 14 */	cmplwi r0, 0x14
/* 8074FA40  40 82 00 20 */	bne lbl_8074FA60
/* 8074FA44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074FA48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074FA4C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8074FA50  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8074FA54  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8074FA58  A0 84 03 92 */	lhz r4, 0x392(r4)
/* 8074FA5C  4B 8E 4F 31 */	bl onEventBit__11dSv_event_cFUs
lbl_8074FA60:
/* 8074FA60  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 8074FA64  38 00 00 02 */	li r0, 2
/* 8074FA68  B0 03 06 04 */	sth r0, 0x604(r3)
/* 8074FA6C  38 00 00 01 */	li r0, 1
/* 8074FA70  90 03 06 14 */	stw r0, 0x614(r3)
/* 8074FA74  48 00 06 24 */	b lbl_80750098
lbl_8074FA78:
/* 8074FA78  7F E3 FB 78 */	mr r3, r31
/* 8074FA7C  38 80 00 00 */	li r4, 0
/* 8074FA80  4B FF CB 6D */	bl mArg0Check__FP10e_po_classs
/* 8074FA84  2C 03 00 00 */	cmpwi r3, 0
/* 8074FA88  41 82 01 48 */	beq lbl_8074FBD0
/* 8074FA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074FA90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074FA94  38 80 00 22 */	li r4, 0x22
/* 8074FA98  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8074FA9C  7C 05 07 74 */	extsb r5, r0
/* 8074FAA0  4B 8E 58 C1 */	bl isSwitch__10dSv_info_cCFii
/* 8074FAA4  2C 03 00 00 */	cmpwi r3, 0
/* 8074FAA8  40 82 01 1C */	bne lbl_8074FBC4
/* 8074FAAC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8074FAB0  38 81 00 50 */	addi r4, r1, 0x50
/* 8074FAB4  4B 8C 9F 09 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8074FAB8  2C 03 00 00 */	cmpwi r3, 0
/* 8074FABC  41 82 05 DC */	beq lbl_80750098
/* 8074FAC0  82 81 00 50 */	lwz r20, 0x50(r1)
/* 8074FAC4  28 14 00 00 */	cmplwi r20, 0
/* 8074FAC8  41 82 05 D0 */	beq lbl_80750098
/* 8074FACC  38 00 00 32 */	li r0, 0x32
/* 8074FAD0  B0 1F 07 4C */	sth r0, 0x74c(r31)
/* 8074FAD4  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8074FAD8  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 8074FADC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8074FAE0  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 8074FAE4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8074FAE8  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8074FAEC  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8074FAF0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8074FAF4  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 8074FAF8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8074FAFC  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 8074FB00  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8074FB04  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 8074FB08  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D0@ha */
/* 8074FB0C  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000801D0@l */
/* 8074FB10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074FB14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074FB18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074FB1C  80 63 00 00 */	lwz r3, 0(r3)
/* 8074FB20  38 81 00 24 */	addi r4, r1, 0x24
/* 8074FB24  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 8074FB28  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8074FB2C  38 C0 00 00 */	li r6, 0
/* 8074FB30  38 E0 00 00 */	li r7, 0
/* 8074FB34  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074FB38  FC 40 08 90 */	fmr f2, f1
/* 8074FB3C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074FB40  FC 80 18 90 */	fmr f4, f3
/* 8074FB44  39 00 00 00 */	li r8, 0
/* 8074FB48  4B B5 C9 C5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8074FB4C  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 8074FB50  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8074FB54  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 8074FB58  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8074FB5C  C0 1F 08 4C */	lfs f0, 0x84c(r31)
/* 8074FB60  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8074FB64  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 8074FB68  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8074FB6C  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 8074FB70  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8074FB74  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 8074FB78  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8074FB7C  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074FB80  38 81 00 98 */	addi r4, r1, 0x98
/* 8074FB84  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8074FB88  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8074FB8C  38 C0 00 00 */	li r6, 0
/* 8074FB90  4B A3 0F 51 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8074FB94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074FB98  D0 1F 08 0C */	stfs f0, 0x80c(r31)
/* 8074FB9C  88 14 05 94 */	lbz r0, 0x594(r20)
/* 8074FBA0  28 00 00 01 */	cmplwi r0, 1
/* 8074FBA4  40 82 04 F4 */	bne lbl_80750098
/* 8074FBA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074FBAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074FBB0  38 80 00 22 */	li r4, 0x22
/* 8074FBB4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8074FBB8  7C 05 07 74 */	extsb r5, r0
/* 8074FBBC  4B 8E 56 45 */	bl onSwitch__10dSv_info_cFii
/* 8074FBC0  48 00 04 D8 */	b lbl_80750098
lbl_8074FBC4:
/* 8074FBC4  38 60 00 03 */	li r3, 3
/* 8074FBC8  4B A5 8C 1D */	bl dKy_change_colpat__FUc
/* 8074FBCC  48 00 04 CC */	b lbl_80750098
lbl_8074FBD0:
/* 8074FBD0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8074FBD4  38 81 00 50 */	addi r4, r1, 0x50
/* 8074FBD8  4B 8C 9D E5 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8074FBDC  2C 03 00 00 */	cmpwi r3, 0
/* 8074FBE0  41 82 00 50 */	beq lbl_8074FC30
/* 8074FBE4  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 8074FBE8  28 05 00 00 */	cmplwi r5, 0
/* 8074FBEC  41 82 00 44 */	beq lbl_8074FC30
/* 8074FBF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D0@ha */
/* 8074FBF4  38 03 01 D0 */	addi r0, r3, 0x01D0 /* 0x000801D0@l */
/* 8074FBF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8074FBFC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8074FC00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8074FC04  80 63 00 00 */	lwz r3, 0(r3)
/* 8074FC08  38 81 00 20 */	addi r4, r1, 0x20
/* 8074FC0C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8074FC10  38 C0 00 00 */	li r6, 0
/* 8074FC14  38 E0 00 00 */	li r7, 0
/* 8074FC18  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8074FC1C  FC 40 08 90 */	fmr f2, f1
/* 8074FC20  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8074FC24  FC 80 18 90 */	fmr f4, f3
/* 8074FC28  39 00 00 00 */	li r8, 0
/* 8074FC2C  4B B5 C8 E1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8074FC30:
/* 8074FC30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8074FC34  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 8074FC38  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8074FC3C  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 8074FC40  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8074FC44  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 8074FC48  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8074FC4C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8074FC50  80 63 00 00 */	lwz r3, 0(r3)
/* 8074FC54  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8074FC58  4B 8B C7 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 8074FC5C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074FC60  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 8074FC64  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8074FC68  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8074FC6C  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 8074FC70  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8074FC74  38 81 00 EC */	addi r4, r1, 0xec
/* 8074FC78  4B B2 12 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8074FC7C  38 61 00 EC */	addi r3, r1, 0xec
/* 8074FC80  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8074FC84  7C 65 1B 78 */	mr r5, r3
/* 8074FC88  4B BF 74 09 */	bl PSVECAdd
/* 8074FC8C  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8074FC90  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 8074FC94  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8074FC98  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 8074FC9C  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8074FCA0  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8074FCA4  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 8074FCA8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8074FCAC  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 8074FCB0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8074FCB4  C0 1F 08 4C */	lfs f0, 0x84c(r31)
/* 8074FCB8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8074FCBC  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 8074FCC0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8074FCC4  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 8074FCC8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8074FCCC  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 8074FCD0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8074FCD4  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074FCD8  38 81 00 80 */	addi r4, r1, 0x80
/* 8074FCDC  38 A1 00 74 */	addi r5, r1, 0x74
/* 8074FCE0  4B A3 0D C9 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 8074FCE4  48 00 03 B4 */	b lbl_80750098
lbl_8074FCE8:
/* 8074FCE8  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 8074FCEC  2C 00 00 00 */	cmpwi r0, 0
/* 8074FCF0  41 82 00 20 */	beq lbl_8074FD10
/* 8074FCF4  38 61 01 04 */	addi r3, r1, 0x104
/* 8074FCF8  38 80 FF FF */	li r4, -1
/* 8074FCFC  4B 92 78 F5 */	bl __dt__11dBgS_GndChkFv
/* 8074FD00  38 61 01 58 */	addi r3, r1, 0x158
/* 8074FD04  38 80 FF FF */	li r4, -1
/* 8074FD08  4B 92 7F D5 */	bl __dt__11dBgS_LinChkFv
/* 8074FD0C  48 00 04 8C */	b lbl_80750198
lbl_8074FD10:
/* 8074FD10  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8074FD14  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8074FD18  38 60 02 AD */	li r3, 0x2ad
/* 8074FD1C  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000B2@ha */
/* 8074FD20  38 84 00 B2 */	addi r4, r4, 0x00B2 /* 0x010000B2@l */
/* 8074FD24  38 BF 07 B8 */	addi r5, r31, 0x7b8
/* 8074FD28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074FD2C  7C 06 07 74 */	extsb r6, r0
/* 8074FD30  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 8074FD34  39 01 00 E0 */	addi r8, r1, 0xe0
/* 8074FD38  39 20 FF FF */	li r9, -1
/* 8074FD3C  4B 8C A0 5D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8074FD40  38 00 00 0A */	li r0, 0xa
/* 8074FD44  90 1F 05 B4 */	stw r0, 0x5b4(r31)
lbl_8074FD48:
/* 8074FD48  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8074FD4C  38 80 00 00 */	li r4, 0
/* 8074FD50  4B B7 1E 41 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8074FD54  38 00 00 00 */	li r0, 0
/* 8074FD58  98 1F 04 96 */	stb r0, 0x496(r31)
/* 8074FD5C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8074FD60  54 00 00 3E */	slwi r0, r0, 0
/* 8074FD64  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8074FD68  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8074FD6C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8074FD70  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8074FD74  48 00 03 24 */	b lbl_80750098
lbl_8074FD78:
/* 8074FD78  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8074FD7C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8074FD80  FC 00 00 1E */	fctiwz f0, f0
/* 8074FD84  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 8074FD88  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 8074FD8C  2C 00 00 01 */	cmpwi r0, 1
/* 8074FD90  40 80 03 08 */	bge lbl_80750098
/* 8074FD94  38 00 00 5A */	li r0, 0x5a
/* 8074FD98  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8074FD9C  7F E3 FB 78 */	mr r3, r31
/* 8074FDA0  38 80 00 FF */	li r4, 0xff
/* 8074FDA4  4B FF C8 49 */	bl mArg0Check__FP10e_po_classs
/* 8074FDA8  2C 03 00 02 */	cmpwi r3, 2
/* 8074FDAC  40 82 00 40 */	bne lbl_8074FDEC
/* 8074FDB0  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8074FDB4  B0 1A 00 3C */	sth r0, 0x3c(r26)
/* 8074FDB8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8074FDBC  4B B1 7B 99 */	bl cM_rndF__Ff
/* 8074FDC0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8074FDC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8074FDC8  FC 00 00 1E */	fctiwz f0, f0
/* 8074FDCC  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 8074FDD0  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 8074FDD4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8074FDD8  B0 1A 00 36 */	sth r0, 0x36(r26)
/* 8074FDDC  2C 00 00 06 */	cmpwi r0, 6
/* 8074FDE0  40 81 00 0C */	ble lbl_8074FDEC
/* 8074FDE4  38 00 00 03 */	li r0, 3
/* 8074FDE8  B0 1A 00 36 */	sth r0, 0x36(r26)
lbl_8074FDEC:
/* 8074FDEC  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8074FDF0  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 8074FDF4  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 8074FDF8  7F E3 FB 78 */	mr r3, r31
/* 8074FDFC  38 80 00 FF */	li r4, 0xff
/* 8074FE00  4B FF C7 ED */	bl mArg0Check__FP10e_po_classs
/* 8074FE04  2C 03 00 02 */	cmpwi r3, 2
/* 8074FE08  41 82 00 18 */	beq lbl_8074FE20
/* 8074FE0C  38 00 00 03 */	li r0, 3
/* 8074FE10  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 8074FE14  38 00 00 00 */	li r0, 0
/* 8074FE18  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074FE1C  48 00 02 7C */	b lbl_80750098
lbl_8074FE20:
/* 8074FE20  7F E3 FB 78 */	mr r3, r31
/* 8074FE24  38 80 00 FF */	li r4, 0xff
/* 8074FE28  4B FF C7 C5 */	bl mArg0Check__FP10e_po_classs
/* 8074FE2C  2C 03 00 02 */	cmpwi r3, 2
/* 8074FE30  40 82 00 38 */	bne lbl_8074FE68
/* 8074FE34  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8074FE38  4B B1 7B 1D */	bl cM_rndF__Ff
/* 8074FE3C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8074FE40  EC 00 08 2A */	fadds f0, f0, f1
/* 8074FE44  FC 00 00 1E */	fctiwz f0, f0
/* 8074FE48  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 8074FE4C  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 8074FE50  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8074FE54  B0 1A 00 36 */	sth r0, 0x36(r26)
/* 8074FE58  2C 00 00 06 */	cmpwi r0, 6
/* 8074FE5C  40 81 00 0C */	ble lbl_8074FE68
/* 8074FE60  38 00 00 03 */	li r0, 3
/* 8074FE64  B0 1A 00 36 */	sth r0, 0x36(r26)
lbl_8074FE68:
/* 8074FE68  38 00 00 00 */	li r0, 0
/* 8074FE6C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074FE70  B0 1F 07 4E */	sth r0, 0x74e(r31)
/* 8074FE74  38 00 00 05 */	li r0, 5
/* 8074FE78  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 8074FE7C  48 00 02 1C */	b lbl_80750098
lbl_8074FE80:
/* 8074FE80  38 00 FF FF */	li r0, -1
/* 8074FE84  90 1F 07 5C */	stw r0, 0x75c(r31)
/* 8074FE88  7F E3 FB 78 */	mr r3, r31
/* 8074FE8C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8074FE90  38 A0 00 08 */	li r5, 8
/* 8074FE94  38 C0 00 03 */	li r6, 3
/* 8074FE98  38 E0 00 FF */	li r7, 0xff
/* 8074FE9C  4B 8C CC 3D */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8074FEA0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8074FEA4  38 03 00 01 */	addi r0, r3, 1
/* 8074FEA8  90 1F 05 B4 */	stw r0, 0x5b4(r31)
lbl_8074FEAC:
/* 8074FEAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074FEB0  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074FEB4  88 75 4F AD */	lbz r3, 0x4fad(r21)
/* 8074FEB8  28 03 00 00 */	cmplwi r3, 0
/* 8074FEBC  41 82 00 94 */	beq lbl_8074FF50
/* 8074FEC0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8074FEC4  28 00 00 02 */	cmplwi r0, 2
/* 8074FEC8  40 82 01 D0 */	bne lbl_80750098
/* 8074FECC  3A 95 4F F8 */	addi r20, r21, 0x4ff8
/* 8074FED0  7E 83 A3 78 */	mr r3, r20
/* 8074FED4  A8 9F 07 62 */	lha r4, 0x762(r31)
/* 8074FED8  4B 8F 7B A1 */	bl endCheck__16dEvent_manager_cFs
/* 8074FEDC  2C 03 00 00 */	cmpwi r3, 0
/* 8074FEE0  41 82 00 10 */	beq lbl_8074FEF0
/* 8074FEE4  38 75 4E C8 */	addi r3, r21, 0x4ec8
/* 8074FEE8  4B 8F 25 81 */	bl reset__14dEvt_control_cFv
/* 8074FEEC  48 00 01 AC */	b lbl_80750098
lbl_8074FEF0:
/* 8074FEF0  7E 83 A3 78 */	mr r3, r20
/* 8074FEF4  4B 8F 84 F5 */	bl getRunEventName__16dEvent_manager_cFv
/* 8074FEF8  3C 80 80 75 */	lis r4, d_a_e_po__stringBase0@ha /* 0x80757A88@ha */
/* 8074FEFC  38 84 7A 88 */	addi r4, r4, d_a_e_po__stringBase0@l /* 0x80757A88@l */
/* 8074FF00  38 84 00 05 */	addi r4, r4, 5
/* 8074FF04  4B C1 8A 91 */	bl strcmp
/* 8074FF08  2C 03 00 00 */	cmpwi r3, 0
/* 8074FF0C  40 82 01 8C */	bne lbl_80750098
/* 8074FF10  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 8074FF14  3C 03 00 01 */	addis r0, r3, 1
/* 8074FF18  28 00 FF FF */	cmplwi r0, 0xffff
/* 8074FF1C  41 82 01 7C */	beq lbl_80750098
/* 8074FF20  3A 95 4E C8 */	addi r20, r21, 0x4ec8
/* 8074FF24  7E 83 A3 78 */	mr r3, r20
/* 8074FF28  38 80 00 00 */	li r4, 0
/* 8074FF2C  4B 8F 37 61 */	bl setPtT__14dEvt_control_cFPv
/* 8074FF30  7E 83 A3 78 */	mr r3, r20
/* 8074FF34  80 9F 07 5C */	lwz r4, 0x75c(r31)
/* 8074FF38  4B 8F 37 B5 */	bl setPtI_Id__14dEvt_control_cFUi
/* 8074FF3C  38 00 FF FF */	li r0, -1
/* 8074FF40  90 1F 07 5C */	stw r0, 0x75c(r31)
/* 8074FF44  38 00 00 01 */	li r0, 1
/* 8074FF48  98 1F 07 5B */	stb r0, 0x75b(r31)
/* 8074FF4C  48 00 01 4C */	b lbl_80750098
lbl_8074FF50:
/* 8074FF50  88 1F 07 5B */	lbz r0, 0x75b(r31)
/* 8074FF54  28 00 00 00 */	cmplwi r0, 0
/* 8074FF58  41 82 00 BC */	beq lbl_80750014
/* 8074FF5C  38 00 00 00 */	li r0, 0
/* 8074FF60  28 03 00 00 */	cmplwi r3, 0
/* 8074FF64  41 82 00 0C */	beq lbl_8074FF70
/* 8074FF68  28 03 00 02 */	cmplwi r3, 2
/* 8074FF6C  40 82 00 08 */	bne lbl_8074FF74
lbl_8074FF70:
/* 8074FF70  38 00 00 01 */	li r0, 1
lbl_8074FF74:
/* 8074FF74  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8074FF78  41 82 01 20 */	beq lbl_80750098
/* 8074FF7C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8074FF80  28 00 00 02 */	cmplwi r0, 2
/* 8074FF84  41 82 00 64 */	beq lbl_8074FFE8
/* 8074FF88  7F E3 FB 78 */	mr r3, r31
/* 8074FF8C  38 80 00 02 */	li r4, 2
/* 8074FF90  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8074FF94  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8074FF98  38 C0 00 00 */	li r6, 0
/* 8074FF9C  4B 8C B9 6D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8074FFA0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8074FFA4  60 00 00 02 */	ori r0, r0, 2
/* 8074FFA8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8074FFAC  C0 14 00 D8 */	lfs f0, 0xd8(r20)
/* 8074FFB0  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 8074FFB4  C0 14 00 DC */	lfs f0, 0xdc(r20)
/* 8074FFB8  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 8074FFBC  C0 14 00 E0 */	lfs f0, 0xe0(r20)
/* 8074FFC0  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8074FFC4  C0 14 00 E4 */	lfs f0, 0xe4(r20)
/* 8074FFC8  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 8074FFCC  C0 14 00 E8 */	lfs f0, 0xe8(r20)
/* 8074FFD0  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 8074FFD4  C0 14 00 EC */	lfs f0, 0xec(r20)
/* 8074FFD8  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 8074FFDC  38 00 00 1E */	li r0, 0x1e
/* 8074FFE0  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074FFE4  48 00 00 B4 */	b lbl_80750098
lbl_8074FFE8:
/* 8074FFE8  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074FFEC  4B A1 14 E5 */	bl Stop__9dCamera_cFv
/* 8074FFF0  38 7D 02 48 */	addi r3, r29, 0x248
/* 8074FFF4  38 80 00 03 */	li r4, 3
/* 8074FFF8  4B A1 30 15 */	bl SetTrimSize__9dCamera_cFl
/* 8074FFFC  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80750000  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 80750004  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80750008  38 00 00 03 */	li r0, 3
/* 8075000C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80750010  48 00 00 88 */	b lbl_80750098
lbl_80750014:
/* 80750014  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 80750018  3C 03 00 01 */	addis r0, r3, 1
/* 8075001C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80750020  40 82 00 28 */	bne lbl_80750048
/* 80750024  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80750028  38 80 00 E0 */	li r4, 0xe0
/* 8075002C  38 A0 00 00 */	li r5, 0
/* 80750030  38 C0 FF FF */	li r6, -1
/* 80750034  38 E0 FF FF */	li r7, -1
/* 80750038  39 00 00 00 */	li r8, 0
/* 8075003C  39 20 00 00 */	li r9, 0
/* 80750040  4B 8C BB A9 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80750044  90 7F 07 5C */	stw r3, 0x75c(r31)
lbl_80750048:
/* 80750048  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 8075004C  4B 8D 13 51 */	bl fpcEx_IsExist__FUi
/* 80750050  2C 03 00 00 */	cmpwi r3, 0
/* 80750054  41 82 00 44 */	beq lbl_80750098
/* 80750058  38 75 4F F8 */	addi r3, r21, 0x4ff8
/* 8075005C  7F E4 FB 78 */	mr r4, r31
/* 80750060  3C A0 80 75 */	lis r5, d_a_e_po__stringBase0@ha /* 0x80757A88@ha */
/* 80750064  38 A5 7A 88 */	addi r5, r5, d_a_e_po__stringBase0@l /* 0x80757A88@l */
/* 80750068  38 A5 00 05 */	addi r5, r5, 5
/* 8075006C  38 C0 00 FF */	li r6, 0xff
/* 80750070  4B 8F 76 E9 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80750074  B0 7F 07 62 */	sth r3, 0x762(r31)
/* 80750078  7F E3 FB 78 */	mr r3, r31
/* 8075007C  A8 9F 07 62 */	lha r4, 0x762(r31)
/* 80750080  38 A0 00 FF */	li r5, 0xff
/* 80750084  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80750088  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8075008C  38 E0 00 06 */	li r7, 6
/* 80750090  39 00 00 01 */	li r8, 1
/* 80750094  4B 8C B5 E9 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80750098:
/* 80750098  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 8075009C  2C 00 00 03 */	cmpwi r0, 3
/* 807500A0  41 82 00 0C */	beq lbl_807500AC
/* 807500A4  2C 00 00 04 */	cmpwi r0, 4
/* 807500A8  40 82 00 B8 */	bne lbl_80750160
lbl_807500AC:
/* 807500AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807500B0  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 807500B4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807500B8  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 807500BC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807500C0  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 807500C4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807500C8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807500CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807500D0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807500D4  4B 8B C3 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 807500D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807500DC  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 807500E0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807500E4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 807500E8  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 807500EC  38 61 00 F8 */	addi r3, r1, 0xf8
/* 807500F0  38 81 00 EC */	addi r4, r1, 0xec
/* 807500F4  4B B2 0D F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807500F8  38 61 00 EC */	addi r3, r1, 0xec
/* 807500FC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80750100  7C 65 1B 78 */	mr r5, r3
/* 80750104  4B BF 6F 8D */	bl PSVECAdd
/* 80750108  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8075010C  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 80750110  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80750114  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 80750118  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8075011C  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 80750120  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 80750124  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80750128  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 8075012C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80750130  C0 1F 08 4C */	lfs f0, 0x84c(r31)
/* 80750134  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80750138  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 8075013C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80750140  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 80750144  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80750148  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 8075014C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80750150  38 7D 02 48 */	addi r3, r29, 0x248
/* 80750154  38 81 00 68 */	addi r4, r1, 0x68
/* 80750158  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8075015C  4B A3 09 4D */	bl Set__9dCamera_cF4cXyz4cXyz
lbl_80750160:
/* 80750160  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80750164  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 80750168  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8075016C  41 82 00 14 */	beq lbl_80750180
/* 80750170  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80750174  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 80750178  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 8075017C  4B B1 F8 C1 */	bl cLib_addCalc2__FPffff
lbl_80750180:
/* 80750180  38 61 01 04 */	addi r3, r1, 0x104
/* 80750184  38 80 FF FF */	li r4, -1
/* 80750188  4B 92 74 69 */	bl __dt__11dBgS_GndChkFv
/* 8075018C  38 61 01 58 */	addi r3, r1, 0x158
/* 80750190  38 80 FF FF */	li r4, -1
/* 80750194  4B 92 7B 49 */	bl __dt__11dBgS_LinChkFv
lbl_80750198:
/* 80750198  39 61 02 00 */	addi r11, r1, 0x200
/* 8075019C  4B C1 20 69 */	bl _restgpr_20
/* 807501A0  80 01 02 04 */	lwz r0, 0x204(r1)
/* 807501A4  7C 08 03 A6 */	mtlr r0
/* 807501A8  38 21 02 00 */	addi r1, r1, 0x200
/* 807501AC  4E 80 00 20 */	blr 
