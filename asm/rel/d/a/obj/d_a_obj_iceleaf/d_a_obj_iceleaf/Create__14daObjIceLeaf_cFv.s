lbl_80C249E4:
/* 80C249E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C249E8  7C 08 02 A6 */	mflr r0
/* 80C249EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C249F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C249F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C249F8  7C 7E 1B 78 */	mr r30, r3
/* 80C249FC  3C 60 80 C2 */	lis r3, lit_3703@ha
/* 80C24A00  3B E3 5D 64 */	addi r31, r3, lit_3703@l
/* 80C24A04  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C24A08  80 63 00 04 */	lwz r3, 4(r3)
/* 80C24A0C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C24A10  80 C3 00 00 */	lwz r6, 0(r3)
/* 80C24A14  38 7E 09 08 */	addi r3, r30, 0x908
/* 80C24A18  E0 06 00 18 */	psq_l f0, 24(r6), 0, 0 /* qr0 */
/* 80C24A1C  F0 03 00 00 */	psq_st f0, 0(r3), 0, 0 /* qr0 */
/* 80C24A20  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 80C24A24  D0 1E 09 10 */	stfs f0, 0x910(r30)
/* 80C24A28  80 06 00 24 */	lwz r0, 0x24(r6)
/* 80C24A2C  90 1E 09 14 */	stw r0, 0x914(r30)
/* 80C24A30  A8 06 00 28 */	lha r0, 0x28(r6)
/* 80C24A34  B0 1E 09 18 */	sth r0, 0x918(r30)
/* 80C24A38  E0 06 00 2C */	psq_l f0, 44(r6), 0, 0 /* qr0 */
/* 80C24A3C  F0 03 00 14 */	psq_st f0, 20(r3), 0, 0 /* qr0 */
/* 80C24A40  C0 06 00 34 */	lfs f0, 0x34(r6)
/* 80C24A44  D0 1E 09 24 */	stfs f0, 0x924(r30)
/* 80C24A48  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C24A4C  38 9E 09 04 */	addi r4, r30, 0x904
/* 80C24A50  38 00 00 04 */	li r0, 4
/* 80C24A54  7C 09 03 A6 */	mtctr r0
lbl_80C24A58:
/* 80C24A58  80 64 00 04 */	lwz r3, 4(r4)
/* 80C24A5C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C24A60  90 65 00 04 */	stw r3, 4(r5)
/* 80C24A64  94 05 00 08 */	stwu r0, 8(r5)
/* 80C24A68  42 00 FF F0 */	bdnz lbl_80C24A58
/* 80C24A6C  38 00 00 00 */	li r0, 0
/* 80C24A70  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80C24A74  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80C24A78  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80C24A7C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C24A80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C24A84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C24A88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C24A8C  E0 01 00 10 */	psq_l f0, 16(r1), 0, 0 /* qr0 */
/* 80C24A90  F0 06 00 18 */	psq_st f0, 24(r6), 0, 0 /* qr0 */
/* 80C24A94  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C24A98  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 80C24A9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C24AA0  90 06 00 24 */	stw r0, 0x24(r6)
/* 80C24AA4  A8 01 00 20 */	lha r0, 0x20(r1)
/* 80C24AA8  B0 06 00 28 */	sth r0, 0x28(r6)
/* 80C24AAC  E0 01 00 24 */	psq_l f0, 36(r1), 0, 0 /* qr0 */
/* 80C24AB0  F0 06 00 2C */	psq_st f0, 44(r6), 0, 0 /* qr0 */
/* 80C24AB4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C24AB8  D0 06 00 34 */	stfs f0, 0x34(r6)
/* 80C24ABC  7F C3 F3 78 */	mr r3, r30
/* 80C24AC0  4B FF FC 79 */	bl initBaseMtx__14daObjIceLeaf_cFv
/* 80C24AC4  38 1E 09 30 */	addi r0, r30, 0x930
/* 80C24AC8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C24ACC  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80C24AD0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C24AD4  FC 40 08 90 */	fmr f2, f1
/* 80C24AD8  4B 45 14 80 */	b SetWall__12dBgS_AcchCirFff
/* 80C24ADC  38 00 00 00 */	li r0, 0
/* 80C24AE0  90 01 00 08 */	stw r0, 8(r1)
/* 80C24AE4  38 7E 05 74 */	addi r3, r30, 0x574
/* 80C24AE8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C24AEC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C24AF0  7F C6 F3 78 */	mr r6, r30
/* 80C24AF4  38 E0 00 01 */	li r7, 1
/* 80C24AF8  39 1E 07 4C */	addi r8, r30, 0x74c
/* 80C24AFC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C24B00  39 40 00 00 */	li r10, 0
/* 80C24B04  4B 45 17 44 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C24B08  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80C24B0C  38 80 00 00 */	li r4, 0
/* 80C24B10  38 A0 00 FF */	li r5, 0xff
/* 80C24B14  7F C6 F3 78 */	mr r6, r30
/* 80C24B18  4B 45 ED 48 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C24B1C  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80C24B20  3C 80 80 C2 */	lis r4, l_cyl_src@ha
/* 80C24B24  38 84 5D D4 */	addi r4, r4, l_cyl_src@l
/* 80C24B28  4B 45 FD 8C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C24B2C  38 1E 07 8C */	addi r0, r30, 0x78c
/* 80C24B30  90 1E 08 0C */	stw r0, 0x80c(r30)
/* 80C24B34  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 80C24B38  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C24B3C  4B 64 A6 C4 */	b SetR__8cM3dGCylFf
/* 80C24B40  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 80C24B44  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C24B48  4B 64 A6 B0 */	b SetH__8cM3dGCylFf
/* 80C24B4C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C24B50  80 83 00 04 */	lwz r4, 4(r3)
/* 80C24B54  7F C3 F3 78 */	mr r3, r30
/* 80C24B58  4B 3F 5A 20 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C24B5C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C24B60  98 1E 09 2A */	stb r0, 0x92a(r30)
/* 80C24B64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C24B68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C24B6C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80C24B70  7F C4 F3 78 */	mr r4, r30
/* 80C24B74  88 BE 09 2A */	lbz r5, 0x92a(r30)
/* 80C24B78  4B 42 2B 20 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80C24B7C  B0 7E 09 2C */	sth r3, 0x92c(r30)
/* 80C24B80  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C24B84  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C24B88  28 00 00 01 */	cmplwi r0, 1
/* 80C24B8C  40 82 00 1C */	bne lbl_80C24BA8
/* 80C24B90  38 00 00 01 */	li r0, 1
/* 80C24B94  98 1E 09 60 */	stb r0, 0x960(r30)
/* 80C24B98  38 00 00 00 */	li r0, 0
/* 80C24B9C  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80C24BA0  7F C3 F3 78 */	mr r3, r30
/* 80C24BA4  48 00 00 21 */	bl setAnmPos__14daObjIceLeaf_cFv
lbl_80C24BA8:
/* 80C24BA8  38 60 00 01 */	li r3, 1
/* 80C24BAC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C24BB0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C24BB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C24BB8  7C 08 03 A6 */	mtlr r0
/* 80C24BBC  38 21 00 40 */	addi r1, r1, 0x40
/* 80C24BC0  4E 80 00 20 */	blr 
