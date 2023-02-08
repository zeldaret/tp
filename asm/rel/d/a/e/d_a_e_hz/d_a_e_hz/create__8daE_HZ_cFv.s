lbl_806EFC18:
/* 806EFC18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806EFC1C  7C 08 02 A6 */	mflr r0
/* 806EFC20  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EFC24  39 61 00 20 */	addi r11, r1, 0x20
/* 806EFC28  4B C7 25 B1 */	bl _savegpr_28
/* 806EFC2C  7C 7F 1B 78 */	mr r31, r3
/* 806EFC30  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EFC34  3B C4 08 60 */	addi r30, r4, lit_3966@l /* 0x806F0860@l */
/* 806EFC38  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806EFC3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806EFC40  40 82 00 D8 */	bne lbl_806EFD18
/* 806EFC44  7F E0 FB 79 */	or. r0, r31, r31
/* 806EFC48  41 82 00 C4 */	beq lbl_806EFD0C
/* 806EFC4C  7C 1C 03 78 */	mr r28, r0
/* 806EFC50  4B 92 8F 15 */	bl __ct__10fopAc_ac_cFv
/* 806EFC54  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 806EFC58  4B BD 13 0D */	bl __ct__15Z2CreatureEnemyFv
/* 806EFC5C  3B BC 06 F8 */	addi r29, r28, 0x6f8
/* 806EFC60  7F A3 EB 78 */	mr r3, r29
/* 806EFC64  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 806EFC68  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 806EFC6C  4B C3 5A 59 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 806EFC70  38 7D 00 74 */	addi r3, r29, 0x74
/* 806EFC74  3C 80 80 6F */	lis r4, __ct__11J3DLightObjFv@ha /* 0x806F02C8@ha */
/* 806EFC78  38 84 02 C8 */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x806F02C8@l */
/* 806EFC7C  38 A0 00 00 */	li r5, 0
/* 806EFC80  38 C0 00 74 */	li r6, 0x74
/* 806EFC84  38 E0 00 06 */	li r7, 6
/* 806EFC88  4B C7 20 D9 */	bl __construct_array
/* 806EFC8C  38 7C 0A B8 */	addi r3, r28, 0xab8
/* 806EFC90  4B 98 62 1D */	bl __ct__12dBgS_AcchCirFv
/* 806EFC94  3B BC 0A F8 */	addi r29, r28, 0xaf8
/* 806EFC98  7F A3 EB 78 */	mr r3, r29
/* 806EFC9C  4B 98 64 05 */	bl __ct__9dBgS_AcchFv
/* 806EFCA0  3C 60 80 6F */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806F0AF4@ha */
/* 806EFCA4  38 63 0A F4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806F0AF4@l */
/* 806EFCA8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 806EFCAC  38 03 00 0C */	addi r0, r3, 0xc
/* 806EFCB0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 806EFCB4  38 03 00 18 */	addi r0, r3, 0x18
/* 806EFCB8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 806EFCBC  38 7D 00 14 */	addi r3, r29, 0x14
/* 806EFCC0  4B 98 91 A9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806EFCC4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806EFCC8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806EFCCC  90 1C 0C E8 */	stw r0, 0xce8(r28)
/* 806EFCD0  38 7C 0C EC */	addi r3, r28, 0xcec
/* 806EFCD4  4B 99 3A 8D */	bl __ct__10dCcD_GSttsFv
/* 806EFCD8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806EFCDC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806EFCE0  90 7C 0C E8 */	stw r3, 0xce8(r28)
/* 806EFCE4  38 03 00 20 */	addi r0, r3, 0x20
/* 806EFCE8  90 1C 0C EC */	stw r0, 0xcec(r28)
/* 806EFCEC  38 7C 0D 0C */	addi r3, r28, 0xd0c
/* 806EFCF0  3C 80 80 6F */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806F0078@ha */
/* 806EFCF4  38 84 00 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806F0078@l */
/* 806EFCF8  3C A0 80 6F */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806EFFAC@ha */
/* 806EFCFC  38 A5 FF AC */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806EFFAC@l */
/* 806EFD00  38 C0 01 38 */	li r6, 0x138
/* 806EFD04  38 E0 00 04 */	li r7, 4
/* 806EFD08  4B C7 20 59 */	bl __construct_array
lbl_806EFD0C:
/* 806EFD0C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806EFD10  60 00 00 08 */	ori r0, r0, 8
/* 806EFD14  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806EFD18:
/* 806EFD18  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 806EFD1C  88 9F 04 BA */	lbz r4, 0x4ba(r31)
/* 806EFD20  38 A0 00 FF */	li r5, 0xff
/* 806EFD24  4B AB 8B C9 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 806EFD28  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806EFD2C  3C 80 80 6F */	lis r4, d_a_e_hz__stringBase0@ha /* 0x806F095C@ha */
/* 806EFD30  38 84 09 5C */	addi r4, r4, d_a_e_hz__stringBase0@l /* 0x806F095C@l */
/* 806EFD34  4B 93 D1 89 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806EFD38  2C 03 00 04 */	cmpwi r3, 4
/* 806EFD3C  41 82 00 08 */	beq lbl_806EFD44
/* 806EFD40  48 00 02 54 */	b lbl_806EFF94
lbl_806EFD44:
/* 806EFD44  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806EFD48  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806EFD4C  28 00 00 01 */	cmplwi r0, 1
/* 806EFD50  40 82 00 18 */	bne lbl_806EFD68
/* 806EFD54  3C 60 80 6F */	lis r3, d_a_e_hz__stringBase0@ha /* 0x806F095C@ha */
/* 806EFD58  38 63 09 5C */	addi r3, r3, d_a_e_hz__stringBase0@l /* 0x806F095C@l */
/* 806EFD5C  38 03 00 0B */	addi r0, r3, 0xb
/* 806EFD60  90 1F 06 BC */	stw r0, 0x6bc(r31)
/* 806EFD64  48 00 00 14 */	b lbl_806EFD78
lbl_806EFD68:
/* 806EFD68  3C 60 80 6F */	lis r3, d_a_e_hz__stringBase0@ha /* 0x806F095C@ha */
/* 806EFD6C  38 63 09 5C */	addi r3, r3, d_a_e_hz__stringBase0@l /* 0x806F095C@l */
/* 806EFD70  38 03 00 05 */	addi r0, r3, 5
/* 806EFD74  90 1F 06 BC */	stw r0, 0x6bc(r31)
lbl_806EFD78:
/* 806EFD78  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 806EFD7C  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 806EFD80  4B 93 D1 3D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806EFD84  7C 7D 1B 78 */	mr r29, r3
/* 806EFD88  2C 1D 00 04 */	cmpwi r29, 4
/* 806EFD8C  40 82 02 04 */	bne lbl_806EFF90
/* 806EFD90  7F E3 FB 78 */	mr r3, r31
/* 806EFD94  3C 80 80 6F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806EFB34@ha */
/* 806EFD98  38 84 FB 34 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806EFB34@l */
/* 806EFD9C  38 A0 2C 20 */	li r5, 0x2c20
/* 806EFDA0  4B 92 A7 11 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806EFDA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EFDA8  40 82 00 0C */	bne lbl_806EFDB4
/* 806EFDAC  38 60 00 05 */	li r3, 5
/* 806EFDB0  48 00 01 E4 */	b lbl_806EFF94
lbl_806EFDB4:
/* 806EFDB4  80 9F 0A B4 */	lwz r4, 0xab4(r31)
/* 806EFDB8  28 04 00 00 */	cmplwi r4, 0
/* 806EFDBC  41 82 00 28 */	beq lbl_806EFDE4
/* 806EFDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EFDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EFDC8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EFDCC  7F E5 FB 78 */	mr r5, r31
/* 806EFDD0  4B 98 4C 39 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 806EFDD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EFDD8  41 82 00 0C */	beq lbl_806EFDE4
/* 806EFDDC  38 60 00 05 */	li r3, 5
/* 806EFDE0  48 00 01 B4 */	b lbl_806EFF94
lbl_806EFDE4:
/* 806EFDE4  3C 60 80 6F */	lis r3, struct_806F0B6C+0x1@ha /* 0x806F0B6D@ha */
/* 806EFDE8  8C 03 0B 6D */	lbzu r0, struct_806F0B6C+0x1@l(r3)  /* 0x806F0B6D@l */
/* 806EFDEC  28 00 00 00 */	cmplwi r0, 0
/* 806EFDF0  40 82 00 20 */	bne lbl_806EFE10
/* 806EFDF4  38 00 00 01 */	li r0, 1
/* 806EFDF8  98 1F 12 34 */	stb r0, 0x1234(r31)
/* 806EFDFC  98 03 00 00 */	stb r0, 0(r3)
/* 806EFE00  38 00 FF FF */	li r0, -1
/* 806EFE04  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EFE08  38 63 0B 7C */	addi r3, r3, l_HIO@l /* 0x806F0B7C@l */
/* 806EFE0C  98 03 00 04 */	stb r0, 4(r3)
lbl_806EFE10:
/* 806EFE10  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EFE14  80 63 00 04 */	lwz r3, 4(r3)
/* 806EFE18  38 03 00 24 */	addi r0, r3, 0x24
/* 806EFE1C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806EFE20  7F E3 FB 78 */	mr r3, r31
/* 806EFE24  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 806EFE28  FC 40 08 90 */	fmr f2, f1
/* 806EFE2C  FC 60 08 90 */	fmr f3, f1
/* 806EFE30  4B 92 A6 F9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806EFE34  7F E3 FB 78 */	mr r3, r31
/* 806EFE38  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 806EFE3C  FC 40 08 90 */	fmr f2, f1
/* 806EFE40  FC 60 08 90 */	fmr f3, f1
/* 806EFE44  4B 92 A6 F5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806EFE48  38 00 00 00 */	li r0, 0
/* 806EFE4C  90 01 00 08 */	stw r0, 8(r1)
/* 806EFE50  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 806EFE54  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806EFE58  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 806EFE5C  7F E6 FB 78 */	mr r6, r31
/* 806EFE60  38 E0 00 01 */	li r7, 1
/* 806EFE64  39 1F 0A B8 */	addi r8, r31, 0xab8
/* 806EFE68  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 806EFE6C  39 40 00 00 */	li r10, 0
/* 806EFE70  4B 98 63 D9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806EFE74  38 7F 0A B8 */	addi r3, r31, 0xab8
/* 806EFE78  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 806EFE7C  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 806EFE80  4B 98 60 D9 */	bl SetWall__12dBgS_AcchCirFff
/* 806EFE84  38 00 00 32 */	li r0, 0x32
/* 806EFE88  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806EFE8C  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 806EFE90  38 7F 0C D0 */	addi r3, r31, 0xcd0
/* 806EFE94  38 80 00 FF */	li r4, 0xff
/* 806EFE98  38 A0 00 00 */	li r5, 0
/* 806EFE9C  7F E6 FB 78 */	mr r6, r31
/* 806EFEA0  4B 99 39 C1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806EFEA4  38 7F 0D 0C */	addi r3, r31, 0xd0c
/* 806EFEA8  3C 80 80 6F */	lis r4, cc_sph_src@ha /* 0x806F09E8@ha */
/* 806EFEAC  38 84 09 E8 */	addi r4, r4, cc_sph_src@l /* 0x806F09E8@l */
/* 806EFEB0  4B 99 4B 85 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806EFEB4  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 806EFEB8  3C 80 80 6F */	lis r4, cc_sph_src2@ha /* 0x806F0A28@ha */
/* 806EFEBC  38 84 0A 28 */	addi r4, r4, cc_sph_src2@l /* 0x806F0A28@l */
/* 806EFEC0  4B 99 4B 75 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806EFEC4  38 7F 0F 7C */	addi r3, r31, 0xf7c
/* 806EFEC8  3C 80 80 6F */	lis r4, cc_sph_src2@ha /* 0x806F0A28@ha */
/* 806EFECC  38 84 0A 28 */	addi r4, r4, cc_sph_src2@l /* 0x806F0A28@l */
/* 806EFED0  4B 99 4B 65 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806EFED4  38 7F 10 B4 */	addi r3, r31, 0x10b4
/* 806EFED8  3C 80 80 6F */	lis r4, cc_sph_src2@ha /* 0x806F0A28@ha */
/* 806EFEDC  38 84 0A 28 */	addi r4, r4, cc_sph_src2@l /* 0x806F0A28@l */
/* 806EFEE0  4B 99 4B 55 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806EFEE4  38 1F 0C D0 */	addi r0, r31, 0xcd0
/* 806EFEE8  90 1F 0D 50 */	stw r0, 0xd50(r31)
/* 806EFEEC  90 1F 0E 88 */	stw r0, 0xe88(r31)
/* 806EFEF0  90 1F 0F C0 */	stw r0, 0xfc0(r31)
/* 806EFEF4  90 1F 10 F8 */	stw r0, 0x10f8(r31)
/* 806EFEF8  38 00 00 04 */	li r0, 4
/* 806EFEFC  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806EFF00  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EFF04  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806EFF08  38 BF 05 38 */	addi r5, r31, 0x538
/* 806EFF0C  38 C0 00 03 */	li r6, 3
/* 806EFF10  38 E0 00 01 */	li r7, 1
/* 806EFF14  4B BD 11 81 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806EFF18  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EFF1C  3C 80 80 6F */	lis r4, d_a_e_hz__stringBase0@ha /* 0x806F095C@ha */
/* 806EFF20  38 84 09 5C */	addi r4, r4, d_a_e_hz__stringBase0@l /* 0x806F095C@l */
/* 806EFF24  38 84 00 12 */	addi r4, r4, 0x12
/* 806EFF28  4B BD 1C 69 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806EFF2C  38 1F 05 C8 */	addi r0, r31, 0x5c8
/* 806EFF30  90 1F 11 F4 */	stw r0, 0x11f4(r31)
/* 806EFF34  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 806EFF38  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 806EFF3C  7F E3 FB 78 */	mr r3, r31
/* 806EFF40  4B FF FC 15 */	bl setInitPos__8daE_HZ_cFv
/* 806EFF44  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806EFF48  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 806EFF4C  88 9F 06 EB */	lbz r4, 0x6eb(r31)
/* 806EFF50  28 04 00 FF */	cmplwi r4, 0xff
/* 806EFF54  41 82 00 34 */	beq lbl_806EFF88
/* 806EFF58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EFF5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EFF60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806EFF64  7C 05 07 74 */	extsb r5, r0
/* 806EFF68  4B 94 53 F9 */	bl isSwitch__10dSv_info_cCFii
/* 806EFF6C  2C 03 00 00 */	cmpwi r3, 0
/* 806EFF70  41 82 00 18 */	beq lbl_806EFF88
/* 806EFF74  7F E3 FB 78 */	mr r3, r31
/* 806EFF78  38 80 00 0B */	li r4, 0xb
/* 806EFF7C  4B FF AB 61 */	bl setActionMode__8daE_HZ_cFi
/* 806EFF80  38 00 00 01 */	li r0, 1
/* 806EFF84  90 1F 06 C8 */	stw r0, 0x6c8(r31)
lbl_806EFF88:
/* 806EFF88  7F E3 FB 78 */	mr r3, r31
/* 806EFF8C  4B FF F7 01 */	bl daE_HZ_Execute__FP8daE_HZ_c
lbl_806EFF90:
/* 806EFF90  7F A3 EB 78 */	mr r3, r29
lbl_806EFF94:
/* 806EFF94  39 61 00 20 */	addi r11, r1, 0x20
/* 806EFF98  4B C7 22 8D */	bl _restgpr_28
/* 806EFF9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EFFA0  7C 08 03 A6 */	mtlr r0
/* 806EFFA4  38 21 00 20 */	addi r1, r1, 0x20
/* 806EFFA8  4E 80 00 20 */	blr 
