lbl_80D41A40:
/* 80D41A40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D41A44  7C 08 02 A6 */	mflr r0
/* 80D41A48  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D41A4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D41A50  4B 62 07 88 */	b _savegpr_28
/* 80D41A54  7C 7D 1B 78 */	mr r29, r3
/* 80D41A58  3C 80 80 D4 */	lis r4, lit_3653@ha
/* 80D41A5C  3B E4 23 C0 */	addi r31, r4, lit_3653@l
/* 80D41A60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D41A64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D41A68  40 82 00 E8 */	bne lbl_80D41B50
/* 80D41A6C  7F A0 EB 79 */	or. r0, r29, r29
/* 80D41A70  41 82 00 D4 */	beq lbl_80D41B44
/* 80D41A74  7C 1E 03 78 */	mr r30, r0
/* 80D41A78  4B 2D 70 EC */	b __ct__10fopAc_ac_cFv
/* 80D41A7C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D41A80  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D41A84  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80D41A88  38 7E 05 84 */	addi r3, r30, 0x584
/* 80D41A8C  4B 34 1C D4 */	b __ct__10dCcD_GSttsFv
/* 80D41A90  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D41A94  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D41A98  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80D41A9C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D41AA0  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80D41AA4  3B 9E 05 A4 */	addi r28, r30, 0x5a4
/* 80D41AA8  7F 83 E3 78 */	mr r3, r28
/* 80D41AAC  4B 34 1F 7C */	b __ct__12dCcD_GObjInfFv
/* 80D41AB0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D41AB4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D41AB8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D41ABC  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha
/* 80D41AC0  38 03 25 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D41AC4  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80D41AC8  3C 60 80 D4 */	lis r3, __vt__8cM3dGSph@ha
/* 80D41ACC  38 03 25 68 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80D41AD0  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80D41AD4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80D41AD8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80D41ADC  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80D41AE0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D41AE4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80D41AE8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80D41AEC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80D41AF0  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80D41AF4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D41AF8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D41AFC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D41B00  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80D41B04  38 7E 07 00 */	addi r3, r30, 0x700
/* 80D41B08  4B 33 43 A4 */	b __ct__12dBgS_AcchCirFv
/* 80D41B0C  3B 9E 07 40 */	addi r28, r30, 0x740
/* 80D41B10  7F 83 E3 78 */	mr r3, r28
/* 80D41B14  4B 33 45 8C */	b __ct__9dBgS_AcchFv
/* 80D41B18  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D41B1C  38 63 25 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D41B20  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80D41B24  38 03 00 0C */	addi r0, r3, 0xc
/* 80D41B28  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80D41B2C  38 03 00 18 */	addi r0, r3, 0x18
/* 80D41B30  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80D41B34  38 7C 00 14 */	addi r3, r28, 0x14
/* 80D41B38  4B 33 73 30 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D41B3C  38 7E 09 18 */	addi r3, r30, 0x918
/* 80D41B40  4B 57 CD 04 */	b __ct__16Z2SoundObjSimpleFv
lbl_80D41B44:
/* 80D41B44  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D41B48  60 00 00 08 */	ori r0, r0, 8
/* 80D41B4C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D41B50:
/* 80D41B50  38 7D 06 DC */	addi r3, r29, 0x6dc
/* 80D41B54  3C 80 80 D4 */	lis r4, stringBase0@ha
/* 80D41B58  38 84 24 34 */	addi r4, r4, stringBase0@l
/* 80D41B5C  4B 2E B3 60 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D41B60  7C 7E 1B 78 */	mr r30, r3
/* 80D41B64  2C 1E 00 04 */	cmpwi r30, 4
/* 80D41B68  40 82 01 A0 */	bne lbl_80D41D08
/* 80D41B6C  7F A3 EB 78 */	mr r3, r29
/* 80D41B70  3C 80 80 D4 */	lis r4, createHeapCallBack__12daZrTuraRc_cFP10fopAc_ac_c@ha
/* 80D41B74  38 84 1E F0 */	addi r4, r4, createHeapCallBack__12daZrTuraRc_cFP10fopAc_ac_c@l
/* 80D41B78  38 A0 08 40 */	li r5, 0x840
/* 80D41B7C  4B 2D 89 34 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D41B80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D41B84  40 82 00 0C */	bne lbl_80D41B90
/* 80D41B88  38 60 00 05 */	li r3, 5
/* 80D41B8C  48 00 01 80 */	b lbl_80D41D0C
lbl_80D41B90:
/* 80D41B90  38 7D 07 00 */	addi r3, r29, 0x700
/* 80D41B94  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D41B98  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80D41B9C  4B 33 43 BC */	b SetWall__12dBgS_AcchCirFff
/* 80D41BA0  38 00 00 00 */	li r0, 0
/* 80D41BA4  90 01 00 08 */	stw r0, 8(r1)
/* 80D41BA8  38 7D 07 40 */	addi r3, r29, 0x740
/* 80D41BAC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D41BB0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D41BB4  7F A6 EB 78 */	mr r6, r29
/* 80D41BB8  38 E0 00 01 */	li r7, 1
/* 80D41BBC  39 1D 07 00 */	addi r8, r29, 0x700
/* 80D41BC0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D41BC4  39 40 00 00 */	li r10, 0
/* 80D41BC8  4B 33 46 80 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D41BCC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80D41BD0  D0 1D 08 10 */	stfs f0, 0x810(r29)
/* 80D41BD4  38 7D 05 68 */	addi r3, r29, 0x568
/* 80D41BD8  38 80 00 FF */	li r4, 0xff
/* 80D41BDC  38 A0 00 FF */	li r5, 0xff
/* 80D41BE0  7F A6 EB 78 */	mr r6, r29
/* 80D41BE4  4B 34 1C 7C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D41BE8  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 80D41BEC  3C 80 80 D4 */	lis r4, mCcDSph__12daZrTuraRc_c@ha
/* 80D41BF0  38 84 24 60 */	addi r4, r4, mCcDSph__12daZrTuraRc_c@l
/* 80D41BF4  4B 34 2E 40 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D41BF8  38 1D 05 68 */	addi r0, r29, 0x568
/* 80D41BFC  90 1D 05 E8 */	stw r0, 0x5e8(r29)
/* 80D41C00  38 7D 09 18 */	addi r3, r29, 0x918
/* 80D41C04  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D41C08  38 A0 00 01 */	li r5, 1
/* 80D41C0C  81 9D 09 28 */	lwz r12, 0x928(r29)
/* 80D41C10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D41C14  7D 89 03 A6 */	mtctr r12
/* 80D41C18  4E 80 04 21 */	bctrl 
/* 80D41C1C  80 7D 06 E4 */	lwz r3, 0x6e4(r29)
/* 80D41C20  38 03 00 24 */	addi r0, r3, 0x24
/* 80D41C24  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D41C28  80 7D 06 E4 */	lwz r3, 0x6e4(r29)
/* 80D41C2C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D41C30  7F A3 EB 78 */	mr r3, r29
/* 80D41C34  4B 2D 89 44 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D41C38  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D41C3C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D41C40  7C 1C 03 78 */	mr r28, r0
/* 80D41C44  28 00 00 FF */	cmplwi r0, 0xff
/* 80D41C48  40 82 00 08 */	bne lbl_80D41C50
/* 80D41C4C  3B 80 00 00 */	li r28, 0
lbl_80D41C50:
/* 80D41C50  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80D41C54  4B 52 5D 38 */	b cM_rndFX__Ff
/* 80D41C58  FC 00 0A 10 */	fabs f0, f1
/* 80D41C5C  FC 80 00 18 */	frsp f4, f0
/* 80D41C60  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80D41C64  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80D41C68  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80D41C6C  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80D41C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41C74  3C 00 43 30 */	lis r0, 0x4330
/* 80D41C78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D41C7C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D41C80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D41C84  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D41C88  EC 23 00 2A */	fadds f1, f3, f0
/* 80D41C8C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80D41C90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D41C94  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 80D41C98  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80D41C9C  4B 52 5C F0 */	b cM_rndFX__Ff
/* 80D41CA0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D41CA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D41CA8  FC 00 00 1E */	fctiwz f0, f0
/* 80D41CAC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D41CB0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D41CB4  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80D41CB8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80D41CBC  4B 52 5C D0 */	b cM_rndFX__Ff
/* 80D41CC0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D41CC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D41CC8  FC 00 00 1E */	fctiwz f0, f0
/* 80D41CCC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D41CD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D41CD4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80D41CD8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80D41CDC  4B 52 5C B0 */	b cM_rndFX__Ff
/* 80D41CE0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D41CE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D41CE8  FC 00 00 1E */	fctiwz f0, f0
/* 80D41CEC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D41CF0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D41CF4  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80D41CF8  7F A3 EB 78 */	mr r3, r29
/* 80D41CFC  4B FF FC 39 */	bl setBaseMtx__12daZrTuraRc_cFv
/* 80D41D00  7F A3 EB 78 */	mr r3, r29
/* 80D41D04  48 00 03 49 */	bl init_modeDrop__12daZrTuraRc_cFv
lbl_80D41D08:
/* 80D41D08  7F C3 F3 78 */	mr r3, r30
lbl_80D41D0C:
/* 80D41D0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D41D10  4B 62 05 14 */	b _restgpr_28
/* 80D41D14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D41D18  7C 08 03 A6 */	mtlr r0
/* 80D41D1C  38 21 00 40 */	addi r1, r1, 0x40
/* 80D41D20  4E 80 00 20 */	blr 
