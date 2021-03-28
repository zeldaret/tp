lbl_801E38CC:
/* 801E38CC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801E38D0  7C 08 02 A6 */	mflr r0
/* 801E38D4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801E38D8  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801E38DC  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801E38E0  7C 7F 1B 78 */	mr r31, r3
/* 801E38E4  38 61 00 38 */	addi r3, r1, 0x38
/* 801E38E8  48 07 00 49 */	bl __ct__8CPaneMgrFv
/* 801E38EC  7F E3 FB 78 */	mr r3, r31
/* 801E38F0  48 00 3D FD */	bl getSelectType__14dMenu_Option_cFv
/* 801E38F4  7C 7E 1B 78 */	mr r30, r3
/* 801E38F8  38 00 00 00 */	li r0, 0
/* 801E38FC  98 1F 03 F6 */	stb r0, 0x3f6(r31)
/* 801E3900  88 1F 03 F6 */	lbz r0, 0x3f6(r31)
/* 801E3904  60 00 00 01 */	ori r0, r0, 1
/* 801E3908  98 1F 03 F6 */	stb r0, 0x3f6(r31)
/* 801E390C  88 1F 03 F6 */	lbz r0, 0x3f6(r31)
/* 801E3910  60 00 00 04 */	ori r0, r0, 4
/* 801E3914  98 1F 03 F6 */	stb r0, 0x3f6(r31)
/* 801E3918  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801E391C  28 00 00 04 */	cmplwi r0, 4
/* 801E3920  40 80 01 38 */	bge lbl_801E3A58
/* 801E3924  88 1F 03 F6 */	lbz r0, 0x3f6(r31)
/* 801E3928  28 00 00 00 */	cmplwi r0, 0
/* 801E392C  41 82 01 2C */	beq lbl_801E3A58
/* 801E3930  88 1F 03 F3 */	lbz r0, 0x3f3(r31)
/* 801E3934  28 00 00 05 */	cmplwi r0, 5
/* 801E3938  40 82 01 20 */	bne lbl_801E3A58
/* 801E393C  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E3940  28 00 00 04 */	cmplwi r0, 4
/* 801E3944  41 82 01 14 */	beq lbl_801E3A58
/* 801E3948  28 00 00 05 */	cmplwi r0, 5
/* 801E394C  41 82 01 0C */	beq lbl_801E3A58
/* 801E3950  28 00 00 06 */	cmplwi r0, 6
/* 801E3954  41 82 01 04 */	beq lbl_801E3A58
/* 801E3958  28 00 00 07 */	cmplwi r0, 7
/* 801E395C  41 82 00 FC */	beq lbl_801E3A58
/* 801E3960  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801E3964  38 80 00 00 */	li r4, 0
/* 801E3968  81 83 00 00 */	lwz r12, 0(r3)
/* 801E396C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801E3970  7D 89 03 A6 */	mtctr r12
/* 801E3974  4E 80 04 21 */	bctrl 
/* 801E3978  57 DE 15 BA */	rlwinm r30, r30, 2, 0x16, 0x1d
/* 801E397C  7C 7F F2 14 */	add r3, r31, r30
/* 801E3980  80 83 01 94 */	lwz r4, 0x194(r3)
/* 801E3984  38 61 00 14 */	addi r3, r1, 0x14
/* 801E3988  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E398C  38 C0 00 00 */	li r6, 0
/* 801E3990  38 E0 00 00 */	li r7, 0
/* 801E3994  48 07 15 29 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E3998  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801E399C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801E39A0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801E39A4  90 01 00 30 */	stw r0, 0x30(r1)
/* 801E39A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801E39AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E39B0  7C 7F F2 14 */	add r3, r31, r30
/* 801E39B4  80 83 01 A8 */	lwz r4, 0x1a8(r3)
/* 801E39B8  38 61 00 08 */	addi r3, r1, 8
/* 801E39BC  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E39C0  38 C0 00 00 */	li r6, 0
/* 801E39C4  38 E0 00 00 */	li r7, 0
/* 801E39C8  48 07 14 F5 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E39CC  80 61 00 08 */	lwz r3, 8(r1)
/* 801E39D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801E39D4  90 61 00 20 */	stw r3, 0x20(r1)
/* 801E39D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E39DC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801E39E0  90 01 00 28 */	stw r0, 0x28(r1)
/* 801E39E4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801E39E8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801E39EC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801E39F0  C0 23 07 1C */	lfs f1, 0x71c(r3)
/* 801E39F4  EC C0 08 2A */	fadds f6, f0, f1
/* 801E39F8  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 801E39FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801E3A00  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E3A04  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801E3A08  EC 60 30 28 */	fsubs f3, f0, f6
/* 801E3A0C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801E3A10  C0 E1 00 30 */	lfs f7, 0x30(r1)
/* 801E3A14  EC 80 38 28 */	fsubs f4, f0, f7
/* 801E3A18  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801E3A1C  88 9F 03 F6 */	lbz r4, 0x3f6(r31)
/* 801E3A20  C0 42 A9 48 */	lfs f2, lit_4469(r2)
/* 801E3A24  C0 22 A9 4C */	lfs f1, lit_4470(r2)
/* 801E3A28  C0 A2 A9 50 */	lfs f5, lit_4471(r2)
/* 801E3A2C  EC 03 01 72 */	fmuls f0, f3, f5
/* 801E3A30  EC 06 00 2A */	fadds f0, f6, f0
/* 801E3A34  EC 01 00 2A */	fadds f0, f1, f0
/* 801E3A38  EC 22 00 2A */	fadds f1, f2, f0
/* 801E3A3C  C0 42 A9 54 */	lfs f2, lit_4472(r2)
/* 801E3A40  EC 04 01 72 */	fmuls f0, f4, f5
/* 801E3A44  EC 07 00 2A */	fadds f0, f7, f0
/* 801E3A48  EC 42 00 2A */	fadds f2, f2, f0
/* 801E3A4C  48 02 7D C9 */	bl drawHaihai__14dMeterHaihai_cFUcffff
/* 801E3A50  38 00 00 00 */	li r0, 0
/* 801E3A54  98 1F 03 F6 */	stb r0, 0x3f6(r31)
lbl_801E3A58:
/* 801E3A58  38 61 00 38 */	addi r3, r1, 0x38
/* 801E3A5C  38 80 FF FF */	li r4, -1
/* 801E3A60  48 06 FF B9 */	bl __dt__8CPaneMgrFv
/* 801E3A64  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801E3A68  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801E3A6C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801E3A70  7C 08 03 A6 */	mtlr r0
/* 801E3A74  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801E3A78  4E 80 00 20 */	blr 
