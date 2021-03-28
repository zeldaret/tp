lbl_80B61AA4:
/* 80B61AA4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B61AA8  7C 08 02 A6 */	mflr r0
/* 80B61AAC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B61AB0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B61AB4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B61AB8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80B61ABC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80B61AC0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B61AC4  4B 80 07 10 */	b _savegpr_27
/* 80B61AC8  7C 7B 1B 78 */	mr r27, r3
/* 80B61ACC  7C 9C 23 78 */	mr r28, r4
/* 80B61AD0  FF C0 08 90 */	fmr f30, f1
/* 80B61AD4  FF E0 10 90 */	fmr f31, f2
/* 80B61AD8  7C BD 2B 78 */	mr r29, r5
/* 80B61ADC  7C DE 33 78 */	mr r30, r6
/* 80B61AE0  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha
/* 80B61AE4  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l
/* 80B61AE8  38 00 00 00 */	li r0, 0
/* 80B61AEC  90 01 00 08 */	stw r0, 8(r1)
/* 80B61AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B61AF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B61AF8  38 63 09 58 */	addi r3, r3, 0x958
/* 80B61AFC  38 80 00 04 */	li r4, 4
/* 80B61B00  4B 4D 2E 34 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80B61B04  2C 03 00 00 */	cmpwi r3, 0
/* 80B61B08  40 82 01 58 */	bne lbl_80B61C60
/* 80B61B0C  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80B61B10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B61B14  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B61B18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B61B1C  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80B61B20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B61B24  28 1C 00 00 */	cmplwi r28, 0
/* 80B61B28  41 82 00 1C */	beq lbl_80B61B44
/* 80B61B2C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80B61B30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B61B34  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80B61B38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B61B3C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80B61B40  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80B61B44:
/* 80B61B44  80 7B 0D 90 */	lwz r3, 0xd90(r27)
/* 80B61B48  3C 03 00 01 */	addis r0, r3, 1
/* 80B61B4C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B61B50  40 82 00 78 */	bne lbl_80B61BC8
/* 80B61B54  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B61B58  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B61B5C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B61B60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B61B64  28 1E 00 00 */	cmplwi r30, 0
/* 80B61B68  41 82 00 1C */	beq lbl_80B61B84
/* 80B61B6C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80B61B70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B61B74  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80B61B78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B61B7C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B61B80  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80B61B84:
/* 80B61B84  38 00 00 00 */	li r0, 0
/* 80B61B88  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B61B8C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80B61B90  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B61B94  B3 A1 00 0E */	sth r29, 0xe(r1)
/* 80B61B98  38 61 00 20 */	addi r3, r1, 0x20
/* 80B61B9C  38 80 00 22 */	li r4, 0x22
/* 80B61BA0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B61BA4  7C 05 07 74 */	extsb r5, r0
/* 80B61BA8  38 C1 00 0C */	addi r6, r1, 0xc
/* 80B61BAC  38 E1 00 14 */	addi r7, r1, 0x14
/* 80B61BB0  FC 20 F0 90 */	fmr f1, f30
/* 80B61BB4  FC 40 F8 90 */	fmr f2, f31
/* 80B61BB8  39 00 FF FF */	li r8, -1
/* 80B61BBC  4B 4B A5 18 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 80B61BC0  90 7B 0D 90 */	stw r3, 0xd90(r27)
/* 80B61BC4  48 00 00 9C */	b lbl_80B61C60
lbl_80B61BC8:
/* 80B61BC8  38 81 00 08 */	addi r4, r1, 8
/* 80B61BCC  4B 4B 7D F0 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B61BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B61BD4  41 82 00 8C */	beq lbl_80B61C60
/* 80B61BD8  80 61 00 08 */	lwz r3, 8(r1)
/* 80B61BDC  28 03 00 00 */	cmplwi r3, 0
/* 80B61BE0  41 82 00 80 */	beq lbl_80B61C60
/* 80B61BE4  4B 4B 70 FC */	b fopAc_IsActor__FPv
/* 80B61BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B61BEC  41 82 00 6C */	beq lbl_80B61C58
/* 80B61BF0  80 7B 0D 90 */	lwz r3, 0xd90(r27)
/* 80B61BF4  4B 4B F7 A8 */	b fpcEx_IsExist__FUi
/* 80B61BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80B61BFC  41 82 00 5C */	beq lbl_80B61C58
/* 80B61C00  80 61 00 08 */	lwz r3, 8(r1)
/* 80B61C04  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B61C08  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80B61C0C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B61C10  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80B61C14  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B61C18  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80B61C1C  80 61 00 08 */	lwz r3, 8(r1)
/* 80B61C20  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B61C24  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80B61C28  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B61C2C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80B61C30  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B61C34  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80B61C38  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B61C3C  80 61 00 08 */	lwz r3, 8(r1)
/* 80B61C40  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80B61C44  80 61 00 08 */	lwz r3, 8(r1)
/* 80B61C48  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80B61C4C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80B61C50  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80B61C54  48 00 00 0C */	b lbl_80B61C60
lbl_80B61C58:
/* 80B61C58  38 00 00 00 */	li r0, 0
/* 80B61C5C  90 01 00 08 */	stw r0, 8(r1)
lbl_80B61C60:
/* 80B61C60  80 61 00 08 */	lwz r3, 8(r1)
/* 80B61C64  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B61C68  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B61C6C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80B61C70  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80B61C74  39 61 00 50 */	addi r11, r1, 0x50
/* 80B61C78  4B 80 05 A8 */	b _restgpr_27
/* 80B61C7C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B61C80  7C 08 03 A6 */	mtlr r0
/* 80B61C84  38 21 00 70 */	addi r1, r1, 0x70
/* 80B61C88  4E 80 00 20 */	blr 
