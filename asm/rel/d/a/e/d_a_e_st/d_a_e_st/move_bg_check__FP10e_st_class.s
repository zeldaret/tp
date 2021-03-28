lbl_8079EAA8:
/* 8079EAA8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8079EAAC  7C 08 02 A6 */	mflr r0
/* 8079EAB0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8079EAB4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8079EAB8  4B BC 37 18 */	b _savegpr_26
/* 8079EABC  7C 7C 1B 78 */	mr r28, r3
/* 8079EAC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079EAC4  4B 8D 91 A4 */	b __ct__11dBgS_LinChkFv
/* 8079EAC8  3B C0 00 00 */	li r30, 0
/* 8079EACC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079EAD0  38 9C 06 BC */	addi r4, r28, 0x6bc
/* 8079EAD4  38 BC 06 C8 */	addi r5, r28, 0x6c8
/* 8079EAD8  38 C0 00 00 */	li r6, 0
/* 8079EADC  4B 8D 92 88 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079EAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8079EAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8079EAE8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8079EAEC  7F E3 FB 78 */	mr r3, r31
/* 8079EAF0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079EAF4  4B 8D 58 C0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8079EAF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079EAFC  41 82 00 08 */	beq lbl_8079EB04
/* 8079EB00  3B C0 00 01 */	li r30, 1
lbl_8079EB04:
/* 8079EB04  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079EB08  38 9C 06 C8 */	addi r4, r28, 0x6c8
/* 8079EB0C  38 BC 06 D4 */	addi r5, r28, 0x6d4
/* 8079EB10  38 C0 00 00 */	li r6, 0
/* 8079EB14  4B 8D 92 50 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079EB18  7F E3 FB 78 */	mr r3, r31
/* 8079EB1C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079EB20  4B 8D 58 94 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8079EB24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079EB28  40 82 00 0C */	bne lbl_8079EB34
/* 8079EB2C  63 DE 00 02 */	ori r30, r30, 2
/* 8079EB30  48 00 00 28 */	b lbl_8079EB58
lbl_8079EB34:
/* 8079EB34  88 1C 05 B5 */	lbz r0, 0x5b5(r28)
/* 8079EB38  28 00 00 03 */	cmplwi r0, 3
/* 8079EB3C  40 82 00 1C */	bne lbl_8079EB58
/* 8079EB40  7F E3 FB 78 */	mr r3, r31
/* 8079EB44  38 81 00 40 */	addi r4, r1, 0x40
/* 8079EB48  4B 8D 61 74 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 8079EB4C  2C 03 00 03 */	cmpwi r3, 3
/* 8079EB50  41 82 00 08 */	beq lbl_8079EB58
/* 8079EB54  63 DE 00 02 */	ori r30, r30, 2
lbl_8079EB58:
/* 8079EB58  3B A0 00 00 */	li r29, 0
/* 8079EB5C  3B 60 00 00 */	li r27, 0
lbl_8079EB60:
/* 8079EB60  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079EB64  38 9C 06 BC */	addi r4, r28, 0x6bc
/* 8079EB68  3B 5B 06 E0 */	addi r26, r27, 0x6e0
/* 8079EB6C  7F 5C D2 14 */	add r26, r28, r26
/* 8079EB70  7F 45 D3 78 */	mr r5, r26
/* 8079EB74  38 C0 00 00 */	li r6, 0
/* 8079EB78  4B 8D 91 EC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079EB7C  7F E3 FB 78 */	mr r3, r31
/* 8079EB80  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079EB84  4B 8D 58 30 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8079EB88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079EB8C  41 82 00 CC */	beq lbl_8079EC58
/* 8079EB90  38 61 00 08 */	addi r3, r1, 8
/* 8079EB94  38 9C 06 BC */	addi r4, r28, 0x6bc
/* 8079EB98  7F 45 D3 78 */	mr r5, r26
/* 8079EB9C  4B AC 7F 98 */	b __mi__4cXyzCFRC3Vec
/* 8079EBA0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8079EBA4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8079EBA8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8079EBAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079EBB0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8079EBB4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8079EBB8  4B AC 8A BC */	b cM_atan2s__Fff
/* 8079EBBC  7C 64 1B 78 */	mr r4, r3
/* 8079EBC0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EBC4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EBC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EBCC  4B 86 D8 10 */	b mDoMtx_YrotS__FPA4_fs
/* 8079EBD0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8079EBD4  EC 20 00 32 */	fmuls f1, f0, f0
/* 8079EBD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8079EBDC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8079EBE0  EC 41 00 2A */	fadds f2, f1, f0
/* 8079EBE4  3C 60 80 7A */	lis r3, lit_3904@ha
/* 8079EBE8  C0 03 68 28 */	lfs f0, lit_3904@l(r3)
/* 8079EBEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8079EBF0  40 81 00 0C */	ble lbl_8079EBFC
/* 8079EBF4  FC 00 10 34 */	frsqrte f0, f2
/* 8079EBF8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8079EBFC:
/* 8079EBFC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8079EC00  4B AC 8A 74 */	b cM_atan2s__Fff
/* 8079EC04  7C 03 00 D0 */	neg r0, r3
/* 8079EC08  7C 04 07 34 */	extsh r4, r0
/* 8079EC0C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EC10  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EC14  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EC18  4B 86 D7 84 */	b mDoMtx_XrotM__FPA4_fs
/* 8079EC1C  3C 60 80 7A */	lis r3, lit_3904@ha
/* 8079EC20  C0 03 68 28 */	lfs f0, lit_3904@l(r3)
/* 8079EC24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8079EC28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079EC2C  3C 60 80 7A */	lis r3, lit_4330@ha
/* 8079EC30  C0 03 68 9C */	lfs f0, lit_4330@l(r3)
/* 8079EC34  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8079EC38  38 61 00 14 */	addi r3, r1, 0x14
/* 8079EC3C  38 81 00 20 */	addi r4, r1, 0x20
/* 8079EC40  4B AD 22 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 8079EC44  38 7C 06 90 */	addi r3, r28, 0x690
/* 8079EC48  38 81 00 20 */	addi r4, r1, 0x20
/* 8079EC4C  7C 65 1B 78 */	mr r5, r3
/* 8079EC50  4B BA 84 40 */	b PSVECAdd
/* 8079EC54  63 DE 00 04 */	ori r30, r30, 4
lbl_8079EC58:
/* 8079EC58  3B BD 00 01 */	addi r29, r29, 1
/* 8079EC5C  2C 1D 00 03 */	cmpwi r29, 3
/* 8079EC60  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8079EC64  41 80 FE FC */	blt lbl_8079EB60
/* 8079EC68  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079EC6C  38 80 FF FF */	li r4, -1
/* 8079EC70  4B 8D 90 6C */	b __dt__11dBgS_LinChkFv
/* 8079EC74  7F C3 F3 78 */	mr r3, r30
/* 8079EC78  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8079EC7C  4B BC 35 A0 */	b _restgpr_26
/* 8079EC80  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8079EC84  7C 08 03 A6 */	mtlr r0
/* 8079EC88  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8079EC8C  4E 80 00 20 */	blr 
