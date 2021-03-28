lbl_80855CEC:
/* 80855CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80855CF0  7C 08 02 A6 */	mflr r0
/* 80855CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80855CF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80855CFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80855D00  7C 7F 1B 78 */	mr r31, r3
/* 80855D04  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80855D08  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 80855D0C  4B 80 4D D4 */	b dKyw_get_wind_vec__Fv
/* 80855D10  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80855D14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80855D18  40 82 00 20 */	bne lbl_80855D38
/* 80855D1C  28 1F 00 00 */	cmplwi r31, 0
/* 80855D20  41 82 00 0C */	beq lbl_80855D2C
/* 80855D24  7F E3 FB 78 */	mr r3, r31
/* 80855D28  4B 7C 2E 3C */	b __ct__10fopAc_ac_cFv
lbl_80855D2C:
/* 80855D2C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80855D30  60 00 00 08 */	ori r0, r0, 8
/* 80855D34  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80855D38:
/* 80855D38  38 00 00 00 */	li r0, 0
/* 80855D3C  B0 1F 05 74 */	sth r0, 0x574(r31)
/* 80855D40  98 1F 05 76 */	stb r0, 0x576(r31)
/* 80855D44  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80855D48  98 1F 05 77 */	stb r0, 0x577(r31)
/* 80855D4C  3C 60 80 85 */	lis r3, lit_3668@ha
/* 80855D50  C0 03 5E 04 */	lfs f0, lit_3668@l(r3)
/* 80855D54  D0 1E 0E 5C */	stfs f0, 0xe5c(r30)
/* 80855D58  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80855D5C  98 1F 05 78 */	stb r0, 0x578(r31)
/* 80855D60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80855D64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80855D68  88 9F 05 77 */	lbz r4, 0x577(r31)
/* 80855D6C  88 BF 04 BA */	lbz r5, 0x4ba(r31)
/* 80855D70  7C A5 07 74 */	extsb r5, r5
/* 80855D74  4B 7D F5 EC */	b isSwitch__10dSv_info_cCFii
/* 80855D78  2C 03 00 00 */	cmpwi r3, 0
/* 80855D7C  41 82 00 44 */	beq lbl_80855DC0
/* 80855D80  4B 80 58 B8 */	b dKyw_evt_wind_set_go__Fv
/* 80855D84  38 60 00 00 */	li r3, 0
/* 80855D88  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80855D8C  4B 80 58 90 */	b dKyw_evt_wind_set__Fss
/* 80855D90  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80855D94  28 00 00 63 */	cmplwi r0, 0x63
/* 80855D98  40 82 00 10 */	bne lbl_80855DA8
/* 80855D9C  38 00 00 FF */	li r0, 0xff
/* 80855DA0  98 1E 0E 6E */	stb r0, 0xe6e(r30)
/* 80855DA4  48 00 00 1C */	b lbl_80855DC0
lbl_80855DA8:
/* 80855DA8  38 00 00 01 */	li r0, 1
/* 80855DAC  98 1E 0E 6E */	stb r0, 0xe6e(r30)
/* 80855DB0  38 00 00 04 */	li r0, 4
/* 80855DB4  98 1E 0E B5 */	stb r0, 0xeb5(r30)
/* 80855DB8  38 00 00 32 */	li r0, 0x32
/* 80855DBC  90 1E 0E B8 */	stw r0, 0xeb8(r30)
lbl_80855DC0:
/* 80855DC0  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80855DC4  28 00 00 63 */	cmplwi r0, 0x63
/* 80855DC8  41 82 00 10 */	beq lbl_80855DD8
/* 80855DCC  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80855DD0  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 80855DD4  4B A7 21 E8 */	b initStrongWindSe__10Z2EnvSeMgrFv
lbl_80855DD8:
/* 80855DD8  38 60 00 04 */	li r3, 4
/* 80855DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80855DE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80855DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80855DE8  7C 08 03 A6 */	mtlr r0
/* 80855DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80855DF0  4E 80 00 20 */	blr 
