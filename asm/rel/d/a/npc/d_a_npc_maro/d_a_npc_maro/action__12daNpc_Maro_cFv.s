lbl_8055D368:
/* 8055D368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D36C  7C 08 02 A6 */	mflr r0
/* 8055D370  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D374  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055D378  7C 7F 1B 78 */	mr r31, r3
/* 8055D37C  38 A0 00 00 */	li r5, 0
/* 8055D380  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 8055D384  28 00 00 00 */	cmplwi r0, 0
/* 8055D388  40 82 00 14 */	bne lbl_8055D39C
/* 8055D38C  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 8055D390  38 A0 FF FF */	li r5, -1
/* 8055D394  4B BE D6 AD */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 8055D398  7C 65 1B 78 */	mr r5, r3
lbl_8055D39C:
/* 8055D39C  28 05 00 00 */	cmplwi r5, 0
/* 8055D3A0  41 82 00 80 */	beq lbl_8055D420
/* 8055D3A4  88 1F 10 C0 */	lbz r0, 0x10c0(r31)
/* 8055D3A8  28 00 00 06 */	cmplwi r0, 6
/* 8055D3AC  41 82 00 74 */	beq lbl_8055D420
/* 8055D3B0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 8055D3B4  7F E4 FB 78 */	mr r4, r31
/* 8055D3B8  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 8055D3BC  4B BE AA 11 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 8055D3C0  7F E3 FB 78 */	mr r3, r31
/* 8055D3C4  38 80 00 00 */	li r4, 0
/* 8055D3C8  38 A0 00 09 */	li r5, 9
/* 8055D3CC  38 C0 00 00 */	li r6, 0
/* 8055D3D0  4B BE D7 01 */	bl setDamage__8daNpcT_cFiii
/* 8055D3D4  38 00 00 00 */	li r0, 0
/* 8055D3D8  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 8055D3DC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8055D3E0  2C 00 00 00 */	cmpwi r0, 0
/* 8055D3E4  41 82 00 28 */	beq lbl_8055D40C
/* 8055D3E8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055D3EC  4B BE 83 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055D3F0  38 00 00 00 */	li r0, 0
/* 8055D3F4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8055D3F8  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 8055D3FC  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 8055D400  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8055D404  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055D408  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8055D40C:
/* 8055D40C  38 00 00 00 */	li r0, 0
/* 8055D410  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 8055D414  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 8055D418  38 00 00 01 */	li r0, 1
/* 8055D41C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_8055D420:
/* 8055D420  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 8055D424  2C 00 00 00 */	cmpwi r0, 0
/* 8055D428  41 82 00 64 */	beq lbl_8055D48C
/* 8055D42C  38 60 00 00 */	li r3, 0
/* 8055D430  38 80 00 00 */	li r4, 0
/* 8055D434  7C 88 23 78 */	mr r8, r4
/* 8055D438  7C 87 23 78 */	mr r7, r4
/* 8055D43C  7C 86 23 78 */	mr r6, r4
/* 8055D440  3C A0 80 56 */	lis r5, lit_4318@ha /* 0x80564CA0@ha */
/* 8055D444  C0 05 4C A0 */	lfs f0, lit_4318@l(r5)  /* 0x80564CA0@l */
/* 8055D448  38 00 00 02 */	li r0, 2
/* 8055D44C  7C 09 03 A6 */	mtctr r0
lbl_8055D450:
/* 8055D450  7C BF 22 14 */	add r5, r31, r4
/* 8055D454  B1 05 0D 08 */	sth r8, 0xd08(r5)
/* 8055D458  B0 E5 0D 0A */	sth r7, 0xd0a(r5)
/* 8055D45C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 8055D460  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8055D464  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8055D468  38 63 00 04 */	addi r3, r3, 4
/* 8055D46C  38 84 00 06 */	addi r4, r4, 6
/* 8055D470  42 00 FF E0 */	bdnz lbl_8055D450
/* 8055D474  38 00 00 00 */	li r0, 0
/* 8055D478  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8055D47C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8055D480  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8055D484  38 00 00 01 */	li r0, 1
/* 8055D488  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8055D48C:
/* 8055D48C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055D490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055D494  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8055D498  28 00 00 00 */	cmplwi r0, 0
/* 8055D49C  40 82 00 78 */	bne lbl_8055D514
/* 8055D4A0  38 00 00 00 */	li r0, 0
/* 8055D4A4  98 1F 11 38 */	stb r0, 0x1138(r31)
/* 8055D4A8  38 60 00 3C */	li r3, 0x3c
/* 8055D4AC  4B BE F6 C1 */	bl daNpcT_chkTmpBit__FUl
/* 8055D4B0  2C 03 00 00 */	cmpwi r3, 0
/* 8055D4B4  41 82 00 60 */	beq lbl_8055D514
/* 8055D4B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055D4BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055D4C0  88 03 00 EC */	lbz r0, 0xec(r3)
/* 8055D4C4  28 00 00 00 */	cmplwi r0, 0
/* 8055D4C8  40 82 00 44 */	bne lbl_8055D50C
/* 8055D4CC  80 1F 11 28 */	lwz r0, 0x1128(r31)
/* 8055D4D0  2C 00 00 00 */	cmpwi r0, 0
/* 8055D4D4  41 82 00 40 */	beq lbl_8055D514
/* 8055D4D8  38 7F 11 28 */	addi r3, r31, 0x1128
/* 8055D4DC  48 00 71 C1 */	bl func_8056469C
/* 8055D4E0  2C 03 00 00 */	cmpwi r3, 0
/* 8055D4E4  41 82 00 14 */	beq lbl_8055D4F8
/* 8055D4E8  7F E3 FB 78 */	mr r3, r31
/* 8055D4EC  4B FF EB C9 */	bl getArrowP__12daNpc_Maro_cFv
/* 8055D4F0  28 03 00 00 */	cmplwi r3, 0
/* 8055D4F4  40 82 00 20 */	bne lbl_8055D514
lbl_8055D4F8:
/* 8055D4F8  38 00 00 00 */	li r0, 0
/* 8055D4FC  90 1F 11 28 */	stw r0, 0x1128(r31)
/* 8055D500  38 00 00 01 */	li r0, 1
/* 8055D504  98 1F 11 37 */	stb r0, 0x1137(r31)
/* 8055D508  48 00 00 0C */	b lbl_8055D514
lbl_8055D50C:
/* 8055D50C  38 00 00 1E */	li r0, 0x1e
/* 8055D510  90 1F 11 28 */	stw r0, 0x1128(r31)
lbl_8055D514:
/* 8055D514  38 7F 11 0C */	addi r3, r31, 0x110c
/* 8055D518  4B E0 4B 01 */	bl __ptmf_test
/* 8055D51C  2C 03 00 00 */	cmpwi r3, 0
/* 8055D520  41 82 00 54 */	beq lbl_8055D574
/* 8055D524  38 7F 11 18 */	addi r3, r31, 0x1118
/* 8055D528  38 9F 11 0C */	addi r4, r31, 0x110c
/* 8055D52C  4B E0 4B 1D */	bl __ptmf_cmpr
/* 8055D530  2C 03 00 00 */	cmpwi r3, 0
/* 8055D534  40 82 00 1C */	bne lbl_8055D550
/* 8055D538  7F E3 FB 78 */	mr r3, r31
/* 8055D53C  38 80 00 00 */	li r4, 0
/* 8055D540  39 9F 11 18 */	addi r12, r31, 0x1118
/* 8055D544  4B E0 4B 41 */	bl __ptmf_scall
/* 8055D548  60 00 00 00 */	nop 
/* 8055D54C  48 00 00 28 */	b lbl_8055D574
lbl_8055D550:
/* 8055D550  80 7F 11 0C */	lwz r3, 0x110c(r31)
/* 8055D554  80 1F 11 10 */	lwz r0, 0x1110(r31)
/* 8055D558  90 61 00 08 */	stw r3, 8(r1)
/* 8055D55C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8055D560  80 1F 11 14 */	lwz r0, 0x1114(r31)
/* 8055D564  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055D568  7F E3 FB 78 */	mr r3, r31
/* 8055D56C  38 81 00 08 */	addi r4, r1, 8
/* 8055D570  48 00 07 C5 */	bl setAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i
lbl_8055D574:
/* 8055D574  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8055D578  4B BE 81 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055D57C  28 03 00 00 */	cmplwi r3, 0
/* 8055D580  41 82 00 30 */	beq lbl_8055D5B0
/* 8055D584  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8055D588  54 03 46 3E */	srwi r3, r0, 0x18
/* 8055D58C  28 03 00 FF */	cmplwi r3, 0xff
/* 8055D590  38 00 FF FF */	li r0, -1
/* 8055D594  41 82 00 08 */	beq lbl_8055D59C
/* 8055D598  7C 60 1B 78 */	mr r0, r3
lbl_8055D59C:
/* 8055D59C  2C 00 00 05 */	cmpwi r0, 5
/* 8055D5A0  41 82 00 08 */	beq lbl_8055D5A8
/* 8055D5A4  48 00 00 0C */	b lbl_8055D5B0
lbl_8055D5A8:
/* 8055D5A8  38 00 00 08 */	li r0, 8
/* 8055D5AC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_8055D5B0:
/* 8055D5B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055D5B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D5B8  7C 08 03 A6 */	mtlr r0
/* 8055D5BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D5C0  4E 80 00 20 */	blr 
