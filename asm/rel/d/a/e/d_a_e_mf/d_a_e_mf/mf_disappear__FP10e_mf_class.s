lbl_8070A77C:
/* 8070A77C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8070A780  7C 08 02 A6 */	mflr r0
/* 8070A784  90 01 00 34 */	stw r0, 0x34(r1)
/* 8070A788  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8070A78C  7C 7F 1B 78 */	mr r31, r3
/* 8070A790  80 63 05 DC */	lwz r3, 0x5dc(r3)
/* 8070A794  80 63 00 04 */	lwz r3, 4(r3)
/* 8070A798  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8070A79C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070A7A0  38 63 00 60 */	addi r3, r3, 0x60
/* 8070A7A4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8070A7A8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070A7AC  80 84 00 00 */	lwz r4, 0(r4)
/* 8070A7B0  4B C3 BD 01 */	bl PSMTXCopy
/* 8070A7B4  3C 60 80 71 */	lis r3, lit_3829@ha /* 0x80713978@ha */
/* 8070A7B8  C0 03 39 78 */	lfs f0, lit_3829@l(r3)  /* 0x80713978@l */
/* 8070A7BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070A7C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070A7C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070A7C8  38 61 00 14 */	addi r3, r1, 0x14
/* 8070A7CC  38 81 00 08 */	addi r4, r1, 8
/* 8070A7D0  4B B6 67 1D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070A7D4  7F E3 FB 78 */	mr r3, r31
/* 8070A7D8  38 81 00 08 */	addi r4, r1, 8
/* 8070A7DC  38 A0 00 0D */	li r5, 0xd
/* 8070A7E0  38 C0 00 00 */	li r6, 0
/* 8070A7E4  38 E0 00 24 */	li r7, 0x24
/* 8070A7E8  4B 91 22 F1 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8070A7EC  7F E3 FB 78 */	mr r3, r31
/* 8070A7F0  4B 90 F4 8D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8070A7F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8070A7F8  54 04 46 3E */	srwi r4, r0, 0x18
/* 8070A7FC  2C 04 00 FF */	cmpwi r4, 0xff
/* 8070A800  41 82 00 18 */	beq lbl_8070A818
/* 8070A804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070A808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070A80C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8070A810  7C 05 07 74 */	extsb r5, r0
/* 8070A814  4B 92 A9 ED */	bl onSwitch__10dSv_info_cFii
lbl_8070A818:
/* 8070A818  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8070A81C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070A820  7C 08 03 A6 */	mtlr r0
/* 8070A824  38 21 00 30 */	addi r1, r1, 0x30
/* 8070A828  4E 80 00 20 */	blr 
