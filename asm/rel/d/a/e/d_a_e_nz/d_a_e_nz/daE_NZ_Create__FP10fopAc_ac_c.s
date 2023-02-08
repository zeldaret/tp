lbl_8072B7C4:
/* 8072B7C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8072B7C8  7C 08 02 A6 */	mflr r0
/* 8072B7CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072B7D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8072B7D4  4B C3 6A 09 */	bl _savegpr_29
/* 8072B7D8  7C 7F 1B 78 */	mr r31, r3
/* 8072B7DC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8072B7E0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8072B7E4  40 82 00 E8 */	bne lbl_8072B8CC
/* 8072B7E8  7F E0 FB 79 */	or. r0, r31, r31
/* 8072B7EC  41 82 00 D4 */	beq lbl_8072B8C0
/* 8072B7F0  7C 1E 03 78 */	mr r30, r0
/* 8072B7F4  4B 8E D3 71 */	bl __ct__10fopAc_ac_cFv
/* 8072B7F8  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 8072B7FC  4B B9 57 69 */	bl __ct__15Z2CreatureEnemyFv
/* 8072B800  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 8072B804  4B 94 A6 A9 */	bl __ct__12dBgS_AcchCirFv
/* 8072B808  3B BE 06 F0 */	addi r29, r30, 0x6f0
/* 8072B80C  7F A3 EB 78 */	mr r3, r29
/* 8072B810  4B 94 A8 91 */	bl __ct__9dBgS_AcchFv
/* 8072B814  3C 60 80 73 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8072C3B0@ha */
/* 8072B818  38 63 C3 B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8072C3B0@l */
/* 8072B81C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8072B820  38 03 00 0C */	addi r0, r3, 0xc
/* 8072B824  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8072B828  38 03 00 18 */	addi r0, r3, 0x18
/* 8072B82C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8072B830  38 7D 00 14 */	addi r3, r29, 0x14
/* 8072B834  4B 94 D6 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8072B838  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8072B83C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8072B840  90 1E 08 E4 */	stw r0, 0x8e4(r30)
/* 8072B844  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 8072B848  4B 95 7F 19 */	bl __ct__10dCcD_GSttsFv
/* 8072B84C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8072B850  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8072B854  90 7E 08 E4 */	stw r3, 0x8e4(r30)
/* 8072B858  38 03 00 20 */	addi r0, r3, 0x20
/* 8072B85C  90 1E 08 E8 */	stw r0, 0x8e8(r30)
/* 8072B860  3B BE 09 08 */	addi r29, r30, 0x908
/* 8072B864  7F A3 EB 78 */	mr r3, r29
/* 8072B868  4B 95 81 C1 */	bl __ct__12dCcD_GObjInfFv
/* 8072B86C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8072B870  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8072B874  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8072B878  3C 60 80 73 */	lis r3, __vt__8cM3dGAab@ha /* 0x8072C3A4@ha */
/* 8072B87C  38 03 C3 A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8072C3A4@l */
/* 8072B880  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8072B884  3C 60 80 73 */	lis r3, __vt__8cM3dGSph@ha /* 0x8072C398@ha */
/* 8072B888  38 03 C3 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8072C398@l */
/* 8072B88C  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8072B890  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8072B894  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8072B898  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8072B89C  38 03 00 58 */	addi r0, r3, 0x58
/* 8072B8A0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8072B8A4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8072B8A8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8072B8AC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8072B8B0  38 03 00 2C */	addi r0, r3, 0x2c
/* 8072B8B4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8072B8B8  38 03 00 84 */	addi r0, r3, 0x84
/* 8072B8BC  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_8072B8C0:
/* 8072B8C0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8072B8C4  60 00 00 08 */	ori r0, r0, 8
/* 8072B8C8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8072B8CC:
/* 8072B8CC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8072B8D0  3C 80 80 73 */	lis r4, d_a_e_nz__stringBase0@ha /* 0x8072C240@ha */
/* 8072B8D4  38 84 C2 40 */	addi r4, r4, d_a_e_nz__stringBase0@l /* 0x8072C240@l */
/* 8072B8D8  4B 90 15 E5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8072B8DC  7C 7E 1B 78 */	mr r30, r3
/* 8072B8E0  2C 1E 00 04 */	cmpwi r30, 4
/* 8072B8E4  40 82 01 74 */	bne lbl_8072BA58
/* 8072B8E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8072B8EC  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 8072B8F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8072B8F4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8072B8F8  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8072B8FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8072B900  54 00 46 3E */	srwi r0, r0, 0x18
/* 8072B904  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8072B908  7F E3 FB 78 */	mr r3, r31
/* 8072B90C  3C 80 80 73 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8072B680@ha */
/* 8072B910  38 84 B6 80 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8072B680@l */
/* 8072B914  38 A0 17 E0 */	li r5, 0x17e0
/* 8072B918  4B 8E EB 99 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8072B91C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072B920  40 82 00 0C */	bne lbl_8072B92C
/* 8072B924  38 60 00 05 */	li r3, 5
/* 8072B928  48 00 01 34 */	b lbl_8072BA5C
lbl_8072B92C:
/* 8072B92C  3C 60 80 73 */	lis r3, struct_8072C424+0x1@ha /* 0x8072C425@ha */
/* 8072B930  8C 03 C4 25 */	lbzu r0, struct_8072C424+0x1@l(r3)  /* 0x8072C425@l */
/* 8072B934  28 00 00 00 */	cmplwi r0, 0
/* 8072B938  40 82 00 20 */	bne lbl_8072B958
/* 8072B93C  38 00 00 01 */	li r0, 1
/* 8072B940  98 1F 0A 84 */	stb r0, 0xa84(r31)
/* 8072B944  98 03 00 00 */	stb r0, 0(r3)
/* 8072B948  38 00 FF FF */	li r0, -1
/* 8072B94C  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x8072C434@ha */
/* 8072B950  38 63 C4 34 */	addi r3, r3, l_HIO@l /* 0x8072C434@l */
/* 8072B954  98 03 00 04 */	stb r0, 4(r3)
lbl_8072B958:
/* 8072B958  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8072B95C  80 63 00 04 */	lwz r3, 4(r3)
/* 8072B960  38 03 00 24 */	addi r0, r3, 0x24
/* 8072B964  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8072B968  38 00 00 0A */	li r0, 0xa
/* 8072B96C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8072B970  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8072B974  38 7F 08 CC */	addi r3, r31, 0x8cc
/* 8072B978  38 80 00 64 */	li r4, 0x64
/* 8072B97C  38 A0 00 00 */	li r5, 0
/* 8072B980  7F E6 FB 78 */	mr r6, r31
/* 8072B984  4B 95 7E DD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8072B988  38 7F 09 08 */	addi r3, r31, 0x908
/* 8072B98C  3C 80 80 73 */	lis r4, cc_sph_src@ha /* 0x8072C2E4@ha */
/* 8072B990  38 84 C2 E4 */	addi r4, r4, cc_sph_src@l /* 0x8072C2E4@l */
/* 8072B994  4B 95 90 A1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8072B998  38 1F 08 CC */	addi r0, r31, 0x8cc
/* 8072B99C  90 1F 09 4C */	stw r0, 0x94c(r31)
/* 8072B9A0  38 00 00 00 */	li r0, 0
/* 8072B9A4  90 01 00 08 */	stw r0, 8(r1)
/* 8072B9A8  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 8072B9AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8072B9B0  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8072B9B4  7F E6 FB 78 */	mr r6, r31
/* 8072B9B8  38 E0 00 01 */	li r7, 1
/* 8072B9BC  39 1F 06 B0 */	addi r8, r31, 0x6b0
/* 8072B9C0  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8072B9C4  39 40 00 00 */	li r10, 0
/* 8072B9C8  4B 94 A8 81 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8072B9CC  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 8072B9D0  3C 80 80 73 */	lis r4, lit_3814@ha /* 0x8072C1BC@ha */
/* 8072B9D4  C0 24 C1 BC */	lfs f1, lit_3814@l(r4)  /* 0x8072C1BC@l */
/* 8072B9D8  FC 40 08 90 */	fmr f2, f1
/* 8072B9DC  4B 94 A5 7D */	bl SetWall__12dBgS_AcchCirFff
/* 8072B9E0  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 8072B9E4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8072B9E8  38 BF 05 38 */	addi r5, r31, 0x538
/* 8072B9EC  38 C0 00 03 */	li r6, 3
/* 8072B9F0  38 E0 00 01 */	li r7, 1
/* 8072B9F4  4B B9 56 A1 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8072B9F8  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 8072B9FC  3C 80 80 73 */	lis r4, d_a_e_nz__stringBase0@ha /* 0x8072C240@ha */
/* 8072BA00  38 84 C2 40 */	addi r4, r4, d_a_e_nz__stringBase0@l /* 0x8072C240@l */
/* 8072BA04  38 84 00 05 */	addi r4, r4, 5
/* 8072BA08  4B B9 61 89 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8072BA0C  38 1F 05 F4 */	addi r0, r31, 0x5f4
/* 8072BA10  90 1F 0A 48 */	stw r0, 0xa48(r31)
/* 8072BA14  38 00 00 01 */	li r0, 1
/* 8072BA18  98 1F 0A 5E */	stb r0, 0xa5e(r31)
/* 8072BA1C  3C 60 80 73 */	lis r3, lit_3937@ha /* 0x8072C1CC@ha */
/* 8072BA20  C0 23 C1 CC */	lfs f1, lit_3937@l(r3)  /* 0x8072C1CC@l */
/* 8072BA24  4B B3 BF 31 */	bl cM_rndF__Ff
/* 8072BA28  FC 00 08 1E */	fctiwz f0, f1
/* 8072BA2C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8072BA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BA34  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8072BA38  7F E3 FB 78 */	mr r3, r31
/* 8072BA3C  4B FF F6 61 */	bl daE_NZ_Execute__FP10e_nz_class
/* 8072BA40  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8072BA44  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8072BA48  38 80 00 00 */	li r4, 0
/* 8072BA4C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8072BA50  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8072BA54  4B A7 7D 71 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_8072BA58:
/* 8072BA58  7F C3 F3 78 */	mr r3, r30
lbl_8072BA5C:
/* 8072BA5C  39 61 00 30 */	addi r11, r1, 0x30
/* 8072BA60  4B C3 67 C9 */	bl _restgpr_29
/* 8072BA64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8072BA68  7C 08 03 A6 */	mtlr r0
/* 8072BA6C  38 21 00 30 */	addi r1, r1, 0x30
/* 8072BA70  4E 80 00 20 */	blr 
