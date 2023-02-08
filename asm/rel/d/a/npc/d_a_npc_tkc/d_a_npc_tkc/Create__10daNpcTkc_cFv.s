lbl_80B0CA9C:
/* 80B0CA9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0CAA0  7C 08 02 A6 */	mflr r0
/* 80B0CAA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0CAA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0CAAC  4B 85 57 2D */	bl _savegpr_28
/* 80B0CAB0  7C 7D 1B 78 */	mr r29, r3
/* 80B0CAB4  3C 80 80 B1 */	lis r4, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0CAB8  3B E4 08 B4 */	addi r31, r4, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0CABC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B0CAC0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B0CAC4  40 82 00 1C */	bne lbl_80B0CAE0
/* 80B0CAC8  28 1D 00 00 */	cmplwi r29, 0
/* 80B0CACC  41 82 00 08 */	beq lbl_80B0CAD4
/* 80B0CAD0  4B FF FC FD */	bl __ct__10daNpcTkc_cFv
lbl_80B0CAD4:
/* 80B0CAD4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B0CAD8  60 00 00 08 */	ori r0, r0, 8
/* 80B0CADC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B0CAE0:
/* 80B0CAE0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B0CAE4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B0CAE8  28 00 00 02 */	cmplwi r0, 2
/* 80B0CAEC  41 82 00 70 */	beq lbl_80B0CB5C
/* 80B0CAF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0CAF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0CAF8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80B0CAFC  3C 80 80 B1 */	lis r4, d_a_npc_tkc__stringBase0@ha /* 0x80B10A2C@ha */
/* 80B0CB00  38 84 0A 2C */	addi r4, r4, d_a_npc_tkc__stringBase0@l /* 0x80B10A2C@l */
/* 80B0CB04  38 84 00 22 */	addi r4, r4, 0x22
/* 80B0CB08  4B 85 BE 8D */	bl strcmp
/* 80B0CB0C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0CB10  40 82 00 4C */	bne lbl_80B0CB5C
/* 80B0CB14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0CB18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0CB1C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80B0CB20  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B0CB24  40 82 00 38 */	bne lbl_80B0CB5C
/* 80B0CB28  38 60 01 0C */	li r3, 0x10c
/* 80B0CB2C  4B 64 8B 09 */	bl daNpcF_chkEvtBit__FUl
/* 80B0CB30  2C 03 00 00 */	cmpwi r3, 0
/* 80B0CB34  40 82 00 28 */	bne lbl_80B0CB5C
/* 80B0CB38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0CB3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0CB40  38 63 09 58 */	addi r3, r3, 0x958
/* 80B0CB44  38 80 00 06 */	li r4, 6
/* 80B0CB48  4B 52 7D ED */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B0CB4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0CB50  41 82 00 0C */	beq lbl_80B0CB5C
/* 80B0CB54  38 60 00 05 */	li r3, 5
/* 80B0CB58  48 00 02 0C */	b lbl_80B0CD64
lbl_80B0CB5C:
/* 80B0CB5C  38 7D 0D 2C */	addi r3, r29, 0xd2c
/* 80B0CB60  3C 80 80 B1 */	lis r4, l_arcName@ha /* 0x80B10AB8@ha */
/* 80B0CB64  38 84 0A B8 */	addi r4, r4, l_arcName@l /* 0x80B10AB8@l */
/* 80B0CB68  80 84 00 00 */	lwz r4, 0(r4)
/* 80B0CB6C  4B 52 03 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B0CB70  7C 7E 1B 78 */	mr r30, r3
/* 80B0CB74  2C 1E 00 04 */	cmpwi r30, 4
/* 80B0CB78  40 82 01 E8 */	bne lbl_80B0CD60
/* 80B0CB7C  7F A3 EB 78 */	mr r3, r29
/* 80B0CB80  3C 80 80 B1 */	lis r4, createHeapCallBack__10daNpcTkc_cFP10fopAc_ac_c@ha /* 0x80B0D2CC@ha */
/* 80B0CB84  38 84 D2 CC */	addi r4, r4, createHeapCallBack__10daNpcTkc_cFP10fopAc_ac_c@l /* 0x80B0D2CC@l */
/* 80B0CB88  38 A0 20 30 */	li r5, 0x2030
/* 80B0CB8C  4B 50 D9 25 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B0CB90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B0CB94  40 82 00 0C */	bne lbl_80B0CBA0
/* 80B0CB98  38 60 00 05 */	li r3, 5
/* 80B0CB9C  48 00 01 C8 */	b lbl_80B0CD64
lbl_80B0CBA0:
/* 80B0CBA0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B0CBA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B0CBA8  38 03 00 24 */	addi r0, r3, 0x24
/* 80B0CBAC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B0CBB0  7F A3 EB 78 */	mr r3, r29
/* 80B0CBB4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80B0CBB8  FC 40 08 90 */	fmr f2, f1
/* 80B0CBBC  FC 60 08 90 */	fmr f3, f1
/* 80B0CBC0  C0 9F 00 A8 */	lfs f4, 0xa8(r31)
/* 80B0CBC4  FC A0 20 90 */	fmr f5, f4
/* 80B0CBC8  FC C0 20 90 */	fmr f6, f4
/* 80B0CBCC  4B 50 D9 7D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B0CBD0  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B0CBD4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B0CBD8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B0CBDC  38 C0 00 03 */	li r6, 3
/* 80B0CBE0  38 E0 00 01 */	li r7, 1
/* 80B0CBE4  4B 7B 39 4D */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80B0CBE8  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80B0CBEC  38 9F 00 00 */	addi r4, r31, 0
/* 80B0CBF0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B0CBF4  FC 00 00 1E */	fctiwz f0, f0
/* 80B0CBF8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B0CBFC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B0CC00  38 A0 00 00 */	li r5, 0
/* 80B0CC04  7F A6 EB 78 */	mr r6, r29
/* 80B0CC08  4B 57 6C 59 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B0CC0C  38 7D 0B E8 */	addi r3, r29, 0xbe8
/* 80B0CC10  3C 80 80 3B */	lis r4, mCcDSph__8daNpcF_c@ha /* 0x803B3824@ha */
/* 80B0CC14  38 84 38 24 */	addi r4, r4, mCcDSph__8daNpcF_c@l /* 0x803B3824@l */
/* 80B0CC18  4B 57 7E 1D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80B0CC1C  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80B0CC20  90 1D 0C 2C */	stw r0, 0xc2c(r29)
/* 80B0CC24  38 00 00 00 */	li r0, 0
/* 80B0CC28  90 1D 0C 10 */	stw r0, 0xc10(r29)
/* 80B0CC2C  90 1D 0C 00 */	stw r0, 0xc00(r29)
/* 80B0CC30  38 7D 0D 0C */	addi r3, r29, 0xd0c
/* 80B0CC34  3B 9F 00 00 */	addi r28, r31, 0
/* 80B0CC38  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80B0CC3C  4B 76 2A CD */	bl SetR__8cM3dGSphFf
/* 80B0CC40  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80B0CC44  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80B0CC48  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 80B0CC4C  4B 56 93 0D */	bl SetWall__12dBgS_AcchCirFff
/* 80B0CC50  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B0CC54  90 01 00 08 */	stw r0, 8(r1)
/* 80B0CC58  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80B0CC5C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B0CC60  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B0CC64  7F A6 EB 78 */	mr r6, r29
/* 80B0CC68  38 E0 00 01 */	li r7, 1
/* 80B0CC6C  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80B0CC70  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B0CC74  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B0CC78  4B 56 95 D1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B0CC7C  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80B0CC80  60 00 80 00 */	ori r0, r0, 0x8000
/* 80B0CC84  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 80B0CC88  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80B0CC8C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B0CC90  4B 56 A4 85 */	bl SetGroundUpY__9dBgS_AcchFf
/* 80B0CC94  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80B0CC98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0CC9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0CCA0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B0CCA4  4B 56 9E 09 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B0CCA8  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80B0CCAC  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80B0CCB0  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80B0CCB4  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80B0CCB8  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80B0CCBC  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80B0CCC0  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80B0CCC4  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80B0CCC8  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80B0CCCC  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80B0CCD0  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80B0CCD4  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80B0CCD8  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80B0CCDC  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80B0CCE0  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80B0CCE4  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80B0CCE8  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80B0CCEC  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80B0CCF0  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80B0CCF4  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80B0CCF8  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80B0CCFC  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80B0CD00  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80B0CD04  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80B0CD08  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80B0CD0C  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80B0CD10  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80B0CD14  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B0CD18  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80B0CD1C  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80B0CD20  7F A3 EB 78 */	mr r3, r29
/* 80B0CD24  4B 64 60 61 */	bl setEnvTevColor__8daNpcF_cFv
/* 80B0CD28  7F A3 EB 78 */	mr r3, r29
/* 80B0CD2C  4B 64 60 B5 */	bl setRoomNo__8daNpcF_cFv
/* 80B0CD30  7F A3 EB 78 */	mr r3, r29
/* 80B0CD34  48 00 09 45 */	bl reset__10daNpcTkc_cFv
/* 80B0CD38  38 00 00 01 */	li r0, 1
/* 80B0CD3C  98 1D 0D 7A */	stb r0, 0xd7a(r29)
/* 80B0CD40  7F A3 EB 78 */	mr r3, r29
/* 80B0CD44  48 00 04 71 */	bl Execute__10daNpcTkc_cFv
/* 80B0CD48  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B0CD4C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B0CD50  28 00 00 02 */	cmplwi r0, 2
/* 80B0CD54  40 82 00 0C */	bne lbl_80B0CD60
/* 80B0CD58  38 00 00 00 */	li r0, 0
/* 80B0CD5C  98 1D 0D 7A */	stb r0, 0xd7a(r29)
lbl_80B0CD60:
/* 80B0CD60  7F C3 F3 78 */	mr r3, r30
lbl_80B0CD64:
/* 80B0CD64  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0CD68  4B 85 54 BD */	bl _restgpr_28
/* 80B0CD6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0CD70  7C 08 03 A6 */	mtlr r0
/* 80B0CD74  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0CD78  4E 80 00 20 */	blr 
