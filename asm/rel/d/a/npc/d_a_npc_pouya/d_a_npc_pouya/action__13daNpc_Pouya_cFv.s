lbl_80AAF35C:
/* 80AAF35C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAF360  7C 08 02 A6 */	mflr r0
/* 80AAF364  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAF368  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AAF36C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AAF370  7C 7F 1B 78 */	mr r31, r3
/* 80AAF374  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80AAF378  38 A0 FF FF */	li r5, -1
/* 80AAF37C  4B 69 B6 C4 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80AAF380  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AAF384  41 82 00 98 */	beq lbl_80AAF41C
/* 80AAF388  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AAF38C  28 00 00 01 */	cmplwi r0, 1
/* 80AAF390  41 82 00 8C */	beq lbl_80AAF41C
/* 80AAF394  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AAF398  4B 5D 51 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80AAF39C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80AAF3A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AAF3A4  41 82 00 78 */	beq lbl_80AAF41C
/* 80AAF3A8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AAF3AC  7F E4 FB 78 */	mr r4, r31
/* 80AAF3B0  7F C5 F3 78 */	mr r5, r30
/* 80AAF3B4  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80AAF3B8  4B 69 8A 14 */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80AAF3BC  7F E3 FB 78 */	mr r3, r31
/* 80AAF3C0  38 80 00 00 */	li r4, 0
/* 80AAF3C4  38 A0 00 11 */	li r5, 0x11
/* 80AAF3C8  38 C0 00 00 */	li r6, 0
/* 80AAF3CC  4B 69 B7 04 */	b setDamage__8daNpcT_cFiii
/* 80AAF3D0  38 00 00 00 */	li r0, 0
/* 80AAF3D4  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80AAF3D8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AAF3DC  2C 00 00 00 */	cmpwi r0, 0
/* 80AAF3E0  41 82 00 28 */	beq lbl_80AAF408
/* 80AAF3E4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AAF3E8  4B 69 63 14 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AAF3EC  38 00 00 00 */	li r0, 0
/* 80AAF3F0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AAF3F4  3C 60 80 AB */	lis r3, lit_4204@ha
/* 80AAF3F8  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)
/* 80AAF3FC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AAF400  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AAF404  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AAF408:
/* 80AAF408  38 00 00 00 */	li r0, 0
/* 80AAF40C  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80AAF410  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80AAF414  38 00 00 01 */	li r0, 1
/* 80AAF418  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AAF41C:
/* 80AAF41C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80AAF420  2C 00 00 00 */	cmpwi r0, 0
/* 80AAF424  41 82 00 5C */	beq lbl_80AAF480
/* 80AAF428  38 C0 00 00 */	li r6, 0
/* 80AAF42C  38 60 00 00 */	li r3, 0
/* 80AAF430  7C C4 33 78 */	mr r4, r6
/* 80AAF434  3C A0 80 AB */	lis r5, lit_4204@ha
/* 80AAF438  C0 05 20 B8 */	lfs f0, lit_4204@l(r5)
/* 80AAF43C  38 00 00 02 */	li r0, 2
/* 80AAF440  7C 09 03 A6 */	mtctr r0
lbl_80AAF444:
/* 80AAF444  7C BF 22 14 */	add r5, r31, r4
/* 80AAF448  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80AAF44C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80AAF450  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80AAF454  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AAF458  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AAF45C  38 63 00 04 */	addi r3, r3, 4
/* 80AAF460  38 84 00 06 */	addi r4, r4, 6
/* 80AAF464  42 00 FF E0 */	bdnz lbl_80AAF444
/* 80AAF468  38 00 00 00 */	li r0, 0
/* 80AAF46C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AAF470  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AAF474  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AAF478  38 00 00 01 */	li r0, 1
/* 80AAF47C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AAF480:
/* 80AAF480  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80AAF484  4B 8B 2B 94 */	b __ptmf_test
/* 80AAF488  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF48C  41 82 00 54 */	beq lbl_80AAF4E0
/* 80AAF490  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80AAF494  38 9F 0F B0 */	addi r4, r31, 0xfb0
/* 80AAF498  4B 8B 2B B0 */	b __ptmf_cmpr
/* 80AAF49C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF4A0  40 82 00 1C */	bne lbl_80AAF4BC
/* 80AAF4A4  7F E3 FB 78 */	mr r3, r31
/* 80AAF4A8  38 80 00 00 */	li r4, 0
/* 80AAF4AC  39 9F 0F BC */	addi r12, r31, 0xfbc
/* 80AAF4B0  4B 8B 2B D4 */	b __ptmf_scall
/* 80AAF4B4  60 00 00 00 */	nop 
/* 80AAF4B8  48 00 00 28 */	b lbl_80AAF4E0
lbl_80AAF4BC:
/* 80AAF4BC  80 7F 0F B0 */	lwz r3, 0xfb0(r31)
/* 80AAF4C0  80 1F 0F B4 */	lwz r0, 0xfb4(r31)
/* 80AAF4C4  90 61 00 08 */	stw r3, 8(r1)
/* 80AAF4C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AAF4CC  80 1F 0F B8 */	lwz r0, 0xfb8(r31)
/* 80AAF4D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AAF4D4  7F E3 FB 78 */	mr r3, r31
/* 80AAF4D8  38 81 00 08 */	addi r4, r1, 8
/* 80AAF4DC  48 00 07 75 */	bl setAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i
lbl_80AAF4E0:
/* 80AAF4E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAF4E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AAF4E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAF4EC  7C 08 03 A6 */	mtlr r0
/* 80AAF4F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAF4F4  4E 80 00 20 */	blr 
