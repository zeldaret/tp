lbl_807C7640:
/* 807C7640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807C7644  7C 08 02 A6 */	mflr r0
/* 807C7648  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C764C  39 61 00 20 */	addi r11, r1, 0x20
/* 807C7650  4B B9 AB 88 */	b _savegpr_28
/* 807C7654  7C 7C 1B 78 */	mr r28, r3
/* 807C7658  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C765C  3B A3 EC A8 */	addi r29, r3, lit_3907@l
/* 807C7660  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 807C7664  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C7668  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 807C766C  C0 7D 00 A0 */	lfs f3, 0xa0(r29)
/* 807C7670  C0 9D 00 08 */	lfs f4, 8(r29)
/* 807C7674  4B AA 83 08 */	b cLib_addCalc__FPfffff
/* 807C7678  80 1C 13 20 */	lwz r0, 0x1320(r28)
/* 807C767C  2C 00 00 01 */	cmpwi r0, 1
/* 807C7680  41 82 00 34 */	beq lbl_807C76B4
/* 807C7684  40 80 01 78 */	bge lbl_807C77FC
/* 807C7688  2C 00 00 00 */	cmpwi r0, 0
/* 807C768C  40 80 00 08 */	bge lbl_807C7694
/* 807C7690  48 00 01 6C */	b lbl_807C77FC
lbl_807C7694:
/* 807C7694  7F 83 E3 78 */	mr r3, r28
/* 807C7698  38 80 00 0F */	li r4, 0xf
/* 807C769C  38 A0 00 02 */	li r5, 2
/* 807C76A0  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807C76A4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C76A8  4B FF C1 71 */	bl setBck__8daE_VA_cFiUcff
/* 807C76AC  38 00 00 01 */	li r0, 1
/* 807C76B0  90 1C 13 20 */	stw r0, 0x1320(r28)
lbl_807C76B4:
/* 807C76B4  7F 83 E3 78 */	mr r3, r28
/* 807C76B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807C76BC  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 807C76C0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C76C4  4B 85 30 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C76C8  7C 64 1B 78 */	mr r4, r3
/* 807C76CC  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807C76D0  38 A0 00 08 */	li r5, 8
/* 807C76D4  38 C0 04 00 */	li r6, 0x400
/* 807C76D8  38 E0 00 40 */	li r7, 0x40
/* 807C76DC  4B AA 8E 64 */	b cLib_addCalcAngleS__FPsssss
/* 807C76E0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807C76E4  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807C76E8  7F 83 E3 78 */	mr r3, r28
/* 807C76EC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C76F0  4B 85 30 F0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C76F4  3C 60 80 7D */	lis r3, l_HIO@ha
/* 807C76F8  3B E3 F4 C4 */	addi r31, r3, l_HIO@l
/* 807C76FC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807C7700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C7704  40 81 00 18 */	ble lbl_807C771C
/* 807C7708  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807C770C  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 807C7710  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C7714  4B AA 90 2C */	b cLib_chaseF__FPfff
/* 807C7718  48 00 00 78 */	b lbl_807C7790
lbl_807C771C:
/* 807C771C  7F 83 E3 78 */	mr r3, r28
/* 807C7720  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C7724  4B 85 30 BC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C7728  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 807C772C  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 807C7730  EC 02 00 28 */	fsubs f0, f2, f0
/* 807C7734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C7738  40 80 00 18 */	bge lbl_807C7750
/* 807C773C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807C7740  C0 3D 00 7C */	lfs f1, 0x7c(r29)
/* 807C7744  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C7748  4B AA 8F F8 */	b cLib_chaseF__FPfff
/* 807C774C  48 00 00 44 */	b lbl_807C7790
lbl_807C7750:
/* 807C7750  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807C7754  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C7758  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C775C  4B AA 8F E4 */	b cLib_chaseF__FPfff
/* 807C7760  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C7764  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 807C7768  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C776C  40 82 00 24 */	bne lbl_807C7790
/* 807C7770  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C7774  2C 00 00 00 */	cmpwi r0, 0
/* 807C7778  40 82 00 18 */	bne lbl_807C7790
/* 807C777C  7F 83 E3 78 */	mr r3, r28
/* 807C7780  38 80 00 04 */	li r4, 4
/* 807C7784  38 A0 00 00 */	li r5, 0
/* 807C7788  4B FF C1 91 */	bl setActionMode__8daE_VA_cFii
/* 807C778C  48 00 00 98 */	b lbl_807C7824
lbl_807C7790:
/* 807C7790  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807C7794  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C7798  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C779C  41 82 00 34 */	beq lbl_807C77D0
/* 807C77A0  7F 83 E3 78 */	mr r3, r28
/* 807C77A4  38 80 00 10 */	li r4, 0x10
/* 807C77A8  4B FF C1 15 */	bl checkBck__8daE_VA_cFi
/* 807C77AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C77B0  40 82 00 4C */	bne lbl_807C77FC
/* 807C77B4  7F 83 E3 78 */	mr r3, r28
/* 807C77B8  38 80 00 10 */	li r4, 0x10
/* 807C77BC  38 A0 00 02 */	li r5, 2
/* 807C77C0  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 807C77C4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C77C8  4B FF C0 51 */	bl setBck__8daE_VA_cFiUcff
/* 807C77CC  48 00 00 30 */	b lbl_807C77FC
lbl_807C77D0:
/* 807C77D0  7F 83 E3 78 */	mr r3, r28
/* 807C77D4  38 80 00 0F */	li r4, 0xf
/* 807C77D8  4B FF C0 E5 */	bl checkBck__8daE_VA_cFi
/* 807C77DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C77E0  40 82 00 1C */	bne lbl_807C77FC
/* 807C77E4  7F 83 E3 78 */	mr r3, r28
/* 807C77E8  38 80 00 0F */	li r4, 0xf
/* 807C77EC  38 A0 00 02 */	li r5, 2
/* 807C77F0  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 807C77F4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C77F8  4B FF C0 21 */	bl setBck__8daE_VA_cFiUcff
lbl_807C77FC:
/* 807C77FC  4B 99 7C 28 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 807C7800  2C 03 00 00 */	cmpwi r3, 0
/* 807C7804  41 82 00 20 */	beq lbl_807C7824
/* 807C7808  80 1C 13 58 */	lwz r0, 0x1358(r28)
/* 807C780C  2C 00 00 00 */	cmpwi r0, 0
/* 807C7810  40 82 00 14 */	bne lbl_807C7824
/* 807C7814  7F 83 E3 78 */	mr r3, r28
/* 807C7818  38 80 00 05 */	li r4, 5
/* 807C781C  38 A0 00 00 */	li r5, 0
/* 807C7820  4B FF C0 F9 */	bl setActionMode__8daE_VA_cFii
lbl_807C7824:
/* 807C7824  39 61 00 20 */	addi r11, r1, 0x20
/* 807C7828  4B B9 A9 FC */	b _restgpr_28
/* 807C782C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C7830  7C 08 03 A6 */	mtlr r0
/* 807C7834  38 21 00 20 */	addi r1, r1, 0x20
/* 807C7838  4E 80 00 20 */	blr 
