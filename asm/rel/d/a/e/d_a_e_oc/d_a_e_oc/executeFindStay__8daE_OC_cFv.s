lbl_8073332C:
/* 8073332C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80733330  7C 08 02 A6 */	mflr r0
/* 80733334  90 01 00 34 */	stw r0, 0x34(r1)
/* 80733338  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8073333C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80733340  39 61 00 20 */	addi r11, r1, 0x20
/* 80733344  4B C2 EE 95 */	bl _savegpr_28
/* 80733348  7C 7F 1B 78 */	mr r31, r3
/* 8073334C  3C 80 80 73 */	lis r4, lit_3911@ha /* 0x80735B28@ha */
/* 80733350  3B A4 5B 28 */	addi r29, r4, lit_3911@l /* 0x80735B28@l */
/* 80733354  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80733358  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073335C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80733360  4B 8E 73 B1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80733364  7C 7C 1B 78 */	mr r28, r3
/* 80733368  7F E3 FB 78 */	mr r3, r31
/* 8073336C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80733370  4B 8E 74 71 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80733374  FF E0 08 90 */	fmr f31, f1
/* 80733378  B3 9F 06 D4 */	sth r28, 0x6d4(r31)
/* 8073337C  38 00 00 01 */	li r0, 1
/* 80733380  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 80733384  7F E3 FB 78 */	mr r3, r31
/* 80733388  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 8073338C  4B FF A4 F1 */	bl checkBeforeFloorBg__8daE_OC_cFf
/* 80733390  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80733394  40 82 00 18 */	bne lbl_807333AC
/* 80733398  7F E3 FB 78 */	mr r3, r31
/* 8073339C  38 80 00 03 */	li r4, 3
/* 807333A0  38 A0 00 00 */	li r5, 0
/* 807333A4  4B FF A9 19 */	bl setActionMode__8daE_OC_cFii
/* 807333A8  48 00 01 EC */	b lbl_80733594
lbl_807333AC:
/* 807333AC  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 807333B0  2C 00 00 01 */	cmpwi r0, 1
/* 807333B4  41 82 00 A0 */	beq lbl_80733454
/* 807333B8  40 80 00 10 */	bge lbl_807333C8
/* 807333BC  2C 00 00 00 */	cmpwi r0, 0
/* 807333C0  40 80 00 14 */	bge lbl_807333D4
/* 807333C4  48 00 01 D0 */	b lbl_80733594
lbl_807333C8:
/* 807333C8  2C 00 00 03 */	cmpwi r0, 3
/* 807333CC  40 80 01 C8 */	bge lbl_80733594
/* 807333D0  48 00 00 C4 */	b lbl_80733494
lbl_807333D4:
/* 807333D4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807333D8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807333DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807333E0  40 82 00 3C */	bne lbl_8073341C
/* 807333E4  7F E3 FB 78 */	mr r3, r31
/* 807333E8  38 80 00 1C */	li r4, 0x1c
/* 807333EC  4B FF AF 31 */	bl checkBck__8daE_OC_cFi
/* 807333F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807333F4  40 82 00 1C */	bne lbl_80733410
/* 807333F8  7F E3 FB 78 */	mr r3, r31
/* 807333FC  38 80 00 1C */	li r4, 0x1c
/* 80733400  38 A0 00 02 */	li r5, 2
/* 80733404  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 80733408  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8073340C  4B FF AE 69 */	bl setBck__8daE_OC_cFiUcff
lbl_80733410:
/* 80733410  38 00 00 02 */	li r0, 2
/* 80733414  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80733418  48 00 01 7C */	b lbl_80733594
lbl_8073341C:
/* 8073341C  7F E3 FB 78 */	mr r3, r31
/* 80733420  38 80 00 1E */	li r4, 0x1e
/* 80733424  4B FF AE F9 */	bl checkBck__8daE_OC_cFi
/* 80733428  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073342C  40 82 00 1C */	bne lbl_80733448
/* 80733430  7F E3 FB 78 */	mr r3, r31
/* 80733434  38 80 00 1E */	li r4, 0x1e
/* 80733438  38 A0 00 02 */	li r5, 2
/* 8073343C  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 80733440  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80733444  4B FF AE 31 */	bl setBck__8daE_OC_cFiUcff
lbl_80733448:
/* 80733448  38 00 00 01 */	li r0, 1
/* 8073344C  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80733450  48 00 01 44 */	b lbl_80733594
lbl_80733454:
/* 80733454  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80733458  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8073345C  C0 5D 01 38 */	lfs f2, 0x138(r29)
/* 80733460  4B B3 D2 E1 */	bl cLib_chaseF__FPfff
/* 80733464  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80733468  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8073346C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80733470  40 82 00 24 */	bne lbl_80733494
/* 80733474  7F E3 FB 78 */	mr r3, r31
/* 80733478  38 80 00 1C */	li r4, 0x1c
/* 8073347C  38 A0 00 02 */	li r5, 2
/* 80733480  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 80733484  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80733488  4B FF AD ED */	bl setBck__8daE_OC_cFiUcff
/* 8073348C  38 00 00 02 */	li r0, 2
/* 80733490  90 1F 06 B0 */	stw r0, 0x6b0(r31)
lbl_80733494:
/* 80733494  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 80733498  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8073349C  40 80 00 18 */	bge lbl_807334B4
/* 807334A0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807334A4  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 807334A8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807334AC  4B B3 D2 95 */	bl cLib_chaseF__FPfff
/* 807334B0  48 00 00 14 */	b lbl_807334C4
lbl_807334B4:
/* 807334B4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807334B8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807334BC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807334C0  4B B3 D2 81 */	bl cLib_chaseF__FPfff
lbl_807334C4:
/* 807334C4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 807334C8  7F 84 E3 78 */	mr r4, r28
/* 807334CC  4B B3 D9 59 */	bl cLib_distanceAngleS__Fss
/* 807334D0  7C 60 07 34 */	extsh r0, r3
/* 807334D4  2C 00 04 00 */	cmpwi r0, 0x400
/* 807334D8  41 80 00 1C */	blt lbl_807334F4
/* 807334DC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 807334E0  7F 84 E3 78 */	mr r4, r28
/* 807334E4  38 A0 00 04 */	li r5, 4
/* 807334E8  38 C0 08 00 */	li r6, 0x800
/* 807334EC  38 E0 01 00 */	li r7, 0x100
/* 807334F0  4B B3 D0 51 */	bl cLib_addCalcAngleS__FPsssss
lbl_807334F4:
/* 807334F4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807334F8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807334FC  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 80733500  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80733504  40 80 00 70 */	bge lbl_80733574
/* 80733508  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 8073350C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80733510  40 81 00 64 */	ble lbl_80733574
/* 80733514  7F E3 FB 78 */	mr r3, r31
/* 80733518  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8073351C  4B 8E 71 F5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80733520  7C 63 07 34 */	extsh r3, r3
/* 80733524  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80733528  7C 63 00 50 */	subf r3, r3, r0
/* 8073352C  4B C3 1B A5 */	bl abs
/* 80733530  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80733534  40 80 00 60 */	bge lbl_80733594
/* 80733538  7F E3 FB 78 */	mr r3, r31
/* 8073353C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80733540  4B FF A3 3D */	bl checkBeforeFloorBg__8daE_OC_cFf
/* 80733544  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80733548  41 82 00 4C */	beq lbl_80733594
/* 8073354C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80733550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80733554  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80733558  28 00 00 00 */	cmplwi r0, 0
/* 8073355C  40 82 00 38 */	bne lbl_80733594
/* 80733560  7F E3 FB 78 */	mr r3, r31
/* 80733564  38 80 00 04 */	li r4, 4
/* 80733568  38 A0 00 00 */	li r5, 0
/* 8073356C  4B FF A7 51 */	bl setActionMode__8daE_OC_cFii
/* 80733570  48 00 00 24 */	b lbl_80733594
lbl_80733574:
/* 80733574  7F E3 FB 78 */	mr r3, r31
/* 80733578  4B FF 9A 19 */	bl searchPlayer2__8daE_OC_cFv
/* 8073357C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80733580  40 82 00 14 */	bne lbl_80733594
/* 80733584  7F E3 FB 78 */	mr r3, r31
/* 80733588  38 80 00 00 */	li r4, 0
/* 8073358C  38 A0 00 00 */	li r5, 0
/* 80733590  4B FF A7 2D */	bl setActionMode__8daE_OC_cFii
lbl_80733594:
/* 80733594  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80733598  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8073359C  39 61 00 20 */	addi r11, r1, 0x20
/* 807335A0  4B C2 EC 85 */	bl _restgpr_28
/* 807335A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807335A8  7C 08 03 A6 */	mtlr r0
/* 807335AC  38 21 00 30 */	addi r1, r1, 0x30
/* 807335B0  4E 80 00 20 */	blr 
