lbl_80A3EB84:
/* 80A3EB84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A3EB88  7C 08 02 A6 */	mflr r0
/* 80A3EB8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A3EB90  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3EB94  4B 92 36 44 */	b _savegpr_28
/* 80A3EB98  7C 7E 1B 78 */	mr r30, r3
/* 80A3EB9C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3EBA0  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3EBA4  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80A3EBA8  AB 84 00 48 */	lha r28, 0x48(r4)
/* 80A3EBAC  AB A4 00 4A */	lha r29, 0x4a(r4)
/* 80A3EBB0  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A3EBB4  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A3EBB8  88 1E 15 AE */	lbz r0, 0x15ae(r30)
/* 80A3EBBC  7C 00 07 74 */	extsb r0, r0
/* 80A3EBC0  2C 00 00 05 */	cmpwi r0, 5
/* 80A3EBC4  41 82 00 54 */	beq lbl_80A3EC18
/* 80A3EBC8  40 80 00 10 */	bge lbl_80A3EBD8
/* 80A3EBCC  2C 00 00 04 */	cmpwi r0, 4
/* 80A3EBD0  40 80 01 F8 */	bge lbl_80A3EDC8
/* 80A3EBD4  48 00 02 48 */	b lbl_80A3EE1C
lbl_80A3EBD8:
/* 80A3EBD8  2C 00 00 08 */	cmpwi r0, 8
/* 80A3EBDC  40 80 02 40 */	bge lbl_80A3EE1C
/* 80A3EBE0  7C 63 07 34 */	extsh r3, r3
/* 80A3EBE4  7C 84 07 34 */	extsh r4, r4
/* 80A3EBE8  4B 70 DE 30 */	b daNpcT_getDistTableIdx__Fii
/* 80A3EBEC  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80A3EBF0  38 00 00 E4 */	li r0, 0xe4
/* 80A3EBF4  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80A3EBF8  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80A3EBFC  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80A3EC00  7F 83 07 34 */	extsh r3, r28
/* 80A3EC04  7F A4 07 34 */	extsh r4, r29
/* 80A3EC08  4B 70 DE 10 */	b daNpcT_getDistTableIdx__Fii
/* 80A3EC0C  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80A3EC10  38 60 00 04 */	li r3, 4
/* 80A3EC14  48 00 02 0C */	b lbl_80A3EE20
lbl_80A3EC18:
/* 80A3EC18  7C 63 07 34 */	extsh r3, r3
/* 80A3EC1C  7C 84 07 34 */	extsh r4, r4
/* 80A3EC20  4B 70 DD F8 */	b daNpcT_getDistTableIdx__Fii
/* 80A3EC24  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80A3EC28  38 00 00 E4 */	li r0, 0xe4
/* 80A3EC2C  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80A3EC30  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80A3EC34  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80A3EC38  7F 83 07 34 */	extsh r3, r28
/* 80A3EC3C  7F A4 07 34 */	extsh r4, r29
/* 80A3EC40  4B 70 DD D8 */	b daNpcT_getDistTableIdx__Fii
/* 80A3EC44  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80A3EC48  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A3EC4C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A3EC50  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A3EC54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A3EC58  38 63 00 30 */	addi r3, r3, 0x30
/* 80A3EC5C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A3EC60  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A3EC64  4B 90 78 4C */	b PSMTXCopy
/* 80A3EC68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3EC6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3EC70  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A3EC74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A3EC78  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A3EC7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3EC80  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A3EC84  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A3EC88  38 61 00 18 */	addi r3, r1, 0x18
/* 80A3EC8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3EC90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3EC94  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3EC98  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A3EC9C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A3ECA0  4B 82 7E 94 */	b __mi__4cXyzCFRC3Vec
/* 80A3ECA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A3ECA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3ECAC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3ECB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3ECB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A3ECB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3ECBC  38 61 00 0C */	addi r3, r1, 0xc
/* 80A3ECC0  4B 90 84 78 */	b PSVECSquareMag
/* 80A3ECC4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3ECC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3ECCC  40 81 00 58 */	ble lbl_80A3ED24
/* 80A3ECD0  FC 00 08 34 */	frsqrte f0, f1
/* 80A3ECD4  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 80A3ECD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3ECDC  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 80A3ECE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3ECE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3ECE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3ECEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3ECF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3ECF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3ECF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3ECFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3ED00  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3ED04  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3ED08  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3ED0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3ED10  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3ED14  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3ED18  FC 21 00 32 */	fmul f1, f1, f0
/* 80A3ED1C  FC 20 08 18 */	frsp f1, f1
/* 80A3ED20  48 00 00 88 */	b lbl_80A3EDA8
lbl_80A3ED24:
/* 80A3ED24  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 80A3ED28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3ED2C  40 80 00 10 */	bge lbl_80A3ED3C
/* 80A3ED30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A3ED34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A3ED38  48 00 00 70 */	b lbl_80A3EDA8
lbl_80A3ED3C:
/* 80A3ED3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A3ED40  80 81 00 08 */	lwz r4, 8(r1)
/* 80A3ED44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A3ED48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A3ED4C  7C 03 00 00 */	cmpw r3, r0
/* 80A3ED50  41 82 00 14 */	beq lbl_80A3ED64
/* 80A3ED54  40 80 00 40 */	bge lbl_80A3ED94
/* 80A3ED58  2C 03 00 00 */	cmpwi r3, 0
/* 80A3ED5C  41 82 00 20 */	beq lbl_80A3ED7C
/* 80A3ED60  48 00 00 34 */	b lbl_80A3ED94
lbl_80A3ED64:
/* 80A3ED64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A3ED68  41 82 00 0C */	beq lbl_80A3ED74
/* 80A3ED6C  38 00 00 01 */	li r0, 1
/* 80A3ED70  48 00 00 28 */	b lbl_80A3ED98
lbl_80A3ED74:
/* 80A3ED74  38 00 00 02 */	li r0, 2
/* 80A3ED78  48 00 00 20 */	b lbl_80A3ED98
lbl_80A3ED7C:
/* 80A3ED7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A3ED80  41 82 00 0C */	beq lbl_80A3ED8C
/* 80A3ED84  38 00 00 05 */	li r0, 5
/* 80A3ED88  48 00 00 10 */	b lbl_80A3ED98
lbl_80A3ED8C:
/* 80A3ED8C  38 00 00 03 */	li r0, 3
/* 80A3ED90  48 00 00 08 */	b lbl_80A3ED98
lbl_80A3ED94:
/* 80A3ED94  38 00 00 04 */	li r0, 4
lbl_80A3ED98:
/* 80A3ED98  2C 00 00 01 */	cmpwi r0, 1
/* 80A3ED9C  40 82 00 0C */	bne lbl_80A3EDA8
/* 80A3EDA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A3EDA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A3EDA8:
/* 80A3EDA8  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 80A3EDAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3EDB0  40 80 00 10 */	bge lbl_80A3EDC0
/* 80A3EDB4  3C 60 00 20 */	lis r3, 0x0020 /* 0x00200004@ha */
/* 80A3EDB8  38 63 00 04 */	addi r3, r3, 0x0004 /* 0x00200004@l */
/* 80A3EDBC  48 00 00 64 */	b lbl_80A3EE20
lbl_80A3EDC0:
/* 80A3EDC0  38 60 00 04 */	li r3, 4
/* 80A3EDC4  48 00 00 5C */	b lbl_80A3EE20
lbl_80A3EDC8:
/* 80A3EDC8  7C 63 07 34 */	extsh r3, r3
/* 80A3EDCC  7C 84 07 34 */	extsh r4, r4
/* 80A3EDD0  4B 70 DC 48 */	b daNpcT_getDistTableIdx__Fii
/* 80A3EDD4  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80A3EDD8  38 00 00 E4 */	li r0, 0xe4
/* 80A3EDDC  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80A3EDE0  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80A3EDE4  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80A3EDE8  7F 83 07 34 */	extsh r3, r28
/* 80A3EDEC  7F A4 07 34 */	extsh r4, r29
/* 80A3EDF0  4B 70 DC 28 */	b daNpcT_getDistTableIdx__Fii
/* 80A3EDF4  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80A3EDF8  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A3EDFC  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80A3EE00  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A3EE04  4B 63 71 3C */	b SetWallR__12dBgS_AcchCirFf
/* 80A3EE08  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3EE0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A3EE10  D0 1E 09 14 */	stfs f0, 0x914(r30)
/* 80A3EE14  38 60 00 00 */	li r3, 0
/* 80A3EE18  48 00 00 08 */	b lbl_80A3EE20
lbl_80A3EE1C:
/* 80A3EE1C  38 60 00 0A */	li r3, 0xa
lbl_80A3EE20:
/* 80A3EE20  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3EE24  4B 92 34 00 */	b _restgpr_28
/* 80A3EE28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3EE2C  7C 08 03 A6 */	mtlr r0
/* 80A3EE30  38 21 00 40 */	addi r1, r1, 0x40
/* 80A3EE34  4E 80 00 20 */	blr 
