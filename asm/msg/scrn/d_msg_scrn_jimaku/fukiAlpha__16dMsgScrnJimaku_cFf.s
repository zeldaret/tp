lbl_80244D8C:
/* 80244D8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80244D90  7C 08 02 A6 */	mflr r0
/* 80244D94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80244D98  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80244D9C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80244DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80244DA4  48 11 D4 35 */	bl _savegpr_28
/* 80244DA8  7C 7C 1B 78 */	mr r28, r3
/* 80244DAC  FF E0 08 90 */	fmr f31, f1
/* 80244DB0  80 63 00 08 */	lwz r3, 8(r3)
/* 80244DB4  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 80244DB8  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 80244DBC  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80244DC0  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244DC4  48 01 0A 0D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80244DC8  3B A0 00 00 */	li r29, 0
/* 80244DCC  3B E0 00 00 */	li r31, 0
lbl_80244DD0:
/* 80244DD0  7F DC FA 14 */	add r30, r28, r31
/* 80244DD4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80244DD8  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80244DDC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244DE0  48 01 09 F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80244DE4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80244DE8  28 03 00 00 */	cmplwi r3, 0
/* 80244DEC  41 82 00 10 */	beq lbl_80244DFC
/* 80244DF0  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80244DF4  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244DF8  48 01 09 D9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80244DFC:
/* 80244DFC  3B BD 00 01 */	addi r29, r29, 1
/* 80244E00  2C 1D 00 02 */	cmpwi r29, 2
/* 80244E04  3B FF 00 04 */	addi r31, r31, 4
/* 80244E08  41 80 FF C8 */	blt lbl_80244DD0
/* 80244E0C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80244E10  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80244E14  39 61 00 20 */	addi r11, r1, 0x20
/* 80244E18  48 11 D4 0D */	bl _restgpr_28
/* 80244E1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80244E20  7C 08 03 A6 */	mtlr r0
/* 80244E24  38 21 00 30 */	addi r1, r1, 0x30
/* 80244E28  4E 80 00 20 */	blr 
