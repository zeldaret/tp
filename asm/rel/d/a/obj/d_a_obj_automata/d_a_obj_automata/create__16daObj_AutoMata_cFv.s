lbl_80BA5990:
/* 80BA5990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA5994  7C 08 02 A6 */	mflr r0
/* 80BA5998  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA599C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA59A0  4B 7B C8 34 */	b _savegpr_27
/* 80BA59A4  7C 7C 1B 78 */	mr r28, r3
/* 80BA59A8  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha
/* 80BA59AC  3B C4 6C B0 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80BA59B0  3C 80 80 BA */	lis r4, m__22daObj_AutoMata_Param_c@ha
/* 80BA59B4  3B E4 6C 10 */	addi r31, r4, m__22daObj_AutoMata_Param_c@l
/* 80BA59B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BA59BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BA59C0  40 82 01 80 */	bne lbl_80BA5B40
/* 80BA59C4  7F 80 E3 79 */	or. r0, r28, r28
/* 80BA59C8  41 82 01 6C */	beq lbl_80BA5B34
/* 80BA59CC  7C 1D 03 78 */	mr r29, r0
/* 80BA59D0  4B 47 31 94 */	b __ct__10fopAc_ac_cFv
/* 80BA59D4  3C 60 80 BA */	lis r3, __vt__16daObj_AutoMata_c@ha
/* 80BA59D8  38 03 6E 2C */	addi r0, r3, __vt__16daObj_AutoMata_c@l
/* 80BA59DC  90 1D 0B 34 */	stw r0, 0xb34(r29)
/* 80BA59E0  38 7D 05 70 */	addi r3, r29, 0x570
/* 80BA59E4  4B 71 A9 E4 */	b __ct__10Z2CreatureFv
/* 80BA59E8  3B 7D 06 00 */	addi r27, r29, 0x600
/* 80BA59EC  3C 60 80 BA */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80BA59F0  38 03 6D B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80BA59F4  90 1D 06 00 */	stw r0, 0x600(r29)
/* 80BA59F8  7F 63 DB 78 */	mr r3, r27
/* 80BA59FC  38 80 00 00 */	li r4, 0
/* 80BA5A00  4B 78 29 FC */	b init__12J3DFrameCtrlFs
/* 80BA5A04  38 00 00 00 */	li r0, 0
/* 80BA5A08  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80BA5A0C  3B 7D 06 20 */	addi r27, r29, 0x620
/* 80BA5A10  7F 63 DB 78 */	mr r3, r27
/* 80BA5A14  4B 4D 06 8C */	b __ct__9dBgS_AcchFv
/* 80BA5A18  3C 60 80 BA */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BA5A1C  38 63 6D C0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BA5A20  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80BA5A24  38 03 00 0C */	addi r0, r3, 0xc
/* 80BA5A28  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80BA5A2C  38 03 00 18 */	addi r0, r3, 0x18
/* 80BA5A30  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80BA5A34  38 7B 00 14 */	addi r3, r27, 0x14
/* 80BA5A38  4B 4D 34 30 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BA5A3C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BA5A40  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BA5A44  90 1D 08 10 */	stw r0, 0x810(r29)
/* 80BA5A48  38 7D 08 14 */	addi r3, r29, 0x814
/* 80BA5A4C  4B 4D DD 14 */	b __ct__10dCcD_GSttsFv
/* 80BA5A50  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BA5A54  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BA5A58  90 7D 08 10 */	stw r3, 0x810(r29)
/* 80BA5A5C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BA5A60  90 1D 08 14 */	stw r0, 0x814(r29)
/* 80BA5A64  38 7D 08 34 */	addi r3, r29, 0x834
/* 80BA5A68  4B 4D 04 44 */	b __ct__12dBgS_AcchCirFv
/* 80BA5A6C  38 7D 08 74 */	addi r3, r29, 0x874
/* 80BA5A70  4B 6C 21 AC */	b __ct__11cBgS_GndChkFv
/* 80BA5A74  3B 7D 08 B0 */	addi r27, r29, 0x8b0
/* 80BA5A78  7F 63 DB 78 */	mr r3, r27
/* 80BA5A7C  4B 4D DF AC */	b __ct__12dCcD_GObjInfFv
/* 80BA5A80  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BA5A84  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BA5A88  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BA5A8C  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha
/* 80BA5A90  38 03 6E 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BA5A94  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80BA5A98  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha
/* 80BA5A9C  38 03 6E 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BA5AA0  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80BA5AA4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BA5AA8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BA5AAC  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80BA5AB0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA5AB4  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80BA5AB8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BA5ABC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BA5AC0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80BA5AC4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA5AC8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BA5ACC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA5AD0  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80BA5AD4  3B 7D 09 EC */	addi r27, r29, 0x9ec
/* 80BA5AD8  7F 63 DB 78 */	mr r3, r27
/* 80BA5ADC  4B 4D DF 4C */	b __ct__12dCcD_GObjInfFv
/* 80BA5AE0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BA5AE4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BA5AE8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BA5AEC  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha
/* 80BA5AF0  38 03 6E 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BA5AF4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80BA5AF8  3C 60 80 BA */	lis r3, __vt__8cM3dGSph@ha
/* 80BA5AFC  38 03 6E 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BA5B00  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80BA5B04  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BA5B08  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BA5B0C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80BA5B10  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA5B14  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80BA5B18  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BA5B1C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BA5B20  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80BA5B24  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA5B28  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BA5B2C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA5B30  90 1B 01 34 */	stw r0, 0x134(r27)
lbl_80BA5B34:
/* 80BA5B34  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80BA5B38  60 00 00 08 */	ori r0, r0, 8
/* 80BA5B3C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80BA5B40:
/* 80BA5B40  38 00 00 00 */	li r0, 0
/* 80BA5B44  98 1C 0B 30 */	stb r0, 0xb30(r28)
/* 80BA5B48  38 7C 06 18 */	addi r3, r28, 0x618
/* 80BA5B4C  38 9E 00 20 */	addi r4, r30, 0x20
/* 80BA5B50  88 1C 0B 30 */	lbz r0, 0xb30(r28)
/* 80BA5B54  54 00 18 38 */	slwi r0, r0, 3
/* 80BA5B58  7C 84 02 14 */	add r4, r4, r0
/* 80BA5B5C  80 04 00 04 */	lwz r0, 4(r4)
/* 80BA5B60  54 00 10 3A */	slwi r0, r0, 2
/* 80BA5B64  38 9E 00 28 */	addi r4, r30, 0x28
/* 80BA5B68  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BA5B6C  4B 48 73 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BA5B70  7C 7D 1B 78 */	mr r29, r3
/* 80BA5B74  2C 1D 00 04 */	cmpwi r29, 4
/* 80BA5B78  40 82 01 98 */	bne lbl_80BA5D10
/* 80BA5B7C  7F 83 E3 78 */	mr r3, r28
/* 80BA5B80  3C 80 80 BA */	lis r4, createHeapCallBack__16daObj_AutoMata_cFP10fopAc_ac_c@ha
/* 80BA5B84  38 84 64 80 */	addi r4, r4, createHeapCallBack__16daObj_AutoMata_cFP10fopAc_ac_c@l
/* 80BA5B88  38 A0 13 70 */	li r5, 0x1370
/* 80BA5B8C  4B 47 49 24 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BA5B90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA5B94  40 82 00 0C */	bne lbl_80BA5BA0
/* 80BA5B98  38 60 00 05 */	li r3, 5
/* 80BA5B9C  48 00 01 78 */	b lbl_80BA5D14
lbl_80BA5BA0:
/* 80BA5BA0  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA5BA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80BA5BA8  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA5BAC  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80BA5BB0  7F 83 E3 78 */	mr r3, r28
/* 80BA5BB4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BA5BB8  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80BA5BBC  FC 60 08 90 */	fmr f3, f1
/* 80BA5BC0  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 80BA5BC4  C0 BF 00 48 */	lfs f5, 0x48(r31)
/* 80BA5BC8  FC C0 20 90 */	fmr f6, f4
/* 80BA5BCC  4B 47 49 7C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BA5BD0  38 7C 05 70 */	addi r3, r28, 0x570
/* 80BA5BD4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80BA5BD8  38 BC 05 38 */	addi r5, r28, 0x538
/* 80BA5BDC  38 C0 00 03 */	li r6, 3
/* 80BA5BE0  38 E0 00 01 */	li r7, 1
/* 80BA5BE4  4B 71 A9 4C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80BA5BE8  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80BA5BEC  90 01 00 08 */	stw r0, 8(r1)
/* 80BA5BF0  38 7C 06 20 */	addi r3, r28, 0x620
/* 80BA5BF4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80BA5BF8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80BA5BFC  7F 86 E3 78 */	mr r6, r28
/* 80BA5C00  38 E0 00 01 */	li r7, 1
/* 80BA5C04  39 1C 08 34 */	addi r8, r28, 0x834
/* 80BA5C08  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80BA5C0C  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80BA5C10  4B 4D 06 38 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BA5C14  38 7C 07 F8 */	addi r3, r28, 0x7f8
/* 80BA5C18  38 80 00 FF */	li r4, 0xff
/* 80BA5C1C  38 A0 00 00 */	li r5, 0
/* 80BA5C20  7F 86 E3 78 */	mr r6, r28
/* 80BA5C24  4B 4D DC 3C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BA5C28  38 7C 08 B0 */	addi r3, r28, 0x8b0
/* 80BA5C2C  38 9E 00 30 */	addi r4, r30, 0x30
/* 80BA5C30  4B 4D EC 84 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BA5C34  38 1C 07 F8 */	addi r0, r28, 0x7f8
/* 80BA5C38  90 1C 08 F4 */	stw r0, 0x8f4(r28)
/* 80BA5C3C  38 7C 09 EC */	addi r3, r28, 0x9ec
/* 80BA5C40  38 9E 00 74 */	addi r4, r30, 0x74
/* 80BA5C44  4B 4D ED F0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BA5C48  38 1C 07 F8 */	addi r0, r28, 0x7f8
/* 80BA5C4C  90 1C 0A 30 */	stw r0, 0xa30(r28)
/* 80BA5C50  80 1C 06 4C */	lwz r0, 0x64c(r28)
/* 80BA5C54  60 00 00 04 */	ori r0, r0, 4
/* 80BA5C58  90 1C 06 4C */	stw r0, 0x64c(r28)
/* 80BA5C5C  38 7C 06 20 */	addi r3, r28, 0x620
/* 80BA5C60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BA5C64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BA5C68  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BA5C6C  4B 4D 0E 40 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BA5C70  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 80BA5C74  90 1C 08 74 */	stw r0, 0x874(r28)
/* 80BA5C78  80 1C 07 00 */	lwz r0, 0x700(r28)
/* 80BA5C7C  90 1C 08 78 */	stw r0, 0x878(r28)
/* 80BA5C80  80 1C 07 04 */	lwz r0, 0x704(r28)
/* 80BA5C84  90 1C 08 7C */	stw r0, 0x87c(r28)
/* 80BA5C88  88 1C 07 08 */	lbz r0, 0x708(r28)
/* 80BA5C8C  98 1C 08 80 */	stb r0, 0x880(r28)
/* 80BA5C90  A0 1C 07 10 */	lhz r0, 0x710(r28)
/* 80BA5C94  B0 1C 08 88 */	sth r0, 0x888(r28)
/* 80BA5C98  A0 1C 07 12 */	lhz r0, 0x712(r28)
/* 80BA5C9C  B0 1C 08 8A */	sth r0, 0x88a(r28)
/* 80BA5CA0  80 1C 07 14 */	lwz r0, 0x714(r28)
/* 80BA5CA4  90 1C 08 8C */	stw r0, 0x88c(r28)
/* 80BA5CA8  80 1C 07 18 */	lwz r0, 0x718(r28)
/* 80BA5CAC  90 1C 08 90 */	stw r0, 0x890(r28)
/* 80BA5CB0  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 80BA5CB4  D0 1C 08 98 */	stfs f0, 0x898(r28)
/* 80BA5CB8  C0 1C 07 24 */	lfs f0, 0x724(r28)
/* 80BA5CBC  D0 1C 08 9C */	stfs f0, 0x89c(r28)
/* 80BA5CC0  C0 1C 07 28 */	lfs f0, 0x728(r28)
/* 80BA5CC4  D0 1C 08 A0 */	stfs f0, 0x8a0(r28)
/* 80BA5CC8  80 1C 07 2C */	lwz r0, 0x72c(r28)
/* 80BA5CCC  90 1C 08 A4 */	stw r0, 0x8a4(r28)
/* 80BA5CD0  C0 1C 07 30 */	lfs f0, 0x730(r28)
/* 80BA5CD4  D0 1C 08 A8 */	stfs f0, 0x8a8(r28)
/* 80BA5CD8  80 1C 07 34 */	lwz r0, 0x734(r28)
/* 80BA5CDC  90 1C 08 AC */	stw r0, 0x8ac(r28)
/* 80BA5CE0  C0 1C 06 B8 */	lfs f0, 0x6b8(r28)
/* 80BA5CE4  D0 1C 0B 28 */	stfs f0, 0xb28(r28)
/* 80BA5CE8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80BA5CEC  C0 1C 0B 28 */	lfs f0, 0xb28(r28)
/* 80BA5CF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BA5CF4  41 82 00 14 */	beq lbl_80BA5D08
/* 80BA5CF8  7F 83 E3 78 */	mr r3, r28
/* 80BA5CFC  48 00 09 39 */	bl setEnvTevColor__16daObj_AutoMata_cFv
/* 80BA5D00  7F 83 E3 78 */	mr r3, r28
/* 80BA5D04  48 00 09 8D */	bl setRoomNo__16daObj_AutoMata_cFv
lbl_80BA5D08:
/* 80BA5D08  7F 83 E3 78 */	mr r3, r28
/* 80BA5D0C  48 00 03 C9 */	bl Execute__16daObj_AutoMata_cFv
lbl_80BA5D10:
/* 80BA5D10  7F A3 EB 78 */	mr r3, r29
lbl_80BA5D14:
/* 80BA5D14  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA5D18  4B 7B C5 08 */	b _restgpr_27
/* 80BA5D1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BA5D20  7C 08 03 A6 */	mtlr r0
/* 80BA5D24  38 21 00 30 */	addi r1, r1, 0x30
/* 80BA5D28  4E 80 00 20 */	blr 
