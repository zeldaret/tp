lbl_80968D44:
/* 80968D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80968D48  7C 08 02 A6 */	mflr r0
/* 80968D4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80968D50  39 61 00 30 */	addi r11, r1, 0x30
/* 80968D54  4B 9F 94 85 */	bl _savegpr_28
/* 80968D58  7C 7D 1B 78 */	mr r29, r3
/* 80968D5C  3C 80 80 97 */	lis r4, l_cyl_src@ha /* 0x8096C920@ha */
/* 80968D60  3B E4 C9 20 */	addi r31, r4, l_cyl_src@l /* 0x8096C920@l */
/* 80968D64  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80968D68  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80968D6C  40 82 00 1C */	bne lbl_80968D88
/* 80968D70  28 1D 00 00 */	cmplwi r29, 0
/* 80968D74  41 82 00 08 */	beq lbl_80968D7C
/* 80968D78  4B FF FB F5 */	bl __ct__13daNpcBlueNS_cFv
lbl_80968D7C:
/* 80968D7C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80968D80  60 00 00 08 */	ori r0, r0, 8
/* 80968D84  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80968D88:
/* 80968D88  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80968D8C  98 1D 0E 11 */	stb r0, 0xe11(r29)
/* 80968D90  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80968D94  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80968D98  28 03 FF FF */	cmplwi r3, 0xffff
/* 80968D9C  38 00 FF FF */	li r0, -1
/* 80968DA0  41 82 00 08 */	beq lbl_80968DA8
/* 80968DA4  7C 60 1B 78 */	mr r0, r3
lbl_80968DA8:
/* 80968DA8  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80968DAC  3C 60 80 97 */	lis r3, l_arcNames@ha /* 0x8096CC2C@ha */
/* 80968DB0  38 83 CC 2C */	addi r4, r3, l_arcNames@l /* 0x8096CC2C@l */
/* 80968DB4  38 7D 0D D0 */	addi r3, r29, 0xdd0
/* 80968DB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80968DBC  4B 6C 41 01 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80968DC0  7C 7E 1B 78 */	mr r30, r3
/* 80968DC4  2C 1E 00 04 */	cmpwi r30, 4
/* 80968DC8  41 82 00 08 */	beq lbl_80968DD0
/* 80968DCC  48 00 02 00 */	b lbl_80968FCC
lbl_80968DD0:
/* 80968DD0  40 82 01 F8 */	bne lbl_80968FC8
/* 80968DD4  7F A3 EB 78 */	mr r3, r29
/* 80968DD8  3C 80 80 97 */	lis r4, createHeapCallBack__13daNpcBlueNS_cFP10fopAc_ac_c@ha /* 0x80969B68@ha */
/* 80968DDC  38 84 9B 68 */	addi r4, r4, createHeapCallBack__13daNpcBlueNS_cFP10fopAc_ac_c@l /* 0x80969B68@l */
/* 80968DE0  38 A0 1F 20 */	li r5, 0x1f20
/* 80968DE4  4B 6B 16 CD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80968DE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80968DEC  40 82 00 0C */	bne lbl_80968DF8
/* 80968DF0  38 60 00 05 */	li r3, 5
/* 80968DF4  48 00 01 D8 */	b lbl_80968FCC
lbl_80968DF8:
/* 80968DF8  7F A3 EB 78 */	mr r3, r29
/* 80968DFC  48 00 03 3D */	bl isDelete__13daNpcBlueNS_cFv
/* 80968E00  2C 03 00 00 */	cmpwi r3, 0
/* 80968E04  41 82 00 0C */	beq lbl_80968E10
/* 80968E08  38 60 00 05 */	li r3, 5
/* 80968E0C  48 00 01 C0 */	b lbl_80968FCC
lbl_80968E10:
/* 80968E10  4B 84 37 6D */	bl dKy_darkworld_check__Fv
/* 80968E14  98 7D 09 F4 */	stb r3, 0x9f4(r29)
/* 80968E18  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80968E1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80968E20  38 03 00 24 */	addi r0, r3, 0x24
/* 80968E24  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80968E28  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80968E2C  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 80968E30  7F A3 EB 78 */	mr r3, r29
/* 80968E34  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80968E38  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80968E3C  FC 60 08 90 */	fmr f3, f1
/* 80968E40  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 80968E44  C0 BF 00 C4 */	lfs f5, 0xc4(r31)
/* 80968E48  FC C0 20 90 */	fmr f6, f4
/* 80968E4C  4B 6B 16 FD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80968E50  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80968E54  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80968E58  38 BD 05 38 */	addi r5, r29, 0x538
/* 80968E5C  38 C0 00 03 */	li r6, 3
/* 80968E60  38 E0 00 01 */	li r7, 1
/* 80968E64  4B 95 76 CD */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80968E68  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80968E6C  3B 9F 00 44 */	addi r28, r31, 0x44
/* 80968E70  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80968E74  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 80968E78  4B 70 D0 E1 */	bl SetWall__12dBgS_AcchCirFff
/* 80968E7C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80968E80  90 01 00 08 */	stw r0, 8(r1)
/* 80968E84  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80968E88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80968E8C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80968E90  7F A6 EB 78 */	mr r6, r29
/* 80968E94  38 E0 00 01 */	li r7, 1
/* 80968E98  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80968E9C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80968EA0  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80968EA4  4B 70 D3 A5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80968EA8  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80968EAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80968EB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80968EB4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80968EB8  4B 70 DB F5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80968EBC  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80968EC0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80968EC4  FC 00 00 1E */	fctiwz f0, f0
/* 80968EC8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80968ECC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80968ED0  38 A0 00 00 */	li r5, 0
/* 80968ED4  7F A6 EB 78 */	mr r6, r29
/* 80968ED8  4B 71 A9 89 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80968EDC  38 7D 0C 84 */	addi r3, r29, 0xc84
/* 80968EE0  38 9F 00 00 */	addi r4, r31, 0
/* 80968EE4  4B 71 B9 D1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80968EE8  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80968EEC  90 1D 0C C8 */	stw r0, 0xcc8(r29)
/* 80968EF0  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80968EF4  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80968EF8  4B 90 63 01 */	bl SetH__8cM3dGCylFf
/* 80968EFC  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80968F00  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80968F04  4B 90 62 FD */	bl SetR__8cM3dGCylFf
/* 80968F08  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80968F0C  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80968F10  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80968F14  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80968F18  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80968F1C  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80968F20  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80968F24  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80968F28  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80968F2C  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80968F30  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80968F34  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80968F38  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80968F3C  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80968F40  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80968F44  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80968F48  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80968F4C  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80968F50  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80968F54  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80968F58  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80968F5C  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80968F60  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80968F64  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80968F68  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80968F6C  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80968F70  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80968F74  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80968F78  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80968F7C  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80968F80  38 00 00 01 */	li r0, 1
/* 80968F84  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80968F88  38 00 00 00 */	li r0, 0
/* 80968F8C  98 1D 0E 12 */	stb r0, 0xe12(r29)
/* 80968F90  90 1D 0D F0 */	stw r0, 0xdf0(r29)
/* 80968F94  90 1D 0D F4 */	stw r0, 0xdf4(r29)
/* 80968F98  90 1D 0D F8 */	stw r0, 0xdf8(r29)
/* 80968F9C  90 1D 0D FC */	stw r0, 0xdfc(r29)
/* 80968FA0  38 00 FF FF */	li r0, -1
/* 80968FA4  90 1D 0E 00 */	stw r0, 0xe00(r29)
/* 80968FA8  7F A3 EB 78 */	mr r3, r29
/* 80968FAC  4B 7E 9D D9 */	bl setEnvTevColor__8daNpcF_cFv
/* 80968FB0  7F A3 EB 78 */	mr r3, r29
/* 80968FB4  4B 7E 9E 2D */	bl setRoomNo__8daNpcF_cFv
/* 80968FB8  7F A3 EB 78 */	mr r3, r29
/* 80968FBC  48 00 13 9D */	bl reset__13daNpcBlueNS_cFv
/* 80968FC0  7F A3 EB 78 */	mr r3, r29
/* 80968FC4  48 00 02 19 */	bl Execute__13daNpcBlueNS_cFv
lbl_80968FC8:
/* 80968FC8  7F C3 F3 78 */	mr r3, r30
lbl_80968FCC:
/* 80968FCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80968FD0  4B 9F 92 55 */	bl _restgpr_28
/* 80968FD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80968FD8  7C 08 03 A6 */	mtlr r0
/* 80968FDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80968FE0  4E 80 00 20 */	blr 
