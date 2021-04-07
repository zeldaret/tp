lbl_80D5E3F8:
/* 80D5E3F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D5E3FC  7C 08 02 A6 */	mflr r0
/* 80D5E400  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D5E404  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D5E408  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D5E40C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D5E410  4B 60 3D C9 */	bl _savegpr_28
/* 80D5E414  7C 7C 1B 78 */	mr r28, r3
/* 80D5E418  7C 9D 23 78 */	mr r29, r4
/* 80D5E41C  7C BE 2B 78 */	mr r30, r5
/* 80D5E420  FF E0 08 90 */	fmr f31, f1
/* 80D5E424  3C 60 80 D6 */	lis r3, lit_3734@ha /* 0x80D5ECE0@ha */
/* 80D5E428  3B E3 EC E0 */	addi r31, r3, lit_3734@l /* 0x80D5ECE0@l */
/* 80D5E42C  38 61 00 18 */	addi r3, r1, 0x18
/* 80D5E430  7F 84 E3 78 */	mr r4, r28
/* 80D5E434  7F A5 EB 78 */	mr r5, r29
/* 80D5E438  4B 50 86 FD */	bl __mi__4cXyzCFRC3Vec
/* 80D5E43C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80D5E440  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80D5E444  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80D5E448  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D5E44C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D5E450  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D5E454  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D5E458  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80D5E45C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D5E460  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80D5E464  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D5E468  38 61 00 24 */	addi r3, r1, 0x24
/* 80D5E46C  4B 5E 8C CD */	bl PSVECSquareMag
/* 80D5E470  FC 00 0A 10 */	fabs f0, f1
/* 80D5E474  FC 20 00 18 */	frsp f1, f0
/* 80D5E478  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D5E47C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5E480  40 80 00 6C */	bge lbl_80D5E4EC
/* 80D5E484  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D5E488  4B 50 95 05 */	bl cM_rndFX__Ff
/* 80D5E48C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80D5E490  EC 00 08 2A */	fadds f0, f0, f1
/* 80D5E494  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80D5E498  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80D5E49C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D5E4A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D5E4A4  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80D5E4A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D5E4AC  4B 50 94 E1 */	bl cM_rndFX__Ff
/* 80D5E4B0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D5E4B4  EC 00 08 2A */	fadds f0, f0, f1
/* 80D5E4B8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80D5E4BC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D5E4C0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80D5E4C4  C0 5D 00 04 */	lfs f2, 4(r29)
/* 80D5E4C8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D5E4CC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80D5E4D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D5E4D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D5E4D8  40 80 00 0C */	bge lbl_80D5E4E4
/* 80D5E4DC  38 60 00 02 */	li r3, 2
/* 80D5E4E0  48 00 01 4C */	b lbl_80D5E62C
lbl_80D5E4E4:
/* 80D5E4E4  38 60 00 01 */	li r3, 1
/* 80D5E4E8  48 00 01 44 */	b lbl_80D5E62C
lbl_80D5E4EC:
/* 80D5E4EC  38 61 00 30 */	addi r3, r1, 0x30
/* 80D5E4F0  4B 5E 8C 49 */	bl PSVECSquareMag
/* 80D5E4F4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80D5E4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5E4FC  40 81 00 58 */	ble lbl_80D5E554
/* 80D5E500  FC 00 08 34 */	frsqrte f0, f1
/* 80D5E504  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80D5E508  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5E50C  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80D5E510  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5E514  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5E518  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5E51C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5E520  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5E524  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5E528  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5E52C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5E530  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5E534  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5E538  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5E53C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5E540  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5E544  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5E548  FC 21 00 32 */	fmul f1, f1, f0
/* 80D5E54C  FC 20 08 18 */	frsp f1, f1
/* 80D5E550  48 00 00 88 */	b lbl_80D5E5D8
lbl_80D5E554:
/* 80D5E554  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80D5E558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5E55C  40 80 00 10 */	bge lbl_80D5E56C
/* 80D5E560  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5E564  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D5E568  48 00 00 70 */	b lbl_80D5E5D8
lbl_80D5E56C:
/* 80D5E56C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D5E570  80 81 00 08 */	lwz r4, 8(r1)
/* 80D5E574  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D5E578  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D5E57C  7C 03 00 00 */	cmpw r3, r0
/* 80D5E580  41 82 00 14 */	beq lbl_80D5E594
/* 80D5E584  40 80 00 40 */	bge lbl_80D5E5C4
/* 80D5E588  2C 03 00 00 */	cmpwi r3, 0
/* 80D5E58C  41 82 00 20 */	beq lbl_80D5E5AC
/* 80D5E590  48 00 00 34 */	b lbl_80D5E5C4
lbl_80D5E594:
/* 80D5E594  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5E598  41 82 00 0C */	beq lbl_80D5E5A4
/* 80D5E59C  38 00 00 01 */	li r0, 1
/* 80D5E5A0  48 00 00 28 */	b lbl_80D5E5C8
lbl_80D5E5A4:
/* 80D5E5A4  38 00 00 02 */	li r0, 2
/* 80D5E5A8  48 00 00 20 */	b lbl_80D5E5C8
lbl_80D5E5AC:
/* 80D5E5AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5E5B0  41 82 00 0C */	beq lbl_80D5E5BC
/* 80D5E5B4  38 00 00 05 */	li r0, 5
/* 80D5E5B8  48 00 00 10 */	b lbl_80D5E5C8
lbl_80D5E5BC:
/* 80D5E5BC  38 00 00 03 */	li r0, 3
/* 80D5E5C0  48 00 00 08 */	b lbl_80D5E5C8
lbl_80D5E5C4:
/* 80D5E5C4  38 00 00 04 */	li r0, 4
lbl_80D5E5C8:
/* 80D5E5C8  2C 00 00 01 */	cmpwi r0, 1
/* 80D5E5CC  40 82 00 0C */	bne lbl_80D5E5D8
/* 80D5E5D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5E5D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D5E5D8:
/* 80D5E5D8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D5E5DC  40 80 00 20 */	bge lbl_80D5E5FC
/* 80D5E5E0  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80D5E5E4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80D5E5E8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80D5E5EC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80D5E5F0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D5E5F4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80D5E5F8  48 00 00 30 */	b lbl_80D5E628
lbl_80D5E5FC:
/* 80D5E5FC  38 61 00 0C */	addi r3, r1, 0xc
/* 80D5E600  38 81 00 30 */	addi r4, r1, 0x30
/* 80D5E604  4B 50 88 F1 */	bl normalize__4cXyzFv
/* 80D5E608  38 61 00 30 */	addi r3, r1, 0x30
/* 80D5E60C  7C 64 1B 78 */	mr r4, r3
/* 80D5E610  FC 20 F8 90 */	fmr f1, f31
/* 80D5E614  4B 5E 8A C5 */	bl PSVECScale
/* 80D5E618  7F A3 EB 78 */	mr r3, r29
/* 80D5E61C  38 81 00 30 */	addi r4, r1, 0x30
/* 80D5E620  7F A5 EB 78 */	mr r5, r29
/* 80D5E624  4B 5E 8A 6D */	bl PSVECAdd
lbl_80D5E628:
/* 80D5E628  38 60 00 00 */	li r3, 0
lbl_80D5E62C:
/* 80D5E62C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D5E630  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D5E634  39 61 00 50 */	addi r11, r1, 0x50
/* 80D5E638  4B 60 3B ED */	bl _restgpr_28
/* 80D5E63C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D5E640  7C 08 03 A6 */	mtlr r0
/* 80D5E644  38 21 00 60 */	addi r1, r1, 0x60
/* 80D5E648  4E 80 00 20 */	blr 
