lbl_8019D68C:
/* 8019D68C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8019D690  7C 08 02 A6 */	mflr r0
/* 8019D694  90 01 00 64 */	stw r0, 0x64(r1)
/* 8019D698  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8019D69C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8019D6A0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8019D6A4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8019D6A8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8019D6AC  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8019D6B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8019D6B4  48 1C 4B 25 */	bl _savegpr_28
/* 8019D6B8  FF A0 08 90 */	fmr f29, f1
/* 8019D6BC  7C BC 2B 78 */	mr r28, r5
/* 8019D6C0  7C DD 33 78 */	mr r29, r6
/* 8019D6C4  FF C0 10 90 */	fmr f30, f2
/* 8019D6C8  7C FE 3B 78 */	mr r30, r7
/* 8019D6CC  FF E0 18 90 */	fmr f31, f3
/* 8019D6D0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8019D6D4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8019D6D8  4B FF FE 95 */	bl s16_data_ratio_set__Fssf
/* 8019D6DC  7C 7F 1B 78 */	mr r31, r3
/* 8019D6E0  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 8019D6E4  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 8019D6E8  FC 20 E8 90 */	fmr f1, f29
/* 8019D6EC  4B FF FE 81 */	bl s16_data_ratio_set__Fssf
/* 8019D6F0  7C 64 1B 78 */	mr r4, r3
/* 8019D6F4  7F E3 FB 78 */	mr r3, r31
/* 8019D6F8  FC 20 F0 90 */	fmr f1, f30
/* 8019D6FC  4B FF FE 71 */	bl s16_data_ratio_set__Fssf
/* 8019D700  7C 03 F2 14 */	add r0, r3, r30
/* 8019D704  7C 00 07 34 */	extsh r0, r0
/* 8019D708  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 8019D70C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019D710  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019D714  3C 00 43 30 */	lis r0, 0x4330
/* 8019D718  90 01 00 08 */	stw r0, 8(r1)
/* 8019D71C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019D720  EC 20 08 28 */	fsubs f1, f0, f1
/* 8019D724  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019D728  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8019D72C  C0 03 11 F8 */	lfs f0, 0x11f8(r3)
/* 8019D730  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8019D734  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019D738  FC 00 00 1E */	fctiwz f0, f0
/* 8019D73C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8019D740  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8019D744  7C 60 07 35 */	extsh. r0, r3
/* 8019D748  40 80 00 08 */	bge lbl_8019D750
/* 8019D74C  38 60 00 00 */	li r3, 0
lbl_8019D750:
/* 8019D750  7C 60 07 34 */	extsh r0, r3
/* 8019D754  2C 00 00 FF */	cmpwi r0, 0xff
/* 8019D758  40 81 00 08 */	ble lbl_8019D760
/* 8019D75C  38 60 00 FF */	li r3, 0xff
lbl_8019D760:
/* 8019D760  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8019D764  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8019D768  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8019D76C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8019D770  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8019D774  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8019D778  39 61 00 30 */	addi r11, r1, 0x30
/* 8019D77C  48 1C 4A A9 */	bl _restgpr_28
/* 8019D780  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8019D784  7C 08 03 A6 */	mtlr r0
/* 8019D788  38 21 00 60 */	addi r1, r1, 0x60
/* 8019D78C  4E 80 00 20 */	blr 
