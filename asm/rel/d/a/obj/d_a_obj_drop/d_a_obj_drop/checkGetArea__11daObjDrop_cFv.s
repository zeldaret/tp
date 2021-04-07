lbl_80BE0430:
/* 80BE0430  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BE0434  7C 08 02 A6 */	mflr r0
/* 80BE0438  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE043C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80BE0440  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80BE0444  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BE0448  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BE044C  3C 80 80 BE */	lis r4, l_sizuku_body_effect_list@ha /* 0x80BE1F88@ha */
/* 80BE0450  3B C4 1F 88 */	addi r30, r4, l_sizuku_body_effect_list@l /* 0x80BE1F88@l */
/* 80BE0454  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE0458  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE045C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80BE0460  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80BE0464  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80BE0468  4B 76 6F 35 */	bl PSVECSquareDistance
/* 80BE046C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80BE0470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE0474  40 81 00 58 */	ble lbl_80BE04CC
/* 80BE0478  FC 00 08 34 */	frsqrte f0, f1
/* 80BE047C  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 80BE0480  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE0484  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 80BE0488  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE048C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE0490  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE0494  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE0498  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE049C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE04A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE04A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE04A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE04AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE04B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE04B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE04B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE04BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE04C0  FF E1 00 32 */	fmul f31, f1, f0
/* 80BE04C4  FF E0 F8 18 */	frsp f31, f31
/* 80BE04C8  48 00 00 90 */	b lbl_80BE0558
lbl_80BE04CC:
/* 80BE04CC  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 80BE04D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE04D4  40 80 00 10 */	bge lbl_80BE04E4
/* 80BE04D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE04DC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE04E0  48 00 00 78 */	b lbl_80BE0558
lbl_80BE04E4:
/* 80BE04E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BE04E8  80 81 00 08 */	lwz r4, 8(r1)
/* 80BE04EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE04F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE04F4  7C 03 00 00 */	cmpw r3, r0
/* 80BE04F8  41 82 00 14 */	beq lbl_80BE050C
/* 80BE04FC  40 80 00 40 */	bge lbl_80BE053C
/* 80BE0500  2C 03 00 00 */	cmpwi r3, 0
/* 80BE0504  41 82 00 20 */	beq lbl_80BE0524
/* 80BE0508  48 00 00 34 */	b lbl_80BE053C
lbl_80BE050C:
/* 80BE050C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE0510  41 82 00 0C */	beq lbl_80BE051C
/* 80BE0514  38 00 00 01 */	li r0, 1
/* 80BE0518  48 00 00 28 */	b lbl_80BE0540
lbl_80BE051C:
/* 80BE051C  38 00 00 02 */	li r0, 2
/* 80BE0520  48 00 00 20 */	b lbl_80BE0540
lbl_80BE0524:
/* 80BE0524  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE0528  41 82 00 0C */	beq lbl_80BE0534
/* 80BE052C  38 00 00 05 */	li r0, 5
/* 80BE0530  48 00 00 10 */	b lbl_80BE0540
lbl_80BE0534:
/* 80BE0534  38 00 00 03 */	li r0, 3
/* 80BE0538  48 00 00 08 */	b lbl_80BE0540
lbl_80BE053C:
/* 80BE053C  38 00 00 04 */	li r0, 4
lbl_80BE0540:
/* 80BE0540  2C 00 00 01 */	cmpwi r0, 1
/* 80BE0544  40 82 00 10 */	bne lbl_80BE0554
/* 80BE0548  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE054C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE0550  48 00 00 08 */	b lbl_80BE0558
lbl_80BE0554:
/* 80BE0554  FF E0 08 90 */	fmr f31, f1
lbl_80BE0558:
/* 80BE0558  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80BE055C  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80BE0560  28 00 00 2C */	cmplwi r0, 0x2c
/* 80BE0564  40 82 00 24 */	bne lbl_80BE0588
/* 80BE0568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE056C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE0570  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80BE0574  3C 80 80 BE */	lis r4, d_a_obj_drop__stringBase0@ha /* 0x80BE2048@ha */
/* 80BE0578  38 84 20 48 */	addi r4, r4, d_a_obj_drop__stringBase0@l /* 0x80BE2048@l */
/* 80BE057C  4B 78 84 19 */	bl strcmp
/* 80BE0580  2C 03 00 00 */	cmpwi r3, 0
/* 80BE0584  41 82 00 2C */	beq lbl_80BE05B0
lbl_80BE0588:
/* 80BE0588  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80BE058C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BE0590  40 80 00 28 */	bge lbl_80BE05B8
/* 80BE0594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE0598  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE059C  38 64 01 14 */	addi r3, r4, 0x114
/* 80BE05A0  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 80BE05A4  4B 45 3D F9 */	bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 80BE05A8  2C 03 00 00 */	cmpwi r3, 0
/* 80BE05AC  41 82 00 0C */	beq lbl_80BE05B8
lbl_80BE05B0:
/* 80BE05B0  38 60 00 01 */	li r3, 1
/* 80BE05B4  48 00 00 08 */	b lbl_80BE05BC
lbl_80BE05B8:
/* 80BE05B8  38 60 00 00 */	li r3, 0
lbl_80BE05BC:
/* 80BE05BC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80BE05C0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80BE05C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BE05C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BE05CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BE05D0  7C 08 03 A6 */	mtlr r0
/* 80BE05D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80BE05D8  4E 80 00 20 */	blr 
