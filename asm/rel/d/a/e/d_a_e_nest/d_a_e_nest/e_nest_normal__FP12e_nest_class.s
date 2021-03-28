lbl_80501BDC:
/* 80501BDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80501BE0  7C 08 02 A6 */	mflr r0
/* 80501BE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80501BE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80501BEC  4B E6 05 F0 */	b _savegpr_29
/* 80501BF0  7C 7F 1B 78 */	mr r31, r3
/* 80501BF4  A8 63 05 88 */	lha r3, 0x588(r3)
/* 80501BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80501BFC  41 82 01 50 */	beq lbl_80501D4C
/* 80501C00  38 03 FF FF */	addi r0, r3, -1
/* 80501C04  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80501C08  A8 BF 05 88 */	lha r5, 0x588(r31)
/* 80501C0C  1C 05 2E E0 */	mulli r0, r5, 0x2ee0
/* 80501C10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80501C14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80501C18  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80501C1C  7C 64 04 2E */	lfsx f3, r4, r0
/* 80501C20  3C 60 80 50 */	lis r3, lit_4208@ha
/* 80501C24  C0 43 47 28 */	lfs f2, lit_4208@l(r3)
/* 80501C28  3C 60 80 50 */	lis r3, lit_4215@ha
/* 80501C2C  C8 23 47 44 */	lfd f1, lit_4215@l(r3)
/* 80501C30  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80501C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501C38  3C 60 43 30 */	lis r3, 0x4330
/* 80501C3C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80501C40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80501C44  EC 00 08 28 */	fsubs f0, f0, f1
/* 80501C48  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80501C4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80501C50  FC 00 00 1E */	fctiwz f0, f0
/* 80501C54  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80501C58  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80501C5C  B0 1F 0A AC */	sth r0, 0xaac(r31)
/* 80501C60  A8 BF 05 88 */	lha r5, 0x588(r31)
/* 80501C64  1C 05 36 B0 */	mulli r0, r5, 0x36b0
/* 80501C68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80501C6C  7C 64 04 2E */	lfsx f3, r4, r0
/* 80501C70  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80501C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501C78  90 61 00 20 */	stw r3, 0x20(r1)
/* 80501C7C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80501C80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80501C84  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80501C88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80501C8C  FC 00 00 1E */	fctiwz f0, f0
/* 80501C90  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80501C94  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80501C98  B0 1F 0A B0 */	sth r0, 0xab0(r31)
/* 80501C9C  A8 1F 05 88 */	lha r0, 0x588(r31)
/* 80501CA0  2C 00 00 00 */	cmpwi r0, 0
/* 80501CA4  40 82 04 14 */	bne lbl_805020B8
/* 80501CA8  88 1F 05 8A */	lbz r0, 0x58a(r31)
/* 80501CAC  7C 00 07 75 */	extsb. r0, r0
/* 80501CB0  41 82 00 90 */	beq lbl_80501D40
/* 80501CB4  38 00 00 01 */	li r0, 1
/* 80501CB8  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 80501CBC  38 00 00 00 */	li r0, 0
/* 80501CC0  B0 1F 05 80 */	sth r0, 0x580(r31)
/* 80501CC4  38 00 00 08 */	li r0, 8
/* 80501CC8  B0 1F 05 82 */	sth r0, 0x582(r31)
/* 80501CCC  38 00 00 78 */	li r0, 0x78
/* 80501CD0  B0 1F 05 86 */	sth r0, 0x586(r31)
/* 80501CD4  38 00 00 64 */	li r0, 0x64
/* 80501CD8  B0 1F 05 84 */	sth r0, 0x584(r31)
/* 80501CDC  3C 60 80 50 */	lis r3, lit_4431@ha
/* 80501CE0  C0 03 47 60 */	lfs f0, lit_4431@l(r3)
/* 80501CE4  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 80501CE8  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80501CEC  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 80501CF0  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 80501CF4  3C 60 80 50 */	lis r3, l_HIO@ha
/* 80501CF8  38 63 49 60 */	addi r3, r3, l_HIO@l
/* 80501CFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80501D00  EC 01 00 32 */	fmuls f0, f1, f0
/* 80501D04  EC 02 00 32 */	fmuls f0, f2, f0
/* 80501D08  EC 03 00 28 */	fsubs f0, f3, f0
/* 80501D0C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80501D10  88 1F 0A A0 */	lbz r0, 0xaa0(r31)
/* 80501D14  28 00 00 00 */	cmplwi r0, 0
/* 80501D18  41 82 03 A0 */	beq lbl_805020B8
/* 80501D1C  80 1F 0A A4 */	lwz r0, 0xaa4(r31)
/* 80501D20  90 01 00 08 */	stw r0, 8(r1)
/* 80501D24  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80501D28  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80501D2C  38 81 00 08 */	addi r4, r1, 8
/* 80501D30  4B B1 7A C8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80501D34  7F E4 FB 78 */	mr r4, r31
/* 80501D38  48 60 87 C8 */	b setHawkCamera__10daNPC_TK_cFP10fopAc_ac_c
/* 80501D3C  48 00 03 7C */	b lbl_805020B8
lbl_80501D40:
/* 80501D40  38 00 00 01 */	li r0, 1
/* 80501D44  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80501D48  48 00 03 70 */	b lbl_805020B8
lbl_80501D4C:
/* 80501D4C  38 00 00 00 */	li r0, 0
/* 80501D50  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80501D54  88 1F 05 B0 */	lbz r0, 0x5b0(r31)
/* 80501D58  7C 00 07 75 */	extsb. r0, r0
/* 80501D5C  40 82 03 5C */	bne lbl_805020B8
/* 80501D60  38 7F 09 40 */	addi r3, r31, 0x940
/* 80501D64  4B B8 26 FC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80501D68  28 03 00 00 */	cmplwi r3, 0
/* 80501D6C  41 82 00 74 */	beq lbl_80501DE0
/* 80501D70  38 7F 09 40 */	addi r3, r31, 0x940
/* 80501D74  4B B8 27 84 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80501D78  90 7F 0A 7C */	stw r3, 0xa7c(r31)
/* 80501D7C  80 7F 0A 7C */	lwz r3, 0xa7c(r31)
/* 80501D80  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80501D84  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80501D88  41 82 00 18 */	beq lbl_80501DA0
/* 80501D8C  38 00 00 01 */	li r0, 1
/* 80501D90  98 1F 05 67 */	stb r0, 0x567(r31)
/* 80501D94  7F E3 FB 78 */	mr r3, r31
/* 80501D98  4B B1 7E E4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80501D9C  48 00 03 1C */	b lbl_805020B8
lbl_80501DA0:
/* 80501DA0  38 00 00 0A */	li r0, 0xa
/* 80501DA4  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80501DA8  38 00 00 03 */	li r0, 3
/* 80501DAC  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80501DB0  38 00 00 01 */	li r0, 1
/* 80501DB4  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80501DB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80501DBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80501DC0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80501DC4  28 03 00 00 */	cmplwi r3, 0
/* 80501DC8  41 82 00 0C */	beq lbl_80501DD4
/* 80501DCC  80 03 00 04 */	lwz r0, 4(r3)
/* 80501DD0  48 00 00 08 */	b lbl_80501DD8
lbl_80501DD4:
/* 80501DD4  38 00 FF FF */	li r0, -1
lbl_80501DD8:
/* 80501DD8  90 1F 0A A4 */	stw r0, 0xaa4(r31)
/* 80501DDC  48 00 02 DC */	b lbl_805020B8
lbl_80501DE0:
/* 80501DE0  3B C0 00 00 */	li r30, 0
/* 80501DE4  38 7F 08 08 */	addi r3, r31, 0x808
/* 80501DE8  4B B8 26 78 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80501DEC  28 03 00 00 */	cmplwi r3, 0
/* 80501DF0  41 82 00 B4 */	beq lbl_80501EA4
/* 80501DF4  38 00 00 0A */	li r0, 0xa
/* 80501DF8  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80501DFC  38 7F 08 08 */	addi r3, r31, 0x808
/* 80501E00  4B B8 26 F8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80501E04  90 7F 0A 7C */	stw r3, 0xa7c(r31)
/* 80501E08  7F E3 FB 78 */	mr r3, r31
/* 80501E0C  38 9F 0A 7C */	addi r4, r31, 0xa7c
/* 80501E10  4B B8 5D F4 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80501E14  80 7F 0A 7C */	lwz r3, 0xa7c(r31)
/* 80501E18  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80501E1C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80501E20  41 82 00 40 */	beq lbl_80501E60
/* 80501E24  38 00 00 02 */	li r0, 2
/* 80501E28  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 80501E2C  38 00 00 00 */	li r0, 0
/* 80501E30  B0 1F 05 80 */	sth r0, 0x580(r31)
/* 80501E34  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80501E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80501E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80501E40  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80501E44  28 03 00 00 */	cmplwi r3, 0
/* 80501E48  41 82 00 0C */	beq lbl_80501E54
/* 80501E4C  80 03 00 04 */	lwz r0, 4(r3)
/* 80501E50  48 00 00 08 */	b lbl_80501E58
lbl_80501E54:
/* 80501E54  38 00 FF FF */	li r0, -1
lbl_80501E58:
/* 80501E58  90 1F 0A A4 */	stw r0, 0xaa4(r31)
/* 80501E5C  48 00 00 6C */	b lbl_80501EC8
lbl_80501E60:
/* 80501E60  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80501E64  40 82 00 0C */	bne lbl_80501E70
/* 80501E68  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80501E6C  41 82 00 20 */	beq lbl_80501E8C
lbl_80501E70:
/* 80501E70  38 00 00 0A */	li r0, 0xa
/* 80501E74  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80501E78  38 7F 08 08 */	addi r3, r31, 0x808
/* 80501E7C  4B B8 26 7C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80501E80  90 7F 0A 7C */	stw r3, 0xa7c(r31)
/* 80501E84  3B C0 00 01 */	li r30, 1
/* 80501E88  48 00 00 40 */	b lbl_80501EC8
lbl_80501E8C:
/* 80501E8C  38 00 00 0A */	li r0, 0xa
/* 80501E90  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80501E94  38 7F 08 08 */	addi r3, r31, 0x808
/* 80501E98  4B B8 26 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80501E9C  90 7F 0A 7C */	stw r3, 0xa7c(r31)
/* 80501EA0  48 00 00 28 */	b lbl_80501EC8
lbl_80501EA4:
/* 80501EA4  38 7F 08 08 */	addi r3, r31, 0x808
/* 80501EA8  4B B8 27 B0 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80501EAC  28 03 00 00 */	cmplwi r3, 0
/* 80501EB0  41 82 00 18 */	beq lbl_80501EC8
/* 80501EB4  38 00 00 05 */	li r0, 5
/* 80501EB8  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80501EBC  38 7F 08 08 */	addi r3, r31, 0x808
/* 80501EC0  4B B8 28 30 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80501EC4  90 7F 0A 7C */	stw r3, 0xa7c(r31)
lbl_80501EC8:
/* 80501EC8  A8 1F 05 88 */	lha r0, 0x588(r31)
/* 80501ECC  2C 00 00 00 */	cmpwi r0, 0
/* 80501ED0  41 82 01 E8 */	beq lbl_805020B8
/* 80501ED4  38 7F 0A 7C */	addi r3, r31, 0xa7c
/* 80501ED8  4B B8 5B 80 */	b at_power_check__FP11dCcU_AtInfo
/* 80501EDC  7C 7D 1B 78 */	mr r29, r3
/* 80501EE0  2C 1E 00 00 */	cmpwi r30, 0
/* 80501EE4  41 82 00 8C */	beq lbl_80501F70
/* 80501EE8  38 00 00 0A */	li r0, 0xa
/* 80501EEC  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80501EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80501EF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80501EF8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80501EFC  28 00 00 00 */	cmplwi r0, 0
/* 80501F00  40 82 01 B8 */	bne lbl_805020B8
/* 80501F04  38 00 00 14 */	li r0, 0x14
/* 80501F08  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80501F0C  38 00 00 01 */	li r0, 1
/* 80501F10  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80501F14  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80501F18  28 04 00 00 */	cmplwi r4, 0
/* 80501F1C  41 82 00 0C */	beq lbl_80501F28
/* 80501F20  80 04 00 04 */	lwz r0, 4(r4)
/* 80501F24  48 00 00 08 */	b lbl_80501F2C
lbl_80501F28:
/* 80501F28  38 00 FF FF */	li r0, -1
lbl_80501F2C:
/* 80501F2C  90 1F 0A A4 */	stw r0, 0xaa4(r31)
/* 80501F30  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80501F34  3C 80 80 50 */	lis r4, stringBase0@ha
/* 80501F38  38 84 47 EC */	addi r4, r4, stringBase0@l
/* 80501F3C  4B E6 6A 58 */	b strcmp
/* 80501F40  2C 03 00 00 */	cmpwi r3, 0
/* 80501F44  40 82 01 74 */	bne lbl_805020B8
/* 80501F48  38 00 00 01 */	li r0, 1
/* 80501F4C  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80501F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80501F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80501F58  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80501F5C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80501F60  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80501F64  A0 84 01 6E */	lhz r4, 0x16e(r4)
/* 80501F68  4B B3 2A 24 */	b onEventBit__11dSv_event_cFUs
/* 80501F6C  48 00 01 4C */	b lbl_805020B8
lbl_80501F70:
/* 80501F70  88 1F 0A 9C */	lbz r0, 0xa9c(r31)
/* 80501F74  28 00 00 01 */	cmplwi r0, 1
/* 80501F78  41 82 00 24 */	beq lbl_80501F9C
/* 80501F7C  28 00 00 02 */	cmplwi r0, 2
/* 80501F80  41 82 00 1C */	beq lbl_80501F9C
/* 80501F84  28 00 00 0F */	cmplwi r0, 0xf
/* 80501F88  41 82 00 14 */	beq lbl_80501F9C
/* 80501F8C  28 00 00 0A */	cmplwi r0, 0xa
/* 80501F90  41 82 00 0C */	beq lbl_80501F9C
/* 80501F94  28 00 00 10 */	cmplwi r0, 0x10
/* 80501F98  40 82 00 48 */	bne lbl_80501FE0
lbl_80501F9C:
/* 80501F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80501FA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80501FA4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80501FA8  28 03 00 00 */	cmplwi r3, 0
/* 80501FAC  41 82 00 0C */	beq lbl_80501FB8
/* 80501FB0  80 03 00 04 */	lwz r0, 4(r3)
/* 80501FB4  48 00 00 08 */	b lbl_80501FBC
lbl_80501FB8:
/* 80501FB8  38 00 FF FF */	li r0, -1
lbl_80501FBC:
/* 80501FBC  90 1F 0A A4 */	stw r0, 0xaa4(r31)
/* 80501FC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80501FC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80501FC8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80501FCC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80501FD0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80501FD4  A0 84 01 58 */	lhz r4, 0x158(r4)
/* 80501FD8  4B B3 29 B4 */	b onEventBit__11dSv_event_cFUs
/* 80501FDC  48 00 00 DC */	b lbl_805020B8
lbl_80501FE0:
/* 80501FE0  A8 1D 00 08 */	lha r0, 8(r29)
/* 80501FE4  2C 00 01 00 */	cmpwi r0, 0x100
/* 80501FE8  40 82 00 8C */	bne lbl_80502074
/* 80501FEC  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 80501FF0  60 00 00 04 */	ori r0, r0, 4
/* 80501FF4  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 80501FF8  28 1D 00 00 */	cmplwi r29, 0
/* 80501FFC  41 82 00 0C */	beq lbl_80502008
/* 80502000  80 1D 00 04 */	lwz r0, 4(r29)
/* 80502004  48 00 00 08 */	b lbl_8050200C
lbl_80502008:
/* 80502008  38 00 FF FF */	li r0, -1
lbl_8050200C:
/* 8050200C  90 1F 0A A4 */	stw r0, 0xaa4(r31)
/* 80502010  38 00 00 01 */	li r0, 1
/* 80502014  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80502018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8050201C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80502020  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80502024  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80502028  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8050202C  A0 84 01 56 */	lhz r4, 0x156(r4)
/* 80502030  4B B3 29 5C */	b onEventBit__11dSv_event_cFUs
/* 80502034  38 00 00 14 */	li r0, 0x14
/* 80502038  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 8050203C  38 00 00 01 */	li r0, 1
/* 80502040  98 1F 0A A0 */	stb r0, 0xaa0(r31)
/* 80502044  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080044@ha */
/* 80502048  38 03 00 44 */	addi r0, r3, 0x0044 /* 0x00080044@l */
/* 8050204C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80502050  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 80502054  38 81 00 0C */	addi r4, r1, 0xc
/* 80502058  38 A0 00 00 */	li r5, 0
/* 8050205C  38 C0 FF FF */	li r6, -1
/* 80502060  81 9F 0B 08 */	lwz r12, 0xb08(r31)
/* 80502064  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80502068  7D 89 03 A6 */	mtctr r12
/* 8050206C  4E 80 04 21 */	bctrl 
/* 80502070  48 00 00 48 */	b lbl_805020B8
lbl_80502074:
/* 80502074  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80502078  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8050207C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80502080  3C 80 80 50 */	lis r4, stringBase0@ha
/* 80502084  38 84 47 EC */	addi r4, r4, stringBase0@l
/* 80502088  4B E6 69 0C */	b strcmp
/* 8050208C  2C 03 00 00 */	cmpwi r3, 0
/* 80502090  40 82 00 20 */	bne lbl_805020B0
/* 80502094  28 1D 00 00 */	cmplwi r29, 0
/* 80502098  41 82 00 0C */	beq lbl_805020A4
/* 8050209C  80 1D 00 04 */	lwz r0, 4(r29)
/* 805020A0  48 00 00 08 */	b lbl_805020A8
lbl_805020A4:
/* 805020A4  38 00 FF FF */	li r0, -1
lbl_805020A8:
/* 805020A8  90 1F 0A A4 */	stw r0, 0xaa4(r31)
/* 805020AC  48 00 00 0C */	b lbl_805020B8
lbl_805020B0:
/* 805020B0  38 00 00 00 */	li r0, 0
/* 805020B4  B0 1F 05 88 */	sth r0, 0x588(r31)
lbl_805020B8:
/* 805020B8  39 61 00 40 */	addi r11, r1, 0x40
/* 805020BC  4B E6 01 6C */	b _restgpr_29
/* 805020C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805020C4  7C 08 03 A6 */	mtlr r0
/* 805020C8  38 21 00 40 */	addi r1, r1, 0x40
/* 805020CC  4E 80 00 20 */	blr 
