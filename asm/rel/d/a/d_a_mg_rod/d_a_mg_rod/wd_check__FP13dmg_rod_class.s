lbl_804AD5F8:
/* 804AD5F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804AD5FC  7C 08 02 A6 */	mflr r0
/* 804AD600  90 01 00 64 */	stw r0, 0x64(r1)
/* 804AD604  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804AD608  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804AD60C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804AD610  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804AD614  39 61 00 40 */	addi r11, r1, 0x40
/* 804AD618  4B EB 4B BD */	bl _savegpr_27
/* 804AD61C  7C 7F 1B 78 */	mr r31, r3
/* 804AD620  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804AD624  3B A3 B5 34 */	addi r29, r3, lit_3879@l /* 0x804BB534@l */
/* 804AD628  3C 60 80 4B */	lis r3, s_wd_sub__FPvPv@ha /* 0x804AD5AC@ha */
/* 804AD62C  38 63 D5 AC */	addi r3, r3, s_wd_sub__FPvPv@l /* 0x804AD5AC@l */
/* 804AD630  7F E4 FB 78 */	mr r4, r31
/* 804AD634  4B B7 3D 05 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804AD638  28 03 00 00 */	cmplwi r3, 0
/* 804AD63C  41 82 01 58 */	beq lbl_804AD794
/* 804AD640  3B 83 05 7C */	addi r28, r3, 0x57c
/* 804AD644  3B 60 00 00 */	li r27, 0
/* 804AD648  C3 FD 00 58 */	lfs f31, 0x58(r29)
/* 804AD64C  C3 DD 01 40 */	lfs f30, 0x140(r29)
/* 804AD650  3F C3 00 01 */	addis r30, r3, 1
/* 804AD654  48 00 01 34 */	b lbl_804AD788
lbl_804AD658:
/* 804AD658  38 61 00 0C */	addi r3, r1, 0xc
/* 804AD65C  38 9C 00 10 */	addi r4, r28, 0x10
/* 804AD660  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804AD664  4B DB 94 D1 */	bl __mi__4cXyzCFRC3Vec
/* 804AD668  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804AD66C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804AD670  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804AD674  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804AD678  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804AD67C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804AD680  38 61 00 18 */	addi r3, r1, 0x18
/* 804AD684  4B E9 9A B5 */	bl PSVECSquareMag
/* 804AD688  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804AD68C  40 81 00 58 */	ble lbl_804AD6E4
/* 804AD690  FC 00 08 34 */	frsqrte f0, f1
/* 804AD694  C8 9D 00 80 */	lfd f4, 0x80(r29)
/* 804AD698  FC 44 00 32 */	fmul f2, f4, f0
/* 804AD69C  C8 7D 00 88 */	lfd f3, 0x88(r29)
/* 804AD6A0  FC 00 00 32 */	fmul f0, f0, f0
/* 804AD6A4  FC 01 00 32 */	fmul f0, f1, f0
/* 804AD6A8  FC 03 00 28 */	fsub f0, f3, f0
/* 804AD6AC  FC 02 00 32 */	fmul f0, f2, f0
/* 804AD6B0  FC 44 00 32 */	fmul f2, f4, f0
/* 804AD6B4  FC 00 00 32 */	fmul f0, f0, f0
/* 804AD6B8  FC 01 00 32 */	fmul f0, f1, f0
/* 804AD6BC  FC 03 00 28 */	fsub f0, f3, f0
/* 804AD6C0  FC 02 00 32 */	fmul f0, f2, f0
/* 804AD6C4  FC 44 00 32 */	fmul f2, f4, f0
/* 804AD6C8  FC 00 00 32 */	fmul f0, f0, f0
/* 804AD6CC  FC 01 00 32 */	fmul f0, f1, f0
/* 804AD6D0  FC 03 00 28 */	fsub f0, f3, f0
/* 804AD6D4  FC 02 00 32 */	fmul f0, f2, f0
/* 804AD6D8  FC 21 00 32 */	fmul f1, f1, f0
/* 804AD6DC  FC 20 08 18 */	frsp f1, f1
/* 804AD6E0  48 00 00 88 */	b lbl_804AD768
lbl_804AD6E4:
/* 804AD6E4  C8 1D 00 90 */	lfd f0, 0x90(r29)
/* 804AD6E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD6EC  40 80 00 10 */	bge lbl_804AD6FC
/* 804AD6F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AD6F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AD6F8  48 00 00 70 */	b lbl_804AD768
lbl_804AD6FC:
/* 804AD6FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804AD700  80 81 00 08 */	lwz r4, 8(r1)
/* 804AD704  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AD708  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AD70C  7C 03 00 00 */	cmpw r3, r0
/* 804AD710  41 82 00 14 */	beq lbl_804AD724
/* 804AD714  40 80 00 40 */	bge lbl_804AD754
/* 804AD718  2C 03 00 00 */	cmpwi r3, 0
/* 804AD71C  41 82 00 20 */	beq lbl_804AD73C
/* 804AD720  48 00 00 34 */	b lbl_804AD754
lbl_804AD724:
/* 804AD724  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AD728  41 82 00 0C */	beq lbl_804AD734
/* 804AD72C  38 00 00 01 */	li r0, 1
/* 804AD730  48 00 00 28 */	b lbl_804AD758
lbl_804AD734:
/* 804AD734  38 00 00 02 */	li r0, 2
/* 804AD738  48 00 00 20 */	b lbl_804AD758
lbl_804AD73C:
/* 804AD73C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AD740  41 82 00 0C */	beq lbl_804AD74C
/* 804AD744  38 00 00 05 */	li r0, 5
/* 804AD748  48 00 00 10 */	b lbl_804AD758
lbl_804AD74C:
/* 804AD74C  38 00 00 03 */	li r0, 3
/* 804AD750  48 00 00 08 */	b lbl_804AD758
lbl_804AD754:
/* 804AD754  38 00 00 04 */	li r0, 4
lbl_804AD758:
/* 804AD758  2C 00 00 01 */	cmpwi r0, 1
/* 804AD75C  40 82 00 0C */	bne lbl_804AD768
/* 804AD760  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AD764  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804AD768:
/* 804AD768  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 804AD76C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804AD770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD774  40 80 00 0C */	bge lbl_804AD780
/* 804AD778  7F 83 E3 78 */	mr r3, r28
/* 804AD77C  48 00 00 1C */	b lbl_804AD798
lbl_804AD780:
/* 804AD780  3B 7B 00 01 */	addi r27, r27, 1
/* 804AD784  3B 9C 00 54 */	addi r28, r28, 0x54
lbl_804AD788:
/* 804AD788  80 1E AD 98 */	lwz r0, -0x5268(r30)
/* 804AD78C  7C 1B 00 00 */	cmpw r27, r0
/* 804AD790  41 80 FE C8 */	blt lbl_804AD658
lbl_804AD794:
/* 804AD794  38 60 00 00 */	li r3, 0
lbl_804AD798:
/* 804AD798  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804AD79C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804AD7A0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804AD7A4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804AD7A8  39 61 00 40 */	addi r11, r1, 0x40
/* 804AD7AC  4B EB 4A 75 */	bl _restgpr_27
/* 804AD7B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804AD7B4  7C 08 03 A6 */	mtlr r0
/* 804AD7B8  38 21 00 60 */	addi r1, r1, 0x60
/* 804AD7BC  4E 80 00 20 */	blr 
