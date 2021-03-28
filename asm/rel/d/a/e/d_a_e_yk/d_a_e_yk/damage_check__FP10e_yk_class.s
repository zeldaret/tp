lbl_80804D38:
/* 80804D38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80804D3C  7C 08 02 A6 */	mflr r0
/* 80804D40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80804D44  39 61 00 30 */	addi r11, r1, 0x30
/* 80804D48  4B B5 D4 94 */	b _savegpr_29
/* 80804D4C  7C 7E 1B 78 */	mr r30, r3
/* 80804D50  3C 60 80 80 */	lis r3, lit_3941@ha
/* 80804D54  3B E3 7C 9C */	addi r31, r3, lit_3941@l
/* 80804D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80804D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80804D60  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80804D64  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 80804D68  2C 00 00 00 */	cmpwi r0, 0
/* 80804D6C  40 82 01 E4 */	bne lbl_80804F50
/* 80804D70  38 7E 08 FC */	addi r3, r30, 0x8fc
/* 80804D74  4B 87 EA BC */	b Move__10dCcD_GSttsFv
/* 80804D78  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80804D7C  4B 87 F6 E4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80804D80  28 03 00 00 */	cmplwi r3, 0
/* 80804D84  41 82 01 CC */	beq lbl_80804F50
/* 80804D88  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80804D8C  4B 87 F7 6C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80804D90  90 7E 0A 54 */	stw r3, 0xa54(r30)
/* 80804D94  80 7E 0A 54 */	lwz r3, 0xa54(r30)
/* 80804D98  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80804D9C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80804DA0  41 82 00 18 */	beq lbl_80804DB8
/* 80804DA4  38 00 00 0E */	li r0, 0xe
/* 80804DA8  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80804DAC  38 00 00 00 */	li r0, 0
/* 80804DB0  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80804DB4  48 00 01 9C */	b lbl_80804F50
lbl_80804DB8:
/* 80804DB8  7F C3 F3 78 */	mr r3, r30
/* 80804DBC  38 9E 0A 54 */	addi r4, r30, 0xa54
/* 80804DC0  4B 88 2E 44 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80804DC4  80 7E 0A 54 */	lwz r3, 0xa54(r30)
/* 80804DC8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80804DCC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80804DD0  40 82 00 0C */	bne lbl_80804DDC
/* 80804DD4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80804DD8  41 82 00 10 */	beq lbl_80804DE8
lbl_80804DDC:
/* 80804DDC  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 80804DE0  38 03 FF FF */	addi r0, r3, -1
/* 80804DE4  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_80804DE8:
/* 80804DE8  80 7E 0A 54 */	lwz r3, 0xa54(r30)
/* 80804DEC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80804DF0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80804DF4  41 82 00 5C */	beq lbl_80804E50
/* 80804DF8  38 00 00 0A */	li r0, 0xa
/* 80804DFC  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80804E00  38 60 00 00 */	li r3, 0
/* 80804E04  B0 7E 06 70 */	sth r3, 0x670(r30)
/* 80804E08  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80804E0C  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 80804E10  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80804E14  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 80804E18  98 7E 06 A0 */	stb r3, 0x6a0(r30)
/* 80804E1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80804E20  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80804E24  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80804E28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80804E2C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80804E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80804E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80804E38  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80804E3C  38 80 00 02 */	li r4, 2
/* 80804E40  38 A0 00 1F */	li r5, 0x1f
/* 80804E44  38 C1 00 10 */	addi r6, r1, 0x10
/* 80804E48  4B 86 AB DC */	b StartShock__12dVibration_cFii4cXyz
/* 80804E4C  48 00 01 04 */	b lbl_80804F50
lbl_80804E50:
/* 80804E50  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80804E54  41 82 00 74 */	beq lbl_80804EC8
/* 80804E58  7F A3 EB 78 */	mr r3, r29
/* 80804E5C  7F C4 F3 78 */	mr r4, r30
/* 80804E60  38 A0 00 08 */	li r5, 8
/* 80804E64  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80804E68  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 80804E6C  7D 89 03 A6 */	mtctr r12
/* 80804E70  4E 80 04 21 */	bctrl 
/* 80804E74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80804E78  41 82 00 50 */	beq lbl_80804EC8
/* 80804E7C  38 00 00 0D */	li r0, 0xd
/* 80804E80  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80804E84  38 80 00 00 */	li r4, 0
/* 80804E88  B0 9E 06 70 */	sth r4, 0x670(r30)
/* 80804E8C  38 00 00 C8 */	li r0, 0xc8
/* 80804E90  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 80804E94  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 80804E98  98 83 11 25 */	stb r4, struct_80451124+0x1@l(r3)
/* 80804E9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701CB@ha */
/* 80804EA0  38 03 01 CB */	addi r0, r3, 0x01CB /* 0x000701CB@l */
/* 80804EA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80804EA8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80804EAC  38 81 00 0C */	addi r4, r1, 0xc
/* 80804EB0  38 A0 FF FF */	li r5, -1
/* 80804EB4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80804EB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80804EBC  7D 89 03 A6 */	mtctr r12
/* 80804EC0  4E 80 04 21 */	bctrl 
/* 80804EC4  48 00 00 8C */	b lbl_80804F50
lbl_80804EC8:
/* 80804EC8  80 7E 0A 54 */	lwz r3, 0xa54(r30)
/* 80804ECC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80804ED0  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 80804ED4  41 82 00 10 */	beq lbl_80804EE4
/* 80804ED8  38 00 00 14 */	li r0, 0x14
/* 80804EDC  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 80804EE0  48 00 00 0C */	b lbl_80804EEC
lbl_80804EE4:
/* 80804EE4  38 00 00 0A */	li r0, 0xa
/* 80804EE8  B0 1E 06 AA */	sth r0, 0x6aa(r30)
lbl_80804EEC:
/* 80804EEC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80804EF0  4B A6 2A 64 */	b cM_rndF__Ff
/* 80804EF4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80804EF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80804EFC  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 80804F00  A8 1E 0A 62 */	lha r0, 0xa62(r30)
/* 80804F04  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 80804F08  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80804F0C  2C 00 00 00 */	cmpwi r0, 0
/* 80804F10  41 81 00 40 */	bgt lbl_80804F50
/* 80804F14  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701CA@ha */
/* 80804F18  38 03 01 CA */	addi r0, r3, 0x01CA /* 0x000701CA@l */
/* 80804F1C  90 01 00 08 */	stw r0, 8(r1)
/* 80804F20  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80804F24  38 81 00 08 */	addi r4, r1, 8
/* 80804F28  38 A0 FF FF */	li r5, -1
/* 80804F2C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80804F30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80804F34  7D 89 03 A6 */	mtctr r12
/* 80804F38  4E 80 04 21 */	bctrl 
/* 80804F3C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80804F40  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80804F44  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80804F48  38 00 00 01 */	li r0, 1
/* 80804F4C  98 1E 06 A0 */	stb r0, 0x6a0(r30)
lbl_80804F50:
/* 80804F50  39 61 00 30 */	addi r11, r1, 0x30
/* 80804F54  4B B5 D2 D4 */	b _restgpr_29
/* 80804F58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80804F5C  7C 08 03 A6 */	mtlr r0
/* 80804F60  38 21 00 30 */	addi r1, r1, 0x30
/* 80804F64  4E 80 00 20 */	blr 
