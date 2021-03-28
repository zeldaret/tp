lbl_80AE3DF0:
/* 80AE3DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE3DF4  7C 08 02 A6 */	mflr r0
/* 80AE3DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE3DFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AE3E00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AE3E04  7C 7F 1B 78 */	mr r31, r3
/* 80AE3E08  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80AE3E0C  38 A0 FF FF */	li r5, -1
/* 80AE3E10  4B 66 6C 30 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80AE3E14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE3E18  41 82 00 8C */	beq lbl_80AE3EA4
/* 80AE3E1C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80AE3E20  4B 5A 06 D8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80AE3E24  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80AE3E28  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AE3E2C  41 82 00 78 */	beq lbl_80AE3EA4
/* 80AE3E30  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AE3E34  7F E4 FB 78 */	mr r4, r31
/* 80AE3E38  7F C5 F3 78 */	mr r5, r30
/* 80AE3E3C  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80AE3E40  4B 66 3F 8C */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80AE3E44  7F E3 FB 78 */	mr r3, r31
/* 80AE3E48  38 80 00 00 */	li r4, 0
/* 80AE3E4C  38 A0 00 09 */	li r5, 9
/* 80AE3E50  38 C0 00 00 */	li r6, 0
/* 80AE3E54  4B 66 6C 7C */	b setDamage__8daNpcT_cFiii
/* 80AE3E58  38 00 00 00 */	li r0, 0
/* 80AE3E5C  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80AE3E60  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AE3E64  2C 00 00 00 */	cmpwi r0, 0
/* 80AE3E68  41 82 00 28 */	beq lbl_80AE3E90
/* 80AE3E6C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE3E70  4B 66 18 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AE3E74  38 00 00 00 */	li r0, 0
/* 80AE3E78  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AE3E7C  3C 60 80 AE */	lis r3, lit_4185@ha
/* 80AE3E80  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)
/* 80AE3E84  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AE3E88  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE3E8C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AE3E90:
/* 80AE3E90  38 00 00 00 */	li r0, 0
/* 80AE3E94  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80AE3E98  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80AE3E9C  38 00 00 01 */	li r0, 1
/* 80AE3EA0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AE3EA4:
/* 80AE3EA4  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80AE3EA8  2C 00 00 00 */	cmpwi r0, 0
/* 80AE3EAC  41 82 00 5C */	beq lbl_80AE3F08
/* 80AE3EB0  38 C0 00 00 */	li r6, 0
/* 80AE3EB4  38 60 00 00 */	li r3, 0
/* 80AE3EB8  7C C4 33 78 */	mr r4, r6
/* 80AE3EBC  3C A0 80 AE */	lis r5, lit_4185@ha
/* 80AE3EC0  C0 05 6C 74 */	lfs f0, lit_4185@l(r5)
/* 80AE3EC4  38 00 00 02 */	li r0, 2
/* 80AE3EC8  7C 09 03 A6 */	mtctr r0
lbl_80AE3ECC:
/* 80AE3ECC  7C BF 22 14 */	add r5, r31, r4
/* 80AE3ED0  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80AE3ED4  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80AE3ED8  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80AE3EDC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AE3EE0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AE3EE4  38 63 00 04 */	addi r3, r3, 4
/* 80AE3EE8  38 84 00 06 */	addi r4, r4, 6
/* 80AE3EEC  42 00 FF E0 */	bdnz lbl_80AE3ECC
/* 80AE3EF0  38 00 00 00 */	li r0, 0
/* 80AE3EF4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AE3EF8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AE3EFC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AE3F00  38 00 00 01 */	li r0, 1
/* 80AE3F04  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AE3F08:
/* 80AE3F08  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AE3F0C  4B 87 E1 0C */	b __ptmf_test
/* 80AE3F10  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3F14  41 82 00 54 */	beq lbl_80AE3F68
/* 80AE3F18  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80AE3F1C  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80AE3F20  4B 87 E1 28 */	b __ptmf_cmpr
/* 80AE3F24  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3F28  40 82 00 1C */	bne lbl_80AE3F44
/* 80AE3F2C  7F E3 FB 78 */	mr r3, r31
/* 80AE3F30  38 80 00 00 */	li r4, 0
/* 80AE3F34  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80AE3F38  4B 87 E1 4C */	b __ptmf_scall
/* 80AE3F3C  60 00 00 00 */	nop 
/* 80AE3F40  48 00 00 28 */	b lbl_80AE3F68
lbl_80AE3F44:
/* 80AE3F44  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80AE3F48  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80AE3F4C  90 61 00 08 */	stw r3, 8(r1)
/* 80AE3F50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE3F54  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80AE3F58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE3F5C  7F E3 FB 78 */	mr r3, r31
/* 80AE3F60  38 81 00 08 */	addi r4, r1, 8
/* 80AE3F64  48 00 05 D1 */	bl setAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i
lbl_80AE3F68:
/* 80AE3F68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AE3F6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AE3F70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE3F74  7C 08 03 A6 */	mtlr r0
/* 80AE3F78  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE3F7C  4E 80 00 20 */	blr 
