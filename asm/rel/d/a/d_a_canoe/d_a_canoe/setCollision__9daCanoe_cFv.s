lbl_804DB3F4:
/* 804DB3F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804DB3F8  7C 08 02 A6 */	mflr r0
/* 804DB3FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DB400  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804DB404  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804DB408  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 804DB40C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 804DB410  39 61 00 30 */	addi r11, r1, 0x30
/* 804DB414  4B E8 6D C1 */	bl _savegpr_27
/* 804DB418  7C 7F 1B 78 */	mr r31, r3
/* 804DB41C  38 7F 05 98 */	addi r3, r31, 0x598
/* 804DB420  4B BA 84 11 */	bl Move__10dCcD_GSttsFv
/* 804DB424  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804DB428  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DB42C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804DB430  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804DB434  7F E3 04 2E */	lfsx f31, r3, r0
/* 804DB438  7C 63 02 14 */	add r3, r3, r0
/* 804DB43C  C3 C3 00 04 */	lfs f30, 4(r3)
/* 804DB440  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804DB444  3C 60 80 4E */	lis r3, lit_4683@ha /* 0x804DD680@ha */
/* 804DB448  C0 03 D6 80 */	lfs f0, lit_4683@l(r3)  /* 0x804DD680@l */
/* 804DB44C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DB450  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804DB454  3B 9F 0D 80 */	addi r28, r31, 0xd80
/* 804DB458  3C 60 80 4E */	lis r3, l_cylOffsetZ@ha /* 0x804DD600@ha */
/* 804DB45C  38 03 D6 00 */	addi r0, r3, l_cylOffsetZ@l /* 0x804DD600@l */
/* 804DB460  7C 1B 03 78 */	mr r27, r0
/* 804DB464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DB468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DB46C  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804DB470  3B C0 00 00 */	li r30, 0
/* 804DB474  7F A3 EB 78 */	mr r3, r29
/* 804DB478  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804DB47C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804DB480  7D 89 03 A6 */	mtctr r12
/* 804DB484  4E 80 04 21 */	bctrl 
/* 804DB488  28 03 00 00 */	cmplwi r3, 0
/* 804DB48C  41 82 00 14 */	beq lbl_804DB4A0
/* 804DB490  80 1D 28 18 */	lwz r0, 0x2818(r29)
/* 804DB494  7C 00 F8 40 */	cmplw r0, r31
/* 804DB498  40 82 00 08 */	bne lbl_804DB4A0
/* 804DB49C  3B C0 00 01 */	li r30, 1
lbl_804DB4A0:
/* 804DB4A0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 804DB4A4  41 82 00 10 */	beq lbl_804DB4B4
/* 804DB4A8  38 00 00 05 */	li r0, 5
/* 804DB4AC  98 1F 14 41 */	stb r0, 0x1441(r31)
/* 804DB4B0  48 00 00 18 */	b lbl_804DB4C8
lbl_804DB4B4:
/* 804DB4B4  88 7F 14 41 */	lbz r3, 0x1441(r31)
/* 804DB4B8  28 03 00 00 */	cmplwi r3, 0
/* 804DB4BC  41 82 00 0C */	beq lbl_804DB4C8
/* 804DB4C0  38 03 FF FF */	addi r0, r3, -1
/* 804DB4C4  98 1F 14 41 */	stb r0, 0x1441(r31)
lbl_804DB4C8:
/* 804DB4C8  3B C0 00 00 */	li r30, 0
/* 804DB4CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DB4D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DB4D4  3B A3 23 3C */	addi r29, r3, 0x233c
lbl_804DB4D8:
/* 804DB4D8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804DB4DC  C0 5B 00 00 */	lfs f2, 0(r27)
/* 804DB4E0  EC 02 07 F2 */	fmuls f0, f2, f31
/* 804DB4E4  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB4E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804DB4EC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 804DB4F0  EC 02 07 B2 */	fmuls f0, f2, f30
/* 804DB4F4  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB4F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804DB4FC  38 7C 01 24 */	addi r3, r28, 0x124
/* 804DB500  38 81 00 08 */	addi r4, r1, 8
/* 804DB504  4B D9 3C D9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 804DB508  7F A3 EB 78 */	mr r3, r29
/* 804DB50C  7F 84 E3 78 */	mr r4, r28
/* 804DB510  4B D8 96 99 */	bl Set__4cCcSFP8cCcD_Obj
/* 804DB514  88 1F 14 41 */	lbz r0, 0x1441(r31)
/* 804DB518  28 00 00 00 */	cmplwi r0, 0
/* 804DB51C  41 82 00 14 */	beq lbl_804DB530
/* 804DB520  38 7C 00 2C */	addi r3, r28, 0x2c
/* 804DB524  38 80 00 60 */	li r4, 0x60
/* 804DB528  4B D8 93 F5 */	bl SetVsGrp__10cCcD_ObjCoFUl
/* 804DB52C  48 00 00 10 */	b lbl_804DB53C
lbl_804DB530:
/* 804DB530  38 7C 00 2C */	addi r3, r28, 0x2c
/* 804DB534  38 80 00 70 */	li r4, 0x70
/* 804DB538  4B D8 93 E5 */	bl SetVsGrp__10cCcD_ObjCoFUl
lbl_804DB53C:
/* 804DB53C  3B DE 00 01 */	addi r30, r30, 1
/* 804DB540  2C 1E 00 05 */	cmpwi r30, 5
/* 804DB544  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 804DB548  3B 7B 00 04 */	addi r27, r27, 4
/* 804DB54C  41 80 FF 8C */	blt lbl_804DB4D8
/* 804DB550  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804DB554  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804DB558  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 804DB55C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 804DB560  39 61 00 30 */	addi r11, r1, 0x30
/* 804DB564  4B E8 6C BD */	bl _restgpr_27
/* 804DB568  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DB56C  7C 08 03 A6 */	mtlr r0
/* 804DB570  38 21 00 50 */	addi r1, r1, 0x50
/* 804DB574  4E 80 00 20 */	blr 
