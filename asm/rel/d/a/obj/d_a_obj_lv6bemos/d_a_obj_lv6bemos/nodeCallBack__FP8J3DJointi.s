lbl_80C7CB18:
/* 80C7CB18  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C7CB1C  7C 08 02 A6 */	mflr r0
/* 80C7CB20  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C7CB24  39 61 00 50 */	addi r11, r1, 0x50
/* 80C7CB28  4B 6E 56 AD */	bl _savegpr_27
/* 80C7CB2C  3C A0 80 C8 */	lis r5, l_sph_src@ha /* 0x80C7DECC@ha */
/* 80C7CB30  3B E5 DE CC */	addi r31, r5, l_sph_src@l /* 0x80C7DECC@l */
/* 80C7CB34  2C 04 00 00 */	cmpwi r4, 0
/* 80C7CB38  40 82 02 D0 */	bne lbl_80C7CE08
/* 80C7CB3C  A3 63 00 14 */	lhz r27, 0x14(r3)
/* 80C7CB40  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C7CB44  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C7CB48  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80C7CB4C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80C7CB50  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80C7CB54  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C7CB58  1F BB 00 30 */	mulli r29, r27, 0x30
/* 80C7CB5C  7C 60 EA 14 */	add r3, r0, r29
/* 80C7CB60  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CB64  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CB68  4B 6C 99 49 */	bl PSMTXCopy
/* 80C7CB6C  2C 1B 00 01 */	cmpwi r27, 1
/* 80C7CB70  40 82 00 18 */	bne lbl_80C7CB88
/* 80C7CB74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CB78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CB7C  A8 9C 08 92 */	lha r4, 0x892(r28)
/* 80C7CB80  4B 38 F8 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 80C7CB84  48 00 02 58 */	b lbl_80C7CDDC
lbl_80C7CB88:
/* 80C7CB88  2C 1B 00 02 */	cmpwi r27, 2
/* 80C7CB8C  40 82 02 50 */	bne lbl_80C7CDDC
/* 80C7CB90  4B 39 01 39 */	bl push__14mDoMtx_stack_cFv
/* 80C7CB94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CB98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CB9C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C7CBA0  D0 1C 08 94 */	stfs f0, 0x894(r28)
/* 80C7CBA4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C7CBA8  D0 1C 08 98 */	stfs f0, 0x898(r28)
/* 80C7CBAC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C7CBB0  D0 1C 08 9C */	stfs f0, 0x89c(r28)
/* 80C7CBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7CBB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7CBBC  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80C7CBC0  88 1C 08 91 */	lbz r0, 0x891(r28)
/* 80C7CBC4  28 00 00 00 */	cmplwi r0, 0
/* 80C7CBC8  41 82 00 18 */	beq lbl_80C7CBE0
/* 80C7CBCC  38 7C 09 14 */	addi r3, r28, 0x914
/* 80C7CBD0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C7CBD4  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80C7CBD8  4B 5F 2E A9 */	bl cLib_addCalc0__FPfff
/* 80C7CBDC  48 00 00 0C */	b lbl_80C7CBE8
lbl_80C7CBE0:
/* 80C7CBE0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C7CBE4  D0 1C 09 14 */	stfs f0, 0x914(r28)
lbl_80C7CBE8:
/* 80C7CBE8  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80C7CBEC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C7CBF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7CBF4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C7CBF8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C7CBFC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C7CC00  C0 5C 08 9C */	lfs f2, 0x89c(r28)
/* 80C7CC04  C0 1C 08 94 */	lfs f0, 0x894(r28)
/* 80C7CC08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C7CC0C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C7CC10  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C7CC14  38 61 00 0C */	addi r3, r1, 0xc
/* 80C7CC18  38 81 00 18 */	addi r4, r1, 0x18
/* 80C7CC1C  4B 6C A7 81 */	bl PSVECSquareDistance
/* 80C7CC20  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C7CC24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7CC28  40 81 00 58 */	ble lbl_80C7CC80
/* 80C7CC2C  FC 00 08 34 */	frsqrte f0, f1
/* 80C7CC30  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80C7CC34  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7CC38  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80C7CC3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7CC40  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7CC44  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7CC48  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7CC4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7CC50  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7CC54  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7CC58  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7CC5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7CC60  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7CC64  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7CC68  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7CC6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7CC70  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7CC74  FC 21 00 32 */	fmul f1, f1, f0
/* 80C7CC78  FC 20 08 18 */	frsp f1, f1
/* 80C7CC7C  48 00 00 88 */	b lbl_80C7CD04
lbl_80C7CC80:
/* 80C7CC80  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80C7CC84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7CC88  40 80 00 10 */	bge lbl_80C7CC98
/* 80C7CC8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7CC90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7CC94  48 00 00 70 */	b lbl_80C7CD04
lbl_80C7CC98:
/* 80C7CC98  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C7CC9C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C7CCA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C7CCA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C7CCA8  7C 03 00 00 */	cmpw r3, r0
/* 80C7CCAC  41 82 00 14 */	beq lbl_80C7CCC0
/* 80C7CCB0  40 80 00 40 */	bge lbl_80C7CCF0
/* 80C7CCB4  2C 03 00 00 */	cmpwi r3, 0
/* 80C7CCB8  41 82 00 20 */	beq lbl_80C7CCD8
/* 80C7CCBC  48 00 00 34 */	b lbl_80C7CCF0
lbl_80C7CCC0:
/* 80C7CCC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7CCC4  41 82 00 0C */	beq lbl_80C7CCD0
/* 80C7CCC8  38 00 00 01 */	li r0, 1
/* 80C7CCCC  48 00 00 28 */	b lbl_80C7CCF4
lbl_80C7CCD0:
/* 80C7CCD0  38 00 00 02 */	li r0, 2
/* 80C7CCD4  48 00 00 20 */	b lbl_80C7CCF4
lbl_80C7CCD8:
/* 80C7CCD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7CCDC  41 82 00 0C */	beq lbl_80C7CCE8
/* 80C7CCE0  38 00 00 05 */	li r0, 5
/* 80C7CCE4  48 00 00 10 */	b lbl_80C7CCF4
lbl_80C7CCE8:
/* 80C7CCE8  38 00 00 03 */	li r0, 3
/* 80C7CCEC  48 00 00 08 */	b lbl_80C7CCF4
lbl_80C7CCF0:
/* 80C7CCF0  38 00 00 04 */	li r0, 4
lbl_80C7CCF4:
/* 80C7CCF4  2C 00 00 01 */	cmpwi r0, 1
/* 80C7CCF8  40 82 00 0C */	bne lbl_80C7CD04
/* 80C7CCFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7CD00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C7CD04:
/* 80C7CD04  FC 40 08 90 */	fmr f2, f1
/* 80C7CD08  C0 7C 08 98 */	lfs f3, 0x898(r28)
/* 80C7CD0C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C7CD10  EC 63 00 28 */	fsubs f3, f3, f0
/* 80C7CD14  C0 1C 09 14 */	lfs f0, 0x914(r28)
/* 80C7CD18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7CD1C  40 81 00 08 */	ble lbl_80C7CD24
/* 80C7CD20  EC 41 00 28 */	fsubs f2, f1, f0
lbl_80C7CD24:
/* 80C7CD24  FC 20 18 90 */	fmr f1, f3
/* 80C7CD28  4B 5E A9 4D */	bl cM_atan2s__Fff
/* 80C7CD2C  7C 7B 1B 78 */	mr r27, r3
/* 80C7CD30  7F 60 07 34 */	extsh r0, r27
/* 80C7CD34  2C 00 1F 40 */	cmpwi r0, 0x1f40
/* 80C7CD38  40 81 00 08 */	ble lbl_80C7CD40
/* 80C7CD3C  3B 60 1F 40 */	li r27, 0x1f40
lbl_80C7CD40:
/* 80C7CD40  38 7C 08 94 */	addi r3, r28, 0x894
/* 80C7CD44  4B 39 00 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C7CD48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CD4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CD50  A8 9C 08 92 */	lha r4, 0x892(r28)
/* 80C7CD54  4B 38 F6 E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C7CD58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CD5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CD60  7F 64 DB 78 */	mr r4, r27
/* 80C7CD64  4B 38 F6 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C7CD68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CD6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CD70  80 9C 08 80 */	lwz r4, 0x880(r28)
/* 80C7CD74  38 84 00 24 */	addi r4, r4, 0x24
/* 80C7CD78  4B 6C 97 39 */	bl PSMTXCopy
/* 80C7CD7C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C7CD80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C7CD84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C7CD88  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C7CD8C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C7CD90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CD94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CD98  38 81 00 24 */	addi r4, r1, 0x24
/* 80C7CD9C  38 BC 07 38 */	addi r5, r28, 0x738
/* 80C7CDA0  4B 6C 9F CD */	bl PSMTXMultVec
/* 80C7CDA4  C0 1C 08 94 */	lfs f0, 0x894(r28)
/* 80C7CDA8  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 80C7CDAC  C0 1C 08 98 */	lfs f0, 0x898(r28)
/* 80C7CDB0  D0 1C 07 30 */	stfs f0, 0x730(r28)
/* 80C7CDB4  C0 1C 08 9C */	lfs f0, 0x89c(r28)
/* 80C7CDB8  D0 1C 07 34 */	stfs f0, 0x734(r28)
/* 80C7CDBC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C7CDC0  D0 1C 07 44 */	stfs f0, 0x744(r28)
/* 80C7CDC4  38 7C 07 0C */	addi r3, r28, 0x70c
/* 80C7CDC8  38 9C 07 2C */	addi r4, r28, 0x72c
/* 80C7CDCC  4B 5F 22 71 */	bl Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80C7CDD0  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80C7CDD4  4B 40 7A 51 */	bl CalcAtVec__8dCcD_CpsFv
/* 80C7CDD8  4B 38 FF 3D */	bl pop__14mDoMtx_stack_cFv
lbl_80C7CDDC:
/* 80C7CDDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CDE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CDE4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80C7CDE8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C7CDEC  7C 80 EA 14 */	add r4, r0, r29
/* 80C7CDF0  4B 6C 96 C1 */	bl PSMTXCopy
/* 80C7CDF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CDF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CDFC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80C7CE00  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80C7CE04  4B 6C 96 AD */	bl PSMTXCopy
lbl_80C7CE08:
/* 80C7CE08  38 60 00 01 */	li r3, 1
/* 80C7CE0C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C7CE10  4B 6E 54 11 */	bl _restgpr_27
/* 80C7CE14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C7CE18  7C 08 03 A6 */	mtlr r0
/* 80C7CE1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80C7CE20  4E 80 00 20 */	blr 
