lbl_80AE7D48:
/* 80AE7D48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AE7D4C  7C 08 02 A6 */	mflr r0
/* 80AE7D50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AE7D54  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE7D58  4B 87 A4 75 */	bl _savegpr_25
/* 80AE7D5C  7C 7D 1B 78 */	mr r29, r3
/* 80AE7D60  3C 80 80 AF */	lis r4, m__17daNpcShoe_Param_c@ha /* 0x80AEA3B0@ha */
/* 80AE7D64  3B E4 A3 B0 */	addi r31, r4, m__17daNpcShoe_Param_c@l /* 0x80AEA3B0@l */
/* 80AE7D68  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AE7D6C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AE7D70  40 82 00 1C */	bne lbl_80AE7D8C
/* 80AE7D74  28 1D 00 00 */	cmplwi r29, 0
/* 80AE7D78  41 82 00 08 */	beq lbl_80AE7D80
/* 80AE7D7C  4B FF FB D1 */	bl __ct__11daNpcShoe_cFv
lbl_80AE7D80:
/* 80AE7D80  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AE7D84  60 00 00 08 */	ori r0, r0, 8
/* 80AE7D88  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AE7D8C:
/* 80AE7D8C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80AE7D90  54 00 84 3E */	srwi r0, r0, 0x10
/* 80AE7D94  7C 00 07 34 */	extsh r0, r0
/* 80AE7D98  90 1D 0E 0C */	stw r0, 0xe0c(r29)
/* 80AE7D9C  3B 20 00 00 */	li r25, 0
/* 80AE7DA0  3B 80 00 00 */	li r28, 0
/* 80AE7DA4  3B 60 00 00 */	li r27, 0
/* 80AE7DA8  3C 60 80 AF */	lis r3, l_arcNames@ha /* 0x80AEA5A0@ha */
/* 80AE7DAC  3B 43 A5 A0 */	addi r26, r3, l_arcNames@l /* 0x80AEA5A0@l */
lbl_80AE7DB0:
/* 80AE7DB0  38 7B 0D E8 */	addi r3, r27, 0xde8
/* 80AE7DB4  7C 7D 1A 14 */	add r3, r29, r3
/* 80AE7DB8  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80AE7DBC  4B 54 51 01 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AE7DC0  7C 7E 1B 78 */	mr r30, r3
/* 80AE7DC4  2C 1E 00 04 */	cmpwi r30, 4
/* 80AE7DC8  41 82 00 08 */	beq lbl_80AE7DD0
/* 80AE7DCC  48 00 01 F4 */	b lbl_80AE7FC0
lbl_80AE7DD0:
/* 80AE7DD0  3B 39 00 01 */	addi r25, r25, 1
/* 80AE7DD4  2C 19 00 03 */	cmpwi r25, 3
/* 80AE7DD8  3B 9C 00 04 */	addi r28, r28, 4
/* 80AE7DDC  3B 7B 00 08 */	addi r27, r27, 8
/* 80AE7DE0  41 80 FF D0 */	blt lbl_80AE7DB0
/* 80AE7DE4  2C 1E 00 04 */	cmpwi r30, 4
/* 80AE7DE8  40 82 01 D4 */	bne lbl_80AE7FBC
/* 80AE7DEC  7F A3 EB 78 */	mr r3, r29
/* 80AE7DF0  3C 80 80 AF */	lis r4, createHeapCallBack__11daNpcShoe_cFP10fopAc_ac_c@ha /* 0x80AE8598@ha */
/* 80AE7DF4  38 84 85 98 */	addi r4, r4, createHeapCallBack__11daNpcShoe_cFP10fopAc_ac_c@l /* 0x80AE8598@l */
/* 80AE7DF8  38 A0 29 20 */	li r5, 0x2920
/* 80AE7DFC  4B 53 26 B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AE7E00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE7E04  40 82 00 0C */	bne lbl_80AE7E10
/* 80AE7E08  38 60 00 05 */	li r3, 5
/* 80AE7E0C  48 00 01 B4 */	b lbl_80AE7FC0
lbl_80AE7E10:
/* 80AE7E10  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AE7E14  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE7E18  38 03 00 24 */	addi r0, r3, 0x24
/* 80AE7E1C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AE7E20  7F A3 EB 78 */	mr r3, r29
/* 80AE7E24  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80AE7E28  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80AE7E2C  FC 60 08 90 */	fmr f3, f1
/* 80AE7E30  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 80AE7E34  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 80AE7E38  FC C0 20 90 */	fmr f6, f4
/* 80AE7E3C  4B 53 27 0D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AE7E40  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AE7E44  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AE7E48  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AE7E4C  38 C0 00 03 */	li r6, 3
/* 80AE7E50  38 E0 00 01 */	li r7, 1
/* 80AE7E54  4B 7D 8E 91 */	bl init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80AE7E58  4B 6C 47 25 */	bl dKy_darkworld_check__Fv
/* 80AE7E5C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80AE7E60  30 03 FF FF */	addic r0, r3, -1
/* 80AE7E64  7C 00 19 10 */	subfe r0, r0, r3
/* 80AE7E68  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80AE7E6C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AE7E70  38 80 00 07 */	li r4, 7
/* 80AE7E74  38 A0 00 00 */	li r5, 0
/* 80AE7E78  4B 7D 8E D1 */	bl setMdlType__17Z2CreatureCitizenFScbb
/* 80AE7E7C  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80AE7E80  38 9F 00 00 */	addi r4, r31, 0
/* 80AE7E84  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AE7E88  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80AE7E8C  4B 58 E0 CD */	bl SetWall__12dBgS_AcchCirFff
/* 80AE7E90  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AE7E94  90 01 00 08 */	stw r0, 8(r1)
/* 80AE7E98  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80AE7E9C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AE7EA0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AE7EA4  7F A6 EB 78 */	mr r6, r29
/* 80AE7EA8  38 E0 00 01 */	li r7, 1
/* 80AE7EAC  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80AE7EB0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AE7EB4  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AE7EB8  4B 58 E3 91 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AE7EBC  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80AE7EC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE7EC4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE7EC8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AE7ECC  4B 58 EB E1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AE7ED0  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80AE7ED4  38 9F 00 00 */	addi r4, r31, 0
/* 80AE7ED8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AE7EDC  FC 00 00 1E */	fctiwz f0, f0
/* 80AE7EE0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AE7EE4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AE7EE8  38 A0 00 00 */	li r5, 0
/* 80AE7EEC  7F A6 EB 78 */	mr r6, r29
/* 80AE7EF0  4B 59 B9 71 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AE7EF4  38 7D 0C A0 */	addi r3, r29, 0xca0
/* 80AE7EF8  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80AE7EFC  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80AE7F00  4B 59 C9 B5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AE7F04  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80AE7F08  90 1D 0C E4 */	stw r0, 0xce4(r29)
/* 80AE7F0C  38 00 00 00 */	li r0, 0
/* 80AE7F10  90 1D 0C C8 */	stw r0, 0xcc8(r29)
/* 80AE7F14  90 1D 0C B8 */	stw r0, 0xcb8(r29)
/* 80AE7F18  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80AE7F1C  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80AE7F20  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80AE7F24  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80AE7F28  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80AE7F2C  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80AE7F30  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80AE7F34  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80AE7F38  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80AE7F3C  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80AE7F40  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80AE7F44  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80AE7F48  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80AE7F4C  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80AE7F50  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80AE7F54  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80AE7F58  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80AE7F5C  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80AE7F60  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80AE7F64  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80AE7F68  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80AE7F6C  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80AE7F70  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80AE7F74  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80AE7F78  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80AE7F7C  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80AE7F80  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80AE7F84  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80AE7F88  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80AE7F8C  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80AE7F90  38 7F 00 00 */	addi r3, r31, 0
/* 80AE7F94  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AE7F98  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80AE7F9C  7F A3 EB 78 */	mr r3, r29
/* 80AE7FA0  4B 66 AD E5 */	bl setEnvTevColor__8daNpcF_cFv
/* 80AE7FA4  7F A3 EB 78 */	mr r3, r29
/* 80AE7FA8  4B 66 AE 39 */	bl setRoomNo__8daNpcF_cFv
/* 80AE7FAC  7F A3 EB 78 */	mr r3, r29
/* 80AE7FB0  48 00 06 9D */	bl reset__11daNpcShoe_cFv
/* 80AE7FB4  7F A3 EB 78 */	mr r3, r29
/* 80AE7FB8  4B 66 A0 5D */	bl execute__8daNpcF_cFv
lbl_80AE7FBC:
/* 80AE7FBC  7F C3 F3 78 */	mr r3, r30
lbl_80AE7FC0:
/* 80AE7FC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE7FC4  4B 87 A2 55 */	bl _restgpr_25
/* 80AE7FC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AE7FCC  7C 08 03 A6 */	mtlr r0
/* 80AE7FD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80AE7FD4  4E 80 00 20 */	blr 
