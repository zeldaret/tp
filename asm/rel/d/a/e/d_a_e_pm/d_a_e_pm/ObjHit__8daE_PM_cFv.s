lbl_8074A3DC:
/* 8074A3DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074A3E0  7C 08 02 A6 */	mflr r0
/* 8074A3E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074A3E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8074A3EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8074A3F0  7C 7F 1B 78 */	mr r31, r3
/* 8074A3F4  A8 63 06 16 */	lha r3, 0x616(r3)
/* 8074A3F8  38 03 FF FF */	addi r0, r3, -1
/* 8074A3FC  B0 1F 06 16 */	sth r0, 0x616(r31)
/* 8074A400  A8 1F 06 16 */	lha r0, 0x616(r31)
/* 8074A404  2C 00 00 00 */	cmpwi r0, 0
/* 8074A408  41 81 00 0C */	bgt lbl_8074A414
/* 8074A40C  38 00 00 00 */	li r0, 0
/* 8074A410  B0 1F 06 16 */	sth r0, 0x616(r31)
lbl_8074A414:
/* 8074A414  A8 1F 06 16 */	lha r0, 0x616(r31)
/* 8074A418  2C 00 00 00 */	cmpwi r0, 0
/* 8074A41C  40 81 00 28 */	ble lbl_8074A444
/* 8074A420  80 1F 0A 30 */	lwz r0, 0xa30(r31)
/* 8074A424  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8074A428  90 1F 0A 30 */	stw r0, 0xa30(r31)
/* 8074A42C  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 8074A430  81 9F 0A 54 */	lwz r12, 0xa54(r31)
/* 8074A434  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8074A438  7D 89 03 A6 */	mtctr r12
/* 8074A43C  4E 80 04 21 */	bctrl 
/* 8074A440  48 00 01 EC */	b lbl_8074A62C
lbl_8074A444:
/* 8074A444  80 1F 0A 30 */	lwz r0, 0xa30(r31)
/* 8074A448  60 00 00 01 */	ori r0, r0, 1
/* 8074A44C  90 1F 0A 30 */	stw r0, 0xa30(r31)
/* 8074A450  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 8074A454  4B 93 93 DC */	b Move__10dCcD_GSttsFv
/* 8074A458  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 8074A45C  4B 93 A0 04 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8074A460  28 03 00 00 */	cmplwi r3, 0
/* 8074A464  41 82 01 C8 */	beq lbl_8074A62C
/* 8074A468  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 8074A46C  4B 93 A0 8C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8074A470  7C 7E 1B 78 */	mr r30, r3
/* 8074A474  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 8074A478  4B 93 A0 80 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8074A47C  90 7F 0B 54 */	stw r3, 0xb54(r31)
/* 8074A480  38 60 00 00 */	li r3, 0
/* 8074A484  4B 8E 24 F8 */	b getLayerNo__14dComIfG_play_cFi
/* 8074A488  2C 03 00 00 */	cmpwi r3, 0
/* 8074A48C  40 82 00 3C */	bne lbl_8074A4C8
/* 8074A490  88 1F 06 1A */	lbz r0, 0x61a(r31)
/* 8074A494  28 00 00 04 */	cmplwi r0, 4
/* 8074A498  40 82 00 30 */	bne lbl_8074A4C8
/* 8074A49C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8074A4A0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8074A4A4  40 82 00 24 */	bne lbl_8074A4C8
/* 8074A4A8  74 60 D8 00 */	andis. r0, r3, 0xd800
/* 8074A4AC  40 82 00 1C */	bne lbl_8074A4C8
/* 8074A4B0  38 00 00 02 */	li r0, 2
/* 8074A4B4  98 1F 06 10 */	stb r0, 0x610(r31)
/* 8074A4B8  38 00 00 00 */	li r0, 0
/* 8074A4BC  98 1F 06 11 */	stb r0, 0x611(r31)
/* 8074A4C0  98 1F 06 12 */	stb r0, 0x612(r31)
/* 8074A4C4  48 00 01 68 */	b lbl_8074A62C
lbl_8074A4C8:
/* 8074A4C8  7F E3 FB 78 */	mr r3, r31
/* 8074A4CC  4B FF FD 45 */	bl At_Check__8daE_PM_cFv
/* 8074A4D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070056@ha */
/* 8074A4D4  38 03 00 56 */	addi r0, r3, 0x0056 /* 0x00070056@l */
/* 8074A4D8  90 01 00 08 */	stw r0, 8(r1)
/* 8074A4DC  38 7F 07 20 */	addi r3, r31, 0x720
/* 8074A4E0  38 81 00 08 */	addi r4, r1, 8
/* 8074A4E4  38 A0 FF FF */	li r5, -1
/* 8074A4E8  81 9F 07 20 */	lwz r12, 0x720(r31)
/* 8074A4EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074A4F0  7D 89 03 A6 */	mtctr r12
/* 8074A4F4  4E 80 04 21 */	bctrl 
/* 8074A4F8  38 00 00 04 */	li r0, 4
/* 8074A4FC  98 1F 06 10 */	stb r0, 0x610(r31)
/* 8074A500  38 00 00 00 */	li r0, 0
/* 8074A504  98 1F 06 11 */	stb r0, 0x611(r31)
/* 8074A508  88 1F 06 1A */	lbz r0, 0x61a(r31)
/* 8074A50C  28 00 00 04 */	cmplwi r0, 4
/* 8074A510  41 82 00 68 */	beq lbl_8074A578
/* 8074A514  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8074A518  3C 60 80 75 */	lis r3, lit_4239@ha
/* 8074A51C  C8 23 BF DC */	lfd f1, lit_4239@l(r3)
/* 8074A520  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8074A524  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074A528  3C 00 43 30 */	lis r0, 0x4330
/* 8074A52C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074A530  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8074A534  EC 20 08 28 */	fsubs f1, f0, f1
/* 8074A538  3C 60 80 75 */	lis r3, l_HIO@ha
/* 8074A53C  38 63 C3 94 */	addi r3, r3, l_HIO@l
/* 8074A540  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8074A544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074A548  4C 40 13 82 */	cror 2, 0, 2
/* 8074A54C  40 82 00 D8 */	bne lbl_8074A624
/* 8074A550  38 00 00 06 */	li r0, 6
/* 8074A554  98 1F 06 10 */	stb r0, 0x610(r31)
/* 8074A558  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 8074A55C  81 9F 0A 54 */	lwz r12, 0xa54(r31)
/* 8074A560  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8074A564  7D 89 03 A6 */	mtctr r12
/* 8074A568  4E 80 04 21 */	bctrl 
/* 8074A56C  38 00 00 00 */	li r0, 0
/* 8074A570  98 1F 06 12 */	stb r0, 0x612(r31)
/* 8074A574  48 00 00 B0 */	b lbl_8074A624
lbl_8074A578:
/* 8074A578  38 60 00 00 */	li r3, 0
/* 8074A57C  4B 8E 24 00 */	b getLayerNo__14dComIfG_play_cFi
/* 8074A580  2C 03 00 02 */	cmpwi r3, 2
/* 8074A584  40 82 00 70 */	bne lbl_8074A5F4
/* 8074A588  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8074A58C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8074A590  40 82 00 1C */	bne lbl_8074A5AC
/* 8074A594  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 8074A598  40 82 00 14 */	bne lbl_8074A5AC
/* 8074A59C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8074A5A0  40 82 00 0C */	bne lbl_8074A5AC
/* 8074A5A4  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 8074A5A8  41 82 00 38 */	beq lbl_8074A5E0
lbl_8074A5AC:
/* 8074A5AC  88 7F 05 F8 */	lbz r3, 0x5f8(r31)
/* 8074A5B0  38 03 FF FF */	addi r0, r3, -1
/* 8074A5B4  98 1F 05 F8 */	stb r0, 0x5f8(r31)
/* 8074A5B8  88 1F 05 F8 */	lbz r0, 0x5f8(r31)
/* 8074A5BC  28 00 00 00 */	cmplwi r0, 0
/* 8074A5C0  40 82 00 64 */	bne lbl_8074A624
/* 8074A5C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074A5C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074A5CC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8074A5D0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8074A5D4  64 00 08 00 */	oris r0, r0, 0x800
/* 8074A5D8  90 03 05 70 */	stw r0, 0x570(r3)
/* 8074A5DC  48 00 00 48 */	b lbl_8074A624
lbl_8074A5E0:
/* 8074A5E0  38 00 00 04 */	li r0, 4
/* 8074A5E4  98 1F 06 10 */	stb r0, 0x610(r31)
/* 8074A5E8  38 00 00 0A */	li r0, 0xa
/* 8074A5EC  98 1F 06 11 */	stb r0, 0x611(r31)
/* 8074A5F0  48 00 00 34 */	b lbl_8074A624
lbl_8074A5F4:
/* 8074A5F4  88 7F 05 F8 */	lbz r3, 0x5f8(r31)
/* 8074A5F8  38 03 FF FF */	addi r0, r3, -1
/* 8074A5FC  98 1F 05 F8 */	stb r0, 0x5f8(r31)
/* 8074A600  88 1F 05 F8 */	lbz r0, 0x5f8(r31)
/* 8074A604  28 00 00 00 */	cmplwi r0, 0
/* 8074A608  40 82 00 1C */	bne lbl_8074A624
/* 8074A60C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074A610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074A614  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8074A618  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8074A61C  64 00 08 00 */	oris r0, r0, 0x800
/* 8074A620  90 03 05 70 */	stw r0, 0x570(r3)
lbl_8074A624:
/* 8074A624  38 00 00 0F */	li r0, 0xf
/* 8074A628  B0 1F 06 16 */	sth r0, 0x616(r31)
lbl_8074A62C:
/* 8074A62C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8074A630  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8074A634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074A638  7C 08 03 A6 */	mtlr r0
/* 8074A63C  38 21 00 20 */	addi r1, r1, 0x20
/* 8074A640  4E 80 00 20 */	blr 
