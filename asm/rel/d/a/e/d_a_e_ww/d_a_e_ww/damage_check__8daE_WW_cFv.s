lbl_807E7C20:
/* 807E7C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E7C24  7C 08 02 A6 */	mflr r0
/* 807E7C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E7C2C  39 61 00 30 */	addi r11, r1, 0x30
/* 807E7C30  4B B7 A5 AC */	b _savegpr_29
/* 807E7C34  7C 7E 1B 78 */	mr r30, r3
/* 807E7C38  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807E7C3C  3B E3 F7 70 */	addi r31, r3, lit_3905@l
/* 807E7C40  A0 1E 07 24 */	lhz r0, 0x724(r30)
/* 807E7C44  28 00 00 00 */	cmplwi r0, 0
/* 807E7C48  40 82 02 14 */	bne lbl_807E7E5C
/* 807E7C4C  38 7E 09 94 */	addi r3, r30, 0x994
/* 807E7C50  4B 89 BB E0 */	b Move__10dCcD_GSttsFv
/* 807E7C54  80 1E 0B 48 */	lwz r0, 0xb48(r30)
/* 807E7C58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807E7C5C  41 82 00 48 */	beq lbl_807E7CA4
/* 807E7C60  80 1E 0B 48 */	lwz r0, 0xb48(r30)
/* 807E7C64  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E7C68  90 1E 0B 48 */	stw r0, 0xb48(r30)
/* 807E7C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E7C70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E7C74  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E7C78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E7C7C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 807E7C80  7D 89 03 A6 */	mtctr r12
/* 807E7C84  4E 80 04 21 */	bctrl 
/* 807E7C88  2C 03 00 00 */	cmpwi r3, 0
/* 807E7C8C  41 82 00 18 */	beq lbl_807E7CA4
/* 807E7C90  7F C3 F3 78 */	mr r3, r30
/* 807E7C94  38 80 00 04 */	li r4, 4
/* 807E7C98  38 A0 00 00 */	li r5, 0
/* 807E7C9C  4B FF FF 41 */	bl setActionMode__8daE_WW_cFii
/* 807E7CA0  48 00 01 BC */	b lbl_807E7E5C
lbl_807E7CA4:
/* 807E7CA4  3B A0 00 00 */	li r29, 0
/* 807E7CA8  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 807E7CAC  4B 89 C7 B4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807E7CB0  28 03 00 00 */	cmplwi r3, 0
/* 807E7CB4  41 82 00 10 */	beq lbl_807E7CC4
/* 807E7CB8  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 807E7CBC  4B 89 C8 3C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807E7CC0  7C 7D 1B 78 */	mr r29, r3
lbl_807E7CC4:
/* 807E7CC4  38 7E 0D 5C */	addi r3, r30, 0xd5c
/* 807E7CC8  4B 89 C7 98 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807E7CCC  28 03 00 00 */	cmplwi r3, 0
/* 807E7CD0  41 82 00 10 */	beq lbl_807E7CE0
/* 807E7CD4  38 7E 0D 5C */	addi r3, r30, 0xd5c
/* 807E7CD8  4B 89 C8 20 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807E7CDC  7C 7D 1B 78 */	mr r29, r3
lbl_807E7CE0:
/* 807E7CE0  28 1D 00 00 */	cmplwi r29, 0
/* 807E7CE4  41 82 01 78 */	beq lbl_807E7E5C
/* 807E7CE8  93 BE 0E 94 */	stw r29, 0xe94(r30)
/* 807E7CEC  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 807E7CF0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807E7CF4  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 807E7CF8  41 82 00 50 */	beq lbl_807E7D48
/* 807E7CFC  4B A7 BD 4C */	b GetAc__8cCcD_ObjFv
/* 807E7D00  A8 03 00 08 */	lha r0, 8(r3)
/* 807E7D04  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 807E7D08  40 82 00 14 */	bne lbl_807E7D1C
/* 807E7D0C  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 807E7D10  38 03 00 96 */	addi r0, r3, 0x96
/* 807E7D14  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807E7D18  48 00 00 30 */	b lbl_807E7D48
lbl_807E7D1C:
/* 807E7D1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E7D20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E7D24  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 807E7D28  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 807E7D2C  41 82 00 14 */	beq lbl_807E7D40
/* 807E7D30  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 807E7D34  38 03 00 B4 */	addi r0, r3, 0xb4
/* 807E7D38  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807E7D3C  48 00 00 0C */	b lbl_807E7D48
lbl_807E7D40:
/* 807E7D40  38 00 00 00 */	li r0, 0
/* 807E7D44  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_807E7D48:
/* 807E7D48  7F C3 F3 78 */	mr r3, r30
/* 807E7D4C  38 9E 0E 94 */	addi r4, r30, 0xe94
/* 807E7D50  4B 89 FE B4 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807E7D54  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 807E7D58  88 03 00 14 */	lbz r0, 0x14(r3)
/* 807E7D5C  28 00 00 01 */	cmplwi r0, 1
/* 807E7D60  41 80 00 B4 */	blt lbl_807E7E14
/* 807E7D64  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E7D68  80 63 00 04 */	lwz r3, 4(r3)
/* 807E7D6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807E7D70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807E7D74  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807E7D78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807E7D7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807E7D80  4B B5 E7 30 */	b PSMTXCopy
/* 807E7D84  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807E7D88  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807E7D8C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807E7D90  4B 82 50 0C */	b transM__14mDoMtx_stack_cFfff
/* 807E7D94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E7D98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E7D9C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E7DA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E7DA4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807E7DA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E7DAC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807E7DB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E7DB4  88 1E 0E B3 */	lbz r0, 0xeb3(r30)
/* 807E7DB8  7C 00 07 75 */	extsb. r0, r0
/* 807E7DBC  40 82 00 30 */	bne lbl_807E7DEC
/* 807E7DC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E7DC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E7DC8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807E7DCC  38 80 00 01 */	li r4, 1
/* 807E7DD0  7F C5 F3 78 */	mr r5, r30
/* 807E7DD4  38 C1 00 08 */	addi r6, r1, 8
/* 807E7DD8  38 E0 00 00 */	li r7, 0
/* 807E7DDC  39 00 00 00 */	li r8, 0
/* 807E7DE0  39 20 00 00 */	li r9, 0
/* 807E7DE4  4B 86 44 34 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807E7DE8  48 00 00 2C */	b lbl_807E7E14
lbl_807E7DEC:
/* 807E7DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E7DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E7DF4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807E7DF8  38 80 00 03 */	li r4, 3
/* 807E7DFC  7F C5 F3 78 */	mr r5, r30
/* 807E7E00  38 C1 00 08 */	addi r6, r1, 8
/* 807E7E04  38 E0 00 00 */	li r7, 0
/* 807E7E08  39 00 00 00 */	li r8, 0
/* 807E7E0C  39 20 00 00 */	li r9, 0
/* 807E7E10  4B 86 44 08 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_807E7E14:
/* 807E7E14  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 807E7E18  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807E7E1C  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807E7E20  41 82 00 10 */	beq lbl_807E7E30
/* 807E7E24  38 00 00 14 */	li r0, 0x14
/* 807E7E28  B0 1E 07 24 */	sth r0, 0x724(r30)
/* 807E7E2C  48 00 00 0C */	b lbl_807E7E38
lbl_807E7E30:
/* 807E7E30  38 00 00 0A */	li r0, 0xa
/* 807E7E34  B0 1E 07 24 */	sth r0, 0x724(r30)
lbl_807E7E38:
/* 807E7E38  A0 1E 0E B0 */	lhz r0, 0xeb0(r30)
/* 807E7E3C  28 00 00 01 */	cmplwi r0, 1
/* 807E7E40  41 81 00 0C */	bgt lbl_807E7E4C
/* 807E7E44  38 00 00 0A */	li r0, 0xa
/* 807E7E48  B0 1E 07 24 */	sth r0, 0x724(r30)
lbl_807E7E4C:
/* 807E7E4C  7F C3 F3 78 */	mr r3, r30
/* 807E7E50  38 80 00 04 */	li r4, 4
/* 807E7E54  38 A0 00 00 */	li r5, 0
/* 807E7E58  4B FF FD 85 */	bl setActionMode__8daE_WW_cFii
lbl_807E7E5C:
/* 807E7E5C  39 61 00 30 */	addi r11, r1, 0x30
/* 807E7E60  4B B7 A3 C8 */	b _restgpr_29
/* 807E7E64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E7E68  7C 08 03 A6 */	mtlr r0
/* 807E7E6C  38 21 00 30 */	addi r1, r1, 0x30
/* 807E7E70  4E 80 00 20 */	blr 
