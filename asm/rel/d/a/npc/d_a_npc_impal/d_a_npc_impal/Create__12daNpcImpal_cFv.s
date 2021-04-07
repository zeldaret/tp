lbl_80A07DC4:
/* 80A07DC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A07DC8  7C 08 02 A6 */	mflr r0
/* 80A07DCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A07DD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A07DD4  4B 95 A4 01 */	bl _savegpr_27
/* 80A07DD8  7C 7B 1B 78 */	mr r27, r3
/* 80A07DDC  3C 80 80 A1 */	lis r4, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A07DE0  3B E4 C2 70 */	addi r31, r4, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A07DE4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A07DE8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A07DEC  40 82 00 1C */	bne lbl_80A07E08
/* 80A07DF0  28 1B 00 00 */	cmplwi r27, 0
/* 80A07DF4  41 82 00 08 */	beq lbl_80A07DFC
/* 80A07DF8  4B FF FB F5 */	bl __ct__12daNpcImpal_cFv
lbl_80A07DFC:
/* 80A07DFC  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80A07E00  60 00 00 08 */	ori r0, r0, 8
/* 80A07E04  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80A07E08:
/* 80A07E08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A07E0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A07E10  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80A07E14  3B DD 3E C8 */	addi r30, r29, 0x3ec8
/* 80A07E18  7F C3 F3 78 */	mr r3, r30
/* 80A07E1C  3C 80 80 A1 */	lis r4, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A07E20  38 84 C4 C8 */	addi r4, r4, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A07E24  38 84 00 30 */	addi r4, r4, 0x30
/* 80A07E28  4B 96 0B 6D */	bl strcmp
/* 80A07E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80A07E30  40 82 00 20 */	bne lbl_80A07E50
/* 80A07E34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A07E38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A07E3C  38 63 09 58 */	addi r3, r3, 0x958
/* 80A07E40  38 80 00 61 */	li r4, 0x61
/* 80A07E44  4B 62 CA 1D */	bl isSwitch__12dSv_memBit_cCFi
/* 80A07E48  2C 03 00 00 */	cmpwi r3, 0
/* 80A07E4C  40 82 00 3C */	bne lbl_80A07E88
lbl_80A07E50:
/* 80A07E50  7F C3 F3 78 */	mr r3, r30
/* 80A07E54  3C 80 80 A1 */	lis r4, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A07E58  38 84 C4 C8 */	addi r4, r4, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A07E5C  38 84 00 38 */	addi r4, r4, 0x38
/* 80A07E60  4B 96 0B 35 */	bl strcmp
/* 80A07E64  2C 03 00 00 */	cmpwi r3, 0
/* 80A07E68  40 82 00 28 */	bne lbl_80A07E90
/* 80A07E6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A07E70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A07E74  38 63 09 58 */	addi r3, r3, 0x958
/* 80A07E78  38 80 00 61 */	li r4, 0x61
/* 80A07E7C  4B 62 C9 E5 */	bl isSwitch__12dSv_memBit_cCFi
/* 80A07E80  2C 03 00 00 */	cmpwi r3, 0
/* 80A07E84  40 82 00 0C */	bne lbl_80A07E90
lbl_80A07E88:
/* 80A07E88  38 60 00 05 */	li r3, 5
/* 80A07E8C  48 00 02 54 */	b lbl_80A080E0
lbl_80A07E90:
/* 80A07E90  3C 60 80 A1 */	lis r3, l_arcNames@ha /* 0x80A0C6C4@ha */
/* 80A07E94  38 83 C6 C4 */	addi r4, r3, l_arcNames@l /* 0x80A0C6C4@l */
/* 80A07E98  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80A07E9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80A07EA0  4B 62 50 1D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A07EA4  7C 7C 1B 78 */	mr r28, r3
/* 80A07EA8  2C 1C 00 04 */	cmpwi r28, 4
/* 80A07EAC  41 82 00 08 */	beq lbl_80A07EB4
/* 80A07EB0  48 00 02 30 */	b lbl_80A080E0
lbl_80A07EB4:
/* 80A07EB4  40 82 02 28 */	bne lbl_80A080DC
/* 80A07EB8  7F 63 DB 78 */	mr r3, r27
/* 80A07EBC  3C 80 80 A1 */	lis r4, createHeapCallBack__12daNpcImpal_cFP10fopAc_ac_c@ha /* 0x80A087BC@ha */
/* 80A07EC0  38 84 87 BC */	addi r4, r4, createHeapCallBack__12daNpcImpal_cFP10fopAc_ac_c@l /* 0x80A087BC@l */
/* 80A07EC4  38 A0 3C E0 */	li r5, 0x3ce0
/* 80A07EC8  4B 61 25 E9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A07ECC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A07ED0  40 82 00 0C */	bne lbl_80A07EDC
/* 80A07ED4  38 60 00 05 */	li r3, 5
/* 80A07ED8  48 00 02 08 */	b lbl_80A080E0
lbl_80A07EDC:
/* 80A07EDC  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 80A07EE0  B0 1B 0D E0 */	sth r0, 0xde0(r27)
/* 80A07EE4  A8 1B 0D E0 */	lha r0, 0xde0(r27)
/* 80A07EE8  B0 1B 0D E2 */	sth r0, 0xde2(r27)
/* 80A07EEC  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80A07EF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A07EF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80A07EF8  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80A07EFC  7F 63 DB 78 */	mr r3, r27
/* 80A07F00  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A07F04  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80A07F08  FC 60 08 90 */	fmr f3, f1
/* 80A07F0C  C0 9F 00 78 */	lfs f4, 0x78(r31)
/* 80A07F10  C0 BF 00 7C */	lfs f5, 0x7c(r31)
/* 80A07F14  FC C0 20 90 */	fmr f6, f4
/* 80A07F18  4B 61 26 31 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A07F1C  38 7B 0B 48 */	addi r3, r27, 0xb48
/* 80A07F20  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80A07F24  38 BB 05 38 */	addi r5, r27, 0x538
/* 80A07F28  38 C0 00 03 */	li r6, 3
/* 80A07F2C  38 E0 00 01 */	li r7, 1
/* 80A07F30  4B 8B 86 01 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A07F34  38 7B 07 E4 */	addi r3, r27, 0x7e4
/* 80A07F38  38 9F 00 00 */	addi r4, r31, 0
/* 80A07F3C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A07F40  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80A07F44  4B 66 E0 15 */	bl SetWall__12dBgS_AcchCirFff
/* 80A07F48  38 1B 04 E4 */	addi r0, r27, 0x4e4
/* 80A07F4C  90 01 00 08 */	stw r0, 8(r1)
/* 80A07F50  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 80A07F54  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80A07F58  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 80A07F5C  7F 66 DB 78 */	mr r6, r27
/* 80A07F60  38 E0 00 01 */	li r7, 1
/* 80A07F64  39 1B 07 E4 */	addi r8, r27, 0x7e4
/* 80A07F68  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 80A07F6C  39 5B 04 DC */	addi r10, r27, 0x4dc
/* 80A07F70  4B 66 E2 D9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A07F74  80 1B 05 FC */	lwz r0, 0x5fc(r27)
/* 80A07F78  60 00 00 08 */	ori r0, r0, 8
/* 80A07F7C  90 1B 05 FC */	stw r0, 0x5fc(r27)
/* 80A07F80  80 1B 05 FC */	lwz r0, 0x5fc(r27)
/* 80A07F84  60 00 04 00 */	ori r0, r0, 0x400
/* 80A07F88  90 1B 05 FC */	stw r0, 0x5fc(r27)
/* 80A07F8C  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 80A07F90  7F A4 EB 78 */	mr r4, r29
/* 80A07F94  4B 66 EB 19 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A07F98  38 7B 07 A8 */	addi r3, r27, 0x7a8
/* 80A07F9C  38 9F 00 00 */	addi r4, r31, 0
/* 80A07FA0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A07FA4  FC 00 00 1E */	fctiwz f0, f0
/* 80A07FA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A07FAC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A07FB0  38 A0 00 00 */	li r5, 0
/* 80A07FB4  7F 66 DB 78 */	mr r6, r27
/* 80A07FB8  4B 67 B8 A9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A07FBC  38 7B 0C 84 */	addi r3, r27, 0xc84
/* 80A07FC0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80A07FC4  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80A07FC8  4B 67 C8 ED */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A07FCC  38 1B 07 A8 */	addi r0, r27, 0x7a8
/* 80A07FD0  90 1B 0C C8 */	stw r0, 0xcc8(r27)
/* 80A07FD4  38 00 00 00 */	li r0, 0
/* 80A07FD8  90 1B 0C AC */	stw r0, 0xcac(r27)
/* 80A07FDC  90 1B 0C 9C */	stw r0, 0xc9c(r27)
/* 80A07FE0  80 1B 06 AC */	lwz r0, 0x6ac(r27)
/* 80A07FE4  90 1B 0A 44 */	stw r0, 0xa44(r27)
/* 80A07FE8  80 1B 06 B0 */	lwz r0, 0x6b0(r27)
/* 80A07FEC  90 1B 0A 48 */	stw r0, 0xa48(r27)
/* 80A07FF0  80 1B 06 B4 */	lwz r0, 0x6b4(r27)
/* 80A07FF4  90 1B 0A 4C */	stw r0, 0xa4c(r27)
/* 80A07FF8  88 1B 06 B8 */	lbz r0, 0x6b8(r27)
/* 80A07FFC  98 1B 0A 50 */	stb r0, 0xa50(r27)
/* 80A08000  A0 1B 06 C0 */	lhz r0, 0x6c0(r27)
/* 80A08004  B0 1B 0A 58 */	sth r0, 0xa58(r27)
/* 80A08008  A0 1B 06 C2 */	lhz r0, 0x6c2(r27)
/* 80A0800C  B0 1B 0A 5A */	sth r0, 0xa5a(r27)
/* 80A08010  80 1B 06 C4 */	lwz r0, 0x6c4(r27)
/* 80A08014  90 1B 0A 5C */	stw r0, 0xa5c(r27)
/* 80A08018  80 1B 06 C8 */	lwz r0, 0x6c8(r27)
/* 80A0801C  90 1B 0A 60 */	stw r0, 0xa60(r27)
/* 80A08020  C0 1B 06 D0 */	lfs f0, 0x6d0(r27)
/* 80A08024  D0 1B 0A 68 */	stfs f0, 0xa68(r27)
/* 80A08028  C0 1B 06 D4 */	lfs f0, 0x6d4(r27)
/* 80A0802C  D0 1B 0A 6C */	stfs f0, 0xa6c(r27)
/* 80A08030  C0 1B 06 D8 */	lfs f0, 0x6d8(r27)
/* 80A08034  D0 1B 0A 70 */	stfs f0, 0xa70(r27)
/* 80A08038  80 1B 06 DC */	lwz r0, 0x6dc(r27)
/* 80A0803C  90 1B 0A 74 */	stw r0, 0xa74(r27)
/* 80A08040  C0 1B 06 E0 */	lfs f0, 0x6e0(r27)
/* 80A08044  D0 1B 0A 78 */	stfs f0, 0xa78(r27)
/* 80A08048  80 1B 06 E4 */	lwz r0, 0x6e4(r27)
/* 80A0804C  90 1B 0A 7C */	stw r0, 0xa7c(r27)
/* 80A08050  C0 1B 06 68 */	lfs f0, 0x668(r27)
/* 80A08054  D0 1B 09 80 */	stfs f0, 0x980(r27)
/* 80A08058  7F 63 DB 78 */	mr r3, r27
/* 80A0805C  4B 74 AD 29 */	bl setEnvTevColor__8daNpcF_cFv
/* 80A08060  7F 63 DB 78 */	mr r3, r27
/* 80A08064  4B 74 AD 7D */	bl setRoomNo__8daNpcF_cFv
/* 80A08068  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80A0806C  4B 60 91 81 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80A08070  7F 63 DB 78 */	mr r3, r27
/* 80A08074  48 00 0C 49 */	bl reset__12daNpcImpal_cFv
/* 80A08078  7F 63 DB 78 */	mr r3, r27
/* 80A0807C  48 00 04 DD */	bl Execute__12daNpcImpal_cFv
/* 80A08080  7F C3 F3 78 */	mr r3, r30
/* 80A08084  3C 80 80 A1 */	lis r4, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A08088  38 84 C4 C8 */	addi r4, r4, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A0808C  38 84 00 30 */	addi r4, r4, 0x30
/* 80A08090  4B 96 09 05 */	bl strcmp
/* 80A08094  2C 03 00 00 */	cmpwi r3, 0
/* 80A08098  40 82 00 44 */	bne lbl_80A080DC
/* 80A0809C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80A080A0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A080A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A080A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A080AC  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80A080B0  7C 05 07 74 */	extsb r5, r0
/* 80A080B4  4B 62 D2 AD */	bl isSwitch__10dSv_info_cCFii
/* 80A080B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A080BC  41 82 00 20 */	beq lbl_80A080DC
/* 80A080C0  38 60 01 16 */	li r3, 0x116
/* 80A080C4  4B 74 D5 71 */	bl daNpcF_chkEvtBit__FUl
/* 80A080C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A080CC  40 82 00 10 */	bne lbl_80A080DC
/* 80A080D0  4B 74 DA 19 */	bl daNpcF_clearMessageTmpBit__Fv
/* 80A080D4  38 00 00 01 */	li r0, 1
/* 80A080D8  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
lbl_80A080DC:
/* 80A080DC  7F 83 E3 78 */	mr r3, r28
lbl_80A080E0:
/* 80A080E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A080E4  4B 95 A1 3D */	bl _restgpr_27
/* 80A080E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A080EC  7C 08 03 A6 */	mtlr r0
/* 80A080F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80A080F4  4E 80 00 20 */	blr 
