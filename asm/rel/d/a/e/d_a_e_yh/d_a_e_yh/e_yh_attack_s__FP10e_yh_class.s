lbl_807FF8DC:
/* 807FF8DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807FF8E0  7C 08 02 A6 */	mflr r0
/* 807FF8E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807FF8E8  39 61 00 50 */	addi r11, r1, 0x50
/* 807FF8EC  4B B6 28 ED */	bl _savegpr_28
/* 807FF8F0  7C 7D 1B 78 */	mr r29, r3
/* 807FF8F4  3C 60 80 80 */	lis r3, lit_3902@ha /* 0x8080427C@ha */
/* 807FF8F8  3B E3 42 7C */	addi r31, r3, lit_3902@l /* 0x8080427C@l */
/* 807FF8FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FF900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FF904  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 807FF908  38 61 00 20 */	addi r3, r1, 0x20
/* 807FF90C  38 9C 05 38 */	addi r4, r28, 0x538
/* 807FF910  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807FF914  4B A6 72 21 */	bl __mi__4cXyzCFRC3Vec
/* 807FF918  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807FF91C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807FF920  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807FF924  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807FF928  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807FF92C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807FF930  EC 21 00 72 */	fmuls f1, f1, f1
/* 807FF934  EC 00 00 32 */	fmuls f0, f0, f0
/* 807FF938  EC 41 00 2A */	fadds f2, f1, f0
/* 807FF93C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FF940  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FF944  40 81 00 0C */	ble lbl_807FF950
/* 807FF948  FC 00 10 34 */	frsqrte f0, f2
/* 807FF94C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807FF950:
/* 807FF950  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 807FF954  4B A6 7D 21 */	bl cM_atan2s__Fff
/* 807FF958  7C 7E 07 34 */	extsh r30, r3
/* 807FF95C  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807FF960  2C 00 00 01 */	cmpwi r0, 1
/* 807FF964  41 82 00 BC */	beq lbl_807FFA20
/* 807FF968  40 80 02 74 */	bge lbl_807FFBDC
/* 807FF96C  2C 00 00 00 */	cmpwi r0, 0
/* 807FF970  40 80 00 08 */	bge lbl_807FF978
/* 807FF974  48 00 02 68 */	b lbl_807FFBDC
lbl_807FF978:
/* 807FF978  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807FF97C  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807FF980  90 01 00 10 */	stw r0, 0x10(r1)
/* 807FF984  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807FF988  38 81 00 10 */	addi r4, r1, 0x10
/* 807FF98C  38 A0 00 00 */	li r5, 0
/* 807FF990  38 C0 FF FF */	li r6, -1
/* 807FF994  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807FF998  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FF99C  7D 89 03 A6 */	mtctr r12
/* 807FF9A0  4E 80 04 21 */	bctrl 
/* 807FF9A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 807FF9A8  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 807FF9AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FF9B0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807FF9B4  38 81 00 0C */	addi r4, r1, 0xc
/* 807FF9B8  38 A0 FF FF */	li r5, -1
/* 807FF9BC  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807FF9C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FF9C4  7D 89 03 A6 */	mtctr r12
/* 807FF9C8  4E 80 04 21 */	bctrl 
/* 807FF9CC  7F A3 EB 78 */	mr r3, r29
/* 807FF9D0  38 80 00 14 */	li r4, 0x14
/* 807FF9D4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807FF9D8  38 A0 00 02 */	li r5, 2
/* 807FF9DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FF9E0  4B FF DD 89 */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FF9E4  7F A3 EB 78 */	mr r3, r29
/* 807FF9E8  38 80 00 07 */	li r4, 7
/* 807FF9EC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807FF9F0  38 A0 00 00 */	li r5, 0
/* 807FF9F4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FF9F8  4B FF DC C5 */	bl anm_init__FP10e_yh_classifUcf
/* 807FF9FC  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 807FFA00  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807FFA04  4B 88 50 75 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 807FFA08  38 00 00 0F */	li r0, 0xf
/* 807FFA0C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807FFA10  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FFA14  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807FFA18  38 00 00 01 */	li r0, 1
/* 807FFA1C  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_807FFA20:
/* 807FFA20  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807FFA24  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807FFA28  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807FFA2C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807FFA30  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807FFA34  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807FFA38  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807FFA3C  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807FFA40  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807FFA44  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 807FFA48  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FFA4C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FFA50  4B A6 FF ED */	bl cLib_addCalc2__FPffff
/* 807FFA54  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807FFA58  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807FFA5C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807FFA60  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 807FFA64  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FFA68  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FFA6C  4B A6 FF D1 */	bl cLib_addCalc2__FPffff
/* 807FFA70  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807FFA74  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807FFA78  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807FFA7C  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 807FFA80  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FFA84  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FFA88  4B A6 FF B5 */	bl cLib_addCalc2__FPffff
/* 807FFA8C  38 7D 06 90 */	addi r3, r29, 0x690
/* 807FFA90  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FFA94  FC 40 08 90 */	fmr f2, f1
/* 807FFA98  C0 7F 00 9C */	lfs f3, 0x9c(r31)
/* 807FFA9C  4B A6 FF A1 */	bl cLib_addCalc2__FPffff
/* 807FFAA0  38 61 00 14 */	addi r3, r1, 0x14
/* 807FFAA4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807FFAA8  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 807FFAAC  4B A6 70 89 */	bl __mi__4cXyzCFRC3Vec
/* 807FFAB0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807FFAB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807FFAB8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807FFABC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807FFAC0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807FFAC4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807FFAC8  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807FFACC  2C 00 00 00 */	cmpwi r0, 0
/* 807FFAD0  41 82 00 FC */	beq lbl_807FFBCC
/* 807FFAD4  38 61 00 2C */	addi r3, r1, 0x2c
/* 807FFAD8  4B B4 76 61 */	bl PSVECSquareMag
/* 807FFADC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FFAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FFAE4  40 81 00 58 */	ble lbl_807FFB3C
/* 807FFAE8  FC 00 08 34 */	frsqrte f0, f1
/* 807FFAEC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807FFAF0  FC 44 00 32 */	fmul f2, f4, f0
/* 807FFAF4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807FFAF8  FC 00 00 32 */	fmul f0, f0, f0
/* 807FFAFC  FC 01 00 32 */	fmul f0, f1, f0
/* 807FFB00  FC 03 00 28 */	fsub f0, f3, f0
/* 807FFB04  FC 02 00 32 */	fmul f0, f2, f0
/* 807FFB08  FC 44 00 32 */	fmul f2, f4, f0
/* 807FFB0C  FC 00 00 32 */	fmul f0, f0, f0
/* 807FFB10  FC 01 00 32 */	fmul f0, f1, f0
/* 807FFB14  FC 03 00 28 */	fsub f0, f3, f0
/* 807FFB18  FC 02 00 32 */	fmul f0, f2, f0
/* 807FFB1C  FC 44 00 32 */	fmul f2, f4, f0
/* 807FFB20  FC 00 00 32 */	fmul f0, f0, f0
/* 807FFB24  FC 01 00 32 */	fmul f0, f1, f0
/* 807FFB28  FC 03 00 28 */	fsub f0, f3, f0
/* 807FFB2C  FC 02 00 32 */	fmul f0, f2, f0
/* 807FFB30  FC 21 00 32 */	fmul f1, f1, f0
/* 807FFB34  FC 20 08 18 */	frsp f1, f1
/* 807FFB38  48 00 00 88 */	b lbl_807FFBC0
lbl_807FFB3C:
/* 807FFB3C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807FFB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FFB44  40 80 00 10 */	bge lbl_807FFB54
/* 807FFB48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FFB4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807FFB50  48 00 00 70 */	b lbl_807FFBC0
lbl_807FFB54:
/* 807FFB54  D0 21 00 08 */	stfs f1, 8(r1)
/* 807FFB58  80 81 00 08 */	lwz r4, 8(r1)
/* 807FFB5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807FFB60  3C 00 7F 80 */	lis r0, 0x7f80
/* 807FFB64  7C 03 00 00 */	cmpw r3, r0
/* 807FFB68  41 82 00 14 */	beq lbl_807FFB7C
/* 807FFB6C  40 80 00 40 */	bge lbl_807FFBAC
/* 807FFB70  2C 03 00 00 */	cmpwi r3, 0
/* 807FFB74  41 82 00 20 */	beq lbl_807FFB94
/* 807FFB78  48 00 00 34 */	b lbl_807FFBAC
lbl_807FFB7C:
/* 807FFB7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FFB80  41 82 00 0C */	beq lbl_807FFB8C
/* 807FFB84  38 00 00 01 */	li r0, 1
/* 807FFB88  48 00 00 28 */	b lbl_807FFBB0
lbl_807FFB8C:
/* 807FFB8C  38 00 00 02 */	li r0, 2
/* 807FFB90  48 00 00 20 */	b lbl_807FFBB0
lbl_807FFB94:
/* 807FFB94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FFB98  41 82 00 0C */	beq lbl_807FFBA4
/* 807FFB9C  38 00 00 05 */	li r0, 5
/* 807FFBA0  48 00 00 10 */	b lbl_807FFBB0
lbl_807FFBA4:
/* 807FFBA4  38 00 00 03 */	li r0, 3
/* 807FFBA8  48 00 00 08 */	b lbl_807FFBB0
lbl_807FFBAC:
/* 807FFBAC  38 00 00 04 */	li r0, 4
lbl_807FFBB0:
/* 807FFBB0  2C 00 00 01 */	cmpwi r0, 1
/* 807FFBB4  40 82 00 0C */	bne lbl_807FFBC0
/* 807FFBB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FFBBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807FFBC0:
/* 807FFBC0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807FFBC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FFBC8  40 81 00 14 */	ble lbl_807FFBDC
lbl_807FFBCC:
/* 807FFBCC  38 00 00 03 */	li r0, 3
/* 807FFBD0  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807FFBD4  38 00 00 00 */	li r0, 0
/* 807FFBD8  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_807FFBDC:
/* 807FFBDC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807FFBE0  A8 9D 06 88 */	lha r4, 0x688(r29)
/* 807FFBE4  3C 84 00 01 */	addis r4, r4, 1
/* 807FFBE8  38 04 80 00 */	addi r0, r4, -32768
/* 807FFBEC  7C 04 07 34 */	extsh r4, r0
/* 807FFBF0  38 A0 00 08 */	li r5, 8
/* 807FFBF4  38 C0 08 00 */	li r6, 0x800
/* 807FFBF8  4B A7 0A 11 */	bl cLib_addCalcAngleS2__FPssss
/* 807FFBFC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807FFC00  3C 9E 00 01 */	addis r4, r30, 1
/* 807FFC04  38 04 80 00 */	addi r0, r4, -32768
/* 807FFC08  7C 04 07 34 */	extsh r4, r0
/* 807FFC0C  38 A0 00 08 */	li r5, 8
/* 807FFC10  38 C0 04 00 */	li r6, 0x400
/* 807FFC14  4B A7 09 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 807FFC18  38 00 00 01 */	li r0, 1
/* 807FFC1C  98 1D 0B 18 */	stb r0, 0xb18(r29)
/* 807FFC20  39 61 00 50 */	addi r11, r1, 0x50
/* 807FFC24  4B B6 26 01 */	bl _restgpr_28
/* 807FFC28  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807FFC2C  7C 08 03 A6 */	mtlr r0
/* 807FFC30  38 21 00 50 */	addi r1, r1, 0x50
/* 807FFC34  4E 80 00 20 */	blr 
