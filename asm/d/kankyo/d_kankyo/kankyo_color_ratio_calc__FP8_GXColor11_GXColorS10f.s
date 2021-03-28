lbl_8019D61C:
/* 8019D61C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019D620  7C 08 02 A6 */	mflr r0
/* 8019D624  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019D628  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8019D62C  39 61 00 18 */	addi r11, r1, 0x18
/* 8019D630  48 1C 4B AD */	bl _savegpr_29
/* 8019D634  7C 7D 1B 78 */	mr r29, r3
/* 8019D638  FF E0 08 90 */	fmr f31, f1
/* 8019D63C  AB E4 00 02 */	lha r31, 2(r4)
/* 8019D640  AB C4 00 04 */	lha r30, 4(r4)
/* 8019D644  A8 64 00 00 */	lha r3, 0(r4)
/* 8019D648  4B FF FF 75 */	bl kankyo_color_ratio_calc_common__Fsf
/* 8019D64C  98 7D 00 00 */	stb r3, 0(r29)
/* 8019D650  7F E3 FB 78 */	mr r3, r31
/* 8019D654  FC 20 F8 90 */	fmr f1, f31
/* 8019D658  4B FF FF 65 */	bl kankyo_color_ratio_calc_common__Fsf
/* 8019D65C  98 7D 00 01 */	stb r3, 1(r29)
/* 8019D660  7F C3 F3 78 */	mr r3, r30
/* 8019D664  FC 20 F8 90 */	fmr f1, f31
/* 8019D668  4B FF FF 55 */	bl kankyo_color_ratio_calc_common__Fsf
/* 8019D66C  98 7D 00 02 */	stb r3, 2(r29)
/* 8019D670  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8019D674  39 61 00 18 */	addi r11, r1, 0x18
/* 8019D678  48 1C 4B B1 */	bl _restgpr_29
/* 8019D67C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019D680  7C 08 03 A6 */	mtlr r0
/* 8019D684  38 21 00 20 */	addi r1, r1, 0x20
/* 8019D688  4E 80 00 20 */	blr 
