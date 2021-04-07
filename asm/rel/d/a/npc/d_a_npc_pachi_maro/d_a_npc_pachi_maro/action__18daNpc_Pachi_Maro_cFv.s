lbl_80A98C64:
/* 80A98C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A98C68  7C 08 02 A6 */	mflr r0
/* 80A98C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A98C70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A98C74  7C 7F 1B 78 */	mr r31, r3
/* 80A98C78  38 A0 00 00 */	li r5, 0
/* 80A98C7C  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A98C80  28 00 00 00 */	cmplwi r0, 0
/* 80A98C84  40 82 00 14 */	bne lbl_80A98C98
/* 80A98C88  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A98C8C  38 A0 FF FF */	li r5, -1
/* 80A98C90  4B 6B 1D B1 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80A98C94  7C 65 1B 78 */	mr r5, r3
lbl_80A98C98:
/* 80A98C98  28 05 00 00 */	cmplwi r5, 0
/* 80A98C9C  41 82 00 74 */	beq lbl_80A98D10
/* 80A98CA0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A98CA4  7F E4 FB 78 */	mr r4, r31
/* 80A98CA8  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80A98CAC  4B 6A F1 21 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80A98CB0  7F E3 FB 78 */	mr r3, r31
/* 80A98CB4  38 80 00 00 */	li r4, 0
/* 80A98CB8  38 A0 00 09 */	li r5, 9
/* 80A98CBC  38 C0 00 00 */	li r6, 0
/* 80A98CC0  4B 6B 1E 11 */	bl setDamage__8daNpcT_cFiii
/* 80A98CC4  38 00 00 00 */	li r0, 0
/* 80A98CC8  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80A98CCC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A98CD0  2C 00 00 00 */	cmpwi r0, 0
/* 80A98CD4  41 82 00 28 */	beq lbl_80A98CFC
/* 80A98CD8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A98CDC  4B 6A CA 21 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A98CE0  38 00 00 00 */	li r0, 0
/* 80A98CE4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A98CE8  3C 60 80 AA */	lis r3, lit_4346@ha /* 0x80A9B930@ha */
/* 80A98CEC  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)  /* 0x80A9B930@l */
/* 80A98CF0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A98CF4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A98CF8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A98CFC:
/* 80A98CFC  38 00 00 00 */	li r0, 0
/* 80A98D00  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80A98D04  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80A98D08  38 00 00 01 */	li r0, 1
/* 80A98D0C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A98D10:
/* 80A98D10  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80A98D14  2C 00 00 00 */	cmpwi r0, 0
/* 80A98D18  41 82 00 5C */	beq lbl_80A98D74
/* 80A98D1C  38 C0 00 00 */	li r6, 0
/* 80A98D20  38 60 00 00 */	li r3, 0
/* 80A98D24  7C C4 33 78 */	mr r4, r6
/* 80A98D28  3C A0 80 AA */	lis r5, lit_4346@ha /* 0x80A9B930@ha */
/* 80A98D2C  C0 05 B9 30 */	lfs f0, lit_4346@l(r5)  /* 0x80A9B930@l */
/* 80A98D30  38 00 00 02 */	li r0, 2
/* 80A98D34  7C 09 03 A6 */	mtctr r0
lbl_80A98D38:
/* 80A98D38  7C BF 22 14 */	add r5, r31, r4
/* 80A98D3C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80A98D40  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80A98D44  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A98D48  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A98D4C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A98D50  38 63 00 04 */	addi r3, r3, 4
/* 80A98D54  38 84 00 06 */	addi r4, r4, 6
/* 80A98D58  42 00 FF E0 */	bdnz lbl_80A98D38
/* 80A98D5C  38 00 00 00 */	li r0, 0
/* 80A98D60  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A98D64  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A98D68  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A98D6C  38 00 00 01 */	li r0, 1
/* 80A98D70  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A98D74:
/* 80A98D74  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80A98D78  4B 8C 92 A1 */	bl __ptmf_test
/* 80A98D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80A98D80  41 82 00 54 */	beq lbl_80A98DD4
/* 80A98D84  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A98D88  38 9F 0F B0 */	addi r4, r31, 0xfb0
/* 80A98D8C  4B 8C 92 BD */	bl __ptmf_cmpr
/* 80A98D90  2C 03 00 00 */	cmpwi r3, 0
/* 80A98D94  40 82 00 1C */	bne lbl_80A98DB0
/* 80A98D98  7F E3 FB 78 */	mr r3, r31
/* 80A98D9C  38 80 00 00 */	li r4, 0
/* 80A98DA0  39 9F 0F BC */	addi r12, r31, 0xfbc
/* 80A98DA4  4B 8C 92 E1 */	bl __ptmf_scall
/* 80A98DA8  60 00 00 00 */	nop 
/* 80A98DAC  48 00 00 28 */	b lbl_80A98DD4
lbl_80A98DB0:
/* 80A98DB0  80 7F 0F B0 */	lwz r3, 0xfb0(r31)
/* 80A98DB4  80 1F 0F B4 */	lwz r0, 0xfb4(r31)
/* 80A98DB8  90 61 00 08 */	stw r3, 8(r1)
/* 80A98DBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A98DC0  80 1F 0F B8 */	lwz r0, 0xfb8(r31)
/* 80A98DC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A98DC8  7F E3 FB 78 */	mr r3, r31
/* 80A98DCC  38 81 00 08 */	addi r4, r1, 8
/* 80A98DD0  48 00 07 8D */	bl setAction__18daNpc_Pachi_Maro_cFM18daNpc_Pachi_Maro_cFPCvPvPv_i
lbl_80A98DD4:
/* 80A98DD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A98DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A98DDC  7C 08 03 A6 */	mtlr r0
/* 80A98DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A98DE4  4E 80 00 20 */	blr 
