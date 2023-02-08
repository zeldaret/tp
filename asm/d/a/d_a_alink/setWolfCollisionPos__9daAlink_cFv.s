lbl_800AB878:
/* 800AB878  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800AB87C  7C 08 02 A6 */	mflr r0
/* 800AB880  90 01 00 84 */	stw r0, 0x84(r1)
/* 800AB884  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800AB888  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800AB88C  39 61 00 70 */	addi r11, r1, 0x70
/* 800AB890  48 2B 69 45 */	bl _savegpr_27
/* 800AB894  7C 7F 1B 78 */	mr r31, r3
/* 800AB898  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800AB89C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800AB8A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800AB8A4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800AB8A8  3C 80 80 39 */	lis r4, localHead@ha /* 0x80392034@ha */
/* 800AB8AC  38 84 20 34 */	addi r4, r4, localHead@l /* 0x80392034@l */
/* 800AB8B0  38 A1 00 44 */	addi r5, r1, 0x44
/* 800AB8B4  48 29 B4 B9 */	bl PSMTXMultVec
/* 800AB8B8  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 800AB8BC  38 81 00 44 */	addi r4, r1, 0x44
/* 800AB8C0  4B FD 92 05 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 800AB8C4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800AB8C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800AB8CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800AB8D0  C0 A3 03 0C */	lfs f5, 0x30c(r3)
/* 800AB8D4  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 800AB8D8  C0 03 03 1C */	lfs f0, 0x31c(r3)
/* 800AB8DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800AB8E0  C0 83 03 2C */	lfs f4, 0x32c(r3)
/* 800AB8E4  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 800AB8E8  C0 63 03 FC */	lfs f3, 0x3fc(r3)
/* 800AB8EC  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 800AB8F0  C0 03 04 0C */	lfs f0, 0x40c(r3)
/* 800AB8F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800AB8F8  C0 43 04 1C */	lfs f2, 0x41c(r3)
/* 800AB8FC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800AB900  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800AB904  EC 05 18 2A */	fadds f0, f5, f3
/* 800AB908  EC 01 00 32 */	fmuls f0, f1, f0
/* 800AB90C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800AB910  EC 04 10 2A */	fadds f0, f4, f2
/* 800AB914  EC 01 00 32 */	fmuls f0, f1, f0
/* 800AB918  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800AB91C  C0 1F 10 E0 */	lfs f0, 0x10e0(r31)
/* 800AB920  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800AB924  C0 1F 05 CC */	lfs f0, 0x5cc(r31)
/* 800AB928  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 800AB92C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800AB930  40 81 00 08 */	ble lbl_800AB938
/* 800AB934  48 00 00 08 */	b lbl_800AB93C
lbl_800AB938:
/* 800AB938  FC 20 00 90 */	fmr f1, f0
lbl_800AB93C:
/* 800AB93C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 800AB940  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800AB944  FC 20 08 18 */	frsp f1, f1
/* 800AB948  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800AB94C  40 80 00 0C */	bge lbl_800AB958
/* 800AB950  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800AB954  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_800AB958:
/* 800AB958  38 7F 09 74 */	addi r3, r31, 0x974
/* 800AB95C  38 81 00 44 */	addi r4, r1, 0x44
/* 800AB960  48 1C 38 7D */	bl SetC__8cM3dGCylFRC4cXyz
/* 800AB964  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800AB968  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800AB96C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800AB970  C0 C3 05 4C */	lfs f6, 0x54c(r3)
/* 800AB974  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 800AB978  C0 A3 05 5C */	lfs f5, 0x55c(r3)
/* 800AB97C  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 800AB980  C0 83 05 6C */	lfs f4, 0x56c(r3)
/* 800AB984  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 800AB988  C0 63 06 3C */	lfs f3, 0x63c(r3)
/* 800AB98C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 800AB990  C0 03 06 4C */	lfs f0, 0x64c(r3)
/* 800AB994  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800AB998  C0 43 06 5C */	lfs f2, 0x65c(r3)
/* 800AB99C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800AB9A0  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800AB9A4  EC 05 00 2A */	fadds f0, f5, f0
/* 800AB9A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800AB9AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800AB9B0  EC 06 18 2A */	fadds f0, f6, f3
/* 800AB9B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800AB9B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800AB9BC  EC 04 10 2A */	fadds f0, f4, f2
/* 800AB9C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800AB9C4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800AB9C8  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 800AB9CC  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 800AB9D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AB9D4  40 81 00 08 */	ble lbl_800AB9DC
/* 800AB9D8  48 00 00 08 */	b lbl_800AB9E0
lbl_800AB9DC:
/* 800AB9DC  FC 00 08 90 */	fmr f0, f1
lbl_800AB9E0:
/* 800AB9E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800AB9E4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800AB9E8  FC 00 00 18 */	frsp f0, f0
/* 800AB9EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AB9F0  40 80 00 0C */	bge lbl_800AB9FC
/* 800AB9F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800AB9F8  D0 21 00 48 */	stfs f1, 0x48(r1)
lbl_800AB9FC:
/* 800AB9FC  38 7F 0B EC */	addi r3, r31, 0xbec
/* 800ABA00  38 81 00 44 */	addi r4, r1, 0x44
/* 800ABA04  48 1C 37 D9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800ABA08  38 61 00 14 */	addi r3, r1, 0x14
/* 800ABA0C  38 9F 09 74 */	addi r4, r31, 0x974
/* 800ABA10  38 BF 0B EC */	addi r5, r31, 0xbec
/* 800ABA14  48 1B B0 D1 */	bl __pl__4cXyzCFRC3Vec
/* 800ABA18  38 61 00 08 */	addi r3, r1, 8
/* 800ABA1C  38 81 00 14 */	addi r4, r1, 0x14
/* 800ABA20  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABA24  48 1B B1 61 */	bl __ml__4cXyzCFf
/* 800ABA28  C0 01 00 08 */	lfs f0, 8(r1)
/* 800ABA2C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800ABA30  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800ABA34  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800ABA38  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800ABA3C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800ABA40  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800ABA44  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800ABA48  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800ABA4C  EC 01 00 2A */	fadds f0, f1, f0
/* 800ABA50  EC 02 00 32 */	fmuls f0, f2, f0
/* 800ABA54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800ABA58  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 800ABA5C  38 81 00 44 */	addi r4, r1, 0x44
/* 800ABA60  48 1C 37 7D */	bl SetC__8cM3dGCylFRC4cXyz
/* 800ABA64  3B 60 00 00 */	li r27, 0
/* 800ABA68  3B C0 00 00 */	li r30, 0
/* 800ABA6C  3B A0 00 00 */	li r29, 0
/* 800ABA70  C3 E2 93 78 */	lfs f31, lit_8676(r2)
/* 800ABA74  3B 81 00 20 */	addi r28, r1, 0x20
lbl_800ABA78:
/* 800ABA78  7C 9F EA 14 */	add r4, r31, r29
/* 800ABA7C  38 64 09 74 */	addi r3, r4, 0x974
/* 800ABA80  7C 3C F4 2E */	lfsx f1, r28, r30
/* 800ABA84  C0 04 09 78 */	lfs f0, 0x978(r4)
/* 800ABA88  EC 01 00 28 */	fsubs f0, f1, f0
/* 800ABA8C  EC 3F 00 2A */	fadds f1, f31, f0
/* 800ABA90  48 1C 37 69 */	bl SetH__8cM3dGCylFf
/* 800ABA94  3B 7B 00 01 */	addi r27, r27, 1
/* 800ABA98  2C 1B 00 03 */	cmpwi r27, 3
/* 800ABA9C  3B DE 00 04 */	addi r30, r30, 4
/* 800ABAA0  3B BD 01 3C */	addi r29, r29, 0x13c
/* 800ABAA4  41 80 FF D4 */	blt lbl_800ABA78
/* 800ABAA8  C0 5F 09 78 */	lfs f2, 0x978(r31)
/* 800ABAAC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABAB0  C0 1F 09 84 */	lfs f0, 0x984(r31)
/* 800ABAB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800ABAB8  EC 02 00 2A */	fadds f0, f2, f0
/* 800ABABC  D0 1F 34 54 */	stfs f0, 0x3454(r31)
/* 800ABAC0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800ABAC4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800ABAC8  39 61 00 70 */	addi r11, r1, 0x70
/* 800ABACC  48 2B 67 55 */	bl _restgpr_27
/* 800ABAD0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800ABAD4  7C 08 03 A6 */	mtlr r0
/* 800ABAD8  38 21 00 80 */	addi r1, r1, 0x80
/* 800ABADC  4E 80 00 20 */	blr 
