lbl_805D7C10:
/* 805D7C10  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805D7C14  7C 08 02 A6 */	mflr r0
/* 805D7C18  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805D7C1C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805D7C20  4B D8 A5 A4 */	b _savegpr_23
/* 805D7C24  7C 7D 1B 78 */	mr r29, r3
/* 805D7C28  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D7C2C  3B E3 CA 54 */	addi r31, r3, lit_3932@l
/* 805D7C30  80 1D 06 84 */	lwz r0, 0x684(r29)
/* 805D7C34  2C 00 00 01 */	cmpwi r0, 1
/* 805D7C38  41 82 00 78 */	beq lbl_805D7CB0
/* 805D7C3C  40 80 00 10 */	bge lbl_805D7C4C
/* 805D7C40  2C 00 00 00 */	cmpwi r0, 0
/* 805D7C44  40 80 00 14 */	bge lbl_805D7C58
/* 805D7C48  48 00 02 54 */	b lbl_805D7E9C
lbl_805D7C4C:
/* 805D7C4C  2C 00 00 03 */	cmpwi r0, 3
/* 805D7C50  40 80 02 4C */	bge lbl_805D7E9C
/* 805D7C54  48 00 01 BC */	b lbl_805D7E10
lbl_805D7C58:
/* 805D7C58  88 1D 08 56 */	lbz r0, 0x856(r29)
/* 805D7C5C  28 00 00 01 */	cmplwi r0, 1
/* 805D7C60  40 82 00 2C */	bne lbl_805D7C8C
/* 805D7C64  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 805D7C68  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805D7C6C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805D7C70  D0 1D 07 D8 */	stfs f0, 0x7d8(r29)
/* 805D7C74  3C 60 80 5E */	lis r3, struct_805DDB10+0x2@ha
/* 805D7C78  88 03 DB 12 */	lbz r0, struct_805DDB10+0x2@l(r3)
/* 805D7C7C  90 1D 08 1C */	stw r0, 0x81c(r29)
/* 805D7C80  38 00 00 02 */	li r0, 2
/* 805D7C84  90 1D 06 84 */	stw r0, 0x684(r29)
/* 805D7C88  48 00 02 14 */	b lbl_805D7E9C
lbl_805D7C8C:
/* 805D7C8C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 805D7C90  D0 1D 07 F0 */	stfs f0, 0x7f0(r29)
/* 805D7C94  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805D7C98  D0 1D 07 D8 */	stfs f0, 0x7d8(r29)
/* 805D7C9C  38 00 00 64 */	li r0, 0x64
/* 805D7CA0  90 1D 08 1C */	stw r0, 0x81c(r29)
/* 805D7CA4  80 7D 06 84 */	lwz r3, 0x684(r29)
/* 805D7CA8  38 03 00 01 */	addi r0, r3, 1
/* 805D7CAC  90 1D 06 84 */	stw r0, 0x684(r29)
lbl_805D7CB0:
/* 805D7CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7CB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D7CB8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805D7CBC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D7CC0  81 8C 01 F0 */	lwz r12, 0x1f0(r12)
/* 805D7CC4  7D 89 03 A6 */	mtctr r12
/* 805D7CC8  4E 80 04 21 */	bctrl 
/* 805D7CCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D7CD0  41 82 00 1C */	beq lbl_805D7CEC
/* 805D7CD4  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 805D7CD8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805D7CDC  7C 03 00 50 */	subf r0, r3, r0
/* 805D7CE0  7C 00 07 34 */	extsh r0, r0
/* 805D7CE4  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805D7CE8  40 81 00 20 */	ble lbl_805D7D08
lbl_805D7CEC:
/* 805D7CEC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805D7CF0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805D7CF4  38 00 00 64 */	li r0, 0x64
/* 805D7CF8  90 1D 08 1C */	stw r0, 0x81c(r29)
/* 805D7CFC  38 00 00 02 */	li r0, 2
/* 805D7D00  90 1D 06 84 */	stw r0, 0x684(r29)
/* 805D7D04  48 00 01 98 */	b lbl_805D7E9C
lbl_805D7D08:
/* 805D7D08  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 805D7D0C  38 81 00 24 */	addi r4, r1, 0x24
/* 805D7D10  4B A4 1C AC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805D7D14  2C 03 00 00 */	cmpwi r3, 0
/* 805D7D18  41 82 00 D0 */	beq lbl_805D7DE8
/* 805D7D1C  83 01 00 24 */	lwz r24, 0x24(r1)
/* 805D7D20  28 18 00 00 */	cmplwi r24, 0
/* 805D7D24  41 82 00 C4 */	beq lbl_805D7DE8
/* 805D7D28  38 61 00 4C */	addi r3, r1, 0x4c
/* 805D7D2C  38 98 06 D0 */	addi r4, r24, 0x6d0
/* 805D7D30  38 B8 07 00 */	addi r5, r24, 0x700
/* 805D7D34  4B C8 EE 00 */	b __mi__4cXyzCFRC3Vec
/* 805D7D38  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805D7D3C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805D7D40  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805D7D44  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805D7D48  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805D7D4C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805D7D50  38 61 00 70 */	addi r3, r1, 0x70
/* 805D7D54  4B C8 F3 FC */	b atan2sY_XZ__4cXyzCFv
/* 805D7D58  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 805D7D5C  38 61 00 70 */	addi r3, r1, 0x70
/* 805D7D60  4B C8 F3 C8 */	b atan2sX_Z__4cXyzCFv
/* 805D7D64  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 805D7D68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7D6C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D7D70  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7D74  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805D7D78  4B A3 46 64 */	b mDoMtx_YrotS__FPA4_fs
/* 805D7D7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7D80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D7D84  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7D88  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 805D7D8C  4B A3 46 10 */	b mDoMtx_XrotM__FPA4_fs
/* 805D7D90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D7D94  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805D7D98  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805D7D9C  C0 1D 07 F0 */	lfs f0, 0x7f0(r29)
/* 805D7DA0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805D7DA4  38 61 00 70 */	addi r3, r1, 0x70
/* 805D7DA8  38 81 00 64 */	addi r4, r1, 0x64
/* 805D7DAC  4B C9 91 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D7DB0  38 61 00 40 */	addi r3, r1, 0x40
/* 805D7DB4  38 81 00 64 */	addi r4, r1, 0x64
/* 805D7DB8  38 B8 07 00 */	addi r5, r24, 0x700
/* 805D7DBC  4B C8 ED 28 */	b __pl__4cXyzCFRC3Vec
/* 805D7DC0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805D7DC4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805D7DC8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805D7DCC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805D7DD0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805D7DD4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805D7DD8  C0 3D 07 F0 */	lfs f1, 0x7f0(r29)
/* 805D7DDC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805D7DE0  EC 01 00 2A */	fadds f0, f1, f0
/* 805D7DE4  D0 1D 07 F0 */	stfs f0, 0x7f0(r29)
lbl_805D7DE8:
/* 805D7DE8  C0 3D 07 D8 */	lfs f1, 0x7d8(r29)
/* 805D7DEC  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 805D7DF0  EC 01 00 2A */	fadds f0, f1, f0
/* 805D7DF4  D0 1D 07 D8 */	stfs f0, 0x7d8(r29)
/* 805D7DF8  C0 3D 07 D8 */	lfs f1, 0x7d8(r29)
/* 805D7DFC  C0 1F 05 70 */	lfs f0, 0x570(r31)
/* 805D7E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D7E04  40 81 00 98 */	ble lbl_805D7E9C
/* 805D7E08  D0 1D 07 D8 */	stfs f0, 0x7d8(r29)
/* 805D7E0C  48 00 00 90 */	b lbl_805D7E9C
lbl_805D7E10:
/* 805D7E10  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7E14  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D7E18  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7E1C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805D7E20  4B A3 45 BC */	b mDoMtx_YrotS__FPA4_fs
/* 805D7E24  88 1D 08 56 */	lbz r0, 0x856(r29)
/* 805D7E28  28 00 00 01 */	cmplwi r0, 1
/* 805D7E2C  40 82 00 24 */	bne lbl_805D7E50
/* 805D7E30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7E34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D7E38  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7E3C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 805D7E40  7C 00 00 D0 */	neg r0, r0
/* 805D7E44  7C 04 07 34 */	extsh r4, r0
/* 805D7E48  4B A3 45 54 */	b mDoMtx_XrotM__FPA4_fs
/* 805D7E4C  48 00 00 18 */	b lbl_805D7E64
lbl_805D7E50:
/* 805D7E50  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7E54  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D7E58  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7E5C  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 805D7E60  4B A3 45 3C */	b mDoMtx_XrotM__FPA4_fs
lbl_805D7E64:
/* 805D7E64  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D7E68  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805D7E6C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805D7E70  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 805D7E74  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805D7E78  38 61 00 70 */	addi r3, r1, 0x70
/* 805D7E7C  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 805D7E80  4B C9 90 6C */	b MtxPosition__FP4cXyzP4cXyz
/* 805D7E84  38 7D 08 1C */	addi r3, r29, 0x81c
/* 805D7E88  48 00 4A 5D */	bl func_805DC8E4
/* 805D7E8C  2C 03 00 00 */	cmpwi r3, 0
/* 805D7E90  40 82 00 0C */	bne lbl_805D7E9C
/* 805D7E94  7F A3 EB 78 */	mr r3, r29
/* 805D7E98  4B A4 1D E4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805D7E9C:
/* 805D7E9C  80 7D 08 DC */	lwz r3, 0x8dc(r29)
/* 805D7EA0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 805D7EA4  40 82 00 0C */	bne lbl_805D7EB0
/* 805D7EA8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 805D7EAC  41 82 00 10 */	beq lbl_805D7EBC
lbl_805D7EB0:
/* 805D7EB0  7F A3 EB 78 */	mr r3, r29
/* 805D7EB4  4B A4 1D C8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 805D7EB8  48 00 01 A8 */	b lbl_805D8060
lbl_805D7EBC:
/* 805D7EBC  38 7D 13 38 */	addi r3, r29, 0x1338
/* 805D7EC0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805D7EC4  4B C9 77 84 */	b SetC__8cM3dGSphFRC4cXyz
/* 805D7EC8  38 7D 13 38 */	addi r3, r29, 0x1338
/* 805D7ECC  C0 3D 07 D8 */	lfs f1, 0x7d8(r29)
/* 805D7ED0  4B C9 78 38 */	b SetR__8cM3dGSphFf
/* 805D7ED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7ED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D7EDC  38 63 23 3C */	addi r3, r3, 0x233c
/* 805D7EE0  38 9D 12 14 */	addi r4, r29, 0x1214
/* 805D7EE4  4B C8 CC C4 */	b Set__4cCcSFP8cCcD_Obj
/* 805D7EE8  88 1D 08 56 */	lbz r0, 0x856(r29)
/* 805D7EEC  28 00 00 03 */	cmplwi r0, 3
/* 805D7EF0  41 82 00 0C */	beq lbl_805D7EFC
/* 805D7EF4  28 00 00 04 */	cmplwi r0, 4
/* 805D7EF8  40 82 01 68 */	bne lbl_805D8060
lbl_805D7EFC:
/* 805D7EFC  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D7F00  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D7F04  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805D7F08  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D7F0C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D7F10  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D7F14  38 61 00 34 */	addi r3, r1, 0x34
/* 805D7F18  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805D7F1C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805D7F20  4B C8 EC 14 */	b __mi__4cXyzCFRC3Vec
/* 805D7F24  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805D7F28  D0 1D 07 24 */	stfs f0, 0x724(r29)
/* 805D7F2C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805D7F30  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 805D7F34  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805D7F38  D0 1D 07 2C */	stfs f0, 0x72c(r29)
/* 805D7F3C  38 7D 07 24 */	addi r3, r29, 0x724
/* 805D7F40  7C 64 1B 78 */	mr r4, r3
/* 805D7F44  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805D7F48  4B D6 F1 90 */	b PSVECScale
/* 805D7F4C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008027B@ha */
/* 805D7F50  38 03 02 7B */	addi r0, r3, 0x027B /* 0x0008027B@l */
/* 805D7F54  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D7F58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805D7F5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805D7F60  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7F64  38 81 00 20 */	addi r4, r1, 0x20
/* 805D7F68  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805D7F6C  38 C0 00 00 */	li r6, 0
/* 805D7F70  38 E0 00 00 */	li r7, 0
/* 805D7F74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805D7F78  FC 40 08 90 */	fmr f2, f1
/* 805D7F7C  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 805D7F80  FC 80 18 90 */	fmr f4, f3
/* 805D7F84  39 00 00 00 */	li r8, 0
/* 805D7F88  4B CD 45 84 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805D7F8C  3B C0 00 00 */	li r30, 0
/* 805D7F90  3B 80 00 00 */	li r28, 0
/* 805D7F94  3B 60 00 00 */	li r27, 0
/* 805D7F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7F9C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 805D7FA0  3B 1D 07 24 */	addi r24, r29, 0x724
/* 805D7FA4  3C 60 80 5E */	lis r3, effId_9621@ha
/* 805D7FA8  3B 43 D8 18 */	addi r26, r3, effId_9621@l
lbl_805D7FAC:
/* 805D7FAC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 805D7FB0  38 00 00 FF */	li r0, 0xff
/* 805D7FB4  90 01 00 08 */	stw r0, 8(r1)
/* 805D7FB8  38 80 00 00 */	li r4, 0
/* 805D7FBC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D7FC0  38 00 FF FF */	li r0, -1
/* 805D7FC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D7FC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D7FCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D7FD0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D7FD4  3A FB 2E B8 */	addi r23, r27, 0x2eb8
/* 805D7FD8  7C 9D B8 2E */	lwzx r4, r29, r23
/* 805D7FDC  38 A0 00 00 */	li r5, 0
/* 805D7FE0  7C DA E2 2E */	lhzx r6, r26, r28
/* 805D7FE4  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 805D7FE8  39 00 00 00 */	li r8, 0
/* 805D7FEC  39 3D 04 DC */	addi r9, r29, 0x4dc
/* 805D7FF0  39 41 00 58 */	addi r10, r1, 0x58
/* 805D7FF4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805D7FF8  4B A7 54 D4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D7FFC  7C 7D B9 2E */	stwx r3, r29, r23
/* 805D8000  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 805D8004  38 63 02 10 */	addi r3, r3, 0x210
/* 805D8008  7C 9D B8 2E */	lwzx r4, r29, r23
/* 805D800C  4B A7 39 0C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 805D8010  28 03 00 00 */	cmplwi r3, 0
/* 805D8014  41 82 00 38 */	beq lbl_805D804C
/* 805D8018  E0 1D 04 D0 */	psq_l f0, 1232(r29), 0, 0 /* qr0 */
/* 805D801C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805D8020  F0 01 00 28 */	psq_st f0, 40(r1), 0, 0 /* qr0 */
/* 805D8024  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805D8028  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805D802C  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 805D8030  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805D8034  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 805D8038  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 805D803C  3C 80 80 45 */	lis r4, mParticleTracePCB__13dPa_control_c@ha
/* 805D8040  38 04 0E C8 */	addi r0, r4, mParticleTracePCB__13dPa_control_c@l
/* 805D8044  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 805D8048  93 03 00 C0 */	stw r24, 0xc0(r3)
lbl_805D804C:
/* 805D804C  3B DE 00 01 */	addi r30, r30, 1
/* 805D8050  2C 1E 00 04 */	cmpwi r30, 4
/* 805D8054  3B 9C 00 02 */	addi r28, r28, 2
/* 805D8058  3B 7B 00 04 */	addi r27, r27, 4
/* 805D805C  41 80 FF 50 */	blt lbl_805D7FAC
lbl_805D8060:
/* 805D8060  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805D8064  4B D8 A1 AC */	b _restgpr_23
/* 805D8068  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805D806C  7C 08 03 A6 */	mtlr r0
/* 805D8070  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805D8074  4E 80 00 20 */	blr 
