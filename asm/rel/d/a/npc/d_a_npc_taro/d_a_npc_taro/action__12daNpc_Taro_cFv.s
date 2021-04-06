lbl_80567C90:
/* 80567C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80567C94  7C 08 02 A6 */	mflr r0
/* 80567C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80567C9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80567CA0  7C 7F 1B 78 */	mr r31, r3
/* 80567CA4  38 A0 00 00 */	li r5, 0
/* 80567CA8  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80567CAC  28 00 00 00 */	cmplwi r0, 0
/* 80567CB0  40 82 00 14 */	bne lbl_80567CC4
/* 80567CB4  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80567CB8  38 A0 FF FF */	li r5, -1
/* 80567CBC  4B BE 2D 85 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80567CC0  7C 65 1B 78 */	mr r5, r3
lbl_80567CC4:
/* 80567CC4  28 05 00 00 */	cmplwi r5, 0
/* 80567CC8  41 82 00 A4 */	beq lbl_80567D6C
/* 80567CCC  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80567CD0  28 00 00 06 */	cmplwi r0, 6
/* 80567CD4  41 82 00 98 */	beq lbl_80567D6C
/* 80567CD8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80567CDC  7F E4 FB 78 */	mr r4, r31
/* 80567CE0  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80567CE4  4B BE 00 E9 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80567CE8  7F E3 FB 78 */	mr r3, r31
/* 80567CEC  38 80 00 00 */	li r4, 0
/* 80567CF0  38 A0 00 11 */	li r5, 0x11
/* 80567CF4  38 C0 00 21 */	li r6, 0x21
/* 80567CF8  4B BE 2D D9 */	bl setDamage__8daNpcT_cFiii
/* 80567CFC  38 60 00 00 */	li r3, 0
/* 80567D00  3C 80 80 57 */	lis r4, lit_4472@ha /* 0x805717AC@ha */
/* 80567D04  C0 04 17 AC */	lfs f0, lit_4472@l(r4)  /* 0x805717AC@l */
/* 80567D08  38 00 00 02 */	li r0, 2
/* 80567D0C  7C 09 03 A6 */	mtctr r0
lbl_80567D10:
/* 80567D10  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80567D14  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80567D18  38 63 00 04 */	addi r3, r3, 4
/* 80567D1C  42 00 FF F4 */	bdnz lbl_80567D10
/* 80567D20  38 00 00 00 */	li r0, 0
/* 80567D24  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80567D28  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80567D2C  2C 00 00 00 */	cmpwi r0, 0
/* 80567D30  41 82 00 28 */	beq lbl_80567D58
/* 80567D34  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80567D38  4B BD D9 C5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80567D3C  38 00 00 00 */	li r0, 0
/* 80567D40  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80567D44  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 80567D48  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 80567D4C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80567D50  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80567D54  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80567D58:
/* 80567D58  38 00 00 00 */	li r0, 0
/* 80567D5C  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80567D60  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80567D64  38 00 00 01 */	li r0, 1
/* 80567D68  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80567D6C:
/* 80567D6C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80567D70  2C 00 00 00 */	cmpwi r0, 0
/* 80567D74  41 82 00 5C */	beq lbl_80567DD0
/* 80567D78  38 60 00 00 */	li r3, 0
/* 80567D7C  38 80 00 00 */	li r4, 0
/* 80567D80  38 C0 00 00 */	li r6, 0
/* 80567D84  3C A0 80 57 */	lis r5, lit_4472@ha /* 0x805717AC@ha */
/* 80567D88  C0 05 17 AC */	lfs f0, lit_4472@l(r5)  /* 0x805717AC@l */
/* 80567D8C  38 00 00 02 */	li r0, 2
/* 80567D90  7C 09 03 A6 */	mtctr r0
lbl_80567D94:
/* 80567D94  7C BF 22 14 */	add r5, r31, r4
/* 80567D98  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80567D9C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80567DA0  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80567DA4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80567DA8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80567DAC  38 63 00 04 */	addi r3, r3, 4
/* 80567DB0  38 84 00 06 */	addi r4, r4, 6
/* 80567DB4  42 00 FF E0 */	bdnz lbl_80567D94
/* 80567DB8  38 00 00 00 */	li r0, 0
/* 80567DBC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80567DC0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80567DC4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80567DC8  38 00 00 01 */	li r0, 1
/* 80567DCC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80567DD0:
/* 80567DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80567DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80567DD8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80567DDC  28 00 00 00 */	cmplwi r0, 0
/* 80567DE0  40 82 00 0C */	bne lbl_80567DEC
/* 80567DE4  38 00 00 00 */	li r0, 0
/* 80567DE8  98 1F 11 A6 */	stb r0, 0x11a6(r31)
lbl_80567DEC:
/* 80567DEC  38 7F 11 80 */	addi r3, r31, 0x1180
/* 80567DF0  4B DF A2 29 */	bl __ptmf_test
/* 80567DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80567DF8  41 82 00 54 */	beq lbl_80567E4C
/* 80567DFC  38 7F 11 8C */	addi r3, r31, 0x118c
/* 80567E00  38 9F 11 80 */	addi r4, r31, 0x1180
/* 80567E04  4B DF A2 45 */	bl __ptmf_cmpr
/* 80567E08  2C 03 00 00 */	cmpwi r3, 0
/* 80567E0C  40 82 00 1C */	bne lbl_80567E28
/* 80567E10  7F E3 FB 78 */	mr r3, r31
/* 80567E14  38 80 00 00 */	li r4, 0
/* 80567E18  39 9F 11 8C */	addi r12, r31, 0x118c
/* 80567E1C  4B DF A2 69 */	bl __ptmf_scall
/* 80567E20  60 00 00 00 */	nop 
/* 80567E24  48 00 00 28 */	b lbl_80567E4C
lbl_80567E28:
/* 80567E28  80 7F 11 80 */	lwz r3, 0x1180(r31)
/* 80567E2C  80 1F 11 84 */	lwz r0, 0x1184(r31)
/* 80567E30  90 61 00 08 */	stw r3, 8(r1)
/* 80567E34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80567E38  80 1F 11 88 */	lwz r0, 0x1188(r31)
/* 80567E3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80567E40  7F E3 FB 78 */	mr r3, r31
/* 80567E44  38 81 00 08 */	addi r4, r1, 8
/* 80567E48  48 00 0A 0D */	bl setAction__12daNpc_Taro_cFM12daNpc_Taro_cFPCvPvPv_i
lbl_80567E4C:
/* 80567E4C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80567E50  4B BD D8 B9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567E54  28 03 00 00 */	cmplwi r3, 0
/* 80567E58  41 82 00 48 */	beq lbl_80567EA0
/* 80567E5C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80567E60  54 03 46 3E */	srwi r3, r0, 0x18
/* 80567E64  28 03 00 FF */	cmplwi r3, 0xff
/* 80567E68  38 00 FF FF */	li r0, -1
/* 80567E6C  41 82 00 08 */	beq lbl_80567E74
/* 80567E70  7C 60 1B 78 */	mr r0, r3
lbl_80567E74:
/* 80567E74  2C 00 00 04 */	cmpwi r0, 4
/* 80567E78  41 82 00 20 */	beq lbl_80567E98
/* 80567E7C  40 80 00 24 */	bge lbl_80567EA0
/* 80567E80  2C 00 00 01 */	cmpwi r0, 1
/* 80567E84  41 82 00 08 */	beq lbl_80567E8C
/* 80567E88  48 00 00 18 */	b lbl_80567EA0
lbl_80567E8C:
/* 80567E8C  38 00 00 02 */	li r0, 2
/* 80567E90  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80567E94  48 00 00 0C */	b lbl_80567EA0
lbl_80567E98:
/* 80567E98  38 00 00 1A */	li r0, 0x1a
/* 80567E9C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80567EA0:
/* 80567EA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80567EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80567EA8  7C 08 03 A6 */	mtlr r0
/* 80567EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80567EB0  4E 80 00 20 */	blr 
