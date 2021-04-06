lbl_800AC394:
/* 800AC394  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800AC398  7C 08 02 A6 */	mflr r0
/* 800AC39C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800AC3A0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800AC3A4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800AC3A8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800AC3AC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 800AC3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 800AC3B4  48 2B 5E 25 */	bl _savegpr_28
/* 800AC3B8  7C 9C 23 78 */	mr r28, r4
/* 800AC3BC  7C BD 2B 78 */	mr r29, r5
/* 800AC3C0  7C DE 33 78 */	mr r30, r6
/* 800AC3C4  7C FF 3B 78 */	mr r31, r7
/* 800AC3C8  FF C0 08 90 */	fmr f30, f1
/* 800AC3CC  FF E0 10 90 */	fmr f31, f2
/* 800AC3D0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800AC3D4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800AC3D8  41 82 00 34 */	beq lbl_800AC40C
/* 800AC3DC  48 01 39 D5 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800AC3E0  2C 03 00 00 */	cmpwi r3, 0
/* 800AC3E4  41 82 00 18 */	beq lbl_800AC3FC
/* 800AC3E8  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800AC3EC  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800AC3F0  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800AC3F4  EF DE 00 32 */	fmuls f30, f30, f0
/* 800AC3F8  48 00 00 14 */	b lbl_800AC40C
lbl_800AC3FC:
/* 800AC3FC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800AC400  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800AC404  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800AC408  EF DE 00 32 */	fmuls f30, f30, f0
lbl_800AC40C:
/* 800AC40C  7F 83 E3 78 */	mr r3, r28
/* 800AC410  7F A4 EB 78 */	mr r4, r29
/* 800AC414  7F C5 F3 78 */	mr r5, r30
/* 800AC418  7F E6 FB 78 */	mr r6, r31
/* 800AC41C  FC 20 F0 90 */	fmr f1, f30
/* 800AC420  FC 40 F8 90 */	fmr f2, f31
/* 800AC424  48 0B 21 21 */	bl setFrameCtrl__16daPy_frameCtrl_cFUcssff
/* 800AC428  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800AC42C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800AC430  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 800AC434  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800AC438  39 61 00 20 */	addi r11, r1, 0x20
/* 800AC43C  48 2B 5D E9 */	bl _restgpr_28
/* 800AC440  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800AC444  7C 08 03 A6 */	mtlr r0
/* 800AC448  38 21 00 40 */	addi r1, r1, 0x40
/* 800AC44C  4E 80 00 20 */	blr 
