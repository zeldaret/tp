lbl_80A08CBC:
/* 80A08CBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A08CC0  7C 08 02 A6 */	mflr r0
/* 80A08CC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A08CC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A08CCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A08CD0  7C 7F 1B 78 */	mr r31, r3
/* 80A08CD4  4B 74 9B F5 */	bl initialize__8daNpcF_cFv
/* 80A08CD8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80A08CDC  4B 74 7A 5D */	bl initialize__15daNpcF_MatAnm_cFv
/* 80A08CE0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A08CE4  4B 74 83 55 */	bl initialize__15daNpcF_Lookat_cFv
/* 80A08CE8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A08CEC  4B 74 79 C5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A08CF0  38 A0 00 00 */	li r5, 0
/* 80A08CF4  90 BF 0D D8 */	stw r5, 0xdd8(r31)
/* 80A08CF8  90 BF 0D DC */	stw r5, 0xddc(r31)
/* 80A08CFC  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A08D00  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A08D04  80 64 00 00 */	lwz r3, 0(r4)
/* 80A08D08  80 04 00 04 */	lwz r0, 4(r4)
/* 80A08D0C  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80A08D10  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80A08D14  80 04 00 08 */	lwz r0, 8(r4)
/* 80A08D18  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 80A08D1C  38 60 FF FF */	li r3, -1
/* 80A08D20  B0 7F 0D E4 */	sth r3, 0xde4(r31)
/* 80A08D24  B0 BF 0D E6 */	sth r5, 0xde6(r31)
/* 80A08D28  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A08D2C  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80A08D30  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A08D34  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A08D38  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A08D3C  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80A08D40  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80A08D44  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80A08D48  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A08D4C  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A08D50  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80A08D54  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80A08D58  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 80A08D5C  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80A08D60  3C 60 80 A1 */	lis r3, lit_4249@ha /* 0x80A0C2F4@ha */
/* 80A08D64  C0 03 C2 F4 */	lfs f0, lit_4249@l(r3)  /* 0x80A0C2F4@l */
/* 80A08D68  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80A08D6C  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80A08D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A08D74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A08D78  38 63 09 58 */	addi r3, r3, 0x958
/* 80A08D7C  38 80 00 61 */	li r4, 0x61
/* 80A08D80  4B 62 BA E1 */	bl isSwitch__12dSv_memBit_cCFi
/* 80A08D84  2C 03 00 00 */	cmpwi r3, 0
/* 80A08D88  41 82 00 14 */	beq lbl_80A08D9C
/* 80A08D8C  38 00 00 01 */	li r0, 1
/* 80A08D90  98 1F 0D E8 */	stb r0, 0xde8(r31)
/* 80A08D94  98 1F 0D E9 */	stb r0, 0xde9(r31)
/* 80A08D98  48 00 00 6C */	b lbl_80A08E04
lbl_80A08D9C:
/* 80A08D9C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A08DA0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A08DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A08DA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A08DAC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80A08DB0  7C 05 07 74 */	extsb r5, r0
/* 80A08DB4  4B 62 C5 AD */	bl isSwitch__10dSv_info_cCFii
/* 80A08DB8  30 03 FF FF */	addic r0, r3, -1
/* 80A08DBC  7C 00 19 10 */	subfe r0, r0, r3
/* 80A08DC0  98 1F 0D E8 */	stb r0, 0xde8(r31)
/* 80A08DC4  3B C0 00 00 */	li r30, 0
/* 80A08DC8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A08DCC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A08DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A08DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A08DD8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80A08DDC  7C 05 07 74 */	extsb r5, r0
/* 80A08DE0  4B 62 C5 81 */	bl isSwitch__10dSv_info_cCFii
/* 80A08DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A08DE8  41 82 00 18 */	beq lbl_80A08E00
/* 80A08DEC  38 60 01 16 */	li r3, 0x116
/* 80A08DF0  4B 74 C8 45 */	bl daNpcF_chkEvtBit__FUl
/* 80A08DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A08DF8  41 82 00 08 */	beq lbl_80A08E00
/* 80A08DFC  3B C0 00 01 */	li r30, 1
lbl_80A08E00:
/* 80A08E00  9B DF 0D E9 */	stb r30, 0xde9(r31)
lbl_80A08E04:
/* 80A08E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A08E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A08E0C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80A08E10  3C 80 80 A1 */	lis r4, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A08E14  38 84 C4 C8 */	addi r4, r4, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A08E18  38 84 00 30 */	addi r4, r4, 0x30
/* 80A08E1C  4B 95 FB 79 */	bl strcmp
/* 80A08E20  2C 03 00 00 */	cmpwi r3, 0
/* 80A08E24  40 82 00 50 */	bne lbl_80A08E74
/* 80A08E28  88 1F 0D E8 */	lbz r0, 0xde8(r31)
/* 80A08E2C  28 00 00 00 */	cmplwi r0, 0
/* 80A08E30  41 82 00 44 */	beq lbl_80A08E74
/* 80A08E34  88 1F 0D E9 */	lbz r0, 0xde9(r31)
/* 80A08E38  28 00 00 00 */	cmplwi r0, 0
/* 80A08E3C  41 82 00 38 */	beq lbl_80A08E74
/* 80A08E40  3C 60 80 A1 */	lis r3, l_resetPos@ha /* 0x80A0C6D8@ha */
/* 80A08E44  C4 03 C6 D8 */	lfsu f0, l_resetPos@l(r3)  /* 0x80A0C6D8@l */
/* 80A08E48  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A08E4C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A08E50  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A08E54  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A08E58  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A08E5C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A08E60  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A08E64  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A08E68  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A08E6C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A08E70  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
lbl_80A08E74:
/* 80A08E74  3C 60 80 A1 */	lis r3, lit_4498@ha /* 0x80A0C764@ha */
/* 80A08E78  38 83 C7 64 */	addi r4, r3, lit_4498@l /* 0x80A0C764@l */
/* 80A08E7C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A08E80  80 04 00 04 */	lwz r0, 4(r4)
/* 80A08E84  90 61 00 08 */	stw r3, 8(r1)
/* 80A08E88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A08E8C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A08E90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A08E94  7F E3 FB 78 */	mr r3, r31
/* 80A08E98  38 81 00 08 */	addi r4, r1, 8
/* 80A08E9C  48 00 00 1D */	bl setAction__12daNpcImpal_cFM12daNpcImpal_cFPCvPvPv_b
/* 80A08EA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A08EA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A08EA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A08EAC  7C 08 03 A6 */	mtlr r0
/* 80A08EB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A08EB4  4E 80 00 20 */	blr 
