lbl_80A21E24:
/* 80A21E24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A21E28  7C 08 02 A6 */	mflr r0
/* 80A21E2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A21E30  39 61 00 30 */	addi r11, r1, 0x30
/* 80A21E34  4B 94 03 99 */	bl _savegpr_25
/* 80A21E38  7C 7D 1B 78 */	mr r29, r3
/* 80A21E3C  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A21E40  3B E4 58 B8 */	addi r31, r4, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A21E44  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A21E48  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A21E4C  40 82 00 1C */	bne lbl_80A21E68
/* 80A21E50  28 1D 00 00 */	cmplwi r29, 0
/* 80A21E54  41 82 00 08 */	beq lbl_80A21E5C
/* 80A21E58  4B FF FB 75 */	bl __ct__14daNpcKasiKyu_cFv
lbl_80A21E5C:
/* 80A21E5C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A21E60  60 00 00 08 */	ori r0, r0, 8
/* 80A21E64  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A21E68:
/* 80A21E68  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A21E6C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A21E70  7C 00 07 74 */	extsb r0, r0
/* 80A21E74  2C 00 00 FF */	cmpwi r0, 0xff
/* 80A21E78  40 82 00 08 */	bne lbl_80A21E80
/* 80A21E7C  38 00 00 00 */	li r0, 0
lbl_80A21E80:
/* 80A21E80  98 1D 14 64 */	stb r0, 0x1464(r29)
/* 80A21E84  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A21E88  90 1D 14 38 */	stw r0, 0x1438(r29)
/* 80A21E8C  3B 20 00 00 */	li r25, 0
/* 80A21E90  3B 80 00 00 */	li r28, 0
/* 80A21E94  3B 60 00 00 */	li r27, 0
/* 80A21E98  3C 60 80 A2 */	lis r3, l_arcNames@ha /* 0x80A25C10@ha */
/* 80A21E9C  3B 43 5C 10 */	addi r26, r3, l_arcNames@l /* 0x80A25C10@l */
lbl_80A21EA0:
/* 80A21EA0  38 7B 14 14 */	addi r3, r27, 0x1414
/* 80A21EA4  7C 7D 1A 14 */	add r3, r29, r3
/* 80A21EA8  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80A21EAC  4B 60 B0 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A21EB0  7C 7E 1B 78 */	mr r30, r3
/* 80A21EB4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A21EB8  41 82 00 08 */	beq lbl_80A21EC0
/* 80A21EBC  48 00 01 CC */	b lbl_80A22088
lbl_80A21EC0:
/* 80A21EC0  3B 39 00 01 */	addi r25, r25, 1
/* 80A21EC4  2C 19 00 03 */	cmpwi r25, 3
/* 80A21EC8  3B 9C 00 04 */	addi r28, r28, 4
/* 80A21ECC  3B 7B 00 08 */	addi r27, r27, 8
/* 80A21ED0  41 80 FF D0 */	blt lbl_80A21EA0
/* 80A21ED4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A21ED8  40 82 01 AC */	bne lbl_80A22084
/* 80A21EDC  7F A3 EB 78 */	mr r3, r29
/* 80A21EE0  3C 80 80 A2 */	lis r4, createHeapCallBack__14daNpcKasiKyu_cFP10fopAc_ac_c@ha /* 0x80A2245C@ha */
/* 80A21EE4  38 84 24 5C */	addi r4, r4, createHeapCallBack__14daNpcKasiKyu_cFP10fopAc_ac_c@l /* 0x80A2245C@l */
/* 80A21EE8  38 A0 19 40 */	li r5, 0x1940
/* 80A21EEC  4B 5F 85 C5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A21EF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A21EF4  40 82 00 0C */	bne lbl_80A21F00
/* 80A21EF8  38 60 00 05 */	li r3, 5
/* 80A21EFC  48 00 01 8C */	b lbl_80A22088
lbl_80A21F00:
/* 80A21F00  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A21F04  80 63 00 04 */	lwz r3, 4(r3)
/* 80A21F08  38 03 00 24 */	addi r0, r3, 0x24
/* 80A21F0C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A21F10  7F A3 EB 78 */	mr r3, r29
/* 80A21F14  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A21F18  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80A21F1C  FC 60 08 90 */	fmr f3, f1
/* 80A21F20  C0 9F 00 7C */	lfs f4, 0x7c(r31)
/* 80A21F24  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 80A21F28  FC C0 20 90 */	fmr f6, f4
/* 80A21F2C  4B 5F 86 1D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A21F30  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80A21F34  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A21F38  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A21F3C  38 C0 00 03 */	li r6, 3
/* 80A21F40  38 E0 00 01 */	li r7, 1
/* 80A21F44  4B 89 ED A1 */	bl init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80A21F48  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80A21F4C  3B 5F 00 00 */	addi r26, r31, 0
/* 80A21F50  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80A21F54  C0 5A 00 18 */	lfs f2, 0x18(r26)
/* 80A21F58  4B 65 40 01 */	bl SetWall__12dBgS_AcchCirFff
/* 80A21F5C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A21F60  90 01 00 08 */	stw r0, 8(r1)
/* 80A21F64  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80A21F68  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A21F6C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A21F70  7F A6 EB 78 */	mr r6, r29
/* 80A21F74  38 E0 00 01 */	li r7, 1
/* 80A21F78  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80A21F7C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A21F80  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A21F84  4B 65 42 C5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A21F88  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80A21F8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A21F90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A21F94  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A21F98  4B 65 4B 15 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A21F9C  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80A21FA0  38 80 00 FE */	li r4, 0xfe
/* 80A21FA4  38 A0 00 00 */	li r5, 0
/* 80A21FA8  7F A6 EB 78 */	mr r6, r29
/* 80A21FAC  4B 66 18 B5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A21FB0  38 7D 12 C8 */	addi r3, r29, 0x12c8
/* 80A21FB4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80A21FB8  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80A21FBC  4B 66 28 F9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A21FC0  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80A21FC4  90 1D 13 0C */	stw r0, 0x130c(r29)
/* 80A21FC8  38 00 00 00 */	li r0, 0
/* 80A21FCC  90 1D 12 F0 */	stw r0, 0x12f0(r29)
/* 80A21FD0  90 1D 12 E0 */	stw r0, 0x12e0(r29)
/* 80A21FD4  38 7D 13 EC */	addi r3, r29, 0x13ec
/* 80A21FD8  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 80A21FDC  4B 84 D2 1D */	bl SetH__8cM3dGCylFf
/* 80A21FE0  38 7D 13 EC */	addi r3, r29, 0x13ec
/* 80A21FE4  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80A21FE8  4B 84 D2 19 */	bl SetR__8cM3dGCylFf
/* 80A21FEC  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80A21FF0  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80A21FF4  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80A21FF8  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80A21FFC  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80A22000  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80A22004  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80A22008  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80A2200C  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80A22010  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80A22014  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80A22018  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80A2201C  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80A22020  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80A22024  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80A22028  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80A2202C  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80A22030  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80A22034  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80A22038  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80A2203C  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80A22040  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80A22044  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80A22048  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80A2204C  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80A22050  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80A22054  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80A22058  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A2205C  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80A22060  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80A22064  7F A3 EB 78 */	mr r3, r29
/* 80A22068  4B 73 0D 1D */	bl setEnvTevColor__8daNpcF_cFv
/* 80A2206C  7F A3 EB 78 */	mr r3, r29
/* 80A22070  4B 73 0D 71 */	bl setRoomNo__8daNpcF_cFv
/* 80A22074  7F A3 EB 78 */	mr r3, r29
/* 80A22078  48 00 0A 2D */	bl reset__14daNpcKasiKyu_cFv
/* 80A2207C  7F A3 EB 78 */	mr r3, r29
/* 80A22080  48 00 01 D9 */	bl Execute__14daNpcKasiKyu_cFv
lbl_80A22084:
/* 80A22084  7F C3 F3 78 */	mr r3, r30
lbl_80A22088:
/* 80A22088  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2208C  4B 94 01 8D */	bl _restgpr_25
/* 80A22090  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A22094  7C 08 03 A6 */	mtlr r0
/* 80A22098  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2209C  4E 80 00 20 */	blr 
