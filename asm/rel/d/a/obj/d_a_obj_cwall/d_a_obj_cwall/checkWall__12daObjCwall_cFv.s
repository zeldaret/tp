lbl_80BD9414:
/* 80BD9414  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BD9418  7C 08 02 A6 */	mflr r0
/* 80BD941C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BD9420  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80BD9424  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80BD9428  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80BD942C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80BD9430  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80BD9434  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80BD9438  39 61 00 80 */	addi r11, r1, 0x80
/* 80BD943C  4B 78 8D 99 */	bl _savegpr_27
/* 80BD9440  7C 7B 1B 78 */	mr r27, r3
/* 80BD9444  3C 60 80 BE */	lis r3, l_wallBmd@ha /* 0x80BD9FA4@ha */
/* 80BD9448  38 63 9F A4 */	addi r3, r3, l_wallBmd@l /* 0x80BD9FA4@l */
/* 80BD944C  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 80BD9450  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD9454  C0 43 00 9C */	lfs f2, 0x9c(r3)
/* 80BD9458  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BD945C  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 80BD9460  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BD9464  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BD9468  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80BD946C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80BD9470  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80BD9474  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD9478  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BD947C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BD9480  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BD9484  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80BD9488  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80BD948C  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 80BD9490  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BD9494  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD9498  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80BD949C  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 80BD94A0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BD94A4  3B A0 00 00 */	li r29, 0
/* 80BD94A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD94AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD94B0  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80BD94B4  4B 43 2F 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BD94B8  3B 80 00 00 */	li r28, 0
/* 80BD94BC  3B E0 00 00 */	li r31, 0
/* 80BD94C0  C3 A1 00 38 */	lfs f29, 0x38(r1)
/* 80BD94C4  C3 C1 00 3C */	lfs f30, 0x3c(r1)
/* 80BD94C8  C3 E1 00 40 */	lfs f31, 0x40(r1)
/* 80BD94CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD94D0  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80BD94D4:
/* 80BD94D4  38 61 00 44 */	addi r3, r1, 0x44
/* 80BD94D8  7C 63 FA 14 */	add r3, r3, r31
/* 80BD94DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BD94E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BD94E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD94E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BD94EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD94F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BD94F4  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 80BD94F8  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80BD94FC  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80BD9500  7F C3 F3 78 */	mr r3, r30
/* 80BD9504  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BD9508  7C 85 23 78 */	mr r5, r4
/* 80BD950C  4B 76 D8 61 */	bl PSMTXMultVec
/* 80BD9510  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BD9514  38 9B 0F 38 */	addi r4, r27, 0xf38
/* 80BD9518  7C 65 1B 78 */	mr r5, r3
/* 80BD951C  4B 76 DB 75 */	bl PSVECAdd
/* 80BD9520  7F C3 F3 78 */	mr r3, r30
/* 80BD9524  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD9528  7C 85 23 78 */	mr r5, r4
/* 80BD952C  4B 76 D8 41 */	bl PSMTXMultVec
/* 80BD9530  38 61 00 20 */	addi r3, r1, 0x20
/* 80BD9534  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BD9538  7C 65 1B 78 */	mr r5, r3
/* 80BD953C  4B 76 DB 55 */	bl PSVECAdd
/* 80BD9540  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BD9544  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD9548  7F 65 DB 78 */	mr r5, r27
/* 80BD954C  4B 44 47 1D */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BD9550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD9554  41 82 00 08 */	beq lbl_80BD955C
/* 80BD9558  3B A0 00 01 */	li r29, 1
lbl_80BD955C:
/* 80BD955C  3B 9C 00 01 */	addi r28, r28, 1
/* 80BD9560  2C 1C 00 02 */	cmpwi r28, 2
/* 80BD9564  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BD9568  41 80 FF 6C */	blt lbl_80BD94D4
/* 80BD956C  7F A3 EB 78 */	mr r3, r29
/* 80BD9570  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80BD9574  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80BD9578  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80BD957C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80BD9580  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80BD9584  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80BD9588  39 61 00 80 */	addi r11, r1, 0x80
/* 80BD958C  4B 78 8C 95 */	bl _restgpr_27
/* 80BD9590  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BD9594  7C 08 03 A6 */	mtlr r0
/* 80BD9598  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BD959C  4E 80 00 20 */	blr 
