lbl_80B1CC28:
/* 80B1CC28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B1CC2C  7C 08 02 A6 */	mflr r0
/* 80B1CC30  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B1CC34  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80B1CC38  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80B1CC3C  7C 7E 1B 78 */	mr r30, r3
/* 80B1CC40  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha
/* 80B1CC44  3B E3 DD 58 */	addi r31, r3, m__16daNpcTks_Param_c@l
/* 80B1CC48  A8 1E 13 86 */	lha r0, 0x1386(r30)
/* 80B1CC4C  2C 00 00 01 */	cmpwi r0, 1
/* 80B1CC50  40 82 00 34 */	bne lbl_80B1CC84
/* 80B1CC54  38 60 00 00 */	li r3, 0
/* 80B1CC58  7C 66 1B 78 */	mr r6, r3
/* 80B1CC5C  7C 65 1B 78 */	mr r5, r3
/* 80B1CC60  7C 64 1B 78 */	mr r4, r3
/* 80B1CC64  38 00 00 03 */	li r0, 3
/* 80B1CC68  7C 09 03 A6 */	mtctr r0
lbl_80B1CC6C:
/* 80B1CC6C  7C FE 1A 14 */	add r7, r30, r3
/* 80B1CC70  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80B1CC74  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80B1CC78  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80B1CC7C  38 63 00 06 */	addi r3, r3, 6
/* 80B1CC80  42 00 FF EC */	bdnz lbl_80B1CC6C
lbl_80B1CC84:
/* 80B1CC84  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B1CC88  80 63 00 04 */	lwz r3, 4(r3)
/* 80B1CC8C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B1CC90  38 C0 00 00 */	li r6, 0
/* 80B1CC94  3C 60 80 B1 */	lis r3, ctrlJointCallBack__10daNpcTks_cFP8J3DJointi@ha
/* 80B1CC98  38 83 56 70 */	addi r4, r3, ctrlJointCallBack__10daNpcTks_cFP8J3DJointi@l
/* 80B1CC9C  48 00 00 18 */	b lbl_80B1CCB4
lbl_80B1CCA0:
/* 80B1CCA0  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80B1CCA4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B1CCA8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B1CCAC  90 83 00 04 */	stw r4, 4(r3)
/* 80B1CCB0  38 C6 00 01 */	addi r6, r6, 1
lbl_80B1CCB4:
/* 80B1CCB4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B1CCB8  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 80B1CCBC  7C 03 00 40 */	cmplw r3, r0
/* 80B1CCC0  41 80 FF E0 */	blt lbl_80B1CCA0
/* 80B1CCC4  7F C3 F3 78 */	mr r3, r30
/* 80B1CCC8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B1CCCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B1CCD0  7D 89 03 A6 */	mtctr r12
/* 80B1CCD4  4E 80 04 21 */	bctrl 
/* 80B1CCD8  7F C3 F3 78 */	mr r3, r30
/* 80B1CCDC  48 00 02 F5 */	bl lookat__10daNpcTks_cFv
/* 80B1CCE0  88 1E 13 8A */	lbz r0, 0x138a(r30)
/* 80B1CCE4  28 00 00 00 */	cmplwi r0, 0
/* 80B1CCE8  41 82 00 30 */	beq lbl_80B1CD18
/* 80B1CCEC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B1CCF0  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80B1CCF4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B1CCF8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80B1CCFC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B1CD00  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80B1CD04  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80B1CD08  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80B1CD0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B1CD10  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80B1CD14  48 00 00 A0 */	b lbl_80B1CDB4
lbl_80B1CD18:
/* 80B1CD18  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B1CD1C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B1CD20  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B1CD24  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B1CD28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B1CD2C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B1CD30  80 63 00 04 */	lwz r3, 4(r3)
/* 80B1CD34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B1CD38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B1CD3C  38 63 03 30 */	addi r3, r3, 0x330
/* 80B1CD40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B1CD44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B1CD48  4B 82 97 68 */	b PSMTXCopy
/* 80B1CD4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B1CD50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B1CD54  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B1CD58  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80B1CD5C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B1CD60  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80B1CD64  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B1CD68  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80B1CD6C  38 81 00 30 */	addi r4, r1, 0x30
/* 80B1CD70  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B1CD74  4B 82 9F F8 */	b PSMTXMultVec
/* 80B1CD78  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B1CD7C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B1CD80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B1CD84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B1CD88  38 81 00 30 */	addi r4, r1, 0x30
/* 80B1CD8C  7C 85 23 78 */	mr r5, r4
/* 80B1CD90  4B 82 9F DC */	b PSMTXMultVec
/* 80B1CD94  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80B1CD98  38 81 00 30 */	addi r4, r1, 0x30
/* 80B1CD9C  4B 75 3E D8 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B1CDA0  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80B1CDA4  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80B1CDA8  38 81 00 30 */	addi r4, r1, 0x30
/* 80B1CDAC  4B 75 3E 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B1CDB0  B0 7E 09 04 */	sth r3, 0x904(r30)
lbl_80B1CDB4:
/* 80B1CDB4  80 9E 11 94 */	lwz r4, 0x1194(r30)
/* 80B1CDB8  28 04 00 00 */	cmplwi r4, 0
/* 80B1CDBC  41 82 01 6C */	beq lbl_80B1CF28
/* 80B1CDC0  38 61 00 18 */	addi r3, r1, 0x18
/* 80B1CDC4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B1CDC8  4B 74 9D 6C */	b __mi__4cXyzCFRC3Vec
/* 80B1CDCC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80B1CDD0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B1CDD4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B1CDD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B1CDDC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80B1CDE0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80B1CDE4  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 80B1CDE8  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B1CDEC  7C 03 02 14 */	add r0, r3, r0
/* 80B1CDF0  7C 00 00 D0 */	neg r0, r0
/* 80B1CDF4  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80B1CDF8  4B 74 A8 7C */	b cM_atan2s__Fff
/* 80B1CDFC  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 80B1CE00  7C 00 1A 14 */	add r0, r0, r3
/* 80B1CE04  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80B1CE08  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B1CE0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B1CE10  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B1CE14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B1CE18  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B1CE1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B1CE20  38 61 00 0C */	addi r3, r1, 0xc
/* 80B1CE24  4B 82 A3 14 */	b PSVECSquareMag
/* 80B1CE28  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B1CE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B1CE30  40 81 00 58 */	ble lbl_80B1CE88
/* 80B1CE34  FC 00 08 34 */	frsqrte f0, f1
/* 80B1CE38  C8 9F 02 18 */	lfd f4, 0x218(r31)
/* 80B1CE3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B1CE40  C8 7F 02 20 */	lfd f3, 0x220(r31)
/* 80B1CE44  FC 00 00 32 */	fmul f0, f0, f0
/* 80B1CE48  FC 01 00 32 */	fmul f0, f1, f0
/* 80B1CE4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B1CE50  FC 02 00 32 */	fmul f0, f2, f0
/* 80B1CE54  FC 44 00 32 */	fmul f2, f4, f0
/* 80B1CE58  FC 00 00 32 */	fmul f0, f0, f0
/* 80B1CE5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B1CE60  FC 03 00 28 */	fsub f0, f3, f0
/* 80B1CE64  FC 02 00 32 */	fmul f0, f2, f0
/* 80B1CE68  FC 44 00 32 */	fmul f2, f4, f0
/* 80B1CE6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B1CE70  FC 01 00 32 */	fmul f0, f1, f0
/* 80B1CE74  FC 03 00 28 */	fsub f0, f3, f0
/* 80B1CE78  FC 02 00 32 */	fmul f0, f2, f0
/* 80B1CE7C  FC 41 00 32 */	fmul f2, f1, f0
/* 80B1CE80  FC 40 10 18 */	frsp f2, f2
/* 80B1CE84  48 00 00 90 */	b lbl_80B1CF14
lbl_80B1CE88:
/* 80B1CE88  C8 1F 02 28 */	lfd f0, 0x228(r31)
/* 80B1CE8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B1CE90  40 80 00 10 */	bge lbl_80B1CEA0
/* 80B1CE94  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B1CE98  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B1CE9C  48 00 00 78 */	b lbl_80B1CF14
lbl_80B1CEA0:
/* 80B1CEA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B1CEA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B1CEA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B1CEAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B1CEB0  7C 03 00 00 */	cmpw r3, r0
/* 80B1CEB4  41 82 00 14 */	beq lbl_80B1CEC8
/* 80B1CEB8  40 80 00 40 */	bge lbl_80B1CEF8
/* 80B1CEBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B1CEC0  41 82 00 20 */	beq lbl_80B1CEE0
/* 80B1CEC4  48 00 00 34 */	b lbl_80B1CEF8
lbl_80B1CEC8:
/* 80B1CEC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B1CECC  41 82 00 0C */	beq lbl_80B1CED8
/* 80B1CED0  38 00 00 01 */	li r0, 1
/* 80B1CED4  48 00 00 28 */	b lbl_80B1CEFC
lbl_80B1CED8:
/* 80B1CED8  38 00 00 02 */	li r0, 2
/* 80B1CEDC  48 00 00 20 */	b lbl_80B1CEFC
lbl_80B1CEE0:
/* 80B1CEE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B1CEE4  41 82 00 0C */	beq lbl_80B1CEF0
/* 80B1CEE8  38 00 00 05 */	li r0, 5
/* 80B1CEEC  48 00 00 10 */	b lbl_80B1CEFC
lbl_80B1CEF0:
/* 80B1CEF0  38 00 00 03 */	li r0, 3
/* 80B1CEF4  48 00 00 08 */	b lbl_80B1CEFC
lbl_80B1CEF8:
/* 80B1CEF8  38 00 00 04 */	li r0, 4
lbl_80B1CEFC:
/* 80B1CEFC  2C 00 00 01 */	cmpwi r0, 1
/* 80B1CF00  40 82 00 10 */	bne lbl_80B1CF10
/* 80B1CF04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B1CF08  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B1CF0C  48 00 00 08 */	b lbl_80B1CF14
lbl_80B1CF10:
/* 80B1CF10  FC 40 08 90 */	fmr f2, f1
lbl_80B1CF14:
/* 80B1CF14  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B1CF18  4B 74 A7 5C */	b cM_atan2s__Fff
/* 80B1CF1C  7C 03 00 D0 */	neg r0, r3
/* 80B1CF20  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80B1CF24  48 00 00 10 */	b lbl_80B1CF34
lbl_80B1CF28:
/* 80B1CF28  38 00 00 00 */	li r0, 0
/* 80B1CF2C  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80B1CF30  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_80B1CF34:
/* 80B1CF34  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80B1CF38  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B1CF3C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B1CF40  EC 21 00 2A */	fadds f1, f1, f0
/* 80B1CF44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B1CF48  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B1CF4C  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80B1CF50  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80B1CF54  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B1CF58  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B1CF5C  40 82 00 5C */	bne lbl_80B1CFB8
/* 80B1CF60  88 1E 13 8A */	lbz r0, 0x138a(r30)
/* 80B1CF64  28 00 00 00 */	cmplwi r0, 0
/* 80B1CF68  40 82 00 24 */	bne lbl_80B1CF8C
/* 80B1CF6C  38 7E 13 34 */	addi r3, r30, 0x1334
/* 80B1CF70  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B1CF74  4B 75 22 68 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B1CF78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1CF7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1CF80  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B1CF84  38 9E 12 10 */	addi r4, r30, 0x1210
/* 80B1CF88  4B 74 7C 20 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B1CF8C:
/* 80B1CF8C  88 1E 11 5E */	lbz r0, 0x115e(r30)
/* 80B1CF90  28 00 00 00 */	cmplwi r0, 0
/* 80B1CF94  41 82 00 24 */	beq lbl_80B1CFB8
/* 80B1CF98  38 7E 11 18 */	addi r3, r30, 0x1118
/* 80B1CF9C  38 9E 11 4C */	addi r4, r30, 0x114c
/* 80B1CFA0  4B 75 22 3C */	b SetC__8cM3dGCylFRC4cXyz
/* 80B1CFA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1CFA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1CFAC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B1CFB0  38 9E 0F F4 */	addi r4, r30, 0xff4
/* 80B1CFB4  4B 74 7B F4 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B1CFB8:
/* 80B1CFB8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80B1CFBC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80B1CFC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B1CFC4  7C 08 03 A6 */	mtlr r0
/* 80B1CFC8  38 21 00 50 */	addi r1, r1, 0x50
/* 80B1CFCC  4E 80 00 20 */	blr 
