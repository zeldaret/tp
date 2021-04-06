lbl_806F9A00:
/* 806F9A00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F9A04  7C 08 02 A6 */	mflr r0
/* 806F9A08  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F9A0C  39 61 00 30 */	addi r11, r1, 0x30
/* 806F9A10  4B C6 87 CD */	bl _savegpr_29
/* 806F9A14  7C 7F 1B 78 */	mr r31, r3
/* 806F9A18  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806F9A1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806F9A20  40 82 00 E8 */	bne lbl_806F9B08
/* 806F9A24  7F E0 FB 79 */	or. r0, r31, r31
/* 806F9A28  41 82 00 D4 */	beq lbl_806F9AFC
/* 806F9A2C  7C 1E 03 78 */	mr r30, r0
/* 806F9A30  4B 91 F1 35 */	bl __ct__10fopAc_ac_cFv
/* 806F9A34  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806F9A38  4B BC 75 2D */	bl __ct__15Z2CreatureEnemyFv
/* 806F9A3C  38 7E 06 A4 */	addi r3, r30, 0x6a4
/* 806F9A40  4B 97 C4 6D */	bl __ct__12dBgS_AcchCirFv
/* 806F9A44  3B BE 06 E4 */	addi r29, r30, 0x6e4
/* 806F9A48  7F A3 EB 78 */	mr r3, r29
/* 806F9A4C  4B 97 C6 55 */	bl __ct__9dBgS_AcchFv
/* 806F9A50  3C 60 80 70 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806FA5A4@ha */
/* 806F9A54  38 63 A5 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806FA5A4@l */
/* 806F9A58  90 7D 00 10 */	stw r3, 0x10(r29)
/* 806F9A5C  38 03 00 0C */	addi r0, r3, 0xc
/* 806F9A60  90 1D 00 14 */	stw r0, 0x14(r29)
/* 806F9A64  38 03 00 18 */	addi r0, r3, 0x18
/* 806F9A68  90 1D 00 24 */	stw r0, 0x24(r29)
/* 806F9A6C  38 7D 00 14 */	addi r3, r29, 0x14
/* 806F9A70  4B 97 F3 F9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806F9A74  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806F9A78  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806F9A7C  90 1E 08 D4 */	stw r0, 0x8d4(r30)
/* 806F9A80  38 7E 08 D8 */	addi r3, r30, 0x8d8
/* 806F9A84  4B 98 9C DD */	bl __ct__10dCcD_GSttsFv
/* 806F9A88  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806F9A8C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806F9A90  90 7E 08 D4 */	stw r3, 0x8d4(r30)
/* 806F9A94  38 03 00 20 */	addi r0, r3, 0x20
/* 806F9A98  90 1E 08 D8 */	stw r0, 0x8d8(r30)
/* 806F9A9C  3B BE 08 F8 */	addi r29, r30, 0x8f8
/* 806F9AA0  7F A3 EB 78 */	mr r3, r29
/* 806F9AA4  4B 98 9F 85 */	bl __ct__12dCcD_GObjInfFv
/* 806F9AA8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806F9AAC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806F9AB0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 806F9AB4  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x806FA598@ha */
/* 806F9AB8  38 03 A5 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806FA598@l */
/* 806F9ABC  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 806F9AC0  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha /* 0x806FA58C@ha */
/* 806F9AC4  38 03 A5 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806FA58C@l */
/* 806F9AC8  90 1D 01 34 */	stw r0, 0x134(r29)
/* 806F9ACC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806F9AD0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806F9AD4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 806F9AD8  38 03 00 58 */	addi r0, r3, 0x58
/* 806F9ADC  90 1D 01 34 */	stw r0, 0x134(r29)
/* 806F9AE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806F9AE4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806F9AE8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 806F9AEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 806F9AF0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 806F9AF4  38 03 00 84 */	addi r0, r3, 0x84
/* 806F9AF8  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_806F9AFC:
/* 806F9AFC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806F9B00  60 00 00 08 */	ori r0, r0, 8
/* 806F9B04  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806F9B08:
/* 806F9B08  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806F9B0C  3C 80 80 70 */	lis r4, d_a_e_kg__stringBase0@ha /* 0x806FA46C@ha */
/* 806F9B10  38 84 A4 6C */	addi r4, r4, d_a_e_kg__stringBase0@l /* 0x806FA46C@l */
/* 806F9B14  4B 93 33 A9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806F9B18  7C 7E 1B 78 */	mr r30, r3
/* 806F9B1C  2C 1E 00 04 */	cmpwi r30, 4
/* 806F9B20  40 82 01 98 */	bne lbl_806F9CB8
/* 806F9B24  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806F9B28  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 806F9B2C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806F9B30  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 806F9B34  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 806F9B38  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806F9B3C  54 04 46 3E */	srwi r4, r0, 0x18
/* 806F9B40  2C 04 00 FF */	cmpwi r4, 0xff
/* 806F9B44  41 82 00 28 */	beq lbl_806F9B6C
/* 806F9B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F9B4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F9B50  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806F9B54  7C 05 07 74 */	extsb r5, r0
/* 806F9B58  4B 93 B8 09 */	bl isSwitch__10dSv_info_cCFii
/* 806F9B5C  2C 03 00 00 */	cmpwi r3, 0
/* 806F9B60  41 82 00 0C */	beq lbl_806F9B6C
/* 806F9B64  38 60 00 05 */	li r3, 5
/* 806F9B68  48 00 01 54 */	b lbl_806F9CBC
lbl_806F9B6C:
/* 806F9B6C  7F E3 FB 78 */	mr r3, r31
/* 806F9B70  3C 80 80 70 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806F9818@ha */
/* 806F9B74  38 84 98 18 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806F9818@l */
/* 806F9B78  38 A0 1F E0 */	li r5, 0x1fe0
/* 806F9B7C  4B 92 09 35 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806F9B80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F9B84  40 82 00 0C */	bne lbl_806F9B90
/* 806F9B88  38 60 00 05 */	li r3, 5
/* 806F9B8C  48 00 01 30 */	b lbl_806F9CBC
lbl_806F9B90:
/* 806F9B90  3C 60 80 70 */	lis r3, data_806FA5E8@ha /* 0x806FA5E8@ha */
/* 806F9B94  8C 03 A5 E8 */	lbzu r0, data_806FA5E8@l(r3)  /* 0x806FA5E8@l */
/* 806F9B98  28 00 00 00 */	cmplwi r0, 0
/* 806F9B9C  40 82 00 20 */	bne lbl_806F9BBC
/* 806F9BA0  38 00 00 01 */	li r0, 1
/* 806F9BA4  98 1F 0A 70 */	stb r0, 0xa70(r31)
/* 806F9BA8  98 03 00 00 */	stb r0, 0(r3)
/* 806F9BAC  38 00 FF FF */	li r0, -1
/* 806F9BB0  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FA5F8@ha */
/* 806F9BB4  38 63 A5 F8 */	addi r3, r3, l_HIO@l /* 0x806FA5F8@l */
/* 806F9BB8  98 03 00 04 */	stb r0, 4(r3)
lbl_806F9BBC:
/* 806F9BBC  38 00 00 04 */	li r0, 4
/* 806F9BC0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806F9BC4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806F9BC8  80 63 00 04 */	lwz r3, 4(r3)
/* 806F9BCC  38 03 00 24 */	addi r0, r3, 0x24
/* 806F9BD0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806F9BD4  38 00 00 50 */	li r0, 0x50
/* 806F9BD8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806F9BDC  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 806F9BE0  38 7F 08 BC */	addi r3, r31, 0x8bc
/* 806F9BE4  38 80 00 64 */	li r4, 0x64
/* 806F9BE8  38 A0 00 00 */	li r5, 0
/* 806F9BEC  7F E6 FB 78 */	mr r6, r31
/* 806F9BF0  4B 98 9C 71 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806F9BF4  38 7F 08 F8 */	addi r3, r31, 0x8f8
/* 806F9BF8  3C 80 80 70 */	lis r4, cc_sph_src@ha /* 0x806FA4D8@ha */
/* 806F9BFC  38 84 A4 D8 */	addi r4, r4, cc_sph_src@l /* 0x806FA4D8@l */
/* 806F9C00  4B 98 AE 35 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F9C04  38 1F 08 BC */	addi r0, r31, 0x8bc
/* 806F9C08  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 806F9C0C  38 00 00 00 */	li r0, 0
/* 806F9C10  90 01 00 08 */	stw r0, 8(r1)
/* 806F9C14  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 806F9C18  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806F9C1C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 806F9C20  7F E6 FB 78 */	mr r6, r31
/* 806F9C24  38 E0 00 01 */	li r7, 1
/* 806F9C28  39 1F 06 A4 */	addi r8, r31, 0x6a4
/* 806F9C2C  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 806F9C30  39 40 00 00 */	li r10, 0
/* 806F9C34  4B 97 C6 15 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806F9C38  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 806F9C3C  3C 80 80 70 */	lis r4, lit_3853@ha /* 0x806FA3E0@ha */
/* 806F9C40  C0 24 A3 E0 */	lfs f1, lit_3853@l(r4)  /* 0x806FA3E0@l */
/* 806F9C44  FC 40 08 90 */	fmr f2, f1
/* 806F9C48  4B 97 C3 11 */	bl SetWall__12dBgS_AcchCirFff
/* 806F9C4C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806F9C50  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806F9C54  38 BF 05 38 */	addi r5, r31, 0x538
/* 806F9C58  38 C0 00 03 */	li r6, 3
/* 806F9C5C  38 E0 00 01 */	li r7, 1
/* 806F9C60  4B BC 74 35 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806F9C64  38 00 00 01 */	li r0, 1
/* 806F9C68  98 1F 0A 4E */	stb r0, 0xa4e(r31)
/* 806F9C6C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806F9C70  90 7F 0A 38 */	stw r3, 0xa38(r31)
/* 806F9C74  3C 80 80 70 */	lis r4, d_a_e_kg__stringBase0@ha /* 0x806FA46C@ha */
/* 806F9C78  38 84 A4 6C */	addi r4, r4, d_a_e_kg__stringBase0@l /* 0x806FA46C@l */
/* 806F9C7C  4B BC 7F 15 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806F9C80  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 806F9C84  28 00 00 01 */	cmplwi r0, 1
/* 806F9C88  40 82 00 0C */	bne lbl_806F9C94
/* 806F9C8C  38 00 00 05 */	li r0, 5
/* 806F9C90  B0 1F 06 76 */	sth r0, 0x676(r31)
lbl_806F9C94:
/* 806F9C94  3C 60 80 70 */	lis r3, lit_4549@ha /* 0x806FA468@ha */
/* 806F9C98  C0 23 A4 68 */	lfs f1, lit_4549@l(r3)  /* 0x806FA468@l */
/* 806F9C9C  4B B6 DC B9 */	bl cM_rndF__Ff
/* 806F9CA0  FC 00 08 1E */	fctiwz f0, f1
/* 806F9CA4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806F9CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9CAC  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 806F9CB0  7F E3 FB 78 */	mr r3, r31
/* 806F9CB4  4B FF F8 1D */	bl daE_KG_Execute__FP10e_kg_class
lbl_806F9CB8:
/* 806F9CB8  7F C3 F3 78 */	mr r3, r30
lbl_806F9CBC:
/* 806F9CBC  39 61 00 30 */	addi r11, r1, 0x30
/* 806F9CC0  4B C6 85 69 */	bl _restgpr_29
/* 806F9CC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F9CC8  7C 08 03 A6 */	mtlr r0
/* 806F9CCC  38 21 00 30 */	addi r1, r1, 0x30
/* 806F9CD0  4E 80 00 20 */	blr 
