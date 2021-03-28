lbl_80254EBC:
/* 80254EBC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80254EC0  7C 08 02 A6 */	mflr r0
/* 80254EC4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80254EC8  39 61 00 90 */	addi r11, r1, 0x90
/* 80254ECC  48 10 D3 0D */	bl _savegpr_28
/* 80254ED0  7C 7C 1B 78 */	mr r28, r3
/* 80254ED4  7C 9D 23 78 */	mr r29, r4
/* 80254ED8  7C BE 2B 78 */	mr r30, r5
/* 80254EDC  7C DF 33 78 */	mr r31, r6
/* 80254EE0  38 61 00 14 */	addi r3, r1, 0x14
/* 80254EE4  38 C1 00 44 */	addi r6, r1, 0x44
/* 80254EE8  38 E0 00 00 */	li r7, 0
/* 80254EEC  7F E8 FB 78 */	mr r8, r31
/* 80254EF0  39 20 00 00 */	li r9, 0
/* 80254EF4  4B FF FD 9D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80254EF8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80254EFC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80254F00  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80254F04  90 01 00 30 */	stw r0, 0x30(r1)
/* 80254F08  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80254F0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80254F10  38 61 00 08 */	addi r3, r1, 8
/* 80254F14  7F A4 EB 78 */	mr r4, r29
/* 80254F18  7F C5 F3 78 */	mr r5, r30
/* 80254F1C  38 C1 00 44 */	addi r6, r1, 0x44
/* 80254F20  38 E0 00 03 */	li r7, 3
/* 80254F24  7F E8 FB 78 */	mr r8, r31
/* 80254F28  39 20 00 00 */	li r9, 0
/* 80254F2C  4B FF FD 65 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80254F30  80 61 00 08 */	lwz r3, 8(r1)
/* 80254F34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80254F38  90 61 00 20 */	stw r3, 0x20(r1)
/* 80254F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80254F40  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80254F44  90 01 00 28 */	stw r0, 0x28(r1)
/* 80254F48  C0 42 B4 98 */	lfs f2, lit_4046(r2)
/* 80254F4C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80254F50  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80254F54  EC 01 00 2A */	fadds f0, f1, f0
/* 80254F58  EC 02 00 32 */	fmuls f0, f2, f0
/* 80254F5C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80254F60  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80254F64  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80254F68  EC 01 00 2A */	fadds f0, f1, f0
/* 80254F6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80254F70  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80254F74  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80254F78  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80254F7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80254F80  EC 02 00 32 */	fmuls f0, f2, f0
/* 80254F84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80254F88  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80254F8C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80254F90  90 7C 00 00 */	stw r3, 0(r28)
/* 80254F94  90 1C 00 04 */	stw r0, 4(r28)
/* 80254F98  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80254F9C  90 1C 00 08 */	stw r0, 8(r28)
/* 80254FA0  39 61 00 90 */	addi r11, r1, 0x90
/* 80254FA4  48 10 D2 81 */	bl _restgpr_28
/* 80254FA8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80254FAC  7C 08 03 A6 */	mtlr r0
/* 80254FB0  38 21 00 90 */	addi r1, r1, 0x90
/* 80254FB4  4E 80 00 20 */	blr 
