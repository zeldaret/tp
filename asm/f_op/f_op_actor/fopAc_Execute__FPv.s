lbl_80018DD8:
/* 80018DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018DDC  7C 08 02 A6 */	mflr r0
/* 80018DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018DE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80018DEC  7C 7F 1B 78 */	mr r31, r3
/* 80018DF0  3B C0 00 01 */	li r30, 1
/* 80018DF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80018DF8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80018DFC  88 04 5E B5 */	lbz r0, 0x5eb5(r4)
/* 80018E00  28 00 00 00 */	cmplwi r0, 0
/* 80018E04  40 82 01 58 */	bne lbl_80018F5C
/* 80018E08  88 0D 8B A4 */	lbz r0, struct_80451124+0x0(r13)
/* 80018E0C  7C 00 07 75 */	extsb. r0, r0
/* 80018E10  40 82 01 4C */	bne lbl_80018F5C
/* 80018E14  38 8D 80 90 */	la r4, g_dComIfAc_gameInfo(r13) /* 80450610-_SDA_BASE_ */
/* 80018E18  88 04 00 04 */	lbz r0, 4(r4)
/* 80018E1C  28 00 00 00 */	cmplwi r0, 0
/* 80018E20  40 82 01 3C */	bne lbl_80018F5C
/* 80018E24  48 01 86 B1 */	bl check__7daSus_cFP10fopAc_ac_c
/* 80018E28  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80018E2C  48 02 A6 A1 */	bl beforeProc__11dEvt_info_cFv
/* 80018E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80018E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80018E38  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80018E3C  7F E4 FB 78 */	mr r4, r31
/* 80018E40  48 02 A1 69 */	bl moveApproval__14dEvt_control_cFPv
/* 80018E44  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80018E48  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 80018E4C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80018E50  80 9F 04 9C */	lwz r4, 0x49c(r31)
/* 80018E54  54 80 00 85 */	rlwinm. r0, r4, 0, 2, 2
/* 80018E58  40 82 00 94 */	bne lbl_80018EEC
/* 80018E5C  2C 03 00 02 */	cmpwi r3, 2
/* 80018E60  41 82 00 2C */	beq lbl_80018E8C
/* 80018E64  2C 03 00 00 */	cmpwi r3, 0
/* 80018E68  41 82 00 84 */	beq lbl_80018EEC
/* 80018E6C  80 0D 87 3C */	lwz r0, stopStatus__10fopAc_ac_c(r13)
/* 80018E70  7C 80 00 39 */	and. r0, r4, r0
/* 80018E74  40 82 00 78 */	bne lbl_80018EEC
/* 80018E78  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 80018E7C  41 82 00 10 */	beq lbl_80018E8C
/* 80018E80  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80018E84  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80018E88  40 82 00 64 */	bne lbl_80018EEC
lbl_80018E8C:
/* 80018E8C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80018E90  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80018E94  90 1F 04 A0 */	stw r0, 0x4a0(r31)
/* 80018E98  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80018E9C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80018EA0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80018EA4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80018EA8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80018EAC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80018EB0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80018EB4  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80018EB8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80018EBC  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80018EC0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80018EC4  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80018EC8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80018ECC  98 1F 04 CE */	stb r0, 0x4ce(r31)
/* 80018ED0  88 1F 04 E3 */	lbz r0, 0x4e3(r31)
/* 80018ED4  98 1F 04 CF */	stb r0, 0x4cf(r31)
/* 80018ED8  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 80018EDC  7F E4 FB 78 */	mr r4, r31
/* 80018EE0  48 00 95 81 */	bl fpcMtd_Execute__FP20process_method_classPv
/* 80018EE4  7C 7E 1B 78 */	mr r30, r3
/* 80018EE8  48 00 00 2C */	b lbl_80018F14
lbl_80018EEC:
/* 80018EEC  88 1F 01 04 */	lbz r0, 0x104(r31)
/* 80018EF0  28 00 00 00 */	cmplwi r0, 0
/* 80018EF4  41 82 00 14 */	beq lbl_80018F08
/* 80018EF8  7F E3 FB 78 */	mr r3, r31
/* 80018EFC  81 9F 01 08 */	lwz r12, 0x108(r31)
/* 80018F00  7D 89 03 A6 */	mtctr r12
/* 80018F04  4E 80 04 21 */	bctrl 
lbl_80018F08:
/* 80018F08  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80018F0C  60 00 00 02 */	ori r0, r0, 2
/* 80018F10  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80018F14:
/* 80018F14  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80018F18  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80018F1C  41 82 00 24 */	beq lbl_80018F40
/* 80018F20  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80018F24  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80018F28  EC 21 00 28 */	fsubs f1, f1, f0
/* 80018F2C  C0 02 81 C8 */	lfs f0, lit_4324(r2)
/* 80018F30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80018F34  40 81 00 0C */	ble lbl_80018F40
/* 80018F38  7F E3 FB 78 */	mr r3, r31
/* 80018F3C  48 00 0D 41 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80018F40:
/* 80018F40  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80018F44  C0 02 81 CC */	lfs f0, lit_4325(r2)
/* 80018F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80018F4C  40 80 00 08 */	bge lbl_80018F54
/* 80018F50  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80018F54:
/* 80018F54  7F E3 FB 78 */	mr r3, r31
/* 80018F58  48 19 33 91 */	bl dKy_depth_dist_set__FPv
lbl_80018F5C:
/* 80018F5C  7F C3 F3 78 */	mr r3, r30
/* 80018F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80018F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018F6C  7C 08 03 A6 */	mtlr r0
/* 80018F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80018F74  4E 80 00 20 */	blr 
