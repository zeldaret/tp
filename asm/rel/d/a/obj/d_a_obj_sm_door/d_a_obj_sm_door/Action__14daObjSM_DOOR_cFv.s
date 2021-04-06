lbl_80CD8790:
/* 80CD8790  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CD8794  7C 08 02 A6 */	mflr r0
/* 80CD8798  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CD879C  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD87A0  4B 68 9A 3D */	bl _savegpr_29
/* 80CD87A4  7C 7D 1B 78 */	mr r29, r3
/* 80CD87A8  3C 80 80 CE */	lis r4, lit_3697@ha /* 0x80CD9590@ha */
/* 80CD87AC  3B E4 95 90 */	addi r31, r4, lit_3697@l /* 0x80CD9590@l */
/* 80CD87B0  A8 03 05 AC */	lha r0, 0x5ac(r3)
/* 80CD87B4  2C 00 00 01 */	cmpwi r0, 1
/* 80CD87B8  41 82 00 78 */	beq lbl_80CD8830
/* 80CD87BC  40 80 00 10 */	bge lbl_80CD87CC
/* 80CD87C0  2C 00 00 00 */	cmpwi r0, 0
/* 80CD87C4  40 80 00 14 */	bge lbl_80CD87D8
/* 80CD87C8  48 00 02 60 */	b lbl_80CD8A28
lbl_80CD87CC:
/* 80CD87CC  2C 00 00 03 */	cmpwi r0, 3
/* 80CD87D0  40 80 02 58 */	bge lbl_80CD8A28
/* 80CD87D4  48 00 02 10 */	b lbl_80CD89E4
lbl_80CD87D8:
/* 80CD87D8  3C 60 80 CE */	lis r3, s_obj_sub__FPvPv@ha /* 0x80CD85FC@ha */
/* 80CD87DC  38 63 85 FC */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x80CD85FC@l */
/* 80CD87E0  7F A4 EB 78 */	mr r4, r29
/* 80CD87E4  4B 34 8B 55 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80CD87E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD87EC  41 82 02 3C */	beq lbl_80CD8A28
/* 80CD87F0  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80CD87F4  28 00 00 02 */	cmplwi r0, 2
/* 80CD87F8  40 82 00 18 */	bne lbl_80CD8810
/* 80CD87FC  7F A3 EB 78 */	mr r3, r29
/* 80CD8800  4B FF FF 85 */	bl ChangeModel__14daObjSM_DOOR_cFv
/* 80CD8804  A8 7D 05 AC */	lha r3, 0x5ac(r29)
/* 80CD8808  38 03 00 01 */	addi r0, r3, 1
/* 80CD880C  B0 1D 05 AC */	sth r0, 0x5ac(r29)
lbl_80CD8810:
/* 80CD8810  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80CD8814  28 00 00 05 */	cmplwi r0, 5
/* 80CD8818  40 82 02 10 */	bne lbl_80CD8A28
/* 80CD881C  7F A3 EB 78 */	mr r3, r29
/* 80CD8820  4B 34 14 5D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CD8824  7F C3 F3 78 */	mr r3, r30
/* 80CD8828  4B 34 14 55 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CD882C  48 00 01 FC */	b lbl_80CD8A28
lbl_80CD8830:
/* 80CD8830  3C 60 80 CE */	lis r3, s_obj_sub__FPvPv@ha /* 0x80CD85FC@ha */
/* 80CD8834  38 63 85 FC */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x80CD85FC@l */
/* 80CD8838  7F A4 EB 78 */	mr r4, r29
/* 80CD883C  4B 34 8A FD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80CD8840  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD8844  41 82 01 E4 */	beq lbl_80CD8A28
/* 80CD8848  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80CD884C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CD8850  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD8854  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CD8858  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CD885C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80CD8860  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80CD8864  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CD8868  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD886C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CD8870  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80CD8874  38 61 00 10 */	addi r3, r1, 0x10
/* 80CD8878  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CD887C  4B 66 EB 21 */	bl PSVECSquareDistance
/* 80CD8880  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CD8884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD8888  40 81 00 58 */	ble lbl_80CD88E0
/* 80CD888C  FC 00 08 34 */	frsqrte f0, f1
/* 80CD8890  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80CD8894  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD8898  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80CD889C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD88A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD88A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD88A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD88AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD88B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD88B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD88B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD88BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD88C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD88C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD88C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD88CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD88D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD88D4  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD88D8  FC 20 08 18 */	frsp f1, f1
/* 80CD88DC  48 00 00 88 */	b lbl_80CD8964
lbl_80CD88E0:
/* 80CD88E0  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80CD88E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD88E8  40 80 00 10 */	bge lbl_80CD88F8
/* 80CD88EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD88F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD88F4  48 00 00 70 */	b lbl_80CD8964
lbl_80CD88F8:
/* 80CD88F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD88FC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CD8900  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD8904  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD8908  7C 03 00 00 */	cmpw r3, r0
/* 80CD890C  41 82 00 14 */	beq lbl_80CD8920
/* 80CD8910  40 80 00 40 */	bge lbl_80CD8950
/* 80CD8914  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8918  41 82 00 20 */	beq lbl_80CD8938
/* 80CD891C  48 00 00 34 */	b lbl_80CD8950
lbl_80CD8920:
/* 80CD8920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD8924  41 82 00 0C */	beq lbl_80CD8930
/* 80CD8928  38 00 00 01 */	li r0, 1
/* 80CD892C  48 00 00 28 */	b lbl_80CD8954
lbl_80CD8930:
/* 80CD8930  38 00 00 02 */	li r0, 2
/* 80CD8934  48 00 00 20 */	b lbl_80CD8954
lbl_80CD8938:
/* 80CD8938  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD893C  41 82 00 0C */	beq lbl_80CD8948
/* 80CD8940  38 00 00 05 */	li r0, 5
/* 80CD8944  48 00 00 10 */	b lbl_80CD8954
lbl_80CD8948:
/* 80CD8948  38 00 00 03 */	li r0, 3
/* 80CD894C  48 00 00 08 */	b lbl_80CD8954
lbl_80CD8950:
/* 80CD8950  38 00 00 04 */	li r0, 4
lbl_80CD8954:
/* 80CD8954  2C 00 00 01 */	cmpwi r0, 1
/* 80CD8958  40 82 00 0C */	bne lbl_80CD8964
/* 80CD895C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD8960  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CD8964:
/* 80CD8964  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CD8968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD896C  40 80 00 58 */	bge lbl_80CD89C4
/* 80CD8970  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008029E@ha */
/* 80CD8974  38 03 02 9E */	addi r0, r3, 0x029E /* 0x0008029E@l */
/* 80CD8978  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CD897C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD8980  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD8984  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD8988  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD898C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CD8990  38 C0 00 00 */	li r6, 0
/* 80CD8994  38 E0 00 00 */	li r7, 0
/* 80CD8998  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CD899C  FC 40 08 90 */	fmr f2, f1
/* 80CD89A0  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CD89A4  FC 80 18 90 */	fmr f4, f3
/* 80CD89A8  39 00 00 00 */	li r8, 0
/* 80CD89AC  4B 5D 2F D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CD89B0  A8 7D 05 AC */	lha r3, 0x5ac(r29)
/* 80CD89B4  38 03 00 01 */	addi r0, r3, 1
/* 80CD89B8  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80CD89BC  7F A3 EB 78 */	mr r3, r29
/* 80CD89C0  48 00 00 D1 */	bl ReleaceDzb__14daObjSM_DOOR_cFv
lbl_80CD89C4:
/* 80CD89C4  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80CD89C8  28 00 00 05 */	cmplwi r0, 5
/* 80CD89CC  40 82 00 5C */	bne lbl_80CD8A28
/* 80CD89D0  7F A3 EB 78 */	mr r3, r29
/* 80CD89D4  4B 34 12 A9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CD89D8  7F C3 F3 78 */	mr r3, r30
/* 80CD89DC  4B 34 12 A1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CD89E0  48 00 00 48 */	b lbl_80CD8A28
lbl_80CD89E4:
/* 80CD89E4  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80CD89E8  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80CD89EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CD89F0  3C 00 43 30 */	lis r0, 0x4330
/* 80CD89F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CD89F8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CD89FC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CD8A00  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80CD8A04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CD8A08  FC 00 00 1E */	fctiwz f0, f0
/* 80CD8A0C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CD8A10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD8A14  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 80CD8A18  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80CD8A1C  28 00 00 04 */	cmplwi r0, 4
/* 80CD8A20  40 80 00 08 */	bge lbl_80CD8A28
/* 80CD8A24  4B 34 12 59 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80CD8A28:
/* 80CD8A28  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD8A2C  4B 68 97 FD */	bl _restgpr_29
/* 80CD8A30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CD8A34  7C 08 03 A6 */	mtlr r0
/* 80CD8A38  38 21 00 50 */	addi r1, r1, 0x50
/* 80CD8A3C  4E 80 00 20 */	blr 
