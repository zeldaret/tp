lbl_8006E448:
/* 8006E448  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8006E44C  7C 08 02 A6 */	mflr r0
/* 8006E450  90 01 00 44 */	stw r0, 0x44(r1)
/* 8006E454  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8006E458  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8006E45C  39 61 00 30 */	addi r11, r1, 0x30
/* 8006E460  48 2F 3D 75 */	bl _savegpr_27
/* 8006E464  7C 7D 1B 78 */	mr r29, r3
/* 8006E468  C3 E2 8B F8 */	lfs f31, lit_11953(r2)
/* 8006E46C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006E470  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8006E474  3B C0 00 00 */	li r30, 0
/* 8006E478  3B 80 00 00 */	li r28, 0
lbl_8006E47C:
/* 8006E47C  7C 7F E2 14 */	add r3, r31, r28
/* 8006E480  88 03 0C 3E */	lbz r0, 0xc3e(r3)
/* 8006E484  28 00 00 01 */	cmplwi r0, 1
/* 8006E488  40 82 01 F4 */	bne lbl_8006E67C
/* 8006E48C  3B 63 0C 18 */	addi r27, r3, 0xc18
/* 8006E490  7F 63 DB 78 */	mr r3, r27
/* 8006E494  7F A4 EB 78 */	mr r4, r29
/* 8006E498  48 2D 8F 05 */	bl PSVECSquareDistance
/* 8006E49C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006E4A4  40 81 00 58 */	ble lbl_8006E4FC
/* 8006E4A8  FC 00 08 34 */	frsqrte f0, f1
/* 8006E4AC  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006E4B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8006E4B4  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006E4B8  FC 00 00 32 */	fmul f0, f0, f0
/* 8006E4BC  FC 01 00 32 */	fmul f0, f1, f0
/* 8006E4C0  FC 03 00 28 */	fsub f0, f3, f0
/* 8006E4C4  FC 02 00 32 */	fmul f0, f2, f0
/* 8006E4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 8006E4CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8006E4D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8006E4D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8006E4D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8006E4DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8006E4E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8006E4E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8006E4E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8006E4EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8006E4F0  FC 21 00 32 */	fmul f1, f1, f0
/* 8006E4F4  FC 20 08 18 */	frsp f1, f1
/* 8006E4F8  48 00 00 88 */	b lbl_8006E580
lbl_8006E4FC:
/* 8006E4FC  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006E500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006E504  40 80 00 10 */	bge lbl_8006E514
/* 8006E508  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006E50C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8006E510  48 00 00 70 */	b lbl_8006E580
lbl_8006E514:
/* 8006E514  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8006E518  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8006E51C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006E520  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006E524  7C 03 00 00 */	cmpw r3, r0
/* 8006E528  41 82 00 14 */	beq lbl_8006E53C
/* 8006E52C  40 80 00 40 */	bge lbl_8006E56C
/* 8006E530  2C 03 00 00 */	cmpwi r3, 0
/* 8006E534  41 82 00 20 */	beq lbl_8006E554
/* 8006E538  48 00 00 34 */	b lbl_8006E56C
lbl_8006E53C:
/* 8006E53C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006E540  41 82 00 0C */	beq lbl_8006E54C
/* 8006E544  38 00 00 01 */	li r0, 1
/* 8006E548  48 00 00 28 */	b lbl_8006E570
lbl_8006E54C:
/* 8006E54C  38 00 00 02 */	li r0, 2
/* 8006E550  48 00 00 20 */	b lbl_8006E570
lbl_8006E554:
/* 8006E554  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006E558  41 82 00 0C */	beq lbl_8006E564
/* 8006E55C  38 00 00 05 */	li r0, 5
/* 8006E560  48 00 00 10 */	b lbl_8006E570
lbl_8006E564:
/* 8006E564  38 00 00 03 */	li r0, 3
/* 8006E568  48 00 00 08 */	b lbl_8006E570
lbl_8006E56C:
/* 8006E56C  38 00 00 04 */	li r0, 4
lbl_8006E570:
/* 8006E570  2C 00 00 01 */	cmpwi r0, 1
/* 8006E574  40 82 00 0C */	bne lbl_8006E580
/* 8006E578  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006E57C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8006E580:
/* 8006E580  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8006E584  40 80 00 F8 */	bge lbl_8006E67C
/* 8006E588  7F 63 DB 78 */	mr r3, r27
/* 8006E58C  7F A4 EB 78 */	mr r4, r29
/* 8006E590  48 2D 8E 0D */	bl PSVECSquareDistance
/* 8006E594  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006E59C  40 81 00 58 */	ble lbl_8006E5F4
/* 8006E5A0  FC 00 08 34 */	frsqrte f0, f1
/* 8006E5A4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006E5A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8006E5AC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006E5B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8006E5B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8006E5B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8006E5BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8006E5C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8006E5C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8006E5C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8006E5CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8006E5D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8006E5D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8006E5D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8006E5DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8006E5E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8006E5E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8006E5E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8006E5EC  FC 20 08 18 */	frsp f1, f1
/* 8006E5F0  48 00 00 88 */	b lbl_8006E678
lbl_8006E5F4:
/* 8006E5F4  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006E5F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006E5FC  40 80 00 10 */	bge lbl_8006E60C
/* 8006E600  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006E604  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8006E608  48 00 00 70 */	b lbl_8006E678
lbl_8006E60C:
/* 8006E60C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8006E610  80 81 00 08 */	lwz r4, 8(r1)
/* 8006E614  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006E618  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006E61C  7C 03 00 00 */	cmpw r3, r0
/* 8006E620  41 82 00 14 */	beq lbl_8006E634
/* 8006E624  40 80 00 40 */	bge lbl_8006E664
/* 8006E628  2C 03 00 00 */	cmpwi r3, 0
/* 8006E62C  41 82 00 20 */	beq lbl_8006E64C
/* 8006E630  48 00 00 34 */	b lbl_8006E664
lbl_8006E634:
/* 8006E634  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006E638  41 82 00 0C */	beq lbl_8006E644
/* 8006E63C  38 00 00 01 */	li r0, 1
/* 8006E640  48 00 00 28 */	b lbl_8006E668
lbl_8006E644:
/* 8006E644  38 00 00 02 */	li r0, 2
/* 8006E648  48 00 00 20 */	b lbl_8006E668
lbl_8006E64C:
/* 8006E64C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006E650  41 82 00 0C */	beq lbl_8006E65C
/* 8006E654  38 00 00 05 */	li r0, 5
/* 8006E658  48 00 00 10 */	b lbl_8006E668
lbl_8006E65C:
/* 8006E65C  38 00 00 03 */	li r0, 3
/* 8006E660  48 00 00 08 */	b lbl_8006E668
lbl_8006E664:
/* 8006E664  38 00 00 04 */	li r0, 4
lbl_8006E668:
/* 8006E668  2C 00 00 01 */	cmpwi r0, 1
/* 8006E66C  40 82 00 0C */	bne lbl_8006E678
/* 8006E670  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006E674  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8006E678:
/* 8006E678  FF E0 08 90 */	fmr f31, f1
lbl_8006E67C:
/* 8006E67C  3B DE 00 01 */	addi r30, r30, 1
/* 8006E680  2C 1E 00 06 */	cmpwi r30, 6
/* 8006E684  3B 9C 00 28 */	addi r28, r28, 0x28
/* 8006E688  41 80 FD F4 */	blt lbl_8006E47C
/* 8006E68C  FC 20 F8 90 */	fmr f1, f31
/* 8006E690  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8006E694  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8006E698  39 61 00 30 */	addi r11, r1, 0x30
/* 8006E69C  48 2F 3B 85 */	bl _restgpr_27
/* 8006E6A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8006E6A4  7C 08 03 A6 */	mtlr r0
/* 8006E6A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8006E6AC  4E 80 00 20 */	blr 
