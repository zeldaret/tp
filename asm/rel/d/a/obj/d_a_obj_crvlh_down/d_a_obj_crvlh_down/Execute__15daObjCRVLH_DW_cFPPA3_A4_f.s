lbl_80BD4AC8:
/* 80BD4AC8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BD4ACC  7C 08 02 A6 */	mflr r0
/* 80BD4AD0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BD4AD4  39 61 00 80 */	addi r11, r1, 0x80
/* 80BD4AD8  4B 78 D7 04 */	b _savegpr_29
/* 80BD4ADC  7C 7E 1B 78 */	mr r30, r3
/* 80BD4AE0  7C 9F 23 78 */	mr r31, r4
/* 80BD4AE4  3C 60 80 BD */	lis r3, ccCylSrc@ha
/* 80BD4AE8  3B A3 4D 04 */	addi r29, r3, ccCylSrc@l
/* 80BD4AEC  88 1E 05 BB */	lbz r0, 0x5bb(r30)
/* 80BD4AF0  28 00 00 00 */	cmplwi r0, 0
/* 80BD4AF4  41 82 00 4C */	beq lbl_80BD4B40
/* 80BD4AF8  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80BD4AFC  28 04 00 FF */	cmplwi r4, 0xff
/* 80BD4B00  41 82 00 38 */	beq lbl_80BD4B38
/* 80BD4B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD4B08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD4B0C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BD4B10  7C 05 07 74 */	extsb r5, r0
/* 80BD4B14  4B 46 08 4C */	b isSwitch__10dSv_info_cCFii
/* 80BD4B18  2C 03 00 00 */	cmpwi r3, 0
/* 80BD4B1C  40 82 00 1C */	bne lbl_80BD4B38
/* 80BD4B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD4B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD4B28  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80BD4B2C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BD4B30  7C 05 07 74 */	extsb r5, r0
/* 80BD4B34  4B 46 06 CC */	b onSwitch__10dSv_info_cFii
lbl_80BD4B38:
/* 80BD4B38  7F C3 F3 78 */	mr r3, r30
/* 80BD4B3C  4B 44 51 40 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80BD4B40:
/* 80BD4B40  7F C3 F3 78 */	mr r3, r30
/* 80BD4B44  4B FF FA 61 */	bl Obj_Hit__15daObjCRVLH_DW_cFv
/* 80BD4B48  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80BD4B4C  28 00 00 00 */	cmplwi r0, 0
/* 80BD4B50  41 82 00 C0 */	beq lbl_80BD4C10
/* 80BD4B54  80 7E 05 A4 */	lwz r3, 0x5a4(r30)
/* 80BD4B58  38 81 00 08 */	addi r4, r1, 8
/* 80BD4B5C  4B 44 4E 60 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80BD4B60  2C 03 00 00 */	cmpwi r3, 0
/* 80BD4B64  41 82 00 AC */	beq lbl_80BD4C10
/* 80BD4B68  80 61 00 08 */	lwz r3, 8(r1)
/* 80BD4B6C  28 03 00 00 */	cmplwi r3, 0
/* 80BD4B70  41 82 00 A0 */	beq lbl_80BD4C10
/* 80BD4B74  C0 DD 00 44 */	lfs f6, 0x44(r29)
/* 80BD4B78  D0 C1 00 60 */	stfs f6, 0x60(r1)
/* 80BD4B7C  C0 BD 00 6C */	lfs f5, 0x6c(r29)
/* 80BD4B80  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 80BD4B84  C0 9D 00 70 */	lfs f4, 0x70(r29)
/* 80BD4B88  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 80BD4B8C  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 80BD4B90  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80BD4B94  D0 C1 00 58 */	stfs f6, 0x58(r1)
/* 80BD4B98  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80BD4B9C  C0 5D 00 74 */	lfs f2, 0x74(r29)
/* 80BD4BA0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80BD4BA4  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 80BD4BA8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80BD4BAC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80BD4BB0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80BD4BB4  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80BD4BB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BD4BBC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BD4BC0  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 80BD4BC4  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 80BD4BC8  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 80BD4BCC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80BD4BD0  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80BD4BD4  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80BD4BD8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BD4BDC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BD4BE0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BD4BE4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BD4BE8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD4BEC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD4BF0  38 81 00 30 */	addi r4, r1, 0x30
/* 80BD4BF4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80BD4BF8  38 C1 00 18 */	addi r6, r1, 0x18
/* 80BD4BFC  38 E1 00 0C */	addi r7, r1, 0xc
/* 80BD4C00  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80BD4C04  4B FF E8 28 */	b HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf
/* 80BD4C08  38 00 00 01 */	li r0, 1
/* 80BD4C0C  98 1E 05 BB */	stb r0, 0x5bb(r30)
lbl_80BD4C10:
/* 80BD4C10  7F C3 F3 78 */	mr r3, r30
/* 80BD4C14  4B FF F5 91 */	bl SetCcSyl__15daObjCRVLH_DW_cFv
/* 80BD4C18  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BD4C1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BD4C20  7F C3 F3 78 */	mr r3, r30
/* 80BD4C24  4B FF FA 21 */	bl setBaseMtx__15daObjCRVLH_DW_cFv
/* 80BD4C28  38 60 00 01 */	li r3, 1
/* 80BD4C2C  39 61 00 80 */	addi r11, r1, 0x80
/* 80BD4C30  4B 78 D5 F8 */	b _restgpr_29
/* 80BD4C34  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BD4C38  7C 08 03 A6 */	mtlr r0
/* 80BD4C3C  38 21 00 80 */	addi r1, r1, 0x80
/* 80BD4C40  4E 80 00 20 */	blr 
