lbl_80A1C334:
/* 80A1C334  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1C338  7C 08 02 A6 */	mflr r0
/* 80A1C33C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1C340  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1C344  4B 94 5E 89 */	bl _savegpr_25
/* 80A1C348  7C 7D 1B 78 */	mr r29, r3
/* 80A1C34C  3C 80 80 A2 */	lis r4, lit_3908@ha /* 0x80A21080@ha */
/* 80A1C350  3B E4 10 80 */	addi r31, r4, lit_3908@l /* 0x80A21080@l */
/* 80A1C354  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A1C358  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A1C35C  40 82 00 1C */	bne lbl_80A1C378
/* 80A1C360  28 1D 00 00 */	cmplwi r29, 0
/* 80A1C364  41 82 00 08 */	beq lbl_80A1C36C
/* 80A1C368  4B FF FA DD */	bl __ct__15daNpcKasiHana_cFv
lbl_80A1C36C:
/* 80A1C36C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A1C370  60 00 00 08 */	ori r0, r0, 8
/* 80A1C374  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A1C378:
/* 80A1C378  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A1C37C  90 1D 14 38 */	stw r0, 0x1438(r29)
/* 80A1C380  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A1C384  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A1C388  7C 00 07 74 */	extsb r0, r0
/* 80A1C38C  2C 00 00 FF */	cmpwi r0, 0xff
/* 80A1C390  40 82 00 08 */	bne lbl_80A1C398
/* 80A1C394  38 00 00 00 */	li r0, 0
lbl_80A1C398:
/* 80A1C398  98 1D 14 04 */	stb r0, 0x1404(r29)
/* 80A1C39C  3B 20 00 00 */	li r25, 0
/* 80A1C3A0  3B 80 00 00 */	li r28, 0
/* 80A1C3A4  3B 60 00 00 */	li r27, 0
/* 80A1C3A8  3C 60 80 A2 */	lis r3, l_arcNames@ha /* 0x80A214B4@ha */
/* 80A1C3AC  3B 43 14 B4 */	addi r26, r3, l_arcNames@l /* 0x80A214B4@l */
lbl_80A1C3B0:
/* 80A1C3B0  38 7B 14 14 */	addi r3, r27, 0x1414
/* 80A1C3B4  7C 7D 1A 14 */	add r3, r29, r3
/* 80A1C3B8  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80A1C3BC  4B 61 0B 01 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A1C3C0  7C 7E 1B 78 */	mr r30, r3
/* 80A1C3C4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A1C3C8  41 82 00 08 */	beq lbl_80A1C3D0
/* 80A1C3CC  48 00 01 CC */	b lbl_80A1C598
lbl_80A1C3D0:
/* 80A1C3D0  3B 39 00 01 */	addi r25, r25, 1
/* 80A1C3D4  2C 19 00 03 */	cmpwi r25, 3
/* 80A1C3D8  3B 9C 00 04 */	addi r28, r28, 4
/* 80A1C3DC  3B 7B 00 08 */	addi r27, r27, 8
/* 80A1C3E0  41 80 FF D0 */	blt lbl_80A1C3B0
/* 80A1C3E4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A1C3E8  40 82 01 AC */	bne lbl_80A1C594
/* 80A1C3EC  7F A3 EB 78 */	mr r3, r29
/* 80A1C3F0  3C 80 80 A2 */	lis r4, createHeapCallBack__15daNpcKasiHana_cFP10fopAc_ac_c@ha /* 0x80A1C964@ha */
/* 80A1C3F4  38 84 C9 64 */	addi r4, r4, createHeapCallBack__15daNpcKasiHana_cFP10fopAc_ac_c@l /* 0x80A1C964@l */
/* 80A1C3F8  38 A0 19 40 */	li r5, 0x1940
/* 80A1C3FC  4B 5F E0 B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A1C400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A1C404  40 82 00 0C */	bne lbl_80A1C410
/* 80A1C408  38 60 00 05 */	li r3, 5
/* 80A1C40C  48 00 01 8C */	b lbl_80A1C598
lbl_80A1C410:
/* 80A1C410  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C414  80 63 00 04 */	lwz r3, 4(r3)
/* 80A1C418  38 03 00 24 */	addi r0, r3, 0x24
/* 80A1C41C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A1C420  7F A3 EB 78 */	mr r3, r29
/* 80A1C424  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80A1C428  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80A1C42C  FC 60 08 90 */	fmr f3, f1
/* 80A1C430  C0 9F 00 CC */	lfs f4, 0xcc(r31)
/* 80A1C434  C0 BF 00 D0 */	lfs f5, 0xd0(r31)
/* 80A1C438  FC C0 20 90 */	fmr f6, f4
/* 80A1C43C  4B 5F E1 0D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A1C440  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80A1C444  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A1C448  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A1C44C  38 C0 00 03 */	li r6, 3
/* 80A1C450  38 E0 00 01 */	li r7, 1
/* 80A1C454  4B 8A 48 91 */	bl init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80A1C458  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80A1C45C  3B 5F 00 48 */	addi r26, r31, 0x48
/* 80A1C460  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80A1C464  C0 5A 00 18 */	lfs f2, 0x18(r26)
/* 80A1C468  4B 65 9A F1 */	bl SetWall__12dBgS_AcchCirFff
/* 80A1C46C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A1C470  90 01 00 08 */	stw r0, 8(r1)
/* 80A1C474  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80A1C478  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A1C47C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A1C480  7F A6 EB 78 */	mr r6, r29
/* 80A1C484  38 E0 00 01 */	li r7, 1
/* 80A1C488  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80A1C48C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A1C490  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A1C494  4B 65 9D B5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A1C498  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80A1C49C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1C4A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1C4A4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A1C4A8  4B 65 A6 05 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A1C4AC  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80A1C4B0  38 80 00 FE */	li r4, 0xfe
/* 80A1C4B4  38 A0 00 00 */	li r5, 0
/* 80A1C4B8  7F A6 EB 78 */	mr r6, r29
/* 80A1C4BC  4B 66 73 A5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A1C4C0  38 7D 12 C8 */	addi r3, r29, 0x12c8
/* 80A1C4C4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80A1C4C8  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80A1C4CC  4B 66 83 E9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A1C4D0  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80A1C4D4  90 1D 13 0C */	stw r0, 0x130c(r29)
/* 80A1C4D8  38 00 00 00 */	li r0, 0
/* 80A1C4DC  90 1D 12 F0 */	stw r0, 0x12f0(r29)
/* 80A1C4E0  90 1D 12 E0 */	stw r0, 0x12e0(r29)
/* 80A1C4E4  38 7D 13 EC */	addi r3, r29, 0x13ec
/* 80A1C4E8  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 80A1C4EC  4B 85 2D 0D */	bl SetH__8cM3dGCylFf
/* 80A1C4F0  38 7D 13 EC */	addi r3, r29, 0x13ec
/* 80A1C4F4  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80A1C4F8  4B 85 2D 09 */	bl SetR__8cM3dGCylFf
/* 80A1C4FC  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80A1C500  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80A1C504  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80A1C508  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80A1C50C  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80A1C510  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80A1C514  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80A1C518  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80A1C51C  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80A1C520  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80A1C524  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80A1C528  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80A1C52C  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80A1C530  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80A1C534  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80A1C538  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80A1C53C  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80A1C540  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80A1C544  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80A1C548  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80A1C54C  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80A1C550  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80A1C554  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80A1C558  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80A1C55C  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80A1C560  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80A1C564  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80A1C568  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A1C56C  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80A1C570  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80A1C574  7F A3 EB 78 */	mr r3, r29
/* 80A1C578  4B 73 68 0D */	bl setEnvTevColor__8daNpcF_cFv
/* 80A1C57C  7F A3 EB 78 */	mr r3, r29
/* 80A1C580  4B 73 68 61 */	bl setRoomNo__8daNpcF_cFv
/* 80A1C584  7F A3 EB 78 */	mr r3, r29
/* 80A1C588  48 00 0A 69 */	bl reset__15daNpcKasiHana_cFv
/* 80A1C58C  7F A3 EB 78 */	mr r3, r29
/* 80A1C590  48 00 01 D9 */	bl Execute__15daNpcKasiHana_cFv
lbl_80A1C594:
/* 80A1C594  7F C3 F3 78 */	mr r3, r30
lbl_80A1C598:
/* 80A1C598  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1C59C  4B 94 5C 7D */	bl _restgpr_25
/* 80A1C5A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1C5A4  7C 08 03 A6 */	mtlr r0
/* 80A1C5A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1C5AC  4E 80 00 20 */	blr 
