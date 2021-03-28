lbl_80C3EBCC:
/* 80C3EBCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3EBD0  7C 08 02 A6 */	mflr r0
/* 80C3EBD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C3EBD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C3EBDC  4B 72 35 FC */	b _savegpr_28
/* 80C3EBE0  7C 7E 1B 78 */	mr r30, r3
/* 80C3EBE4  3C 80 80 C4 */	lis r4, lit_3648@ha
/* 80C3EBE8  3B E4 F0 58 */	addi r31, r4, lit_3648@l
/* 80C3EBEC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C3EBF0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C3EBF4  40 82 00 E8 */	bne lbl_80C3ECDC
/* 80C3EBF8  7F C0 F3 79 */	or. r0, r30, r30
/* 80C3EBFC  41 82 00 D4 */	beq lbl_80C3ECD0
/* 80C3EC00  7C 1D 03 78 */	mr r29, r0
/* 80C3EC04  4B 3D 9F 60 */	b __ct__10fopAc_ac_cFv
/* 80C3EC08  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80C3EC0C  4B 43 72 A0 */	b __ct__12dBgS_AcchCirFv
/* 80C3EC10  3B 9D 06 00 */	addi r28, r29, 0x600
/* 80C3EC14  7F 83 E3 78 */	mr r3, r28
/* 80C3EC18  4B 43 74 88 */	b __ct__9dBgS_AcchFv
/* 80C3EC1C  3C 60 80 C4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C3EC20  38 63 F1 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C3EC24  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80C3EC28  38 03 00 0C */	addi r0, r3, 0xc
/* 80C3EC2C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80C3EC30  38 03 00 18 */	addi r0, r3, 0x18
/* 80C3EC34  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80C3EC38  38 7C 00 14 */	addi r3, r28, 0x14
/* 80C3EC3C  4B 43 A2 2C */	b SetObj__16dBgS_PolyPassChkFv
/* 80C3EC40  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C3EC44  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C3EC48  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80C3EC4C  38 7D 07 F4 */	addi r3, r29, 0x7f4
/* 80C3EC50  4B 44 4B 10 */	b __ct__10dCcD_GSttsFv
/* 80C3EC54  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C3EC58  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C3EC5C  90 7D 07 F0 */	stw r3, 0x7f0(r29)
/* 80C3EC60  38 03 00 20 */	addi r0, r3, 0x20
/* 80C3EC64  90 1D 07 F4 */	stw r0, 0x7f4(r29)
/* 80C3EC68  3B 9D 08 14 */	addi r28, r29, 0x814
/* 80C3EC6C  7F 83 E3 78 */	mr r3, r28
/* 80C3EC70  4B 44 4D B8 */	b __ct__12dCcD_GObjInfFv
/* 80C3EC74  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C3EC78  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C3EC7C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C3EC80  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha
/* 80C3EC84  38 03 F1 D0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C3EC88  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80C3EC8C  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha
/* 80C3EC90  38 03 F1 C4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C3EC94  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C3EC98  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C3EC9C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C3ECA0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80C3ECA4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C3ECA8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C3ECAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C3ECB0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C3ECB4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80C3ECB8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C3ECBC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C3ECC0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C3ECC4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C3ECC8  38 7D 09 A8 */	addi r3, r29, 0x9a8
/* 80C3ECCC  4B 67 FB 78 */	b __ct__16Z2SoundObjSimpleFv
lbl_80C3ECD0:
/* 80C3ECD0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C3ECD4  60 00 00 08 */	ori r0, r0, 8
/* 80C3ECD8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C3ECDC:
/* 80C3ECDC  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C3ECE0  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C3ECE4  38 84 F1 08 */	addi r4, r4, stringBase0@l
/* 80C3ECE8  38 84 00 18 */	addi r4, r4, 0x18
/* 80C3ECEC  4B 3E E1 D0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C3ECF0  7C 7D 1B 78 */	mr r29, r3
/* 80C3ECF4  2C 1D 00 04 */	cmpwi r29, 4
/* 80C3ECF8  40 82 01 84 */	bne lbl_80C3EE7C
/* 80C3ECFC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C3ED00  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80C3ED04  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C3ED08  28 00 00 FF */	cmplwi r0, 0xff
/* 80C3ED0C  40 82 00 0C */	bne lbl_80C3ED18
/* 80C3ED10  38 00 00 00 */	li r0, 0
/* 80C3ED14  98 1E 05 70 */	stb r0, 0x570(r30)
lbl_80C3ED18:
/* 80C3ED18  7F C3 F3 78 */	mr r3, r30
/* 80C3ED1C  3C 80 80 C4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C3ED20  38 84 EA AC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C3ED24  38 A0 0C 10 */	li r5, 0xc10
/* 80C3ED28  4B 3D B7 88 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C3ED2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3ED30  40 82 00 0C */	bne lbl_80C3ED3C
/* 80C3ED34  38 60 00 05 */	li r3, 5
/* 80C3ED38  48 00 01 48 */	b lbl_80C3EE80
lbl_80C3ED3C:
/* 80C3ED3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3ED40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3ED44  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C3ED48  80 9E 09 A4 */	lwz r4, 0x9a4(r30)
/* 80C3ED4C  7F C5 F3 78 */	mr r5, r30
/* 80C3ED50  4B 43 5C B8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C3ED54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3ED58  41 82 00 0C */	beq lbl_80C3ED64
/* 80C3ED5C  38 60 00 05 */	li r3, 5
/* 80C3ED60  48 00 01 20 */	b lbl_80C3EE80
lbl_80C3ED64:
/* 80C3ED64  3C 60 80 C4 */	lis r3, struct_80C3F284+0x1@ha
/* 80C3ED68  8C 03 F2 85 */	lbzu r0, struct_80C3F284+0x1@l(r3)
/* 80C3ED6C  28 00 00 00 */	cmplwi r0, 0
/* 80C3ED70  40 82 00 20 */	bne lbl_80C3ED90
/* 80C3ED74  38 00 00 01 */	li r0, 1
/* 80C3ED78  98 1E 09 EC */	stb r0, 0x9ec(r30)
/* 80C3ED7C  98 03 00 00 */	stb r0, 0(r3)
/* 80C3ED80  38 00 FF FF */	li r0, -1
/* 80C3ED84  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C3ED88  38 63 F2 94 */	addi r3, r3, l_HIO@l
/* 80C3ED8C  98 03 00 04 */	stb r0, 4(r3)
lbl_80C3ED90:
/* 80C3ED90  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C3ED94  38 03 00 24 */	addi r0, r3, 0x24
/* 80C3ED98  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C3ED9C  7F C3 F3 78 */	mr r3, r30
/* 80C3EDA0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80C3EDA4  FC 40 08 90 */	fmr f2, f1
/* 80C3EDA8  FC 60 08 90 */	fmr f3, f1
/* 80C3EDAC  4B 3D B7 7C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C3EDB0  7F C3 F3 78 */	mr r3, r30
/* 80C3EDB4  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80C3EDB8  FC 40 08 90 */	fmr f2, f1
/* 80C3EDBC  FC 60 08 90 */	fmr f3, f1
/* 80C3EDC0  4B 3D B7 78 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C3EDC4  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 80C3EDC8  38 80 00 C8 */	li r4, 0xc8
/* 80C3EDCC  38 A0 00 00 */	li r5, 0
/* 80C3EDD0  7F C6 F3 78 */	mr r6, r30
/* 80C3EDD4  4B 44 4A 8C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C3EDD8  38 7E 08 14 */	addi r3, r30, 0x814
/* 80C3EDDC  3C 80 80 C4 */	lis r4, cc_sph_src@ha
/* 80C3EDE0  38 84 F1 34 */	addi r4, r4, cc_sph_src@l
/* 80C3EDE4  4B 44 5C 50 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C3EDE8  38 1E 07 D8 */	addi r0, r30, 0x7d8
/* 80C3EDEC  90 1E 08 58 */	stw r0, 0x858(r30)
/* 80C3EDF0  80 1E 08 B0 */	lwz r0, 0x8b0(r30)
/* 80C3EDF4  60 00 00 04 */	ori r0, r0, 4
/* 80C3EDF8  90 1E 08 B0 */	stw r0, 0x8b0(r30)
/* 80C3EDFC  38 00 00 00 */	li r0, 0
/* 80C3EE00  90 01 00 08 */	stw r0, 8(r1)
/* 80C3EE04  38 7E 06 00 */	addi r3, r30, 0x600
/* 80C3EE08  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C3EE0C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C3EE10  7F C6 F3 78 */	mr r6, r30
/* 80C3EE14  38 E0 00 01 */	li r7, 1
/* 80C3EE18  39 1E 05 C0 */	addi r8, r30, 0x5c0
/* 80C3EE1C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C3EE20  39 40 00 00 */	li r10, 0
/* 80C3EE24  4B 43 74 24 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C3EE28  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C3EE2C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C3EE30  FC 40 08 90 */	fmr f2, f1
/* 80C3EE34  4B 43 71 24 */	b SetWall__12dBgS_AcchCirFff
/* 80C3EE38  38 00 00 2C */	li r0, 0x2c
/* 80C3EE3C  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80C3EE40  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 80C3EE44  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C3EE48  38 A0 00 02 */	li r5, 2
/* 80C3EE4C  81 9E 09 B8 */	lwz r12, 0x9b8(r30)
/* 80C3EE50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C3EE54  7D 89 03 A6 */	mtctr r12
/* 80C3EE58  4E 80 04 21 */	bctrl 
/* 80C3EE5C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80C3EE60  4B 62 8A F4 */	b cM_rndF__Ff
/* 80C3EE64  FC 00 08 1E */	fctiwz f0, f1
/* 80C3EE68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C3EE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3EE70  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 80C3EE74  7F C3 F3 78 */	mr r3, r30
/* 80C3EE78  4B FF FA 71 */	bl daObj_Kbox_Execute__FP14obj_kbox_class
lbl_80C3EE7C:
/* 80C3EE7C  7F A3 EB 78 */	mr r3, r29
lbl_80C3EE80:
/* 80C3EE80  39 61 00 30 */	addi r11, r1, 0x30
/* 80C3EE84  4B 72 33 A0 */	b _restgpr_28
/* 80C3EE88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3EE8C  7C 08 03 A6 */	mtlr r0
/* 80C3EE90  38 21 00 30 */	addi r1, r1, 0x30
/* 80C3EE94  4E 80 00 20 */	blr 
