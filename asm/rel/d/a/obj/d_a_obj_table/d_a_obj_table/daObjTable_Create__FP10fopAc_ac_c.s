lbl_80D064B0:
/* 80D064B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D064B4  7C 08 02 A6 */	mflr r0
/* 80D064B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D064BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D064C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D064C4  7C 7F 1B 78 */	mr r31, r3
/* 80D064C8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D064CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D064D0  40 82 00 34 */	bne lbl_80D06504
/* 80D064D4  7F E0 FB 79 */	or. r0, r31, r31
/* 80D064D8  41 82 00 20 */	beq lbl_80D064F8
/* 80D064DC  7C 1E 03 78 */	mr r30, r0
/* 80D064E0  4B 37 21 45 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D064E4  3C 60 80 D0 */	lis r3, __vt__12daObjTable_c@ha /* 0x80D06C70@ha */
/* 80D064E8  38 03 6C 70 */	addi r0, r3, __vt__12daObjTable_c@l /* 0x80D06C70@l */
/* 80D064EC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D064F0  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80D064F4  4B 54 3A 0D */	bl __ct__10dMsgFlow_cFv
lbl_80D064F8:
/* 80D064F8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D064FC  60 00 00 08 */	ori r0, r0, 8
/* 80D06500  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D06504:
/* 80D06504  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80D06508  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80D06C1C@ha */
/* 80D0650C  38 84 6C 1C */	addi r4, r4, l_arcName@l /* 0x80D06C1C@l */
/* 80D06510  80 84 00 00 */	lwz r4, 0(r4)
/* 80D06514  4B 32 69 A9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D06518  2C 03 00 04 */	cmpwi r3, 4
/* 80D0651C  40 82 00 2C */	bne lbl_80D06548
/* 80D06520  7F E3 FB 78 */	mr r3, r31
/* 80D06524  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80D06C1C@ha */
/* 80D06528  38 84 6C 1C */	addi r4, r4, l_arcName@l /* 0x80D06C1C@l */
/* 80D0652C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D06530  38 A0 00 08 */	li r5, 8
/* 80D06534  38 C0 00 00 */	li r6, 0
/* 80D06538  38 E0 40 00 */	li r7, 0x4000
/* 80D0653C  39 00 00 00 */	li r8, 0
/* 80D06540  4B 37 22 7D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D06544  2C 03 00 05 */	cmpwi r3, 5
lbl_80D06548:
/* 80D06548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0654C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D06550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06554  7C 08 03 A6 */	mtlr r0
/* 80D06558  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0655C  4E 80 00 20 */	blr 
