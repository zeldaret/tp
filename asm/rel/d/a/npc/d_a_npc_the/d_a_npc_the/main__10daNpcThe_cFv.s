lbl_80AF9CF0:
/* 80AF9CF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF9CF4  7C 08 02 A6 */	mflr r0
/* 80AF9CF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF9CFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF9D00  4B 86 84 DC */	b _savegpr_29
/* 80AF9D04  7C 7D 1B 78 */	mr r29, r3
/* 80AF9D08  3C 80 80 B0 */	lis r4, cNullVec__6Z2Calc@ha
/* 80AF9D0C  3B C4 C1 D0 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80AF9D10  48 00 09 BD */	bl doEvent__10daNpcThe_cFv
/* 80AF9D14  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9D18  40 82 00 D0 */	bne lbl_80AF9DE8
/* 80AF9D1C  38 00 00 00 */	li r0, 0
/* 80AF9D20  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80AF9D24  38 7D 0D D0 */	addi r3, r29, 0xdd0
/* 80AF9D28  4B 86 82 F0 */	b __ptmf_test
/* 80AF9D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9D30  41 82 00 B8 */	beq lbl_80AF9DE8
/* 80AF9D34  38 7D 0D D0 */	addi r3, r29, 0xdd0
/* 80AF9D38  38 9D 0D DC */	addi r4, r29, 0xddc
/* 80AF9D3C  4B 86 83 0C */	b __ptmf_cmpr
/* 80AF9D40  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9D44  40 82 00 1C */	bne lbl_80AF9D60
/* 80AF9D48  7F A3 EB 78 */	mr r3, r29
/* 80AF9D4C  38 80 00 00 */	li r4, 0
/* 80AF9D50  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80AF9D54  4B 86 83 30 */	b __ptmf_scall
/* 80AF9D58  60 00 00 00 */	nop 
/* 80AF9D5C  48 00 00 8C */	b lbl_80AF9DE8
lbl_80AF9D60:
/* 80AF9D60  80 7D 0D D0 */	lwz r3, 0xdd0(r29)
/* 80AF9D64  80 1D 0D D4 */	lwz r0, 0xdd4(r29)
/* 80AF9D68  90 61 00 08 */	stw r3, 8(r1)
/* 80AF9D6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF9D70  80 1D 0D D8 */	lwz r0, 0xdd8(r29)
/* 80AF9D74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF9D78  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80AF9D7C  4B 86 82 9C */	b __ptmf_test
/* 80AF9D80  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9D84  41 82 00 20 */	beq lbl_80AF9DA4
/* 80AF9D88  38 00 00 03 */	li r0, 3
/* 80AF9D8C  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80AF9D90  7F A3 EB 78 */	mr r3, r29
/* 80AF9D94  38 80 00 00 */	li r4, 0
/* 80AF9D98  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80AF9D9C  4B 86 82 E8 */	b __ptmf_scall
/* 80AF9DA0  60 00 00 00 */	nop 
lbl_80AF9DA4:
/* 80AF9DA4  38 61 00 08 */	addi r3, r1, 8
/* 80AF9DA8  4B 86 82 70 */	b __ptmf_test
/* 80AF9DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9DB0  41 82 00 38 */	beq lbl_80AF9DE8
/* 80AF9DB4  80 61 00 08 */	lwz r3, 8(r1)
/* 80AF9DB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AF9DBC  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80AF9DC0  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80AF9DC4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AF9DC8  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80AF9DCC  38 00 00 00 */	li r0, 0
/* 80AF9DD0  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80AF9DD4  7F A3 EB 78 */	mr r3, r29
/* 80AF9DD8  38 80 00 00 */	li r4, 0
/* 80AF9DDC  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80AF9DE0  4B 86 82 A4 */	b __ptmf_scall
/* 80AF9DE4  60 00 00 00 */	nop 
lbl_80AF9DE8:
/* 80AF9DE8  88 1D 09 EE */	lbz r0, 0x9ee(r29)
/* 80AF9DEC  28 00 00 00 */	cmplwi r0, 0
/* 80AF9DF0  41 82 00 1C */	beq lbl_80AF9E0C
/* 80AF9DF4  3C 60 80 B0 */	lis r3, lit_4297@ha
/* 80AF9DF8  C0 03 BE 88 */	lfs f0, lit_4297@l(r3)
/* 80AF9DFC  D0 1D 09 74 */	stfs f0, 0x974(r29)
/* 80AF9E00  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 80AF9E04  38 00 00 00 */	li r0, 0
/* 80AF9E08  98 1D 09 EE */	stb r0, 0x9ee(r29)
lbl_80AF9E0C:
/* 80AF9E0C  3B E0 00 00 */	li r31, 0
/* 80AF9E10  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80AF9E14  28 00 00 00 */	cmplwi r0, 0
/* 80AF9E18  40 82 00 1C */	bne lbl_80AF9E34
/* 80AF9E1C  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80AF9E20  28 00 00 00 */	cmplwi r0, 0
/* 80AF9E24  41 82 00 14 */	beq lbl_80AF9E38
/* 80AF9E28  4B 53 5C 2C */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AF9E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9E30  40 82 00 08 */	bne lbl_80AF9E38
lbl_80AF9E34:
/* 80AF9E34  3B E0 00 01 */	li r31, 1
lbl_80AF9E38:
/* 80AF9E38  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AF9E3C  41 82 00 0C */	beq lbl_80AF9E48
/* 80AF9E40  38 00 00 00 */	li r0, 0
/* 80AF9E44  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80AF9E48:
/* 80AF9E48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF9E4C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80AF9E50  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80AF9E54  28 00 00 00 */	cmplwi r0, 0
/* 80AF9E58  41 82 00 30 */	beq lbl_80AF9E88
/* 80AF9E5C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80AF9E60  28 00 00 01 */	cmplwi r0, 1
/* 80AF9E64  41 82 00 24 */	beq lbl_80AF9E88
/* 80AF9E68  80 9D 0E 00 */	lwz r4, 0xe00(r29)
/* 80AF9E6C  3C 04 00 01 */	addis r0, r4, 1
/* 80AF9E70  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AF9E74  41 82 00 14 */	beq lbl_80AF9E88
/* 80AF9E78  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80AF9E7C  4B 54 98 70 */	b setPtI_Id__14dEvt_control_cFUi
/* 80AF9E80  38 00 FF FF */	li r0, -1
/* 80AF9E84  90 1D 0E 00 */	stw r0, 0xe00(r29)
lbl_80AF9E88:
/* 80AF9E88  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha
/* 80AF9E8C  38 63 BE 0C */	addi r3, r3, m__16daNpcThe_Param_c@l
/* 80AF9E90  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80AF9E94  28 00 00 00 */	cmplwi r0, 0
/* 80AF9E98  40 82 00 D0 */	bne lbl_80AF9F68
/* 80AF9E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF9EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF9EA4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AF9EA8  28 00 00 00 */	cmplwi r0, 0
/* 80AF9EAC  41 82 00 34 */	beq lbl_80AF9EE0
/* 80AF9EB0  88 1D 09 ED */	lbz r0, 0x9ed(r29)
/* 80AF9EB4  28 00 00 00 */	cmplwi r0, 0
/* 80AF9EB8  41 82 00 B0 */	beq lbl_80AF9F68
/* 80AF9EBC  38 00 00 00 */	li r0, 0
/* 80AF9EC0  88 7F 4F AD */	lbz r3, 0x4fad(r31)
/* 80AF9EC4  28 03 00 00 */	cmplwi r3, 0
/* 80AF9EC8  41 82 00 0C */	beq lbl_80AF9ED4
/* 80AF9ECC  28 03 00 02 */	cmplwi r3, 2
/* 80AF9ED0  40 82 00 08 */	bne lbl_80AF9ED8
lbl_80AF9ED4:
/* 80AF9ED4  38 00 00 01 */	li r0, 1
lbl_80AF9ED8:
/* 80AF9ED8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF9EDC  41 82 00 8C */	beq lbl_80AF9F68
lbl_80AF9EE0:
/* 80AF9EE0  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80AF9EE4  28 00 00 00 */	cmplwi r0, 0
/* 80AF9EE8  41 82 00 28 */	beq lbl_80AF9F10
/* 80AF9EEC  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80AF9EF0  38 7E 01 C0 */	addi r3, r30, 0x1c0
/* 80AF9EF4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AF9EF8  54 00 10 3A */	slwi r0, r0, 2
/* 80AF9EFC  38 7E 01 B0 */	addi r3, r30, 0x1b0
/* 80AF9F00  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AF9F04  28 00 00 00 */	cmplwi r0, 0
/* 80AF9F08  41 82 00 08 */	beq lbl_80AF9F10
/* 80AF9F0C  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80AF9F10:
/* 80AF9F10  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80AF9F14  3C 80 80 B0 */	lis r4, stringBase0@ha
/* 80AF9F18  38 84 C1 58 */	addi r4, r4, stringBase0@l
/* 80AF9F1C  38 84 00 54 */	addi r4, r4, 0x54
/* 80AF9F20  4B 86 EA 74 */	b strcmp
/* 80AF9F24  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9F28  40 82 00 10 */	bne lbl_80AF9F38
/* 80AF9F2C  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80AF9F30  60 00 00 20 */	ori r0, r0, 0x20
/* 80AF9F34  B0 1D 00 FA */	sth r0, 0xfa(r29)
lbl_80AF9F38:
/* 80AF9F38  7F A3 EB 78 */	mr r3, r29
/* 80AF9F3C  88 9D 0E 1C */	lbz r4, 0xe1c(r29)
/* 80AF9F40  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80AF9F44  54 00 10 3A */	slwi r0, r0, 2
/* 80AF9F48  38 BE 01 D0 */	addi r5, r30, 0x1d0
/* 80AF9F4C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AF9F50  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AF9F54  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AF9F58  38 E0 00 28 */	li r7, 0x28
/* 80AF9F5C  39 00 00 FF */	li r8, 0xff
/* 80AF9F60  39 20 00 01 */	li r9, 1
/* 80AF9F64  4B 65 99 18 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80AF9F68:
/* 80AF9F68  7F A3 EB 78 */	mr r3, r29
/* 80AF9F6C  48 00 03 CD */	bl playExpression__10daNpcThe_cFv
/* 80AF9F70  7F A3 EB 78 */	mr r3, r29
/* 80AF9F74  48 00 00 21 */	bl playMotion__10daNpcThe_cFv
/* 80AF9F78  38 60 00 01 */	li r3, 1
/* 80AF9F7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF9F80  4B 86 82 A8 */	b _restgpr_29
/* 80AF9F84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF9F88  7C 08 03 A6 */	mtlr r0
/* 80AF9F8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF9F90  4E 80 00 20 */	blr 
