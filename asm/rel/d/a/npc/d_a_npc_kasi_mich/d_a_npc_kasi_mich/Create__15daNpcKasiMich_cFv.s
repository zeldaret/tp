lbl_80A26624:
/* 80A26624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A26628  7C 08 02 A6 */	mflr r0
/* 80A2662C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A26630  39 61 00 30 */	addi r11, r1, 0x30
/* 80A26634  4B 93 BB 98 */	b _savegpr_25
/* 80A26638  7C 7D 1B 78 */	mr r29, r3
/* 80A2663C  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha
/* 80A26640  3B E4 A0 4C */	addi r31, r4, m__21daNpcKasiMich_Param_c@l
/* 80A26644  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A26648  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A2664C  40 82 00 1C */	bne lbl_80A26668
/* 80A26650  28 1D 00 00 */	cmplwi r29, 0
/* 80A26654  41 82 00 08 */	beq lbl_80A2665C
/* 80A26658  4B FF FB 75 */	bl __ct__15daNpcKasiMich_cFv
lbl_80A2665C:
/* 80A2665C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A26660  60 00 00 08 */	ori r0, r0, 8
/* 80A26664  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A26668:
/* 80A26668  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A2666C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A26670  7C 00 07 74 */	extsb r0, r0
/* 80A26674  2C 00 00 FF */	cmpwi r0, 0xff
/* 80A26678  40 82 00 08 */	bne lbl_80A26680
/* 80A2667C  38 00 00 00 */	li r0, 0
lbl_80A26680:
/* 80A26680  98 1D 14 64 */	stb r0, 0x1464(r29)
/* 80A26684  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A26688  90 1D 14 38 */	stw r0, 0x1438(r29)
/* 80A2668C  3B 20 00 00 */	li r25, 0
/* 80A26690  3B 80 00 00 */	li r28, 0
/* 80A26694  3B 60 00 00 */	li r27, 0
/* 80A26698  3C 60 80 A3 */	lis r3, l_arcNames@ha
/* 80A2669C  3B 43 A3 A0 */	addi r26, r3, l_arcNames@l
lbl_80A266A0:
/* 80A266A0  38 7B 14 14 */	addi r3, r27, 0x1414
/* 80A266A4  7C 7D 1A 14 */	add r3, r29, r3
/* 80A266A8  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80A266AC  4B 60 68 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A266B0  7C 7E 1B 78 */	mr r30, r3
/* 80A266B4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A266B8  41 82 00 08 */	beq lbl_80A266C0
/* 80A266BC  48 00 01 CC */	b lbl_80A26888
lbl_80A266C0:
/* 80A266C0  3B 39 00 01 */	addi r25, r25, 1
/* 80A266C4  2C 19 00 03 */	cmpwi r25, 3
/* 80A266C8  3B 9C 00 04 */	addi r28, r28, 4
/* 80A266CC  3B 7B 00 08 */	addi r27, r27, 8
/* 80A266D0  41 80 FF D0 */	blt lbl_80A266A0
/* 80A266D4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A266D8  40 82 01 AC */	bne lbl_80A26884
/* 80A266DC  7F A3 EB 78 */	mr r3, r29
/* 80A266E0  3C 80 80 A2 */	lis r4, createHeapCallBack__15daNpcKasiMich_cFP10fopAc_ac_c@ha
/* 80A266E4  38 84 6C 5C */	addi r4, r4, createHeapCallBack__15daNpcKasiMich_cFP10fopAc_ac_c@l
/* 80A266E8  38 A0 19 40 */	li r5, 0x1940
/* 80A266EC  4B 5F 3D C4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A266F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A266F4  40 82 00 0C */	bne lbl_80A26700
/* 80A266F8  38 60 00 05 */	li r3, 5
/* 80A266FC  48 00 01 8C */	b lbl_80A26888
lbl_80A26700:
/* 80A26700  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A26704  80 63 00 04 */	lwz r3, 4(r3)
/* 80A26708  38 03 00 24 */	addi r0, r3, 0x24
/* 80A2670C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A26710  7F A3 EB 78 */	mr r3, r29
/* 80A26714  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A26718  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80A2671C  FC 60 08 90 */	fmr f3, f1
/* 80A26720  C0 9F 00 7C */	lfs f4, 0x7c(r31)
/* 80A26724  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 80A26728  FC C0 20 90 */	fmr f6, f4
/* 80A2672C  4B 5F 3E 1C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A26730  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80A26734  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A26738  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A2673C  38 C0 00 03 */	li r6, 3
/* 80A26740  38 E0 00 01 */	li r7, 1
/* 80A26744  4B 89 A5 A0 */	b init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80A26748  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80A2674C  3B 5F 00 00 */	addi r26, r31, 0
/* 80A26750  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80A26754  C0 5A 00 18 */	lfs f2, 0x18(r26)
/* 80A26758  4B 64 F8 00 */	b SetWall__12dBgS_AcchCirFff
/* 80A2675C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A26760  90 01 00 08 */	stw r0, 8(r1)
/* 80A26764  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80A26768  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A2676C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A26770  7F A6 EB 78 */	mr r6, r29
/* 80A26774  38 E0 00 01 */	li r7, 1
/* 80A26778  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80A2677C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A26780  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A26784  4B 64 FA C4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A26788  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80A2678C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A26790  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A26794  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A26798  4B 65 03 14 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A2679C  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80A267A0  38 80 00 FE */	li r4, 0xfe
/* 80A267A4  38 A0 00 00 */	li r5, 0
/* 80A267A8  7F A6 EB 78 */	mr r6, r29
/* 80A267AC  4B 65 D0 B4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A267B0  38 7D 12 C8 */	addi r3, r29, 0x12c8
/* 80A267B4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80A267B8  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80A267BC  4B 65 E0 F8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A267C0  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80A267C4  90 1D 13 0C */	stw r0, 0x130c(r29)
/* 80A267C8  38 00 00 00 */	li r0, 0
/* 80A267CC  90 1D 12 F0 */	stw r0, 0x12f0(r29)
/* 80A267D0  90 1D 12 E0 */	stw r0, 0x12e0(r29)
/* 80A267D4  38 7D 13 EC */	addi r3, r29, 0x13ec
/* 80A267D8  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 80A267DC  4B 84 8A 1C */	b SetH__8cM3dGCylFf
/* 80A267E0  38 7D 13 EC */	addi r3, r29, 0x13ec
/* 80A267E4  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80A267E8  4B 84 8A 18 */	b SetR__8cM3dGCylFf
/* 80A267EC  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80A267F0  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80A267F4  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80A267F8  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80A267FC  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80A26800  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80A26804  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80A26808  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80A2680C  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80A26810  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80A26814  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80A26818  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80A2681C  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80A26820  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80A26824  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80A26828  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80A2682C  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80A26830  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80A26834  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80A26838  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80A2683C  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80A26840  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80A26844  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80A26848  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80A2684C  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80A26850  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80A26854  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80A26858  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A2685C  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80A26860  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80A26864  7F A3 EB 78 */	mr r3, r29
/* 80A26868  4B 72 C5 1C */	b setEnvTevColor__8daNpcF_cFv
/* 80A2686C  7F A3 EB 78 */	mr r3, r29
/* 80A26870  4B 72 C5 70 */	b setRoomNo__8daNpcF_cFv
/* 80A26874  7F A3 EB 78 */	mr r3, r29
/* 80A26878  48 00 0A 2D */	bl reset__15daNpcKasiMich_cFv
/* 80A2687C  7F A3 EB 78 */	mr r3, r29
/* 80A26880  48 00 01 D9 */	bl Execute__15daNpcKasiMich_cFv
lbl_80A26884:
/* 80A26884  7F C3 F3 78 */	mr r3, r30
lbl_80A26888:
/* 80A26888  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2688C  4B 93 B9 8C */	b _restgpr_25
/* 80A26890  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A26894  7C 08 03 A6 */	mtlr r0
/* 80A26898  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2689C  4E 80 00 20 */	blr 
