lbl_804AE778:
/* 804AE778  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804AE77C  7C 08 02 A6 */	mflr r0
/* 804AE780  90 01 00 54 */	stw r0, 0x54(r1)
/* 804AE784  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804AE788  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804AE78C  39 61 00 40 */	addi r11, r1, 0x40
/* 804AE790  4B EB 3A 4C */	b _savegpr_29
/* 804AE794  7C 7D 1B 78 */	mr r29, r3
/* 804AE798  FF E0 08 90 */	fmr f31, f1
/* 804AE79C  7C 9E 23 78 */	mr r30, r4
/* 804AE7A0  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804AE7A4  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804AE7A8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 804AE7AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE7B0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 804AE7B4  4B DC 12 CC */	b cLib_addCalc0__FPfff
/* 804AE7B8  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 804AE7BC  7C 00 07 75 */	extsb. r0, r0
/* 804AE7C0  40 82 01 20 */	bne lbl_804AE8E0
/* 804AE7C4  80 1D 14 F0 */	lwz r0, 0x14f0(r29)
/* 804AE7C8  2C 00 00 00 */	cmpwi r0, 0
/* 804AE7CC  41 82 00 14 */	beq lbl_804AE7E0
/* 804AE7D0  C0 1D 14 F4 */	lfs f0, 0x14f4(r29)
/* 804AE7D4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AE7D8  38 00 00 00 */	li r0, 0
/* 804AE7DC  B0 1D 0F FE */	sth r0, 0xffe(r29)
lbl_804AE7E0:
/* 804AE7E0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804AE7E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AE7E8  4C 41 13 82 */	cror 2, 1, 2
/* 804AE7EC  40 82 00 5C */	bne lbl_804AE848
/* 804AE7F0  88 1D 10 0E */	lbz r0, 0x100e(r29)
/* 804AE7F4  7C 00 07 75 */	extsb. r0, r0
/* 804AE7F8  40 82 00 50 */	bne lbl_804AE848
/* 804AE7FC  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 804AE800  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804AE804  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AE808  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 804AE80C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804AE810  FC 00 00 1E */	fctiwz f0, f0
/* 804AE814  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804AE818  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804AE81C  A8 1D 0F FE */	lha r0, 0xffe(r29)
/* 804AE820  2C 00 00 00 */	cmpwi r0, 0
/* 804AE824  40 81 00 10 */	ble lbl_804AE834
/* 804AE828  7C 03 00 D0 */	neg r0, r3
/* 804AE82C  B0 1D 0F FE */	sth r0, 0xffe(r29)
/* 804AE830  48 00 00 08 */	b lbl_804AE838
lbl_804AE834:
/* 804AE834  B0 7D 0F FE */	sth r3, 0xffe(r29)
lbl_804AE838:
/* 804AE838  38 00 00 00 */	li r0, 0
/* 804AE83C  B0 1D 10 00 */	sth r0, 0x1000(r29)
/* 804AE840  38 00 00 03 */	li r0, 3
/* 804AE844  98 1D 10 0E */	stb r0, 0x100e(r29)
lbl_804AE848:
/* 804AE848  A8 1D 0F F0 */	lha r0, 0xff0(r29)
/* 804AE84C  2C 00 00 00 */	cmpwi r0, 0
/* 804AE850  40 82 00 2C */	bne lbl_804AE87C
/* 804AE854  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE858  4B DB 90 FC */	b cM_rndF__Ff
/* 804AE85C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804AE860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE864  40 80 00 10 */	bge lbl_804AE874
/* 804AE868  38 00 70 00 */	li r0, 0x7000
/* 804AE86C  B0 1D 0F F0 */	sth r0, 0xff0(r29)
/* 804AE870  48 00 00 0C */	b lbl_804AE87C
lbl_804AE874:
/* 804AE874  38 00 90 00 */	li r0, -28672
/* 804AE878  B0 1D 0F F0 */	sth r0, 0xff0(r29)
lbl_804AE87C:
/* 804AE87C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804AE880  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804AE884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE888  40 81 00 4C */	ble lbl_804AE8D4
/* 804AE88C  A8 1D 05 78 */	lha r0, 0x578(r29)
/* 804AE890  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 804AE894  40 82 00 40 */	bne lbl_804AE8D4
/* 804AE898  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE89C  4B DB 90 B8 */	b cM_rndF__Ff
/* 804AE8A0  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 804AE8A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE8A8  40 80 00 2C */	bge lbl_804AE8D4
/* 804AE8AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE8B0  4B DB 90 A4 */	b cM_rndF__Ff
/* 804AE8B4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804AE8B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE8BC  40 80 00 10 */	bge lbl_804AE8CC
/* 804AE8C0  38 00 70 00 */	li r0, 0x7000
/* 804AE8C4  B0 1D 0F F0 */	sth r0, 0xff0(r29)
/* 804AE8C8  48 00 00 0C */	b lbl_804AE8D4
lbl_804AE8CC:
/* 804AE8CC  38 00 90 00 */	li r0, -28672
/* 804AE8D0  B0 1D 0F F0 */	sth r0, 0xff0(r29)
lbl_804AE8D4:
/* 804AE8D4  A8 1D 0F F0 */	lha r0, 0xff0(r29)
/* 804AE8D8  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 804AE8DC  48 00 01 48 */	b lbl_804AEA24
lbl_804AE8E0:
/* 804AE8E0  38 60 00 01 */	li r3, 1
/* 804AE8E4  98 7D 10 08 */	stb r3, 0x1008(r29)
/* 804AE8E8  80 1D 14 F0 */	lwz r0, 0x14f0(r29)
/* 804AE8EC  2C 00 00 00 */	cmpwi r0, 0
/* 804AE8F0  41 82 00 18 */	beq lbl_804AE908
/* 804AE8F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804AE8F8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AE8FC  98 7D 0F 6E */	stb r3, 0xf6e(r29)
/* 804AE900  38 00 00 00 */	li r0, 0
/* 804AE904  B0 1D 0F FE */	sth r0, 0xffe(r29)
lbl_804AE908:
/* 804AE908  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804AE90C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AE910  4C 41 13 82 */	cror 2, 1, 2
/* 804AE914  40 82 00 5C */	bne lbl_804AE970
/* 804AE918  88 1D 10 0E */	lbz r0, 0x100e(r29)
/* 804AE91C  7C 00 07 75 */	extsb. r0, r0
/* 804AE920  40 82 00 50 */	bne lbl_804AE970
/* 804AE924  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 804AE928  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804AE92C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AE930  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 804AE934  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804AE938  FC 00 00 1E */	fctiwz f0, f0
/* 804AE93C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804AE940  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804AE944  A8 1D 0F FE */	lha r0, 0xffe(r29)
/* 804AE948  2C 00 00 00 */	cmpwi r0, 0
/* 804AE94C  40 81 00 10 */	ble lbl_804AE95C
/* 804AE950  7C 03 00 D0 */	neg r0, r3
/* 804AE954  B0 1D 0F FE */	sth r0, 0xffe(r29)
/* 804AE958  48 00 00 08 */	b lbl_804AE960
lbl_804AE95C:
/* 804AE95C  B0 7D 0F FE */	sth r3, 0xffe(r29)
lbl_804AE960:
/* 804AE960  38 00 00 00 */	li r0, 0
/* 804AE964  B0 1D 10 00 */	sth r0, 0x1000(r29)
/* 804AE968  38 00 00 03 */	li r0, 3
/* 804AE96C  98 1D 10 0E */	stb r0, 0x100e(r29)
lbl_804AE970:
/* 804AE970  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804AE974  FC 00 02 10 */	fabs f0, f0
/* 804AE978  FC 00 00 18 */	frsp f0, f0
/* 804AE97C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE980  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AE984  41 81 00 18 */	bgt lbl_804AE99C
/* 804AE988  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804AE98C  FC 00 02 10 */	fabs f0, f0
/* 804AE990  FC 00 00 18 */	frsp f0, f0
/* 804AE994  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AE998  40 81 00 8C */	ble lbl_804AEA24
lbl_804AE99C:
/* 804AE99C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804AE9A0  C0 5F 01 94 */	lfs f2, 0x194(r31)
/* 804AE9A4  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804AE9A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AE9AC  EC 01 00 2A */	fadds f0, f1, f0
/* 804AE9B0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 804AE9B4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804AE9B8  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804AE9BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AE9C0  EC 01 00 2A */	fadds f0, f1, f0
/* 804AE9C4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 804AE9C8  38 61 00 08 */	addi r3, r1, 8
/* 804AE9CC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804AE9D0  38 BE 00 10 */	addi r5, r30, 0x10
/* 804AE9D4  4B DB 81 60 */	b __mi__4cXyzCFRC3Vec
/* 804AE9D8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804AE9DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804AE9E0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804AE9E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804AE9E8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804AE9EC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804AE9F0  4B DB 8C 84 */	b cM_atan2s__Fff
/* 804AE9F4  7C 63 07 34 */	extsh r3, r3
/* 804AE9F8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804AE9FC  7C 60 18 50 */	subf r3, r0, r3
/* 804AEA00  7C 60 07 35 */	extsh. r0, r3
/* 804AEA04  40 80 00 14 */	bge lbl_804AEA18
/* 804AEA08  A8 7E 00 38 */	lha r3, 0x38(r30)
/* 804AEA0C  38 03 00 C8 */	addi r0, r3, 0xc8
/* 804AEA10  B0 1E 00 38 */	sth r0, 0x38(r30)
/* 804AEA14  48 00 00 10 */	b lbl_804AEA24
lbl_804AEA18:
/* 804AEA18  A8 7E 00 38 */	lha r3, 0x38(r30)
/* 804AEA1C  38 03 FF 38 */	addi r0, r3, -200
/* 804AEA20  B0 1E 00 38 */	sth r0, 0x38(r30)
lbl_804AEA24:
/* 804AEA24  38 7D 0F FC */	addi r3, r29, 0xffc
/* 804AEA28  A8 9D 0F FE */	lha r4, 0xffe(r29)
/* 804AEA2C  38 A0 00 02 */	li r5, 2
/* 804AEA30  38 C0 2E E0 */	li r6, 0x2ee0
/* 804AEA34  4B DC 1B D4 */	b cLib_addCalcAngleS2__FPssss
/* 804AEA38  38 7D 10 00 */	addi r3, r29, 0x1000
/* 804AEA3C  38 80 00 00 */	li r4, 0
/* 804AEA40  38 A0 00 01 */	li r5, 1
/* 804AEA44  38 C0 03 E8 */	li r6, 0x3e8
/* 804AEA48  4B DC 1B C0 */	b cLib_addCalcAngleS2__FPssss
/* 804AEA4C  38 7D 05 9C */	addi r3, r29, 0x59c
/* 804AEA50  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 804AEA54  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804AEA58  FC 60 10 90 */	fmr f3, f2
/* 804AEA5C  4B DC 0F E0 */	b cLib_addCalc2__FPffff
/* 804AEA60  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804AEA64  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804AEA68  39 61 00 40 */	addi r11, r1, 0x40
/* 804AEA6C  4B EB 37 BC */	b _restgpr_29
/* 804AEA70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804AEA74  7C 08 03 A6 */	mtlr r0
/* 804AEA78  38 21 00 50 */	addi r1, r1, 0x50
/* 804AEA7C  4E 80 00 20 */	blr 
