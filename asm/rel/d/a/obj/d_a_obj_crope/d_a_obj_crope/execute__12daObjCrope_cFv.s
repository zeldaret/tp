lbl_80BCE4FC:
/* 80BCE4FC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80BCE500  7C 08 02 A6 */	mflr r0
/* 80BCE504  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BCE508  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80BCE50C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80BCE510  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80BCE514  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80BCE518  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BCE51C  4B 79 3C B8 */	b _savegpr_27
/* 80BCE520  7C 7D 1B 78 */	mr r29, r3
/* 80BCE524  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BCE528  3B E4 EA CC */	addi r31, r4, l_arcName@l
/* 80BCE52C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BCE530  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BCE534  83 C4 5D B4 */	lwz r30, 0x5db4(r4)
/* 80BCE538  80 03 07 18 */	lwz r0, 0x718(r3)
/* 80BCE53C  2C 00 FF FF */	cmpwi r0, -1
/* 80BCE540  40 82 03 E0 */	bne lbl_80BCE920
/* 80BCE544  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 80BCE548  2C 00 FF FF */	cmpwi r0, -1
/* 80BCE54C  40 82 03 D4 */	bne lbl_80BCE920
/* 80BCE550  4B FF F1 75 */	bl setNormalRopePos__12daObjCrope_cFv
/* 80BCE554  80 7D 10 A8 */	lwz r3, 0x10a8(r29)
/* 80BCE558  83 83 00 00 */	lwz r28, 0(r3)
/* 80BCE55C  3B 7C 04 A4 */	addi r27, r28, 0x4a4
/* 80BCE560  38 61 00 68 */	addi r3, r1, 0x68
/* 80BCE564  7F 84 E3 78 */	mr r4, r28
/* 80BCE568  7F 65 DB 78 */	mr r5, r27
/* 80BCE56C  4B 6A 0D 3C */	b __ct__8cM3dGLinFRC4cXyzRC4cXyz
/* 80BCE570  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BCE574  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BCE578  C0 7C 00 00 */	lfs f3, 0(r28)
/* 80BCE57C  C0 9C 00 08 */	lfs f4, 8(r28)
/* 80BCE580  C0 BB 00 00 */	lfs f5, 0(r27)
/* 80BCE584  C0 DB 00 08 */	lfs f6, 8(r27)
/* 80BCE588  38 7D 07 34 */	addi r3, r29, 0x734
/* 80BCE58C  38 9D 07 3C */	addi r4, r29, 0x73c
/* 80BCE590  38 A1 00 10 */	addi r5, r1, 0x10
/* 80BCE594  4B 69 A0 98 */	b cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 80BCE598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCE59C  41 82 02 E4 */	beq lbl_80BCE880
/* 80BCE5A0  3B DC 00 0C */	addi r30, r28, 0xc
/* 80BCE5A4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCE5A8  38 00 00 62 */	li r0, 0x62
/* 80BCE5AC  7C 09 03 A6 */	mtctr r0
lbl_80BCE5B0:
/* 80BCE5B0  C0 5D 07 34 */	lfs f2, 0x734(r29)
/* 80BCE5B4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BCE5B8  EC 42 08 28 */	fsubs f2, f2, f1
/* 80BCE5BC  C0 3D 07 28 */	lfs f1, 0x728(r29)
/* 80BCE5C0  EC 62 00 72 */	fmuls f3, f2, f1
/* 80BCE5C4  C0 5D 07 3C */	lfs f2, 0x73c(r29)
/* 80BCE5C8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BCE5CC  EC 42 08 28 */	fsubs f2, f2, f1
/* 80BCE5D0  C0 3D 07 30 */	lfs f1, 0x730(r29)
/* 80BCE5D4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80BCE5D8  EC 23 08 2A */	fadds f1, f3, f1
/* 80BCE5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCE5E0  41 80 00 0C */	blt lbl_80BCE5EC
/* 80BCE5E4  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BCE5E8  42 00 FF C8 */	bdnz lbl_80BCE5B0
lbl_80BCE5EC:
/* 80BCE5EC  C0 5D 07 3C */	lfs f2, 0x73c(r29)
/* 80BCE5F0  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 80BCE5F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BCE5F8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BCE5FC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BCE600  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80BCE604  C0 5E FF FC */	lfs f2, -4(r30)
/* 80BCE608  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 80BCE60C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BCE610  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80BCE614  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80BCE618  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BCE61C  38 81 00 38 */	addi r4, r1, 0x38
/* 80BCE620  4B 77 8D 7C */	b PSVECSquareDistance
/* 80BCE624  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCE628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCE62C  40 81 00 58 */	ble lbl_80BCE684
/* 80BCE630  FC 00 08 34 */	frsqrte f0, f1
/* 80BCE634  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCE638  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE63C  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCE640  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE644  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE648  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE64C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE650  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE654  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE658  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE65C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE660  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE664  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE668  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE66C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE670  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE674  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE678  FF E1 00 32 */	fmul f31, f1, f0
/* 80BCE67C  FF E0 F8 18 */	frsp f31, f31
/* 80BCE680  48 00 00 90 */	b lbl_80BCE710
lbl_80BCE684:
/* 80BCE684  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCE688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCE68C  40 80 00 10 */	bge lbl_80BCE69C
/* 80BCE690  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCE694  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BCE698  48 00 00 78 */	b lbl_80BCE710
lbl_80BCE69C:
/* 80BCE69C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BCE6A0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BCE6A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCE6A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCE6AC  7C 03 00 00 */	cmpw r3, r0
/* 80BCE6B0  41 82 00 14 */	beq lbl_80BCE6C4
/* 80BCE6B4  40 80 00 40 */	bge lbl_80BCE6F4
/* 80BCE6B8  2C 03 00 00 */	cmpwi r3, 0
/* 80BCE6BC  41 82 00 20 */	beq lbl_80BCE6DC
/* 80BCE6C0  48 00 00 34 */	b lbl_80BCE6F4
lbl_80BCE6C4:
/* 80BCE6C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCE6C8  41 82 00 0C */	beq lbl_80BCE6D4
/* 80BCE6CC  38 00 00 01 */	li r0, 1
/* 80BCE6D0  48 00 00 28 */	b lbl_80BCE6F8
lbl_80BCE6D4:
/* 80BCE6D4  38 00 00 02 */	li r0, 2
/* 80BCE6D8  48 00 00 20 */	b lbl_80BCE6F8
lbl_80BCE6DC:
/* 80BCE6DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCE6E0  41 82 00 0C */	beq lbl_80BCE6EC
/* 80BCE6E4  38 00 00 05 */	li r0, 5
/* 80BCE6E8  48 00 00 10 */	b lbl_80BCE6F8
lbl_80BCE6EC:
/* 80BCE6EC  38 00 00 03 */	li r0, 3
/* 80BCE6F0  48 00 00 08 */	b lbl_80BCE6F8
lbl_80BCE6F4:
/* 80BCE6F4  38 00 00 04 */	li r0, 4
lbl_80BCE6F8:
/* 80BCE6F8  2C 00 00 01 */	cmpwi r0, 1
/* 80BCE6FC  40 82 00 10 */	bne lbl_80BCE70C
/* 80BCE700  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCE704  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BCE708  48 00 00 08 */	b lbl_80BCE710
lbl_80BCE70C:
/* 80BCE70C  FF E0 08 90 */	fmr f31, f1
lbl_80BCE710:
/* 80BCE710  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80BCE714  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BCE718  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BCE71C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BCE720  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BCE724  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BCE728  C0 5E FF FC */	lfs f2, -4(r30)
/* 80BCE72C  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 80BCE730  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BCE734  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BCE738  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80BCE73C  38 61 00 14 */	addi r3, r1, 0x14
/* 80BCE740  38 81 00 20 */	addi r4, r1, 0x20
/* 80BCE744  4B 77 8C 58 */	b PSVECSquareDistance
/* 80BCE748  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCE74C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCE750  40 81 00 58 */	ble lbl_80BCE7A8
/* 80BCE754  FC 00 08 34 */	frsqrte f0, f1
/* 80BCE758  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCE75C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE760  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCE764  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE768  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE76C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE770  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE774  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE778  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE77C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE780  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE784  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE788  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE78C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE790  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE794  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE798  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE79C  FF C1 00 32 */	fmul f30, f1, f0
/* 80BCE7A0  FF C0 F0 18 */	frsp f30, f30
/* 80BCE7A4  48 00 00 90 */	b lbl_80BCE834
lbl_80BCE7A8:
/* 80BCE7A8  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCE7AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCE7B0  40 80 00 10 */	bge lbl_80BCE7C0
/* 80BCE7B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCE7B8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80BCE7BC  48 00 00 78 */	b lbl_80BCE834
lbl_80BCE7C0:
/* 80BCE7C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BCE7C4  80 81 00 08 */	lwz r4, 8(r1)
/* 80BCE7C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCE7CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCE7D0  7C 03 00 00 */	cmpw r3, r0
/* 80BCE7D4  41 82 00 14 */	beq lbl_80BCE7E8
/* 80BCE7D8  40 80 00 40 */	bge lbl_80BCE818
/* 80BCE7DC  2C 03 00 00 */	cmpwi r3, 0
/* 80BCE7E0  41 82 00 20 */	beq lbl_80BCE800
/* 80BCE7E4  48 00 00 34 */	b lbl_80BCE818
lbl_80BCE7E8:
/* 80BCE7E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCE7EC  41 82 00 0C */	beq lbl_80BCE7F8
/* 80BCE7F0  38 00 00 01 */	li r0, 1
/* 80BCE7F4  48 00 00 28 */	b lbl_80BCE81C
lbl_80BCE7F8:
/* 80BCE7F8  38 00 00 02 */	li r0, 2
/* 80BCE7FC  48 00 00 20 */	b lbl_80BCE81C
lbl_80BCE800:
/* 80BCE800  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCE804  41 82 00 0C */	beq lbl_80BCE810
/* 80BCE808  38 00 00 05 */	li r0, 5
/* 80BCE80C  48 00 00 10 */	b lbl_80BCE81C
lbl_80BCE810:
/* 80BCE810  38 00 00 03 */	li r0, 3
/* 80BCE814  48 00 00 08 */	b lbl_80BCE81C
lbl_80BCE818:
/* 80BCE818  38 00 00 04 */	li r0, 4
lbl_80BCE81C:
/* 80BCE81C  2C 00 00 01 */	cmpwi r0, 1
/* 80BCE820  40 82 00 10 */	bne lbl_80BCE830
/* 80BCE824  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCE828  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80BCE82C  48 00 00 08 */	b lbl_80BCE834
lbl_80BCE830:
/* 80BCE830  FF C0 08 90 */	fmr f30, f1
lbl_80BCE834:
/* 80BCE834  38 61 00 5C */	addi r3, r1, 0x5c
/* 80BCE838  7F C4 F3 78 */	mr r4, r30
/* 80BCE83C  38 BE FF F4 */	addi r5, r30, -12
/* 80BCE840  4B 69 82 F4 */	b __mi__4cXyzCFRC3Vec
/* 80BCE844  38 61 00 50 */	addi r3, r1, 0x50
/* 80BCE848  38 81 00 5C */	addi r4, r1, 0x5c
/* 80BCE84C  EC 3F F0 24 */	fdivs f1, f31, f30
/* 80BCE850  4B 69 83 34 */	b __ml__4cXyzCFf
/* 80BCE854  38 61 00 44 */	addi r3, r1, 0x44
/* 80BCE858  38 9E FF F4 */	addi r4, r30, -12
/* 80BCE85C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80BCE860  4B 69 82 84 */	b __pl__4cXyzCFRC3Vec
/* 80BCE864  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BCE868  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 80BCE86C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BCE870  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 80BCE874  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80BCE878  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 80BCE87C  48 00 00 5C */	b lbl_80BCE8D8
lbl_80BCE880:
/* 80BCE880  7F 63 DB 78 */	mr r3, r27
/* 80BCE884  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BCE888  4B 77 8B 14 */	b PSVECSquareDistance
/* 80BCE88C  FF E0 08 90 */	fmr f31, f1
/* 80BCE890  7F 83 E3 78 */	mr r3, r28
/* 80BCE894  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BCE898  4B 77 8B 04 */	b PSVECSquareDistance
/* 80BCE89C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BCE8A0  40 81 00 20 */	ble lbl_80BCE8C0
/* 80BCE8A4  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BCE8A8  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 80BCE8AC  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80BCE8B0  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 80BCE8B4  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80BCE8B8  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 80BCE8BC  48 00 00 1C */	b lbl_80BCE8D8
lbl_80BCE8C0:
/* 80BCE8C0  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BCE8C4  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 80BCE8C8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BCE8CC  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 80BCE8D0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BCE8D4  D0 1D 07 3C */	stfs f0, 0x73c(r29)
lbl_80BCE8D8:
/* 80BCE8D8  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 80BCE8DC  38 9D 07 34 */	addi r4, r29, 0x734
/* 80BCE8E0  4B 6A 0D 68 */	b SetC__8cM3dGSphFRC4cXyz
/* 80BCE8E4  88 7D 07 16 */	lbz r3, 0x716(r29)
/* 80BCE8E8  28 03 00 00 */	cmplwi r3, 0
/* 80BCE8EC  41 82 00 10 */	beq lbl_80BCE8FC
/* 80BCE8F0  38 03 FF FF */	addi r0, r3, -1
/* 80BCE8F4  98 1D 07 16 */	stb r0, 0x716(r29)
/* 80BCE8F8  48 00 00 18 */	b lbl_80BCE910
lbl_80BCE8FC:
/* 80BCE8FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCE900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCE904  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BCE908  38 9D 05 AC */	addi r4, r29, 0x5ac
/* 80BCE90C  4B 69 62 9C */	b Set__4cCcSFP8cCcD_Obj
lbl_80BCE910:
/* 80BCE910  3C 60 80 BD */	lis r3, __vt__8cM3dGLin@ha
/* 80BCE914  38 03 EB D0 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80BCE918  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BCE91C  48 00 00 0C */	b lbl_80BCE928
lbl_80BCE920:
/* 80BCE920  7F A3 EB 78 */	mr r3, r29
/* 80BCE924  4B FF F0 C9 */	bl setRideRopePos__12daObjCrope_cFv
lbl_80BCE928:
/* 80BCE928  38 60 00 01 */	li r3, 1
/* 80BCE92C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80BCE930  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80BCE934  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80BCE938  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80BCE93C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BCE940  4B 79 38 E0 */	b _restgpr_27
/* 80BCE944  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80BCE948  7C 08 03 A6 */	mtlr r0
/* 80BCE94C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80BCE950  4E 80 00 20 */	blr 
