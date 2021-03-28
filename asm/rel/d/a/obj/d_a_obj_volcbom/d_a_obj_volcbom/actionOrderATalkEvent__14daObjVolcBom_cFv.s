lbl_80D25CA0:
/* 80D25CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D25CA4  7C 08 02 A6 */	mflr r0
/* 80D25CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D25CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D25CB0  4B 63 C5 24 */	b _savegpr_27
/* 80D25CB4  7C 7F 1B 78 */	mr r31, r3
/* 80D25CB8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80D25CBC  83 63 10 18 */	lwz r27, m_midnaActor__9daPy_py_c@l(r3)
/* 80D25CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D25CC4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D25CC8  83 BE 5D AC */	lwz r29, 0x5dac(r30)
/* 80D25CCC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D25CD0  28 00 00 01 */	cmplwi r0, 1
/* 80D25CD4  40 82 00 28 */	bne lbl_80D25CFC
/* 80D25CD8  38 00 00 02 */	li r0, 2
/* 80D25CDC  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D25CE0  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 80D25CE4  7F E4 FB 78 */	mr r4, r31
/* 80D25CE8  A0 BF 09 64 */	lhz r5, 0x964(r31)
/* 80D25CEC  38 C0 00 00 */	li r6, 0
/* 80D25CF0  38 E0 00 00 */	li r7, 0
/* 80D25CF4  4B 52 42 9C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D25CF8  48 00 00 DC */	b lbl_80D25DD4
lbl_80D25CFC:
/* 80D25CFC  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80D25D00  7F 83 E3 78 */	mr r3, r28
/* 80D25D04  A8 9F 09 F0 */	lha r4, 0x9f0(r31)
/* 80D25D08  4B 32 1C F0 */	b startCheck__16dEvent_manager_cFs
/* 80D25D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D25D10  41 82 00 50 */	beq lbl_80D25D60
/* 80D25D14  80 1D 05 7C */	lwz r0, 0x57c(r29)
/* 80D25D18  64 00 02 00 */	oris r0, r0, 0x200
/* 80D25D1C  90 1D 05 7C */	stw r0, 0x57c(r29)
/* 80D25D20  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D25D24  7F E4 FB 78 */	mr r4, r31
/* 80D25D28  4B 31 D9 34 */	b setPt2__14dEvt_control_cFPv
/* 80D25D2C  7F 83 E3 78 */	mr r3, r28
/* 80D25D30  3C 80 80 D2 */	lis r4, l_staff_name@ha
/* 80D25D34  38 84 6C 7C */	addi r4, r4, l_staff_name@l
/* 80D25D38  80 84 00 00 */	lwz r4, 0(r4)
/* 80D25D3C  38 A0 00 00 */	li r5, 0
/* 80D25D40  38 C0 00 00 */	li r6, 0
/* 80D25D44  4B 32 1D D8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D25D48  90 7F 09 F4 */	stw r3, 0x9f4(r31)
/* 80D25D4C  38 00 00 03 */	li r0, 3
/* 80D25D50  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D25D54  7F E3 FB 78 */	mr r3, r31
/* 80D25D58  48 00 01 91 */	bl demoProc__14daObjVolcBom_cFv
/* 80D25D5C  48 00 00 78 */	b lbl_80D25DD4
lbl_80D25D60:
/* 80D25D60  7F E3 FB 78 */	mr r3, r31
/* 80D25D64  4B FF F5 65 */	bl checkTalkDistance__14daObjVolcBom_cFv
/* 80D25D68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D25D6C  41 82 00 4C */	beq lbl_80D25DB8
/* 80D25D70  C0 1F 09 98 */	lfs f0, 0x998(r31)
/* 80D25D74  D0 1B 09 AC */	stfs f0, 0x9ac(r27)
/* 80D25D78  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 80D25D7C  D0 1B 09 B0 */	stfs f0, 0x9b0(r27)
/* 80D25D80  C0 1F 09 A0 */	lfs f0, 0x9a0(r31)
/* 80D25D84  D0 1B 09 B4 */	stfs f0, 0x9b4(r27)
/* 80D25D88  80 1B 08 90 */	lwz r0, 0x890(r27)
/* 80D25D8C  64 00 08 00 */	oris r0, r0, 0x800
/* 80D25D90  60 00 04 00 */	ori r0, r0, 0x400
/* 80D25D94  90 1B 08 90 */	stw r0, 0x890(r27)
/* 80D25D98  38 60 00 09 */	li r3, 9
/* 80D25D9C  4B 30 9C FC */	b dComIfGp_TargetWarpPt_set__FUc
/* 80D25DA0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D25DA4  60 00 00 01 */	ori r0, r0, 1
/* 80D25DA8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80D25DAC  38 00 00 0A */	li r0, 0xa
/* 80D25DB0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D25DB4  48 00 00 20 */	b lbl_80D25DD4
lbl_80D25DB8:
/* 80D25DB8  80 9B 08 90 */	lwz r4, 0x890(r27)
/* 80D25DBC  3C 60 78 00 */	lis r3, 0x7800 /* 0x77FFFBFF@ha */
/* 80D25DC0  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0x77FFFBFF@l */
/* 80D25DC4  7C 80 00 38 */	and r0, r4, r0
/* 80D25DC8  90 1B 08 90 */	stw r0, 0x890(r27)
/* 80D25DCC  38 00 00 00 */	li r0, 0
/* 80D25DD0  98 1F 05 CA */	stb r0, 0x5ca(r31)
lbl_80D25DD4:
/* 80D25DD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D25DD8  4B 63 C4 48 */	b _restgpr_27
/* 80D25DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D25DE0  7C 08 03 A6 */	mtlr r0
/* 80D25DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D25DE8  4E 80 00 20 */	blr 
