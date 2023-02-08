lbl_809A7DA8:
/* 809A7DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A7DAC  7C 08 02 A6 */	mflr r0
/* 809A7DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A7DB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809A7DB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809A7DBC  7C 7F 1B 78 */	mr r31, r3
/* 809A7DC0  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 809A7DC4  38 A0 FF FF */	li r5, -1
/* 809A7DC8  4B 7A 2C 79 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 809A7DCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A7DD0  41 82 00 90 */	beq lbl_809A7E60
/* 809A7DD4  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809A7DD8  4B 6D C7 21 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 809A7DDC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 809A7DE0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809A7DE4  41 82 00 7C */	beq lbl_809A7E60
/* 809A7DE8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809A7DEC  7F E4 FB 78 */	mr r4, r31
/* 809A7DF0  7F C5 F3 78 */	mr r5, r30
/* 809A7DF4  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 809A7DF8  4B 79 FF D5 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 809A7DFC  7F E3 FB 78 */	mr r3, r31
/* 809A7E00  38 80 00 00 */	li r4, 0
/* 809A7E04  38 A0 00 09 */	li r5, 9
/* 809A7E08  38 C0 00 00 */	li r6, 0
/* 809A7E0C  4B 7A 2C C5 */	bl setDamage__8daNpcT_cFiii
/* 809A7E10  38 00 00 00 */	li r0, 0
/* 809A7E14  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 809A7E18  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809A7E1C  2C 00 00 00 */	cmpwi r0, 0
/* 809A7E20  41 82 00 28 */	beq lbl_809A7E48
/* 809A7E24  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809A7E28  4B 79 D8 D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809A7E2C  38 00 00 00 */	li r0, 0
/* 809A7E30  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809A7E34  3C 60 80 9B */	lis r3, lit_4037@ha /* 0x809AA3C4@ha */
/* 809A7E38  C0 03 A3 C4 */	lfs f0, lit_4037@l(r3)  /* 0x809AA3C4@l */
/* 809A7E3C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809A7E40  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A7E44  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809A7E48:
/* 809A7E48  38 60 00 00 */	li r3, 0
/* 809A7E4C  B0 7F 0C D4 */	sth r3, 0xcd4(r31)
/* 809A7E50  B0 7F 0C D6 */	sth r3, 0xcd6(r31)
/* 809A7E54  38 00 00 01 */	li r0, 1
/* 809A7E58  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A7E5C  98 7F 0F C6 */	stb r3, 0xfc6(r31)
lbl_809A7E60:
/* 809A7E60  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 809A7E64  2C 00 00 00 */	cmpwi r0, 0
/* 809A7E68  41 82 00 5C */	beq lbl_809A7EC4
/* 809A7E6C  38 C0 00 00 */	li r6, 0
/* 809A7E70  38 60 00 00 */	li r3, 0
/* 809A7E74  7C C4 33 78 */	mr r4, r6
/* 809A7E78  3C A0 80 9B */	lis r5, lit_4037@ha /* 0x809AA3C4@ha */
/* 809A7E7C  C0 05 A3 C4 */	lfs f0, lit_4037@l(r5)  /* 0x809AA3C4@l */
/* 809A7E80  38 00 00 02 */	li r0, 2
/* 809A7E84  7C 09 03 A6 */	mtctr r0
lbl_809A7E88:
/* 809A7E88  7C BF 22 14 */	add r5, r31, r4
/* 809A7E8C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 809A7E90  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 809A7E94  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 809A7E98  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809A7E9C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809A7EA0  38 63 00 04 */	addi r3, r3, 4
/* 809A7EA4  38 84 00 06 */	addi r4, r4, 6
/* 809A7EA8  42 00 FF E0 */	bdnz lbl_809A7E88
/* 809A7EAC  38 00 00 00 */	li r0, 0
/* 809A7EB0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809A7EB4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809A7EB8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809A7EBC  38 00 00 01 */	li r0, 1
/* 809A7EC0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809A7EC4:
/* 809A7EC4  38 7F 0F AC */	addi r3, r31, 0xfac
/* 809A7EC8  4B 9B A1 51 */	bl __ptmf_test
/* 809A7ECC  2C 03 00 00 */	cmpwi r3, 0
/* 809A7ED0  41 82 00 54 */	beq lbl_809A7F24
/* 809A7ED4  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 809A7ED8  38 9F 0F AC */	addi r4, r31, 0xfac
/* 809A7EDC  4B 9B A1 6D */	bl __ptmf_cmpr
/* 809A7EE0  2C 03 00 00 */	cmpwi r3, 0
/* 809A7EE4  40 82 00 1C */	bne lbl_809A7F00
/* 809A7EE8  7F E3 FB 78 */	mr r3, r31
/* 809A7EEC  38 80 00 00 */	li r4, 0
/* 809A7EF0  39 9F 0F B8 */	addi r12, r31, 0xfb8
/* 809A7EF4  4B 9B A1 91 */	bl __ptmf_scall
/* 809A7EF8  60 00 00 00 */	nop 
/* 809A7EFC  48 00 00 28 */	b lbl_809A7F24
lbl_809A7F00:
/* 809A7F00  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 809A7F04  80 1F 0F B0 */	lwz r0, 0xfb0(r31)
/* 809A7F08  90 61 00 08 */	stw r3, 8(r1)
/* 809A7F0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A7F10  80 1F 0F B4 */	lwz r0, 0xfb4(r31)
/* 809A7F14  90 01 00 10 */	stw r0, 0x10(r1)
/* 809A7F18  7F E3 FB 78 */	mr r3, r31
/* 809A7F1C  38 81 00 08 */	addi r4, r1, 8
/* 809A7F20  48 00 07 2D */	bl setAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i
lbl_809A7F24:
/* 809A7F24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809A7F28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809A7F2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A7F30  7C 08 03 A6 */	mtlr r0
/* 809A7F34  38 21 00 20 */	addi r1, r1, 0x20
/* 809A7F38  4E 80 00 20 */	blr 
