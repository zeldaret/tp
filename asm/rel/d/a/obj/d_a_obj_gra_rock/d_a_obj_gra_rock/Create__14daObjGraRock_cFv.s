lbl_80C11970:
/* 80C11970  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C11974  7C 08 02 A6 */	mflr r0
/* 80C11978  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C1197C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C11980  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C11984  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C11988  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C1198C  7C 7F 1B 78 */	mr r31, r3
/* 80C11990  3C 80 80 C1 */	lis r4, mCcDCyl__14daObjGraRock_c@ha
/* 80C11994  3B C4 23 BC */	addi r30, r4, mCcDCyl__14daObjGraRock_c@l
/* 80C11998  4B FF FA AD */	bl setBaseMtx__14daObjGraRock_cFv
/* 80C1199C  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80C119A0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C119A4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C119A8  7F E3 FB 78 */	mr r3, r31
/* 80C119AC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80C119B0  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80C119B4  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 80C119B8  C0 9E 00 78 */	lfs f4, 0x78(r30)
/* 80C119BC  C0 BE 00 7C */	lfs f5, 0x7c(r30)
/* 80C119C0  C0 DE 00 80 */	lfs f6, 0x80(r30)
/* 80C119C4  4B 40 8B 84 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C119C8  38 7F 07 F8 */	addi r3, r31, 0x7f8
/* 80C119CC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80C119D0  FC 40 08 90 */	fmr f2, f1
/* 80C119D4  4B 46 45 84 */	b SetWall__12dBgS_AcchCirFff
/* 80C119D8  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80C119DC  90 01 00 08 */	stw r0, 8(r1)
/* 80C119E0  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80C119E4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C119E8  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80C119EC  7F E6 FB 78 */	mr r6, r31
/* 80C119F0  38 E0 00 01 */	li r7, 1
/* 80C119F4  39 1F 07 F8 */	addi r8, r31, 0x7f8
/* 80C119F8  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80C119FC  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80C11A00  4B 46 48 48 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C11A04  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80C11A08  38 80 00 FF */	li r4, 0xff
/* 80C11A0C  38 A0 00 00 */	li r5, 0
/* 80C11A10  7F E6 FB 78 */	mr r6, r31
/* 80C11A14  4B 47 1E 4C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C11A18  38 7F 08 38 */	addi r3, r31, 0x838
/* 80C11A1C  38 9E 00 00 */	addi r4, r30, 0
/* 80C11A20  4B 47 2E 94 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C11A24  38 1F 07 BC */	addi r0, r31, 0x7bc
/* 80C11A28  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80C11A2C  C0 1F 05 14 */	lfs f0, 0x514(r31)
/* 80C11A30  C0 3F 05 1C */	lfs f1, 0x51c(r31)
/* 80C11A34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C11A38  40 81 00 0C */	ble lbl_80C11A44
/* 80C11A3C  FF E0 00 90 */	fmr f31, f0
/* 80C11A40  48 00 00 08 */	b lbl_80C11A48
lbl_80C11A44:
/* 80C11A44  FF E0 08 90 */	fmr f31, f1
lbl_80C11A48:
/* 80C11A48  38 7F 09 5C */	addi r3, r31, 0x95c
/* 80C11A4C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C11A50  4B 65 D7 8C */	b SetC__8cM3dGCylFRC4cXyz
/* 80C11A54  38 7F 09 5C */	addi r3, r31, 0x95c
/* 80C11A58  C0 3F 05 18 */	lfs f1, 0x518(r31)
/* 80C11A5C  4B 65 D7 9C */	b SetH__8cM3dGCylFf
/* 80C11A60  38 7F 09 5C */	addi r3, r31, 0x95c
/* 80C11A64  FC 20 F8 90 */	fmr f1, f31
/* 80C11A68  4B 65 D7 98 */	b SetR__8cM3dGCylFf
/* 80C11A6C  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80C11A70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C11A74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C11A78  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C11A7C  4B 46 50 30 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C11A80  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 80C11A84  90 1F 09 74 */	stw r0, 0x974(r31)
/* 80C11A88  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 80C11A8C  90 1F 09 78 */	stw r0, 0x978(r31)
/* 80C11A90  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 80C11A94  90 1F 09 7C */	stw r0, 0x97c(r31)
/* 80C11A98  88 1F 06 CC */	lbz r0, 0x6cc(r31)
/* 80C11A9C  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80C11AA0  A0 1F 06 D4 */	lhz r0, 0x6d4(r31)
/* 80C11AA4  B0 1F 09 88 */	sth r0, 0x988(r31)
/* 80C11AA8  A0 1F 06 D6 */	lhz r0, 0x6d6(r31)
/* 80C11AAC  B0 1F 09 8A */	sth r0, 0x98a(r31)
/* 80C11AB0  80 1F 06 D8 */	lwz r0, 0x6d8(r31)
/* 80C11AB4  90 1F 09 8C */	stw r0, 0x98c(r31)
/* 80C11AB8  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 80C11ABC  90 1F 09 90 */	stw r0, 0x990(r31)
/* 80C11AC0  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 80C11AC4  D0 1F 09 98 */	stfs f0, 0x998(r31)
/* 80C11AC8  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 80C11ACC  D0 1F 09 9C */	stfs f0, 0x99c(r31)
/* 80C11AD0  C0 1F 06 EC */	lfs f0, 0x6ec(r31)
/* 80C11AD4  D0 1F 09 A0 */	stfs f0, 0x9a0(r31)
/* 80C11AD8  80 1F 06 F0 */	lwz r0, 0x6f0(r31)
/* 80C11ADC  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80C11AE0  C0 1F 06 F4 */	lfs f0, 0x6f4(r31)
/* 80C11AE4  D0 1F 09 A8 */	stfs f0, 0x9a8(r31)
/* 80C11AE8  80 1F 06 F8 */	lwz r0, 0x6f8(r31)
/* 80C11AEC  90 1F 09 AC */	stw r0, 0x9ac(r31)
/* 80C11AF0  7F E3 FB 78 */	mr r3, r31
/* 80C11AF4  4B FF FC 3D */	bl setEnvTevColor__14daObjGraRock_cFv
/* 80C11AF8  7F E3 FB 78 */	mr r3, r31
/* 80C11AFC  4B FF FC 91 */	bl setRoomNo__14daObjGraRock_cFv
/* 80C11B00  38 60 00 00 */	li r3, 0
/* 80C11B04  38 80 FF FF */	li r4, -1
/* 80C11B08  38 00 00 02 */	li r0, 2
/* 80C11B0C  7C 09 03 A6 */	mtctr r0
lbl_80C11B10:
/* 80C11B10  38 03 09 C0 */	addi r0, r3, 0x9c0
/* 80C11B14  7C 9F 01 2E */	stwx r4, r31, r0
/* 80C11B18  38 63 00 04 */	addi r3, r3, 4
/* 80C11B1C  42 00 FF F4 */	bdnz lbl_80C11B10
/* 80C11B20  38 00 00 00 */	li r0, 0
/* 80C11B24  B0 1F 09 B0 */	sth r0, 0x9b0(r31)
/* 80C11B28  B0 1F 09 B6 */	sth r0, 0x9b6(r31)
/* 80C11B2C  98 1F 09 BC */	stb r0, 0x9bc(r31)
/* 80C11B30  98 1F 09 BD */	stb r0, 0x9bd(r31)
/* 80C11B34  38 60 00 5A */	li r3, 0x5a
/* 80C11B38  38 80 00 5A */	li r4, 0x5a
/* 80C11B3C  48 00 07 ED */	bl func_80C12328
/* 80C11B40  B0 7F 09 BE */	sth r3, 0x9be(r31)
/* 80C11B44  38 60 00 01 */	li r3, 1
/* 80C11B48  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C11B4C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C11B50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C11B54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C11B58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C11B5C  7C 08 03 A6 */	mtlr r0
/* 80C11B60  38 21 00 30 */	addi r1, r1, 0x30
/* 80C11B64  4E 80 00 20 */	blr 
