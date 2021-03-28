lbl_80A38684:
/* 80A38684  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A38688  7C 08 02 A6 */	mflr r0
/* 80A3868C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A38690  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A38694  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A38698  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80A3869C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80A386A0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80A386A4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80A386A8  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80A386AC  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80A386B0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A386B4  4B 92 9B 28 */	b _savegpr_29
/* 80A386B8  7C 7D 1B 78 */	mr r29, r3
/* 80A386BC  7C 9E 23 78 */	mr r30, r4
/* 80A386C0  FF 80 08 90 */	fmr f28, f1
/* 80A386C4  FF A0 10 90 */	fmr f29, f2
/* 80A386C8  7C BF 2B 78 */	mr r31, r5
/* 80A386CC  3C 60 80 A4 */	lis r3, lit_4095@ha
/* 80A386D0  C8 23 08 F8 */	lfd f1, lit_4095@l(r3)
/* 80A386D4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80A386D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A386DC  3C 60 43 30 */	lis r3, 0x4330
/* 80A386E0  90 61 00 08 */	stw r3, 8(r1)
/* 80A386E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A386E8  EF E0 08 28 */	fsubs f31, f0, f1
/* 80A386EC  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80A386F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A386F4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A386F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A386FC  EF C0 08 28 */	fsubs f30, f0, f1
/* 80A38700  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80A38704  FC 20 E8 90 */	fmr f1, f29
/* 80A38708  FC 40 E0 90 */	fmr f2, f28
/* 80A3870C  FC 60 F8 90 */	fmr f3, f31
/* 80A38710  FC 80 F0 90 */	fmr f4, f30
/* 80A38714  4B 5D 87 5C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80A38718  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80A3871C  28 03 00 00 */	cmplwi r3, 0
/* 80A38720  41 82 00 20 */	beq lbl_80A38740
/* 80A38724  7F C4 F3 78 */	mr r4, r30
/* 80A38728  7F E5 FB 78 */	mr r5, r31
/* 80A3872C  FC 20 E8 90 */	fmr f1, f29
/* 80A38730  FC 40 E0 90 */	fmr f2, f28
/* 80A38734  FC 60 F8 90 */	fmr f3, f31
/* 80A38738  FC 80 F0 90 */	fmr f4, f30
/* 80A3873C  4B 5D 87 34 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80A38740:
/* 80A38740  38 60 00 01 */	li r3, 1
/* 80A38744  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A38748  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A3874C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80A38750  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80A38754  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80A38758  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80A3875C  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 80A38760  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80A38764  39 61 00 30 */	addi r11, r1, 0x30
/* 80A38768  4B 92 9A C0 */	b _restgpr_29
/* 80A3876C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A38770  7C 08 03 A6 */	mtlr r0
/* 80A38774  38 21 00 70 */	addi r1, r1, 0x70
/* 80A38778  4E 80 00 20 */	blr 
