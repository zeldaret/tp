lbl_80A74A4C:
/* 80A74A4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A74A50  7C 08 02 A6 */	mflr r0
/* 80A74A54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A74A58  39 61 00 30 */	addi r11, r1, 0x30
/* 80A74A5C  4B 8E D7 80 */	b _savegpr_29
/* 80A74A60  7C 7D 1B 78 */	mr r29, r3
/* 80A74A64  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A74A68  28 1E 00 00 */	cmplwi r30, 0
/* 80A74A6C  41 82 00 30 */	beq lbl_80A74A9C
/* 80A74A70  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A74A74  80 84 00 04 */	lwz r4, 4(r4)
/* 80A74A78  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A74A7C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A74A80  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A74A84  7D 89 03 A6 */	mtctr r12
/* 80A74A88  4E 80 04 21 */	bctrl 
/* 80A74A8C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A74A90  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A74A94  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A74A98  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A74A9C:
/* 80A74A9C  80 1D 0E 58 */	lwz r0, 0xe58(r29)
/* 80A74AA0  28 00 00 00 */	cmplwi r0, 0
/* 80A74AA4  41 82 00 98 */	beq lbl_80A74B3C
/* 80A74AA8  88 1D 16 68 */	lbz r0, 0x1668(r29)
/* 80A74AAC  28 00 00 00 */	cmplwi r0, 0
/* 80A74AB0  41 82 00 8C */	beq lbl_80A74B3C
/* 80A74AB4  38 7D 15 C8 */	addi r3, r29, 0x15c8
/* 80A74AB8  4B 6D 0C 50 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A74ABC  28 03 00 00 */	cmplwi r3, 0
/* 80A74AC0  41 82 00 7C */	beq lbl_80A74B3C
/* 80A74AC4  C0 1D 16 28 */	lfs f0, 0x1628(r29)
/* 80A74AC8  D0 03 06 34 */	stfs f0, 0x634(r3)
/* 80A74ACC  C0 1D 16 2C */	lfs f0, 0x162c(r29)
/* 80A74AD0  D0 03 06 38 */	stfs f0, 0x638(r3)
/* 80A74AD4  C0 1D 16 30 */	lfs f0, 0x1630(r29)
/* 80A74AD8  D0 03 06 3C */	stfs f0, 0x63c(r3)
/* 80A74ADC  C0 1D 16 28 */	lfs f0, 0x1628(r29)
/* 80A74AE0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80A74AE4  C0 1D 16 2C */	lfs f0, 0x162c(r29)
/* 80A74AE8  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80A74AEC  C0 1D 16 30 */	lfs f0, 0x1630(r29)
/* 80A74AF0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80A74AF4  3C 80 80 A8 */	lis r4, m__17daNpc_Moi_Param_c@ha
/* 80A74AF8  38 A4 AE F0 */	addi r5, r4, m__17daNpc_Moi_Param_c@l
/* 80A74AFC  A8 05 00 9C */	lha r0, 0x9c(r5)
/* 80A74B00  98 01 00 08 */	stb r0, 8(r1)
/* 80A74B04  A8 05 00 9E */	lha r0, 0x9e(r5)
/* 80A74B08  98 01 00 09 */	stb r0, 9(r1)
/* 80A74B0C  A8 05 00 A0 */	lha r0, 0xa0(r5)
/* 80A74B10  98 01 00 0A */	stb r0, 0xa(r1)
/* 80A74B14  C0 03 05 C0 */	lfs f0, 0x5c0(r3)
/* 80A74B18  FC 00 00 1E */	fctiwz f0, f0
/* 80A74B1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A74B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A74B24  98 01 00 0B */	stb r0, 0xb(r1)
/* 80A74B28  38 7D 16 28 */	addi r3, r29, 0x1628
/* 80A74B2C  38 81 00 08 */	addi r4, r1, 8
/* 80A74B30  C0 25 00 A4 */	lfs f1, 0xa4(r5)
/* 80A74B34  38 A0 00 01 */	li r5, 1
/* 80A74B38  4B 73 52 28 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80A74B3C:
/* 80A74B3C  7F A3 EB 78 */	mr r3, r29
/* 80A74B40  38 80 00 00 */	li r4, 0
/* 80A74B44  38 A0 00 00 */	li r5, 0
/* 80A74B48  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80A74B4C  38 C0 00 00 */	li r6, 0
/* 80A74B50  3C E0 80 A8 */	lis r7, lit_4573@ha
/* 80A74B54  C0 47 B0 04 */	lfs f2, lit_4573@l(r7)
/* 80A74B58  38 E0 00 00 */	li r7, 0
/* 80A74B5C  39 00 00 00 */	li r8, 0
/* 80A74B60  39 20 00 00 */	li r9, 0
/* 80A74B64  4B 6D 3D 08 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A74B68  39 61 00 30 */	addi r11, r1, 0x30
/* 80A74B6C  4B 8E D6 BC */	b _restgpr_29
/* 80A74B70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A74B74  7C 08 03 A6 */	mtlr r0
/* 80A74B78  38 21 00 30 */	addi r1, r1, 0x30
/* 80A74B7C  4E 80 00 20 */	blr 
