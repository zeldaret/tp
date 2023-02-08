lbl_804AD7C0:
/* 804AD7C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AD7C4  7C 08 02 A6 */	mflr r0
/* 804AD7C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AD7CC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804AD7D0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804AD7D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AD7D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804AD7DC  7C 7F 1B 78 */	mr r31, r3
/* 804AD7E0  FF E0 08 90 */	fmr f31, f1
/* 804AD7E4  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804AD7E8  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804AD7EC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 804AD7F0  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 804AD7F4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804AD7F8  4B DC 22 89 */	bl cLib_addCalc0__FPfff
/* 804AD7FC  80 1F 14 F0 */	lwz r0, 0x14f0(r31)
/* 804AD800  2C 00 00 00 */	cmpwi r0, 0
/* 804AD804  41 82 00 68 */	beq lbl_804AD86C
/* 804AD808  C0 1F 14 F4 */	lfs f0, 0x14f4(r31)
/* 804AD80C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804AD810  A8 7F 05 78 */	lha r3, 0x578(r31)
/* 804AD814  54 60 06 B7 */	rlwinm. r0, r3, 0, 0x1a, 0x1b
/* 804AD818  41 82 00 34 */	beq lbl_804AD84C
/* 804AD81C  1C 03 13 88 */	mulli r0, r3, 0x1388
/* 804AD820  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804AD824  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804AD828  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804AD82C  7C 23 04 2E */	lfsx f1, r3, r0
/* 804AD830  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804AD834  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AD838  FC 00 00 1E */	fctiwz f0, f0
/* 804AD83C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804AD840  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804AD844  B0 1F 0F FE */	sth r0, 0xffe(r31)
/* 804AD848  48 00 00 0C */	b lbl_804AD854
lbl_804AD84C:
/* 804AD84C  38 00 00 00 */	li r0, 0
/* 804AD850  B0 1F 0F FE */	sth r0, 0xffe(r31)
lbl_804AD854:
/* 804AD854  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 804AD858  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 804AD85C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD860  40 81 00 0C */	ble lbl_804AD86C
/* 804AD864  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804AD868  D0 1F 11 88 */	stfs f0, 0x1188(r31)
lbl_804AD86C:
/* 804AD86C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 804AD870  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AD874  4C 41 13 82 */	cror 2, 1, 2
/* 804AD878  40 82 00 64 */	bne lbl_804AD8DC
/* 804AD87C  88 1F 10 0E */	lbz r0, 0x100e(r31)
/* 804AD880  7C 00 07 75 */	extsb. r0, r0
/* 804AD884  40 82 00 58 */	bne lbl_804AD8DC
/* 804AD888  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 804AD88C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804AD890  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804AD894  A8 1F 0F FE */	lha r0, 0xffe(r31)
/* 804AD898  2C 00 00 00 */	cmpwi r0, 0
/* 804AD89C  40 81 00 10 */	ble lbl_804AD8AC
/* 804AD8A0  38 00 E0 C0 */	li r0, -8000
/* 804AD8A4  B0 1F 0F FE */	sth r0, 0xffe(r31)
/* 804AD8A8  48 00 00 0C */	b lbl_804AD8B4
lbl_804AD8AC:
/* 804AD8AC  38 00 1F 40 */	li r0, 0x1f40
/* 804AD8B0  B0 1F 0F FE */	sth r0, 0xffe(r31)
lbl_804AD8B4:
/* 804AD8B4  38 00 00 00 */	li r0, 0
/* 804AD8B8  B0 1F 10 00 */	sth r0, 0x1000(r31)
/* 804AD8BC  C0 3F 0F 5C */	lfs f1, 0xf5c(r31)
/* 804AD8C0  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804AD8C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AD8C8  D0 1F 0F 5C */	stfs f0, 0xf5c(r31)
/* 804AD8CC  38 00 00 0A */	li r0, 0xa
/* 804AD8D0  98 1F 10 09 */	stb r0, 0x1009(r31)
/* 804AD8D4  38 00 00 03 */	li r0, 3
/* 804AD8D8  98 1F 10 0E */	stb r0, 0x100e(r31)
lbl_804AD8DC:
/* 804AD8DC  38 7F 0F FC */	addi r3, r31, 0xffc
/* 804AD8E0  A8 9F 0F FE */	lha r4, 0xffe(r31)
/* 804AD8E4  38 A0 00 04 */	li r5, 4
/* 804AD8E8  38 C0 2E E0 */	li r6, 0x2ee0
/* 804AD8EC  4B DC 2D 1D */	bl cLib_addCalcAngleS2__FPssss
/* 804AD8F0  38 00 00 00 */	li r0, 0
/* 804AD8F4  B0 1F 0F F0 */	sth r0, 0xff0(r31)
/* 804AD8F8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804AD8FC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804AD900  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AD904  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804AD908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AD90C  7C 08 03 A6 */	mtlr r0
/* 804AD910  38 21 00 30 */	addi r1, r1, 0x30
/* 804AD914  4E 80 00 20 */	blr 
