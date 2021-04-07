lbl_80100A10:
/* 80100A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80100A14  7C 08 02 A6 */	mflr r0
/* 80100A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80100A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80100A20  48 26 17 B9 */	bl _savegpr_28
/* 80100A24  7C 7C 1B 78 */	mr r28, r3
/* 80100A28  7C 9D 23 78 */	mr r29, r4
/* 80100A2C  7C BE 2B 78 */	mr r30, r5
/* 80100A30  7C DF 33 78 */	mr r31, r6
/* 80100A34  38 80 00 86 */	li r4, 0x86
/* 80100A38  4B FC 15 35 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80100A3C  7F 83 E3 78 */	mr r3, r28
/* 80100A40  38 80 00 AE */	li r4, 0xae
/* 80100A44  3C A0 80 39 */	lis r5, m__22daAlinkHIO_roofHang_c0@ha /* 0x8038EBFC@ha */
/* 80100A48  38 A5 EB FC */	addi r5, r5, m__22daAlinkHIO_roofHang_c0@l /* 0x8038EBFC@l */
/* 80100A4C  4B FA C6 A9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80100A50  38 7C 1E 2C */	addi r3, r28, 0x1e2c
/* 80100A54  7F A4 EB 78 */	mr r4, r29
/* 80100A58  48 16 76 F1 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 80100A5C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80100A60  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80100A64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80100A68  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80100A6C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80100A70  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80100A74  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80100A78  C0 02 95 A4 */	lfs f0, lit_25916(r2)
/* 80100A7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80100A80  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80100A84  38 00 00 04 */	li r0, 4
/* 80100A88  98 1C 2F 98 */	stb r0, 0x2f98(r28)
/* 80100A8C  7F 83 E3 78 */	mr r3, r28
/* 80100A90  38 80 00 01 */	li r4, 1
/* 80100A94  38 A0 00 00 */	li r5, 0
/* 80100A98  4B FC 08 45 */	bl deleteEquipItem__9daAlink_cFii
/* 80100A9C  7F 83 E3 78 */	mr r3, r28
/* 80100AA0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80100AA4  C0 5C 05 34 */	lfs f2, 0x534(r28)
/* 80100AA8  38 80 00 00 */	li r4, 0
/* 80100AAC  4B FB AC C5 */	bl setSpecialGravity__9daAlink_cFffi
/* 80100AB0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80100AB4  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 80100AB8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80100ABC  38 00 00 50 */	li r0, 0x50
/* 80100AC0  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 80100AC4  B3 FC 30 08 */	sth r31, 0x3008(r28)
/* 80100AC8  38 60 00 01 */	li r3, 1
/* 80100ACC  39 61 00 20 */	addi r11, r1, 0x20
/* 80100AD0  48 26 17 55 */	bl _restgpr_28
/* 80100AD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80100AD8  7C 08 03 A6 */	mtlr r0
/* 80100ADC  38 21 00 20 */	addi r1, r1, 0x20
/* 80100AE0  4E 80 00 20 */	blr 
