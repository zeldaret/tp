lbl_80B8A54C:
/* 80B8A54C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8A550  7C 08 02 A6 */	mflr r0
/* 80B8A554  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8A558  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B8A55C  7C 7F 1B 78 */	mr r31, r3
/* 80B8A560  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B8A564  2C 00 00 02 */	cmpwi r0, 2
/* 80B8A568  41 82 00 80 */	beq lbl_80B8A5E8
/* 80B8A56C  40 80 00 C4 */	bge lbl_80B8A630
/* 80B8A570  2C 00 00 00 */	cmpwi r0, 0
/* 80B8A574  41 82 00 0C */	beq lbl_80B8A580
/* 80B8A578  48 00 00 B8 */	b lbl_80B8A630
/* 80B8A57C  48 00 00 B4 */	b lbl_80B8A630
lbl_80B8A580:
/* 80B8A580  38 80 00 14 */	li r4, 0x14
/* 80B8A584  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8A588  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8A58C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B8A590  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8A594  7D 89 03 A6 */	mtctr r12
/* 80B8A598  4E 80 04 21 */	bctrl 
/* 80B8A59C  7F E3 FB 78 */	mr r3, r31
/* 80B8A5A0  38 80 00 00 */	li r4, 0
/* 80B8A5A4  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8A5A8  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8A5AC  38 A0 00 00 */	li r5, 0
/* 80B8A5B0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8A5B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8A5B8  7D 89 03 A6 */	mtctr r12
/* 80B8A5BC  4E 80 04 21 */	bctrl 
/* 80B8A5C0  7F E3 FB 78 */	mr r3, r31
/* 80B8A5C4  38 80 00 00 */	li r4, 0
/* 80B8A5C8  4B FF 41 2D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8A5CC  38 00 00 00 */	li r0, 0
/* 80B8A5D0  90 1F 09 38 */	stw r0, 0x938(r31)
/* 80B8A5D4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B8A5D8  38 00 00 01 */	li r0, 1
/* 80B8A5DC  98 1F 15 94 */	stb r0, 0x1594(r31)
/* 80B8A5E0  38 00 00 02 */	li r0, 2
/* 80B8A5E4  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B8A5E8:
/* 80B8A5E8  38 7F 13 38 */	addi r3, r31, 0x1338
/* 80B8A5EC  4B 4F 9E 75 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80B8A5F0  28 03 00 00 */	cmplwi r3, 0
/* 80B8A5F4  40 82 00 10 */	bne lbl_80B8A604
/* 80B8A5F8  88 1F 15 C1 */	lbz r0, 0x15c1(r31)
/* 80B8A5FC  28 00 00 00 */	cmplwi r0, 0
/* 80B8A600  41 82 00 30 */	beq lbl_80B8A630
lbl_80B8A604:
/* 80B8A604  3C 60 80 B9 */	lis r3, lit_11309@ha /* 0x80B8D894@ha */
/* 80B8A608  38 83 D8 94 */	addi r4, r3, lit_11309@l /* 0x80B8D894@l */
/* 80B8A60C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8A610  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8A614  90 61 00 08 */	stw r3, 8(r1)
/* 80B8A618  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8A61C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8A620  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8A624  7F E3 FB 78 */	mr r3, r31
/* 80B8A628  38 81 00 08 */	addi r4, r1, 8
/* 80B8A62C  4B FF 34 F5 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B8A630:
/* 80B8A630  38 60 00 01 */	li r3, 1
/* 80B8A634  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B8A638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B8A63C  7C 08 03 A6 */	mtlr r0
/* 80B8A640  38 21 00 20 */	addi r1, r1, 0x20
/* 80B8A644  4E 80 00 20 */	blr 
