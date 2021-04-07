lbl_80C4CB08:
/* 80C4CB08  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80C4CB0C  7C 08 02 A6 */	mflr r0
/* 80C4CB10  90 01 01 34 */	stw r0, 0x134(r1)
/* 80C4CB14  39 61 01 30 */	addi r11, r1, 0x130
/* 80C4CB18  4B 71 56 B1 */	bl _savegpr_24
/* 80C4CB1C  7C 7A 1B 78 */	mr r26, r3
/* 80C4CB20  3C 80 80 C5 */	lis r4, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4CB24  3B E4 D4 90 */	addi r31, r4, lit_3775@l /* 0x80C4D490@l */
/* 80C4CB28  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C4CB2C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C4CB30  40 82 00 FC */	bne lbl_80C4CC2C
/* 80C4CB34  7F 40 D3 79 */	or. r0, r26, r26
/* 80C4CB38  41 82 00 E8 */	beq lbl_80C4CC20
/* 80C4CB3C  7C 1B 03 78 */	mr r27, r0
/* 80C4CB40  4B 51 14 D1 */	bl __ct__9dInsect_cFv
/* 80C4CB44  3C 60 80 C5 */	lis r3, __vt__10daObjKUW_c@ha /* 0x80C4D628@ha */
/* 80C4CB48  38 03 D6 28 */	addi r0, r3, __vt__10daObjKUW_c@l /* 0x80C4D628@l */
/* 80C4CB4C  90 1B 05 68 */	stw r0, 0x568(r27)
/* 80C4CB50  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C4CB54  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C4CB58  90 1B 05 A8 */	stw r0, 0x5a8(r27)
/* 80C4CB5C  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 80C4CB60  4B 43 6C 01 */	bl __ct__10dCcD_GSttsFv
/* 80C4CB64  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C4CB68  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C4CB6C  90 7B 05 A8 */	stw r3, 0x5a8(r27)
/* 80C4CB70  38 03 00 20 */	addi r0, r3, 0x20
/* 80C4CB74  90 1B 05 AC */	stw r0, 0x5ac(r27)
/* 80C4CB78  3B 1B 05 CC */	addi r24, r27, 0x5cc
/* 80C4CB7C  7F 03 C3 78 */	mr r3, r24
/* 80C4CB80  4B 43 6E A9 */	bl __ct__12dCcD_GObjInfFv
/* 80C4CB84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C4CB88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C4CB8C  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C4CB90  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C4D61C@ha */
/* 80C4CB94  38 03 D6 1C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C4D61C@l */
/* 80C4CB98  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80C4CB9C  3C 60 80 C5 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C4D610@ha */
/* 80C4CBA0  38 03 D6 10 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C4D610@l */
/* 80C4CBA4  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C4CBA8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C4CBAC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C4CBB0  90 78 01 20 */	stw r3, 0x120(r24)
/* 80C4CBB4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C4CBB8  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C4CBBC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C4CBC0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C4CBC4  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80C4CBC8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C4CBCC  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C4CBD0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C4CBD4  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C4CBD8  38 7B 07 10 */	addi r3, r27, 0x710
/* 80C4CBDC  4B 42 92 D1 */	bl __ct__12dBgS_AcchCirFv
/* 80C4CBE0  3B 1B 07 50 */	addi r24, r27, 0x750
/* 80C4CBE4  7F 03 C3 78 */	mr r3, r24
/* 80C4CBE8  4B 42 94 B9 */	bl __ct__9dBgS_AcchFv
/* 80C4CBEC  3C 60 80 C5 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C4D5EC@ha */
/* 80C4CBF0  38 63 D5 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C4D5EC@l */
/* 80C4CBF4  90 78 00 10 */	stw r3, 0x10(r24)
/* 80C4CBF8  38 03 00 0C */	addi r0, r3, 0xc
/* 80C4CBFC  90 18 00 14 */	stw r0, 0x14(r24)
/* 80C4CC00  38 03 00 18 */	addi r0, r3, 0x18
/* 80C4CC04  90 18 00 24 */	stw r0, 0x24(r24)
/* 80C4CC08  38 78 00 14 */	addi r3, r24, 0x14
/* 80C4CC0C  4B 42 C2 5D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C4CC10  38 7B 09 28 */	addi r3, r27, 0x928
/* 80C4CC14  4B 42 A9 69 */	bl __ct__11dBgS_GndChkFv
/* 80C4CC18  38 7B 09 C4 */	addi r3, r27, 0x9c4
/* 80C4CC1C  4B 67 37 AD */	bl __ct__10Z2CreatureFv
lbl_80C4CC20:
/* 80C4CC20  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80C4CC24  60 00 00 08 */	ori r0, r0, 8
/* 80C4CC28  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80C4CC2C:
/* 80C4CC2C  38 7A 0A 5C */	addi r3, r26, 0xa5c
/* 80C4CC30  3C 80 80 C5 */	lis r4, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4CC34  38 84 D5 8C */	addi r4, r4, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4CC38  4B 3E 02 85 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C4CC3C  7C 7C 1B 78 */	mr r28, r3
/* 80C4CC40  2C 1C 00 04 */	cmpwi r28, 4
/* 80C4CC44  40 82 06 80 */	bne lbl_80C4D2C4
/* 80C4CC48  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C4CC4C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C4CC50  98 1A 09 C0 */	stb r0, 0x9c0(r26)
/* 80C4CC54  88 1A 09 C0 */	lbz r0, 0x9c0(r26)
/* 80C4CC58  28 00 00 02 */	cmplwi r0, 2
/* 80C4CC5C  40 82 00 28 */	bne lbl_80C4CC84
/* 80C4CC60  38 00 00 00 */	li r0, 0
/* 80C4CC64  98 1A 05 6C */	stb r0, 0x56c(r26)
/* 80C4CC68  A8 7A 04 E4 */	lha r3, 0x4e4(r26)
/* 80C4CC6C  38 03 E0 00 */	addi r0, r3, -8192
/* 80C4CC70  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80C4CC74  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80C4CC78  60 00 40 00 */	ori r0, r0, 0x4000
/* 80C4CC7C  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 80C4CC80  48 00 00 0C */	b lbl_80C4CC8C
lbl_80C4CC84:
/* 80C4CC84  38 00 00 01 */	li r0, 1
/* 80C4CC88  98 1A 05 6D */	stb r0, 0x56d(r26)
lbl_80C4CC8C:
/* 80C4CC8C  38 00 00 5D */	li r0, 0x5d
/* 80C4CC90  98 1A 05 48 */	stb r0, 0x548(r26)
/* 80C4CC94  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C4CC98  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80C4CC9C  98 1A 05 81 */	stb r0, 0x581(r26)
/* 80C4CCA0  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C4CCA4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80C4CCA8  7C 03 00 AE */	lbzx r0, r3, r0
/* 80C4CCAC  98 1A 05 80 */	stb r0, 0x580(r26)
/* 80C4CCB0  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C4CCB4  54 00 08 3C */	slwi r0, r0, 1
/* 80C4CCB8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80C4CCBC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80C4CCC0  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 80C4CCC4  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C4CCC8  28 00 00 01 */	cmplwi r0, 1
/* 80C4CCCC  40 82 00 28 */	bne lbl_80C4CCF4
/* 80C4CCD0  3C 60 80 C5 */	lis r3, l_HIO@ha /* 0x80C4D670@ha */
/* 80C4CCD4  38 63 D6 70 */	addi r3, r3, l_HIO@l /* 0x80C4D670@l */
/* 80C4CCD8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C4CCDC  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C4CCE0  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C4CCE4  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80C4CCE8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4CCEC  D0 1A 09 AC */	stfs f0, 0x9ac(r26)
/* 80C4CCF0  48 00 00 2C */	b lbl_80C4CD1C
lbl_80C4CCF4:
/* 80C4CCF4  28 00 00 00 */	cmplwi r0, 0
/* 80C4CCF8  40 82 00 24 */	bne lbl_80C4CD1C
/* 80C4CCFC  3C 60 80 C5 */	lis r3, l_HIO@ha /* 0x80C4D670@ha */
/* 80C4CD00  38 63 D6 70 */	addi r3, r3, l_HIO@l /* 0x80C4D670@l */
/* 80C4CD04  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C4CD08  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C4CD0C  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C4CD10  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80C4CD14  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80C4CD18  D0 1A 09 AC */	stfs f0, 0x9ac(r26)
lbl_80C4CD1C:
/* 80C4CD1C  7F 43 D3 78 */	mr r3, r26
/* 80C4CD20  4B FF FC 3D */	bl CreateChk__10daObjKUW_cFv
/* 80C4CD24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4CD28  40 82 00 0C */	bne lbl_80C4CD34
/* 80C4CD2C  38 60 00 05 */	li r3, 5
/* 80C4CD30  48 00 05 98 */	b lbl_80C4D2C8
lbl_80C4CD34:
/* 80C4CD34  7F 43 D3 78 */	mr r3, r26
/* 80C4CD38  3C 80 80 C5 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C4A2E0@ha */
/* 80C4CD3C  38 84 A2 E0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C4A2E0@l */
/* 80C4CD40  38 A0 0B 50 */	li r5, 0xb50
/* 80C4CD44  4B 3C D7 6D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C4CD48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4CD4C  40 82 00 0C */	bne lbl_80C4CD58
/* 80C4CD50  38 60 00 05 */	li r3, 5
/* 80C4CD54  48 00 05 74 */	b lbl_80C4D2C8
lbl_80C4CD58:
/* 80C4CD58  3C 60 80 C5 */	lis r3, data_80C4D660@ha /* 0x80C4D660@ha */
/* 80C4CD5C  8C 03 D6 60 */	lbzu r0, data_80C4D660@l(r3)  /* 0x80C4D660@l */
/* 80C4CD60  28 00 00 00 */	cmplwi r0, 0
/* 80C4CD64  40 82 00 20 */	bne lbl_80C4CD84
/* 80C4CD68  38 00 00 01 */	li r0, 1
/* 80C4CD6C  98 03 00 00 */	stb r0, 0(r3)
/* 80C4CD70  98 1A 0A 64 */	stb r0, 0xa64(r26)
/* 80C4CD74  38 00 FF FF */	li r0, -1
/* 80C4CD78  3C 60 80 C5 */	lis r3, l_HIO@ha /* 0x80C4D670@ha */
/* 80C4CD7C  38 63 D6 70 */	addi r3, r3, l_HIO@l /* 0x80C4D670@l */
/* 80C4CD80  98 03 00 04 */	stb r0, 4(r3)
lbl_80C4CD84:
/* 80C4CD84  38 00 00 00 */	li r0, 0
/* 80C4CD88  98 1A 09 80 */	stb r0, 0x980(r26)
/* 80C4CD8C  38 00 00 01 */	li r0, 1
/* 80C4CD90  98 1A 09 81 */	stb r0, 0x981(r26)
/* 80C4CD94  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C4CD98  D0 3A 05 30 */	stfs f1, 0x530(r26)
/* 80C4CD9C  3B 60 00 00 */	li r27, 0
/* 80C4CDA0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C4CDA4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C4CDA8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80C4CDAC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C4CDB0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C4CDB4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80C4CDB8  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80C4CDBC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C4CDC0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C4CDC4  4B 42 AE A5 */	bl __ct__11dBgS_LinChkFv
/* 80C4CDC8  3B C1 00 F8 */	addi r30, r1, 0xf8
/* 80C4CDCC  7F C3 F3 78 */	mr r3, r30
/* 80C4CDD0  4B 42 C0 99 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C4CDD4  3B 00 00 00 */	li r24, 0
/* 80C4CDD8  3B 20 00 00 */	li r25, 0
/* 80C4CDDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4CDE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4CDE4  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80C4CDE8:
/* 80C4CDE8  38 61 00 54 */	addi r3, r1, 0x54
/* 80C4CDEC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C4CDF0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C4CDF4  7C 00 CA 14 */	add r0, r0, r25
/* 80C4CDF8  7C 05 07 34 */	extsh r5, r0
/* 80C4CDFC  38 C1 00 6C */	addi r6, r1, 0x6c
/* 80C4CE00  4B 62 3F C1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C4CE04  38 61 00 48 */	addi r3, r1, 0x48
/* 80C4CE08  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C4CE0C  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C4CE10  7C 00 CA 14 */	add r0, r0, r25
/* 80C4CE14  7C 05 07 34 */	extsh r5, r0
/* 80C4CE18  38 C1 00 60 */	addi r6, r1, 0x60
/* 80C4CE1C  4B 62 3F A5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C4CE20  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C4CE24  38 81 00 48 */	addi r4, r1, 0x48
/* 80C4CE28  38 A1 00 54 */	addi r5, r1, 0x54
/* 80C4CE2C  38 C0 00 00 */	li r6, 0
/* 80C4CE30  4B 42 AF 35 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C4CE34  7F C3 F3 78 */	mr r3, r30
/* 80C4CE38  4B 42 C0 31 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C4CE3C  7F A3 EB 78 */	mr r3, r29
/* 80C4CE40  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C4CE44  4B 42 75 71 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C4CE48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4CE4C  41 82 01 98 */	beq lbl_80C4CFE4
/* 80C4CE50  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C4D634@ha */
/* 80C4CE54  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C4D634@l */
/* 80C4CE58  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C4CE5C  7F A3 EB 78 */	mr r3, r29
/* 80C4CE60  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C4CE64  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80C4CE68  4B 42 78 DD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C4CE6C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C4CE70  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C4CE74  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C4CE78  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C4CE7C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C4CE80  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C4CE84  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4CE88  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C4CE8C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C4CE90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C4CE94  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C4CE98  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C4CE9C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C4CEA0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C4CEA4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C4CEA8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C4CEAC  38 81 00 30 */	addi r4, r1, 0x30
/* 80C4CEB0  4B 6F A4 ED */	bl PSVECSquareDistance
/* 80C4CEB4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4CEB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4CEBC  40 81 00 58 */	ble lbl_80C4CF14
/* 80C4CEC0  FC 00 08 34 */	frsqrte f0, f1
/* 80C4CEC4  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C4CEC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4CECC  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C4CED0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4CED4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4CED8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4CEDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4CEE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4CEE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4CEE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4CEEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4CEF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4CEF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4CEF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4CEFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4CF00  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4CF04  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4CF08  FC 41 00 32 */	fmul f2, f1, f0
/* 80C4CF0C  FC 40 10 18 */	frsp f2, f2
/* 80C4CF10  48 00 00 90 */	b lbl_80C4CFA0
lbl_80C4CF14:
/* 80C4CF14  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C4CF18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4CF1C  40 80 00 10 */	bge lbl_80C4CF2C
/* 80C4CF20  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4CF24  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4CF28  48 00 00 78 */	b lbl_80C4CFA0
lbl_80C4CF2C:
/* 80C4CF2C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C4CF30  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C4CF34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4CF38  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4CF3C  7C 03 00 00 */	cmpw r3, r0
/* 80C4CF40  41 82 00 14 */	beq lbl_80C4CF54
/* 80C4CF44  40 80 00 40 */	bge lbl_80C4CF84
/* 80C4CF48  2C 03 00 00 */	cmpwi r3, 0
/* 80C4CF4C  41 82 00 20 */	beq lbl_80C4CF6C
/* 80C4CF50  48 00 00 34 */	b lbl_80C4CF84
lbl_80C4CF54:
/* 80C4CF54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4CF58  41 82 00 0C */	beq lbl_80C4CF64
/* 80C4CF5C  38 00 00 01 */	li r0, 1
/* 80C4CF60  48 00 00 28 */	b lbl_80C4CF88
lbl_80C4CF64:
/* 80C4CF64  38 00 00 02 */	li r0, 2
/* 80C4CF68  48 00 00 20 */	b lbl_80C4CF88
lbl_80C4CF6C:
/* 80C4CF6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4CF70  41 82 00 0C */	beq lbl_80C4CF7C
/* 80C4CF74  38 00 00 05 */	li r0, 5
/* 80C4CF78  48 00 00 10 */	b lbl_80C4CF88
lbl_80C4CF7C:
/* 80C4CF7C  38 00 00 03 */	li r0, 3
/* 80C4CF80  48 00 00 08 */	b lbl_80C4CF88
lbl_80C4CF84:
/* 80C4CF84  38 00 00 04 */	li r0, 4
lbl_80C4CF88:
/* 80C4CF88  2C 00 00 01 */	cmpwi r0, 1
/* 80C4CF8C  40 82 00 10 */	bne lbl_80C4CF9C
/* 80C4CF90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4CF94  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4CF98  48 00 00 08 */	b lbl_80C4CFA0
lbl_80C4CF9C:
/* 80C4CF9C  FC 40 08 90 */	fmr f2, f1
lbl_80C4CFA0:
/* 80C4CFA0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C4CFA4  4B 61 A6 D1 */	bl cM_atan2s__Fff
/* 80C4CFA8  7C 03 00 D0 */	neg r0, r3
/* 80C4CFAC  B0 1A 09 9E */	sth r0, 0x99e(r26)
/* 80C4CFB0  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80C4CFB4  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80C4CFB8  4B 61 A6 BD */	bl cM_atan2s__Fff
/* 80C4CFBC  B0 7A 09 9A */	sth r3, 0x99a(r26)
/* 80C4CFC0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C4CFC4  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80C4CFC8  4B 61 A6 AD */	bl cM_atan2s__Fff
/* 80C4CFCC  B0 7A 09 A2 */	sth r3, 0x9a2(r26)
/* 80C4CFD0  3B 60 00 01 */	li r27, 1
/* 80C4CFD4  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C4D634@ha */
/* 80C4CFD8  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C4D634@l */
/* 80C4CFDC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C4CFE0  48 00 00 14 */	b lbl_80C4CFF4
lbl_80C4CFE4:
/* 80C4CFE4  3B 18 00 01 */	addi r24, r24, 1
/* 80C4CFE8  2C 18 00 04 */	cmpwi r24, 4
/* 80C4CFEC  3B 39 40 00 */	addi r25, r25, 0x4000
/* 80C4CFF0  41 80 FD F8 */	blt lbl_80C4CDE8
lbl_80C4CFF4:
/* 80C4CFF4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C4CFF8  40 82 01 E4 */	bne lbl_80C4D1DC
/* 80C4CFFC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C4D000  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C4D004  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80C4D008  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C4D00C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80C4D010  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C4D014  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80C4D018  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C4D01C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80C4D020  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C4D024  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C4D028  38 A1 00 54 */	addi r5, r1, 0x54
/* 80C4D02C  38 C0 00 00 */	li r6, 0
/* 80C4D030  4B 42 AD 35 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C4D034  7F C3 F3 78 */	mr r3, r30
/* 80C4D038  4B 42 BE 31 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C4D03C  7F A3 EB 78 */	mr r3, r29
/* 80C4D040  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C4D044  4B 42 73 71 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C4D048  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4D04C  41 82 01 90 */	beq lbl_80C4D1DC
/* 80C4D050  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C4D634@ha */
/* 80C4D054  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C4D634@l */
/* 80C4D058  90 01 00 88 */	stw r0, 0x88(r1)
/* 80C4D05C  7F A3 EB 78 */	mr r3, r29
/* 80C4D060  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C4D064  38 A1 00 78 */	addi r5, r1, 0x78
/* 80C4D068  4B 42 76 DD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C4D06C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C4D070  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C4D074  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C4D078  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C4D07C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C4D080  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C4D084  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4D088  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C4D08C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C4D090  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4D094  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C4D098  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C4D09C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C4D0A0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C4D0A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C4D0A8  38 61 00 24 */	addi r3, r1, 0x24
/* 80C4D0AC  38 81 00 18 */	addi r4, r1, 0x18
/* 80C4D0B0  4B 6F A2 ED */	bl PSVECSquareDistance
/* 80C4D0B4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4D0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4D0BC  40 81 00 58 */	ble lbl_80C4D114
/* 80C4D0C0  FC 00 08 34 */	frsqrte f0, f1
/* 80C4D0C4  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C4D0C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4D0CC  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C4D0D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4D0D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4D0D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4D0DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4D0E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4D0E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4D0E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4D0EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4D0F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4D0F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4D0F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4D0FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4D100  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4D104  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4D108  FC 41 00 32 */	fmul f2, f1, f0
/* 80C4D10C  FC 40 10 18 */	frsp f2, f2
/* 80C4D110  48 00 00 90 */	b lbl_80C4D1A0
lbl_80C4D114:
/* 80C4D114  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C4D118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4D11C  40 80 00 10 */	bge lbl_80C4D12C
/* 80C4D120  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4D124  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4D128  48 00 00 78 */	b lbl_80C4D1A0
lbl_80C4D12C:
/* 80C4D12C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C4D130  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C4D134  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4D138  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4D13C  7C 03 00 00 */	cmpw r3, r0
/* 80C4D140  41 82 00 14 */	beq lbl_80C4D154
/* 80C4D144  40 80 00 40 */	bge lbl_80C4D184
/* 80C4D148  2C 03 00 00 */	cmpwi r3, 0
/* 80C4D14C  41 82 00 20 */	beq lbl_80C4D16C
/* 80C4D150  48 00 00 34 */	b lbl_80C4D184
lbl_80C4D154:
/* 80C4D154  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4D158  41 82 00 0C */	beq lbl_80C4D164
/* 80C4D15C  38 00 00 01 */	li r0, 1
/* 80C4D160  48 00 00 28 */	b lbl_80C4D188
lbl_80C4D164:
/* 80C4D164  38 00 00 02 */	li r0, 2
/* 80C4D168  48 00 00 20 */	b lbl_80C4D188
lbl_80C4D16C:
/* 80C4D16C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4D170  41 82 00 0C */	beq lbl_80C4D17C
/* 80C4D174  38 00 00 05 */	li r0, 5
/* 80C4D178  48 00 00 10 */	b lbl_80C4D188
lbl_80C4D17C:
/* 80C4D17C  38 00 00 03 */	li r0, 3
/* 80C4D180  48 00 00 08 */	b lbl_80C4D188
lbl_80C4D184:
/* 80C4D184  38 00 00 04 */	li r0, 4
lbl_80C4D188:
/* 80C4D188  2C 00 00 01 */	cmpwi r0, 1
/* 80C4D18C  40 82 00 10 */	bne lbl_80C4D19C
/* 80C4D190  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4D194  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4D198  48 00 00 08 */	b lbl_80C4D1A0
lbl_80C4D19C:
/* 80C4D19C  FC 40 08 90 */	fmr f2, f1
lbl_80C4D1A0:
/* 80C4D1A0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C4D1A4  4B 61 A4 D1 */	bl cM_atan2s__Fff
/* 80C4D1A8  7C 03 00 D0 */	neg r0, r3
/* 80C4D1AC  B0 1A 09 9E */	sth r0, 0x99e(r26)
/* 80C4D1B0  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80C4D1B4  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80C4D1B8  4B 61 A4 BD */	bl cM_atan2s__Fff
/* 80C4D1BC  B0 7A 09 9A */	sth r3, 0x99a(r26)
/* 80C4D1C0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C4D1C4  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80C4D1C8  4B 61 A4 AD */	bl cM_atan2s__Fff
/* 80C4D1CC  B0 7A 09 A2 */	sth r3, 0x9a2(r26)
/* 80C4D1D0  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C4D634@ha */
/* 80C4D1D4  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C4D634@l */
/* 80C4D1D8  90 01 00 88 */	stw r0, 0x88(r1)
lbl_80C4D1DC:
/* 80C4D1DC  88 1A 09 C0 */	lbz r0, 0x9c0(r26)
/* 80C4D1E0  28 00 00 00 */	cmplwi r0, 0
/* 80C4D1E4  40 82 00 0C */	bne lbl_80C4D1F0
/* 80C4D1E8  7F 43 D3 78 */	mr r3, r26
/* 80C4D1EC  4B FF D0 31 */	bl InitCcSph__10daObjKUW_cFv
lbl_80C4D1F0:
/* 80C4D1F0  88 1A 09 C0 */	lbz r0, 0x9c0(r26)
/* 80C4D1F4  28 00 00 02 */	cmplwi r0, 2
/* 80C4D1F8  40 82 00 3C */	bne lbl_80C4D234
/* 80C4D1FC  3C 60 80 C5 */	lis r3, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4D200  38 63 D5 8C */	addi r3, r3, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4D204  38 63 00 06 */	addi r3, r3, 6
/* 80C4D208  38 9D 3E C8 */	addi r4, r29, 0x3ec8
/* 80C4D20C  4B 71 B7 89 */	bl strcmp
/* 80C4D210  2C 03 00 00 */	cmpwi r3, 0
/* 80C4D214  40 82 00 18 */	bne lbl_80C4D22C
/* 80C4D218  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4D21C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4D220  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C4D224  2C 00 00 03 */	cmpwi r0, 3
/* 80C4D228  41 82 00 0C */	beq lbl_80C4D234
lbl_80C4D22C:
/* 80C4D22C  7F 43 D3 78 */	mr r3, r26
/* 80C4D230  4B FF CF ED */	bl InitCcSph__10daObjKUW_cFv
lbl_80C4D234:
/* 80C4D234  38 00 00 00 */	li r0, 0
/* 80C4D238  90 01 00 08 */	stw r0, 8(r1)
/* 80C4D23C  38 7A 07 50 */	addi r3, r26, 0x750
/* 80C4D240  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C4D244  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80C4D248  7F 46 D3 78 */	mr r6, r26
/* 80C4D24C  38 E0 00 01 */	li r7, 1
/* 80C4D250  39 1A 07 10 */	addi r8, r26, 0x710
/* 80C4D254  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80C4D258  39 40 00 00 */	li r10, 0
/* 80C4D25C  4B 42 8F ED */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C4D260  80 7A 0A 58 */	lwz r3, 0xa58(r26)
/* 80C4D264  80 63 00 04 */	lwz r3, 4(r3)
/* 80C4D268  38 03 00 24 */	addi r0, r3, 0x24
/* 80C4D26C  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80C4D270  7F 43 D3 78 */	mr r3, r26
/* 80C4D274  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80C4D278  FC 40 08 90 */	fmr f2, f1
/* 80C4D27C  FC 60 08 90 */	fmr f3, f1
/* 80C4D280  4B 3C D2 A9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C4D284  7F 43 D3 78 */	mr r3, r26
/* 80C4D288  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C4D28C  FC 40 08 90 */	fmr f2, f1
/* 80C4D290  FC 60 08 90 */	fmr f3, f1
/* 80C4D294  4B 3C D2 A5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C4D298  38 7A 09 C4 */	addi r3, r26, 0x9c4
/* 80C4D29C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C4D2A0  38 BA 05 38 */	addi r5, r26, 0x538
/* 80C4D2A4  38 C0 00 03 */	li r6, 3
/* 80C4D2A8  38 E0 00 01 */	li r7, 1
/* 80C4D2AC  4B 67 32 85 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80C4D2B0  7F 43 D3 78 */	mr r3, r26
/* 80C4D2B4  4B FF F6 89 */	bl daObjKUW_Execute__FP10daObjKUW_c
/* 80C4D2B8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C4D2BC  38 80 FF FF */	li r4, -1
/* 80C4D2C0  4B 42 AA 1D */	bl __dt__11dBgS_LinChkFv
lbl_80C4D2C4:
/* 80C4D2C4  7F 83 E3 78 */	mr r3, r28
lbl_80C4D2C8:
/* 80C4D2C8  39 61 01 30 */	addi r11, r1, 0x130
/* 80C4D2CC  4B 71 4F 49 */	bl _restgpr_24
/* 80C4D2D0  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80C4D2D4  7C 08 03 A6 */	mtlr r0
/* 80C4D2D8  38 21 01 30 */	addi r1, r1, 0x130
/* 80C4D2DC  4E 80 00 20 */	blr 
