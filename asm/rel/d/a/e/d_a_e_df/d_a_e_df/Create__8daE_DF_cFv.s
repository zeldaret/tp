lbl_806A9678:
/* 806A9678  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A967C  7C 08 02 A6 */	mflr r0
/* 806A9680  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A9684  39 61 00 30 */	addi r11, r1, 0x30
/* 806A9688  4B CB 8B 54 */	b _savegpr_29
/* 806A968C  7C 7D 1B 78 */	mr r29, r3
/* 806A9690  3C 80 80 6B */	lis r4, lit_3916@ha
/* 806A9694  3B E4 9F 30 */	addi r31, r4, lit_3916@l
/* 806A9698  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806A969C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806A96A0  40 82 00 B0 */	bne lbl_806A9750
/* 806A96A4  7F A0 EB 79 */	or. r0, r29, r29
/* 806A96A8  41 82 00 9C */	beq lbl_806A9744
/* 806A96AC  7C 1E 03 78 */	mr r30, r0
/* 806A96B0  4B 96 F4 B4 */	b __ct__10fopAc_ac_cFv
/* 806A96B4  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806A96B8  4B C1 78 AC */	b __ct__15Z2CreatureEnemyFv
/* 806A96BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806A96C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806A96C4  90 1E 06 94 */	stw r0, 0x694(r30)
/* 806A96C8  38 7E 06 98 */	addi r3, r30, 0x698
/* 806A96CC  4B 9D A0 94 */	b __ct__10dCcD_GSttsFv
/* 806A96D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806A96D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806A96D8  90 7E 06 94 */	stw r3, 0x694(r30)
/* 806A96DC  38 03 00 20 */	addi r0, r3, 0x20
/* 806A96E0  90 1E 06 98 */	stw r0, 0x698(r30)
/* 806A96E4  3B DE 06 B8 */	addi r30, r30, 0x6b8
/* 806A96E8  7F C3 F3 78 */	mr r3, r30
/* 806A96EC  4B 9D A3 3C */	b __ct__12dCcD_GObjInfFv
/* 806A96F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806A96F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806A96F8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806A96FC  3C 60 80 6B */	lis r3, __vt__8cM3dGAab@ha
/* 806A9700  38 03 A0 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806A9704  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 806A9708  3C 60 80 6B */	lis r3, __vt__8cM3dGCyl@ha
/* 806A970C  38 03 A0 A4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 806A9710  90 1E 01 38 */	stw r0, 0x138(r30)
/* 806A9714  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 806A9718  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 806A971C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806A9720  38 03 00 58 */	addi r0, r3, 0x58
/* 806A9724  90 1E 01 38 */	stw r0, 0x138(r30)
/* 806A9728  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 806A972C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 806A9730  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806A9734  38 03 00 2C */	addi r0, r3, 0x2c
/* 806A9738  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806A973C  38 03 00 84 */	addi r0, r3, 0x84
/* 806A9740  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_806A9744:
/* 806A9744  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806A9748  60 00 00 08 */	ori r0, r0, 8
/* 806A974C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806A9750:
/* 806A9750  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 806A9754  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806A9758  38 84 9F FC */	addi r4, r4, stringBase0@l
/* 806A975C  4B 98 37 60 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806A9760  7C 7E 1B 78 */	mr r30, r3
/* 806A9764  2C 1E 00 04 */	cmpwi r30, 4
/* 806A9768  40 82 01 AC */	bne lbl_806A9914
/* 806A976C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806A9770  98 1D 08 19 */	stb r0, 0x819(r29)
/* 806A9774  88 9D 08 19 */	lbz r4, 0x819(r29)
/* 806A9778  28 04 00 FF */	cmplwi r4, 0xff
/* 806A977C  41 82 00 28 */	beq lbl_806A97A4
/* 806A9780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A9784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A9788  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806A978C  7C 05 07 74 */	extsb r5, r0
/* 806A9790  4B 98 BB D0 */	b isSwitch__10dSv_info_cCFii
/* 806A9794  2C 03 00 00 */	cmpwi r3, 0
/* 806A9798  41 82 00 0C */	beq lbl_806A97A4
/* 806A979C  38 60 00 05 */	li r3, 5
/* 806A97A0  48 00 01 78 */	b lbl_806A9918
lbl_806A97A4:
/* 806A97A4  7F A3 EB 78 */	mr r3, r29
/* 806A97A8  3C 80 80 6A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 806A97AC  38 84 78 08 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 806A97B0  38 A0 1A 40 */	li r5, 0x1a40
/* 806A97B4  4B 97 0C FC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806A97B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A97BC  40 82 00 0C */	bne lbl_806A97C8
/* 806A97C0  38 60 00 05 */	li r3, 5
/* 806A97C4  48 00 01 54 */	b lbl_806A9918
lbl_806A97C8:
/* 806A97C8  3C 60 80 6B */	lis r3, data_806AA0D0@ha
/* 806A97CC  8C 03 A0 D0 */	lbzu r0, data_806AA0D0@l(r3)
/* 806A97D0  28 00 00 00 */	cmplwi r0, 0
/* 806A97D4  40 82 00 20 */	bne lbl_806A97F4
/* 806A97D8  38 00 00 01 */	li r0, 1
/* 806A97DC  98 03 00 00 */	stb r0, 0(r3)
/* 806A97E0  98 1D 08 18 */	stb r0, 0x818(r29)
/* 806A97E4  38 00 FF FF */	li r0, -1
/* 806A97E8  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806A97EC  38 63 A0 E0 */	addi r3, r3, l_HIO@l
/* 806A97F0  98 03 00 04 */	stb r0, 4(r3)
lbl_806A97F4:
/* 806A97F4  38 00 00 04 */	li r0, 4
/* 806A97F8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806A97FC  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 806A9800  80 63 00 04 */	lwz r3, 4(r3)
/* 806A9804  38 03 00 24 */	addi r0, r3, 0x24
/* 806A9808  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806A980C  7F A3 EB 78 */	mr r3, r29
/* 806A9810  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 806A9814  FC 40 08 90 */	fmr f2, f1
/* 806A9818  FC 60 08 90 */	fmr f3, f1
/* 806A981C  4B 97 0D 0C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806A9820  7F A3 EB 78 */	mr r3, r29
/* 806A9824  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806A9828  FC 40 08 90 */	fmr f2, f1
/* 806A982C  FC 60 08 90 */	fmr f3, f1
/* 806A9830  4B 97 0D 08 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806A9834  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806A9838  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806A983C  38 BD 05 38 */	addi r5, r29, 0x538
/* 806A9840  38 C0 00 03 */	li r6, 3
/* 806A9844  38 E0 00 01 */	li r7, 1
/* 806A9848  4B C1 78 4C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806A984C  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806A9850  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806A9854  38 84 9F FC */	addi r4, r4, stringBase0@l
/* 806A9858  4B C1 83 38 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 806A985C  38 1D 05 D8 */	addi r0, r29, 0x5d8
/* 806A9860  90 1D 07 FC */	stw r0, 0x7fc(r29)
/* 806A9864  38 00 00 01 */	li r0, 1
/* 806A9868  98 1D 08 12 */	stb r0, 0x812(r29)
/* 806A986C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806A9870  D0 01 00 08 */	stfs f0, 8(r1)
/* 806A9874  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806A9878  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806A987C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806A9880  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806A9884  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A9888  EC 01 00 2A */	fadds f0, f1, f0
/* 806A988C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806A9890  38 61 00 08 */	addi r3, r1, 8
/* 806A9894  4B 97 44 28 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 806A9898  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A989C  41 82 00 10 */	beq lbl_806A98AC
/* 806A98A0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 806A98A4  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 806A98A8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_806A98AC:
/* 806A98AC  7F A3 EB 78 */	mr r3, r29
/* 806A98B0  4B FF DF 79 */	bl initCcCylinder__8daE_DF_cFv
/* 806A98B4  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 806A98B8  80 A3 00 04 */	lwz r5, 4(r3)
/* 806A98BC  93 A5 00 14 */	stw r29, 0x14(r5)
/* 806A98C0  38 E0 00 00 */	li r7, 0
/* 806A98C4  3C 60 80 6A */	lis r3, JointCallBack__FP8J3DJointi@ha
/* 806A98C8  38 83 7E 30 */	addi r4, r3, JointCallBack__FP8J3DJointi@l
/* 806A98CC  48 00 00 20 */	b lbl_806A98EC
lbl_806A98D0:
/* 806A98D0  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 806A98D4  41 82 00 14 */	beq lbl_806A98E8
/* 806A98D8  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806A98DC  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806A98E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 806A98E4  90 83 00 04 */	stw r4, 4(r3)
lbl_806A98E8:
/* 806A98E8  38 E7 00 01 */	addi r7, r7, 1
lbl_806A98EC:
/* 806A98EC  80 C5 00 04 */	lwz r6, 4(r5)
/* 806A98F0  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806A98F4  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806A98F8  7C 00 18 40 */	cmplw r0, r3
/* 806A98FC  41 80 FF D4 */	blt lbl_806A98D0
/* 806A9900  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 806A9904  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806A9908  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 806A990C  7F A3 EB 78 */	mr r3, r29
/* 806A9910  4B FF FD 21 */	bl daE_DF_Execute__FP8daE_DF_c
lbl_806A9914:
/* 806A9914  7F C3 F3 78 */	mr r3, r30
lbl_806A9918:
/* 806A9918  39 61 00 30 */	addi r11, r1, 0x30
/* 806A991C  4B CB 89 0C */	b _restgpr_29
/* 806A9920  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A9924  7C 08 03 A6 */	mtlr r0
/* 806A9928  38 21 00 30 */	addi r1, r1, 0x30
/* 806A992C  4E 80 00 20 */	blr 
