lbl_80C7EC6C:
/* 80C7EC6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7EC70  7C 08 02 A6 */	mflr r0
/* 80C7EC74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7EC78  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7EC7C  4B 6E 35 61 */	bl _savegpr_29
/* 80C7EC80  7C 7E 1B 78 */	mr r30, r3
/* 80C7EC84  7C 9F 23 78 */	mr r31, r4
/* 80C7EC88  3C 60 80 C8 */	lis r3, l_eye_offset@ha /* 0x80C81C2C@ha */
/* 80C7EC8C  3B A3 1C 2C */	addi r29, r3, l_eye_offset@l /* 0x80C81C2C@l */
/* 80C7EC90  80 7E 0A 20 */	lwz r3, 0xa20(r30)
/* 80C7EC94  38 03 00 01 */	addi r0, r3, 1
/* 80C7EC98  90 1E 0A 20 */	stw r0, 0xa20(r30)
/* 80C7EC9C  A8 7E 09 C2 */	lha r3, 0x9c2(r30)
/* 80C7ECA0  A8 1E 09 C4 */	lha r0, 0x9c4(r30)
/* 80C7ECA4  7C 03 00 00 */	cmpw r3, r0
/* 80C7ECA8  41 82 00 18 */	beq lbl_80C7ECC0
/* 80C7ECAC  A8 1E 09 D6 */	lha r0, 0x9d6(r30)
/* 80C7ECB0  2C 00 00 00 */	cmpwi r0, 0
/* 80C7ECB4  40 82 00 0C */	bne lbl_80C7ECC0
/* 80C7ECB8  38 00 00 FA */	li r0, 0xfa
/* 80C7ECBC  B0 1E 09 D6 */	sth r0, 0x9d6(r30)
lbl_80C7ECC0:
/* 80C7ECC0  38 7E 09 C2 */	addi r3, r30, 0x9c2
/* 80C7ECC4  A8 9E 09 C4 */	lha r4, 0x9c4(r30)
/* 80C7ECC8  A8 BE 09 D6 */	lha r5, 0x9d6(r30)
/* 80C7ECCC  4B 5F 1E C5 */	bl cLib_chaseAngleS__FPsss
/* 80C7ECD0  38 7E 09 C6 */	addi r3, r30, 0x9c6
/* 80C7ECD4  A8 9E 09 C8 */	lha r4, 0x9c8(r30)
/* 80C7ECD8  A8 BE 09 DA */	lha r5, 0x9da(r30)
/* 80C7ECDC  4B 5F 1E B5 */	bl cLib_chaseAngleS__FPsss
/* 80C7ECE0  38 7E 09 CA */	addi r3, r30, 0x9ca
/* 80C7ECE4  A8 9E 09 CC */	lha r4, 0x9cc(r30)
/* 80C7ECE8  A8 BE 09 DA */	lha r5, 0x9da(r30)
/* 80C7ECEC  4B 5F 1E A5 */	bl cLib_chaseAngleS__FPsss
/* 80C7ECF0  38 7E 09 CE */	addi r3, r30, 0x9ce
/* 80C7ECF4  A8 9E 09 D0 */	lha r4, 0x9d0(r30)
/* 80C7ECF8  A8 BE 09 DA */	lha r5, 0x9da(r30)
/* 80C7ECFC  4B 5F 1E 95 */	bl cLib_chaseAngleS__FPsss
/* 80C7ED00  38 7E 09 D2 */	addi r3, r30, 0x9d2
/* 80C7ED04  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80C7ED08  A8 BE 09 DA */	lha r5, 0x9da(r30)
/* 80C7ED0C  4B 5F 1E 85 */	bl cLib_chaseAngleS__FPsss
/* 80C7ED10  7F C3 F3 78 */	mr r3, r30
/* 80C7ED14  48 00 01 3D */	bl action__12daObjLv6Bm_cFv
/* 80C7ED18  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80C7ED1C  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C7ED20  38 7D 00 00 */	addi r3, r29, 0
/* 80C7ED24  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C7ED28  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C7ED2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C7ED30  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C7ED34  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C7ED38  4B 38 E0 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C7ED3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7ED40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7ED44  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80C7ED48  A8 1E 09 C2 */	lha r0, 0x9c2(r30)
/* 80C7ED4C  7C 04 02 14 */	add r0, r4, r0
/* 80C7ED50  7C 04 07 34 */	extsh r4, r0
/* 80C7ED54  4B 38 D6 E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C7ED58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7ED5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7ED60  38 9E 05 38 */	addi r4, r30, 0x538
/* 80C7ED64  7C 85 23 78 */	mr r5, r4
/* 80C7ED68  4B 6C 80 05 */	bl PSMTXMultVec
/* 80C7ED6C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80C7ED70  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C7ED74  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80C7ED78  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C7ED7C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80C7ED80  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C7ED84  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C7ED88  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7ED8C  7F C3 F3 78 */	mr r3, r30
/* 80C7ED90  4B FF F5 E5 */	bl setBaseMtx__12daObjLv6Bm_cFv
/* 80C7ED94  38 7E 09 D6 */	addi r3, r30, 0x9d6
/* 80C7ED98  A8 9E 09 D8 */	lha r4, 0x9d8(r30)
/* 80C7ED9C  38 A0 00 1E */	li r5, 0x1e
/* 80C7EDA0  38 C0 00 14 */	li r6, 0x14
/* 80C7EDA4  38 E0 00 0A */	li r7, 0xa
/* 80C7EDA8  4B 5F 17 99 */	bl cLib_addCalcAngleS__FPsssss
/* 80C7EDAC  38 7E 09 DA */	addi r3, r30, 0x9da
/* 80C7EDB0  A8 9E 09 DC */	lha r4, 0x9dc(r30)
/* 80C7EDB4  38 A0 00 1E */	li r5, 0x1e
/* 80C7EDB8  38 C0 00 14 */	li r6, 0x14
/* 80C7EDBC  38 E0 00 0A */	li r7, 0xa
/* 80C7EDC0  4B 5F 17 81 */	bl cLib_addCalcAngleS__FPsssss
/* 80C7EDC4  38 7E 0A 28 */	addi r3, r30, 0xa28
/* 80C7EDC8  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80C7EDCC  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 80C7EDD0  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 80C7EDD4  C0 9D 00 34 */	lfs f4, 0x34(r29)
/* 80C7EDD8  4B 5F 0B A5 */	bl cLib_addCalc__FPfffff
/* 80C7EDDC  A8 1E 09 C2 */	lha r0, 0x9c2(r30)
/* 80C7EDE0  B0 1E 09 DE */	sth r0, 0x9de(r30)
/* 80C7EDE4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7EDE8  7C 03 07 74 */	extsb r3, r0
/* 80C7EDEC  4B 3A E2 81 */	bl dComIfGp_getReverb__Fi
/* 80C7EDF0  7C 65 1B 78 */	mr r5, r3
/* 80C7EDF4  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 80C7EDF8  38 80 00 00 */	li r4, 0
/* 80C7EDFC  81 9E 0A 8C */	lwz r12, 0xa8c(r30)
/* 80C7EE00  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C7EE04  7D 89 03 A6 */	mtctr r12
/* 80C7EE08  4E 80 04 21 */	bctrl 
/* 80C7EE0C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7EE10  7C 03 07 74 */	extsb r3, r0
/* 80C7EE14  4B 3A E2 59 */	bl dComIfGp_getReverb__Fi
/* 80C7EE18  7C 65 1B 78 */	mr r5, r3
/* 80C7EE1C  38 7E 0A 9C */	addi r3, r30, 0xa9c
/* 80C7EE20  38 80 00 00 */	li r4, 0
/* 80C7EE24  81 9E 0A AC */	lwz r12, 0xaac(r30)
/* 80C7EE28  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C7EE2C  7D 89 03 A6 */	mtctr r12
/* 80C7EE30  4E 80 04 21 */	bctrl 
/* 80C7EE34  38 60 00 01 */	li r3, 1
/* 80C7EE38  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7EE3C  4B 6E 33 ED */	bl _restgpr_29
/* 80C7EE40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7EE44  7C 08 03 A6 */	mtlr r0
/* 80C7EE48  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7EE4C  4E 80 00 20 */	blr 
