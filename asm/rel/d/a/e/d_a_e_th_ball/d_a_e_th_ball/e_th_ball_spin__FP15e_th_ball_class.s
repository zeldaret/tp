lbl_807B615C:
/* 807B615C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807B6160  7C 08 02 A6 */	mflr r0
/* 807B6164  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B6168  39 61 00 50 */	addi r11, r1, 0x50
/* 807B616C  4B BA C0 70 */	b _savegpr_29
/* 807B6170  7C 7E 1B 78 */	mr r30, r3
/* 807B6174  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B6178  3B E3 7E B8 */	addi r31, r3, lit_3746@l
/* 807B617C  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 807B6180  2C 00 00 00 */	cmpwi r0, 0
/* 807B6184  41 82 00 14 */	beq lbl_807B6198
/* 807B6188  41 80 03 F4 */	blt lbl_807B657C
/* 807B618C  2C 00 00 04 */	cmpwi r0, 4
/* 807B6190  40 80 03 EC */	bge lbl_807B657C
/* 807B6194  48 00 00 24 */	b lbl_807B61B8
lbl_807B6198:
/* 807B6198  38 00 00 01 */	li r0, 1
/* 807B619C  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 807B61A0  38 00 00 1E */	li r0, 0x1e
/* 807B61A4  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 807B61A8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807B61AC  D0 1E 15 C0 */	stfs f0, 0x15c0(r30)
/* 807B61B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B61B4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807B61B8:
/* 807B61B8  38 61 00 14 */	addi r3, r1, 0x14
/* 807B61BC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B61C0  3C A0 80 7C */	lis r5, master@ha
/* 807B61C4  38 A5 80 E0 */	addi r5, r5, master@l
/* 807B61C8  80 A5 00 00 */	lwz r5, 0(r5)
/* 807B61CC  38 A5 06 C0 */	addi r5, r5, 0x6c0
/* 807B61D0  4B AB 09 64 */	b __mi__4cXyzCFRC3Vec
/* 807B61D4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 807B61D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807B61DC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B61E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807B61E4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 807B61E8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 807B61EC  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 807B61F0  2C 00 00 00 */	cmpwi r0, 0
/* 807B61F4  41 82 00 7C */	beq lbl_807B6270
/* 807B61F8  4B AB 14 7C */	b cM_atan2s__Fff
/* 807B61FC  7C 64 1B 78 */	mr r4, r3
/* 807B6200  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807B6204  38 A0 00 01 */	li r5, 1
/* 807B6208  38 C0 0C 00 */	li r6, 0xc00
/* 807B620C  4B AB A3 FC */	b cLib_addCalcAngleS2__FPssss
/* 807B6210  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807B6214  EC 20 00 32 */	fmuls f1, f0, f0
/* 807B6218  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807B621C  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B6220  EC 41 00 2A */	fadds f2, f1, f0
/* 807B6224  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B6228  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807B622C  40 81 00 0C */	ble lbl_807B6238
/* 807B6230  FC 00 10 34 */	frsqrte f0, f2
/* 807B6234  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B6238:
/* 807B6238  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 807B623C  4B AB 14 38 */	b cM_atan2s__Fff
/* 807B6240  7C 03 00 D0 */	neg r0, r3
/* 807B6244  7C 04 07 34 */	extsh r4, r0
/* 807B6248  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807B624C  38 A0 00 01 */	li r5, 1
/* 807B6250  38 C0 0C 00 */	li r6, 0xc00
/* 807B6254  4B AB A3 B4 */	b cLib_addCalcAngleS2__FPssss
/* 807B6258  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 807B625C  2C 00 00 0F */	cmpwi r0, 0xf
/* 807B6260  40 82 00 58 */	bne lbl_807B62B8
/* 807B6264  38 00 09 C4 */	li r0, 0x9c4
/* 807B6268  B0 1E 15 C4 */	sth r0, 0x15c4(r30)
/* 807B626C  48 00 00 4C */	b lbl_807B62B8
lbl_807B6270:
/* 807B6270  4B AB 14 04 */	b cM_atan2s__Fff
/* 807B6274  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 807B6278  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807B627C  EC 20 00 32 */	fmuls f1, f0, f0
/* 807B6280  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807B6284  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B6288  EC 41 00 2A */	fadds f2, f1, f0
/* 807B628C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B6290  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807B6294  40 81 00 0C */	ble lbl_807B62A0
/* 807B6298  FC 00 10 34 */	frsqrte f0, f2
/* 807B629C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B62A0:
/* 807B62A0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 807B62A4  4B AB 13 D0 */	b cM_atan2s__Fff
/* 807B62A8  7C 03 00 D0 */	neg r0, r3
/* 807B62AC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807B62B0  38 00 00 01 */	li r0, 1
/* 807B62B4  98 1E 1A 8C */	stb r0, 0x1a8c(r30)
lbl_807B62B8:
/* 807B62B8  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 807B62BC  A8 1E 15 C4 */	lha r0, 0x15c4(r30)
/* 807B62C0  7C 03 02 14 */	add r0, r3, r0
/* 807B62C4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807B62C8  38 7E 15 C4 */	addi r3, r30, 0x15c4
/* 807B62CC  38 80 00 00 */	li r4, 0
/* 807B62D0  38 A0 00 01 */	li r5, 1
/* 807B62D4  38 C0 00 19 */	li r6, 0x19
/* 807B62D8  4B AB A3 30 */	b cLib_addCalcAngleS2__FPssss
/* 807B62DC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807B62E0  38 80 00 00 */	li r4, 0
/* 807B62E4  38 A0 00 01 */	li r5, 1
/* 807B62E8  38 C0 08 00 */	li r6, 0x800
/* 807B62EC  4B AB A3 1C */	b cLib_addCalcAngleS2__FPssss
/* 807B62F0  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 807B62F4  38 80 00 00 */	li r4, 0
/* 807B62F8  38 A0 00 01 */	li r5, 1
/* 807B62FC  38 C0 08 00 */	li r6, 0x800
/* 807B6300  4B AB A3 08 */	b cLib_addCalcAngleS2__FPssss
/* 807B6304  3C 60 80 7C */	lis r3, master@ha
/* 807B6308  80 83 80 E0 */	lwz r4, master@l(r3)
/* 807B630C  88 64 06 8A */	lbz r3, 0x68a(r4)
/* 807B6310  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 807B6314  41 82 00 18 */	beq lbl_807B632C
/* 807B6318  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 807B631C  98 04 06 8A */	stb r0, 0x68a(r4)
/* 807B6320  A8 7E 06 50 */	lha r3, 0x650(r30)
/* 807B6324  38 03 00 01 */	addi r0, r3, 1
/* 807B6328  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_807B632C:
/* 807B632C  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 807B6330  2C 00 00 02 */	cmpwi r0, 2
/* 807B6334  40 82 00 20 */	bne lbl_807B6354
/* 807B6338  3C 60 80 7C */	lis r3, master@ha
/* 807B633C  38 63 80 E0 */	addi r3, r3, master@l
/* 807B6340  80 63 00 00 */	lwz r3, 0(r3)
/* 807B6344  80 63 05 CC */	lwz r3, 0x5cc(r3)
/* 807B6348  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807B634C  D0 1E 15 C0 */	stfs f0, 0x15c0(r30)
/* 807B6350  48 00 00 3C */	b lbl_807B638C
lbl_807B6354:
/* 807B6354  C0 3E 15 C0 */	lfs f1, 0x15c0(r30)
/* 807B6358  3C 60 80 7C */	lis r3, master@ha
/* 807B635C  38 63 80 E0 */	addi r3, r3, master@l
/* 807B6360  80 63 00 00 */	lwz r3, 0(r3)
/* 807B6364  C0 03 05 D8 */	lfs f0, 0x5d8(r3)
/* 807B6368  EC 01 00 2A */	fadds f0, f1, f0
/* 807B636C  D0 1E 15 C0 */	stfs f0, 0x15c0(r30)
/* 807B6370  C0 3E 15 C0 */	lfs f1, 0x15c0(r30)
/* 807B6374  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807B6378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B637C  4C 41 13 82 */	cror 2, 1, 2
/* 807B6380  40 82 00 0C */	bne lbl_807B638C
/* 807B6384  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B6388  D0 1E 15 C0 */	stfs f0, 0x15c0(r30)
lbl_807B638C:
/* 807B638C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B6390  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B6394  80 63 00 00 */	lwz r3, 0(r3)
/* 807B6398  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 807B639C  C0 3E 15 C0 */	lfs f1, 0x15c0(r30)
/* 807B63A0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807B63A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 807B63A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 807B63AC  FC 00 00 1E */	fctiwz f0, f0
/* 807B63B0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807B63B4  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 807B63B8  3C 80 80 7C */	lis r4, master@ha
/* 807B63BC  38 84 80 E0 */	addi r4, r4, master@l
/* 807B63C0  80 84 00 00 */	lwz r4, 0(r4)
/* 807B63C4  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 807B63C8  38 04 3A 98 */	addi r0, r4, 0x3a98
/* 807B63CC  7C 05 02 14 */	add r0, r5, r0
/* 807B63D0  7C 04 07 34 */	extsh r4, r0
/* 807B63D4  4B 85 60 08 */	b mDoMtx_YrotS__FPA4_fs
/* 807B63D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B63DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807B63E0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807B63E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807B63E8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 807B63EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807B63F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B63F4  38 81 00 20 */	addi r4, r1, 0x20
/* 807B63F8  4B AB AA F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B63FC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807B6400  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807B6404  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807B6408  FC 60 10 90 */	fmr f3, f2
/* 807B640C  4B AB 96 30 */	b cLib_addCalc2__FPffff
/* 807B6410  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807B6414  3C 80 80 7C */	lis r4, master@ha
/* 807B6418  38 84 80 E0 */	addi r4, r4, master@l
/* 807B641C  80 84 00 00 */	lwz r4, 0(r4)
/* 807B6420  C0 24 06 C0 */	lfs f1, 0x6c0(r4)
/* 807B6424  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807B6428  EC 21 00 2A */	fadds f1, f1, f0
/* 807B642C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 807B6430  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 807B6434  4B AB 96 08 */	b cLib_addCalc2__FPffff
/* 807B6438  3C 60 80 7C */	lis r3, master@ha
/* 807B643C  80 83 80 E0 */	lwz r4, master@l(r3)
/* 807B6440  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807B6444  C0 24 06 C4 */	lfs f1, 0x6c4(r4)
/* 807B6448  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807B644C  EC 21 00 2A */	fadds f1, f1, f0
/* 807B6450  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 807B6454  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 807B6458  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807B645C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B6460  C0 04 05 D8 */	lfs f0, 0x5d8(r4)
/* 807B6464  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B6468  4B AB 95 D4 */	b cLib_addCalc2__FPffff
/* 807B646C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807B6470  3C 80 80 7C */	lis r4, master@ha
/* 807B6474  38 84 80 E0 */	addi r4, r4, master@l
/* 807B6478  80 84 00 00 */	lwz r4, 0(r4)
/* 807B647C  C0 24 06 C8 */	lfs f1, 0x6c8(r4)
/* 807B6480  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807B6484  EC 21 00 2A */	fadds f1, f1, f0
/* 807B6488  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 807B648C  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 807B6490  4B AB 95 AC */	b cLib_addCalc2__FPffff
/* 807B6494  3C 60 80 7C */	lis r3, master@ha
/* 807B6498  80 83 80 E0 */	lwz r4, master@l(r3)
/* 807B649C  88 64 06 8A */	lbz r3, 0x68a(r4)
/* 807B64A0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 807B64A4  41 82 00 D8 */	beq lbl_807B657C
/* 807B64A8  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 807B64AC  98 04 06 8A */	stb r0, 0x68a(r4)
/* 807B64B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B64B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B64B8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 807B64BC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 807B64C0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807B64C4  38 61 00 08 */	addi r3, r1, 8
/* 807B64C8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807B64CC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807B64D0  4B AB 06 64 */	b __mi__4cXyzCFRC3Vec
/* 807B64D4  C0 21 00 08 */	lfs f1, 8(r1)
/* 807B64D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807B64DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B64E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807B64E4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807B64E8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 807B64EC  4B AB 11 88 */	b cM_atan2s__Fff
/* 807B64F0  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 807B64F4  3C 60 80 7C */	lis r3, master@ha
/* 807B64F8  38 63 80 E0 */	addi r3, r3, master@l
/* 807B64FC  80 63 00 00 */	lwz r3, 0(r3)
/* 807B6500  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 807B6504  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807B6508  7C 03 00 50 */	subf r0, r3, r0
/* 807B650C  7C 00 07 34 */	extsh r0, r0
/* 807B6510  2C 00 30 00 */	cmpwi r0, 0x3000
/* 807B6514  40 81 00 10 */	ble lbl_807B6524
/* 807B6518  38 03 30 00 */	addi r0, r3, 0x3000
/* 807B651C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807B6520  48 00 00 14 */	b lbl_807B6534
lbl_807B6524:
/* 807B6524  2C 00 D0 00 */	cmpwi r0, -12288
/* 807B6528  40 80 00 0C */	bge lbl_807B6534
/* 807B652C  38 03 D0 00 */	addi r0, r3, -12288
/* 807B6530  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_807B6534:
/* 807B6534  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807B6538  3C 60 80 7C */	lis r3, master@ha
/* 807B653C  38 63 80 E0 */	addi r3, r3, master@l
/* 807B6540  80 63 00 00 */	lwz r3, 0(r3)
/* 807B6544  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807B6548  EC 21 00 28 */	fsubs f1, f1, f0
/* 807B654C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807B6550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6554  40 81 00 10 */	ble lbl_807B6564
/* 807B6558  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807B655C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807B6560  48 00 00 0C */	b lbl_807B656C
lbl_807B6564:
/* 807B6564  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807B6568  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807B656C:
/* 807B656C  38 00 00 02 */	li r0, 2
/* 807B6570  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 807B6574  38 00 00 00 */	li r0, 0
/* 807B6578  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_807B657C:
/* 807B657C  39 61 00 50 */	addi r11, r1, 0x50
/* 807B6580  4B BA BC A8 */	b _restgpr_29
/* 807B6584  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807B6588  7C 08 03 A6 */	mtlr r0
/* 807B658C  38 21 00 50 */	addi r1, r1, 0x50
/* 807B6590  4E 80 00 20 */	blr 
