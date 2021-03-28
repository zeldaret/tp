lbl_8078EA58:
/* 8078EA58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8078EA5C  7C 08 02 A6 */	mflr r0
/* 8078EA60  90 01 00 54 */	stw r0, 0x54(r1)
/* 8078EA64  39 61 00 50 */	addi r11, r1, 0x50
/* 8078EA68  4B BD 37 68 */	b _savegpr_26
/* 8078EA6C  7C 7E 1B 78 */	mr r30, r3
/* 8078EA70  3C 60 80 79 */	lis r3, lit_3902@ha
/* 8078EA74  3B E3 1D 70 */	addi r31, r3, lit_3902@l
/* 8078EA78  38 00 00 06 */	li r0, 6
/* 8078EA7C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8078EA80  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8078EA84  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8078EA88  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 8078EA8C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8078EA90  EC 01 00 24 */	fdivs f0, f1, f0
/* 8078EA94  FC 00 00 1E */	fctiwz f0, f0
/* 8078EA98  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8078EA9C  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8078EAA0  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078EAA4  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078EAA8  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8078EAAC  28 00 00 00 */	cmplwi r0, 0
/* 8078EAB0  41 82 00 08 */	beq lbl_8078EAB8
/* 8078EAB4  38 80 00 00 */	li r4, 0
lbl_8078EAB8:
/* 8078EAB8  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 8078EABC  2C 00 00 01 */	cmpwi r0, 1
/* 8078EAC0  41 82 00 38 */	beq lbl_8078EAF8
/* 8078EAC4  40 80 01 28 */	bge lbl_8078EBEC
/* 8078EAC8  2C 00 00 00 */	cmpwi r0, 0
/* 8078EACC  40 80 00 08 */	bge lbl_8078EAD4
/* 8078EAD0  48 00 01 1C */	b lbl_8078EBEC
lbl_8078EAD4:
/* 8078EAD4  7F C3 F3 78 */	mr r3, r30
/* 8078EAD8  38 80 00 04 */	li r4, 4
/* 8078EADC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078EAE0  38 A0 00 00 */	li r5, 0
/* 8078EAE4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8078EAE8  4B FF F8 CD */	bl anm_init__FP10e_sh_classifUcf
/* 8078EAEC  38 00 00 01 */	li r0, 1
/* 8078EAF0  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8078EAF4  48 00 00 F8 */	b lbl_8078EBEC
lbl_8078EAF8:
/* 8078EAF8  2C 04 00 04 */	cmpwi r4, 4
/* 8078EAFC  40 81 00 0C */	ble lbl_8078EB08
/* 8078EB00  2C 04 00 13 */	cmpwi r4, 0x13
/* 8078EB04  41 80 00 E8 */	blt lbl_8078EBEC
lbl_8078EB08:
/* 8078EB08  C0 3E 06 90 */	lfs f1, 0x690(r30)
/* 8078EB0C  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8078EB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078EB14  40 80 00 D8 */	bge lbl_8078EBEC
/* 8078EB18  38 00 00 01 */	li r0, 1
/* 8078EB1C  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 8078EB20  3B 60 00 00 */	li r27, 0
/* 8078EB24  B3 7E 06 78 */	sth r27, 0x678(r30)
/* 8078EB28  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078EB2C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8078EB30  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8078EB34  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 8078EB38  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8078EB3C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8078EB40  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078EB44  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078EB48  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078EB4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078EB50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078EB54  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078EB58  3B 40 00 00 */	li r26, 0
/* 8078EB5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078EB60  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8078EB64  3C 60 80 79 */	lis r3, ap_name@ha
/* 8078EB68  3B A3 1F 00 */	addi r29, r3, ap_name@l
lbl_8078EB6C:
/* 8078EB6C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8078EB70  38 80 00 00 */	li r4, 0
/* 8078EB74  90 81 00 08 */	stw r4, 8(r1)
/* 8078EB78  38 00 FF FF */	li r0, -1
/* 8078EB7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078EB80  90 81 00 10 */	stw r4, 0x10(r1)
/* 8078EB84  90 81 00 14 */	stw r4, 0x14(r1)
/* 8078EB88  90 81 00 18 */	stw r4, 0x18(r1)
/* 8078EB8C  38 80 00 00 */	li r4, 0
/* 8078EB90  7C BD DA 2E */	lhzx r5, r29, r27
/* 8078EB94  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8078EB98  38 E0 00 00 */	li r7, 0
/* 8078EB9C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8078EBA0  39 21 00 24 */	addi r9, r1, 0x24
/* 8078EBA4  39 40 00 FF */	li r10, 0xff
/* 8078EBA8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078EBAC  4B 8B DE E4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8078EBB0  3B 5A 00 01 */	addi r26, r26, 1
/* 8078EBB4  2C 1A 00 02 */	cmpwi r26, 2
/* 8078EBB8  3B 7B 00 02 */	addi r27, r27, 2
/* 8078EBBC  40 81 FF B0 */	ble lbl_8078EB6C
/* 8078EBC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A3@ha */
/* 8078EBC4  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000700A3@l */
/* 8078EBC8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8078EBCC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8078EBD0  38 81 00 20 */	addi r4, r1, 0x20
/* 8078EBD4  38 A0 00 00 */	li r5, 0
/* 8078EBD8  38 C0 FF FF */	li r6, -1
/* 8078EBDC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8078EBE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078EBE4  7D 89 03 A6 */	mtctr r12
/* 8078EBE8  4E 80 04 21 */	bctrl 
lbl_8078EBEC:
/* 8078EBEC  39 61 00 50 */	addi r11, r1, 0x50
/* 8078EBF0  4B BD 36 2C */	b _restgpr_26
/* 8078EBF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8078EBF8  7C 08 03 A6 */	mtlr r0
/* 8078EBFC  38 21 00 50 */	addi r1, r1, 0x50
/* 8078EC00  4E 80 00 20 */	blr 
