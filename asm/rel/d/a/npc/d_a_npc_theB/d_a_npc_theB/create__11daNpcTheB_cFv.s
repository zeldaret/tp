lbl_80AFCB44:
/* 80AFCB44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AFCB48  7C 08 02 A6 */	mflr r0
/* 80AFCB4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AFCB50  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFCB54  4B 86 56 89 */	bl _savegpr_29
/* 80AFCB58  7C 7D 1B 78 */	mr r29, r3
/* 80AFCB5C  3C 80 80 B0 */	lis r4, m__17daNpcTheB_Param_c@ha /* 0x80B00D6C@ha */
/* 80AFCB60  3B E4 0D 6C */	addi r31, r4, m__17daNpcTheB_Param_c@l /* 0x80B00D6C@l */
/* 80AFCB64  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AFCB68  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AFCB6C  40 82 00 1C */	bne lbl_80AFCB88
/* 80AFCB70  28 1D 00 00 */	cmplwi r29, 0
/* 80AFCB74  41 82 00 08 */	beq lbl_80AFCB7C
/* 80AFCB78  4B FF FB F5 */	bl __ct__11daNpcTheB_cFv
lbl_80AFCB7C:
/* 80AFCB7C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AFCB80  60 00 00 08 */	ori r0, r0, 8
/* 80AFCB84  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AFCB88:
/* 80AFCB88  38 7D 0D D8 */	addi r3, r29, 0xdd8
/* 80AFCB8C  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFCB90  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFCB94  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFCB98  4B 53 03 25 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AFCB9C  2C 03 00 04 */	cmpwi r3, 4
/* 80AFCBA0  40 82 01 E0 */	bne lbl_80AFCD80
/* 80AFCBA4  7F A3 EB 78 */	mr r3, r29
/* 80AFCBA8  3C 80 80 B0 */	lis r4, createHeapCallBack__11daNpcTheB_cFP10fopAc_ac_c@ha /* 0x80AFD49C@ha */
/* 80AFCBAC  38 84 D4 9C */	addi r4, r4, createHeapCallBack__11daNpcTheB_cFP10fopAc_ac_c@l /* 0x80AFD49C@l */
/* 80AFCBB0  38 A0 2C B0 */	li r5, 0x2cb0
/* 80AFCBB4  4B 51 D8 FD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AFCBB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AFCBBC  40 82 00 0C */	bne lbl_80AFCBC8
/* 80AFCBC0  38 60 00 05 */	li r3, 5
/* 80AFCBC4  48 00 01 BC */	b lbl_80AFCD80
lbl_80AFCBC8:
/* 80AFCBC8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80AFCBCC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80AFCBD0  7C 03 07 34 */	extsh r3, r0
/* 80AFCBD4  3C 03 00 00 */	addis r0, r3, 0
/* 80AFCBD8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AFCBDC  41 82 00 0C */	beq lbl_80AFCBE8
/* 80AFCBE0  90 7D 0D F4 */	stw r3, 0xdf4(r29)
/* 80AFCBE4  48 00 00 0C */	b lbl_80AFCBF0
lbl_80AFCBE8:
/* 80AFCBE8  38 00 FF FF */	li r0, -1
/* 80AFCBEC  90 1D 0D F4 */	stw r0, 0xdf4(r29)
lbl_80AFCBF0:
/* 80AFCBF0  7F A3 EB 78 */	mr r3, r29
/* 80AFCBF4  4B 51 CC D1 */	bl fopAcM_setStageLayer__FPv
/* 80AFCBF8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFCBFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFCC00  38 03 00 24 */	addi r0, r3, 0x24
/* 80AFCC04  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AFCC08  7F A3 EB 78 */	mr r3, r29
/* 80AFCC0C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80AFCC10  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80AFCC14  FC 60 08 90 */	fmr f3, f1
/* 80AFCC18  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 80AFCC1C  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 80AFCC20  C0 DF 00 7C */	lfs f6, 0x7c(r31)
/* 80AFCC24  4B 51 D9 25 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AFCC28  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80AFCC2C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AFCC30  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AFCC34  38 C0 00 03 */	li r6, 3
/* 80AFCC38  38 E0 00 01 */	li r7, 1
/* 80AFCC3C  4B 7C 38 F5 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80AFCC40  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80AFCC44  3B DF 00 00 */	addi r30, r31, 0
/* 80AFCC48  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80AFCC4C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80AFCC50  4B 57 93 09 */	bl SetWall__12dBgS_AcchCirFff
/* 80AFCC54  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AFCC58  90 01 00 08 */	stw r0, 8(r1)
/* 80AFCC5C  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80AFCC60  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AFCC64  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AFCC68  7F A6 EB 78 */	mr r6, r29
/* 80AFCC6C  38 E0 00 01 */	li r7, 1
/* 80AFCC70  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80AFCC74  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AFCC78  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AFCC7C  4B 57 95 CD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AFCC80  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80AFCC84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFCC88  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFCC8C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AFCC90  4B 57 9E 1D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AFCC94  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80AFCC98  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80AFCC9C  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80AFCCA0  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80AFCCA4  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80AFCCA8  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80AFCCAC  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80AFCCB0  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80AFCCB4  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80AFCCB8  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80AFCCBC  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80AFCCC0  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80AFCCC4  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80AFCCC8  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80AFCCCC  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80AFCCD0  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80AFCCD4  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80AFCCD8  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80AFCCDC  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80AFCCE0  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80AFCCE4  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80AFCCE8  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80AFCCEC  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80AFCCF0  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80AFCCF4  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80AFCCF8  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80AFCCFC  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80AFCD00  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80AFCD04  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80AFCD08  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80AFCD0C  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80AFCD10  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80AFCD14  FC 00 00 1E */	fctiwz f0, f0
/* 80AFCD18  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AFCD1C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AFCD20  38 A0 00 00 */	li r5, 0
/* 80AFCD24  7F A6 EB 78 */	mr r6, r29
/* 80AFCD28  4B 58 6B 39 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AFCD2C  38 7D 0C 84 */	addi r3, r29, 0xc84
/* 80AFCD30  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80AFCD34  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80AFCD38  4B 58 7B 7D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AFCD3C  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80AFCD40  90 1D 0C C8 */	stw r0, 0xcc8(r29)
/* 80AFCD44  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80AFCD48  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80AFCD4C  4B 77 24 AD */	bl SetH__8cM3dGCylFf
/* 80AFCD50  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80AFCD54  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80AFCD58  4B 77 24 A9 */	bl SetR__8cM3dGCylFf
/* 80AFCD5C  7F A3 EB 78 */	mr r3, r29
/* 80AFCD60  4B 65 60 25 */	bl setEnvTevColor__8daNpcF_cFv
/* 80AFCD64  7F A3 EB 78 */	mr r3, r29
/* 80AFCD68  4B 65 60 79 */	bl setRoomNo__8daNpcF_cFv
/* 80AFCD6C  7F A3 EB 78 */	mr r3, r29
/* 80AFCD70  48 00 16 31 */	bl reset__11daNpcTheB_cFv
/* 80AFCD74  7F A3 EB 78 */	mr r3, r29
/* 80AFCD78  48 00 04 B9 */	bl Execute__11daNpcTheB_cFv
/* 80AFCD7C  38 60 00 04 */	li r3, 4
lbl_80AFCD80:
/* 80AFCD80  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFCD84  4B 86 54 A5 */	bl _restgpr_29
/* 80AFCD88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AFCD8C  7C 08 03 A6 */	mtlr r0
/* 80AFCD90  38 21 00 30 */	addi r1, r1, 0x30
/* 80AFCD94  4E 80 00 20 */	blr 
