lbl_8019A238:
/* 8019A238  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019A23C  7C 08 02 A6 */	mflr r0
/* 8019A240  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019A244  39 61 00 30 */	addi r11, r1, 0x30
/* 8019A248  48 1C 7F 8D */	bl _savegpr_27
/* 8019A24C  7C 7B 1B 78 */	mr r27, r3
/* 8019A250  2C 04 FF FF */	cmpwi r4, -1
/* 8019A254  41 82 00 D8 */	beq lbl_8019A32C
/* 8019A258  90 9B 0F 60 */	stw r4, 0xf60(r27)
/* 8019A25C  38 00 00 FF */	li r0, 0xff
/* 8019A260  98 1B 0F 73 */	stb r0, 0xf73(r27)
/* 8019A264  3B 80 00 00 */	li r28, 0
/* 8019A268  3B E0 00 00 */	li r31, 0
/* 8019A26C  3B A0 00 00 */	li r29, 0
/* 8019A270  1C 04 00 03 */	mulli r0, r4, 3
/* 8019A274  38 62 A1 58 */	la r3, item_no(r2) /* 80453B58-_SDA2_BASE_ */
/* 8019A278  7F C3 02 14 */	add r30, r3, r0
lbl_8019A27C:
/* 8019A27C  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 8019A280  80 6D 81 78 */	lwz r3, shop_item_pos_data_tbl(r13)
/* 8019A284  7C 83 EA 14 */	add r4, r3, r29
/* 8019A288  C0 04 00 00 */	lfs f0, 0(r4)
/* 8019A28C  EC 01 00 2A */	fadds f0, f1, f0
/* 8019A290  D0 01 00 08 */	stfs f0, 8(r1)
/* 8019A294  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8019A298  C0 04 00 04 */	lfs f0, 4(r4)
/* 8019A29C  EC 01 00 2A */	fadds f0, f1, f0
/* 8019A2A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019A2A4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 8019A2A8  38 1D 00 08 */	addi r0, r29, 8
/* 8019A2AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8019A2B0  EC 01 00 2A */	fadds f0, f1, f0
/* 8019A2B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8019A2B8  88 9E 00 00 */	lbz r4, 0(r30)
/* 8019A2BC  28 04 00 FF */	cmplwi r4, 0xff
/* 8019A2C0  41 82 00 3C */	beq lbl_8019A2FC
/* 8019A2C4  38 60 02 1E */	li r3, 0x21e
/* 8019A2C8  38 A1 00 08 */	addi r5, r1, 8
/* 8019A2CC  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8019A2D0  7C 06 07 74 */	extsb r6, r0
/* 8019A2D4  38 FB 04 DC */	addi r7, r27, 0x4dc
/* 8019A2D8  39 00 00 00 */	li r8, 0
/* 8019A2DC  39 20 FF FF */	li r9, -1
/* 8019A2E0  4B E7 FA B9 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8019A2E4  38 1F 0E 4C */	addi r0, r31, 0xe4c
/* 8019A2E8  7C 7B 01 2E */	stwx r3, r27, r0
/* 8019A2EC  7F 63 DB 78 */	mr r3, r27
/* 8019A2F0  7F 84 E3 78 */	mr r4, r28
/* 8019A2F4  4B FF D2 E9 */	bl offFlag__13dShopSystem_cFi
/* 8019A2F8  48 00 00 1C */	b lbl_8019A314
lbl_8019A2FC:
/* 8019A2FC  38 60 FF FF */	li r3, -1
/* 8019A300  38 1F 0E 4C */	addi r0, r31, 0xe4c
/* 8019A304  7C 7B 01 2E */	stwx r3, r27, r0
/* 8019A308  7F 63 DB 78 */	mr r3, r27
/* 8019A30C  7F 84 E3 78 */	mr r4, r28
/* 8019A310  4B FF D2 B1 */	bl onFlag__13dShopSystem_cFi
lbl_8019A314:
/* 8019A314  3B 9C 00 01 */	addi r28, r28, 1
/* 8019A318  2C 1C 00 03 */	cmpwi r28, 3
/* 8019A31C  3B FF 00 04 */	addi r31, r31, 4
/* 8019A320  3B DE 00 01 */	addi r30, r30, 1
/* 8019A324  3B BD 00 0C */	addi r29, r29, 0xc
/* 8019A328  41 80 FF 54 */	blt lbl_8019A27C
lbl_8019A32C:
/* 8019A32C  39 61 00 30 */	addi r11, r1, 0x30
/* 8019A330  48 1C 7E F1 */	bl _restgpr_27
/* 8019A334  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019A338  7C 08 03 A6 */	mtlr r0
/* 8019A33C  38 21 00 30 */	addi r1, r1, 0x30
/* 8019A340  4E 80 00 20 */	blr 
