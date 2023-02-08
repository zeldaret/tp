lbl_80A03304:
/* 80A03304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A03308  7C 08 02 A6 */	mflr r0
/* 80A0330C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A03310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A03314  93 C1 00 08 */	stw r30, 8(r1)
/* 80A03318  7C 7F 1B 78 */	mr r31, r3
/* 80A0331C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A03320  2C 00 00 02 */	cmpwi r0, 2
/* 80A03324  41 82 00 F0 */	beq lbl_80A03414
/* 80A03328  40 80 02 34 */	bge lbl_80A0355C
/* 80A0332C  2C 00 00 00 */	cmpwi r0, 0
/* 80A03330  40 80 00 0C */	bge lbl_80A0333C
/* 80A03334  48 00 02 28 */	b lbl_80A0355C
/* 80A03338  48 00 02 24 */	b lbl_80A0355C
lbl_80A0333C:
/* 80A0333C  88 1F 0F 8A */	lbz r0, 0xf8a(r31)
/* 80A03340  28 00 00 00 */	cmplwi r0, 0
/* 80A03344  40 82 00 68 */	bne lbl_80A033AC
/* 80A03348  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A0334C  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A03350  41 82 00 28 */	beq lbl_80A03378
/* 80A03354  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A03358  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A0335C  4B 74 25 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03360  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A03364  38 00 00 22 */	li r0, 0x22
/* 80A03368  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A0336C  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A03370  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A03374  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A03378:
/* 80A03378  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A0337C  2C 00 00 00 */	cmpwi r0, 0
/* 80A03380  41 82 00 8C */	beq lbl_80A0340C
/* 80A03384  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03388  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A0338C  4B 74 25 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03390  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03394  38 00 00 00 */	li r0, 0
/* 80A03398  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A0339C  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A033A0  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A033A4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A033A8  48 00 00 64 */	b lbl_80A0340C
lbl_80A033AC:
/* 80A033AC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A033B0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A033B4  41 82 00 28 */	beq lbl_80A033DC
/* 80A033B8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A033BC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A033C0  4B 74 24 D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A033C4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A033C8  38 00 00 14 */	li r0, 0x14
/* 80A033CC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A033D0  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A033D4  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A033D8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A033DC:
/* 80A033DC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A033E0  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A033E4  41 82 00 28 */	beq lbl_80A0340C
/* 80A033E8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A033EC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A033F0  4B 74 24 A9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A033F4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A033F8  38 00 00 16 */	li r0, 0x16
/* 80A033FC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03400  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A03404  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A03408  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A0340C:
/* 80A0340C  38 00 00 02 */	li r0, 2
/* 80A03410  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A03414:
/* 80A03414  88 1F 0F 8A */	lbz r0, 0xf8a(r31)
/* 80A03418  28 00 00 00 */	cmplwi r0, 0
/* 80A0341C  40 82 00 3C */	bne lbl_80A03458
/* 80A03420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A03424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A03428  88 9F 0F 88 */	lbz r4, 0xf88(r31)
/* 80A0342C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A03430  7C 05 07 74 */	extsb r5, r0
/* 80A03434  4B 63 1F 2D */	bl isSwitch__10dSv_info_cCFii
/* 80A03438  2C 03 00 00 */	cmpwi r3, 0
/* 80A0343C  41 82 00 1C */	beq lbl_80A03458
/* 80A03440  38 00 00 03 */	li r0, 3
/* 80A03444  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A03448  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A0344C  38 00 00 01 */	li r0, 1
/* 80A03450  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80A03454  48 00 01 08 */	b lbl_80A0355C
lbl_80A03458:
/* 80A03458  88 1F 0F 8B */	lbz r0, 0xf8b(r31)
/* 80A0345C  28 00 00 00 */	cmplwi r0, 0
/* 80A03460  40 82 00 3C */	bne lbl_80A0349C
/* 80A03464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A03468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0346C  88 9F 0F 89 */	lbz r4, 0xf89(r31)
/* 80A03470  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A03474  7C 05 07 74 */	extsb r5, r0
/* 80A03478  4B 63 1E E9 */	bl isSwitch__10dSv_info_cCFii
/* 80A0347C  2C 03 00 00 */	cmpwi r3, 0
/* 80A03480  41 82 00 1C */	beq lbl_80A0349C
/* 80A03484  38 00 00 04 */	li r0, 4
/* 80A03488  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A0348C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A03490  38 00 00 01 */	li r0, 1
/* 80A03494  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80A03498  48 00 00 C4 */	b lbl_80A0355C
lbl_80A0349C:
/* 80A0349C  7F E3 FB 78 */	mr r3, r31
/* 80A034A0  4B 74 7E 99 */	bl srchPlayerActor__8daNpcT_cFv
/* 80A034A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A034A8  41 82 00 44 */	beq lbl_80A034EC
/* 80A034AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A034B0  2C 00 00 01 */	cmpwi r0, 1
/* 80A034B4  41 82 00 2C */	beq lbl_80A034E0
/* 80A034B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A034BC  4B 74 22 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A034C0  38 00 00 00 */	li r0, 0
/* 80A034C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A034C8  3C 60 80 A0 */	lis r3, lit_4337@ha /* 0x80A0670C@ha */
/* 80A034CC  C0 03 67 0C */	lfs f0, lit_4337@l(r3)  /* 0x80A0670C@l */
/* 80A034D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A034D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A034D8  38 00 00 01 */	li r0, 1
/* 80A034DC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A034E0:
/* 80A034E0  38 00 00 00 */	li r0, 0
/* 80A034E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A034E8  48 00 00 74 */	b lbl_80A0355C
lbl_80A034EC:
/* 80A034EC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A034F0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A034F4  7C 04 00 00 */	cmpw r4, r0
/* 80A034F8  41 82 00 2C */	beq lbl_80A03524
/* 80A034FC  7F E3 FB 78 */	mr r3, r31
/* 80A03500  38 A0 FF FF */	li r5, -1
/* 80A03504  38 C0 FF FF */	li r6, -1
/* 80A03508  38 E0 00 0F */	li r7, 0xf
/* 80A0350C  39 00 00 00 */	li r8, 0
/* 80A03510  4B 74 81 39 */	bl step__8daNpcT_cFsiiii
/* 80A03514  2C 03 00 00 */	cmpwi r3, 0
/* 80A03518  41 82 00 0C */	beq lbl_80A03524
/* 80A0351C  38 00 00 01 */	li r0, 1
/* 80A03520  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A03524:
/* 80A03524  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03528  2C 00 00 00 */	cmpwi r0, 0
/* 80A0352C  41 82 00 28 */	beq lbl_80A03554
/* 80A03530  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03534  4B 74 21 C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A03538  38 00 00 00 */	li r0, 0
/* 80A0353C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03540  3C 60 80 A0 */	lis r3, lit_4337@ha /* 0x80A0670C@ha */
/* 80A03544  C0 03 67 0C */	lfs f0, lit_4337@l(r3)  /* 0x80A0670C@l */
/* 80A03548  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A0354C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03550  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A03554:
/* 80A03554  38 00 00 00 */	li r0, 0
/* 80A03558  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A0355C:
/* 80A0355C  38 60 00 01 */	li r3, 1
/* 80A03560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A03564  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A03568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0356C  7C 08 03 A6 */	mtlr r0
/* 80A03570  38 21 00 10 */	addi r1, r1, 0x10
/* 80A03574  4E 80 00 20 */	blr 
