lbl_80835558:
/* 80835558  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083555C  7C 08 02 A6 */	mflr r0
/* 80835560  90 01 00 34 */	stw r0, 0x34(r1)
/* 80835564  39 61 00 30 */	addi r11, r1, 0x30
/* 80835568  4B B2 CC 69 */	bl _savegpr_26
/* 8083556C  7C 7A 1B 78 */	mr r26, r3
/* 80835570  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha /* 0x808378A8@ha */
/* 80835574  3B C3 78 A8 */	addi r30, r3, M_attr__10daFmtMng_c@l /* 0x808378A8@l */
/* 80835578  83 9A 05 6C */	lwz r28, 0x56c(r26)
/* 8083557C  38 00 00 00 */	li r0, 0
/* 80835580  90 01 00 08 */	stw r0, 8(r1)
/* 80835584  3B 60 00 00 */	li r27, 0
/* 80835588  48 00 00 68 */	b lbl_808355F0
lbl_8083558C:
/* 8083558C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80835590  38 81 00 08 */	addi r4, r1, 8
/* 80835594  4B 7E 44 29 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80835598  83 A1 00 08 */	lwz r29, 8(r1)
/* 8083559C  28 1D 00 00 */	cmplwi r29, 0
/* 808355A0  41 82 00 48 */	beq lbl_808355E8
/* 808355A4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 808355A8  4B A3 23 AD */	bl cM_rndF__Ff
/* 808355AC  FC 00 08 1E */	fctiwz f0, f1
/* 808355B0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 808355B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 808355B8  7F A3 EB 78 */	mr r3, r29
/* 808355BC  38 80 00 00 */	li r4, 0
/* 808355C0  80 BD 0A CC */	lwz r5, 0xacc(r29)
/* 808355C4  4B 92 2B 2D */	bl getAnmP__10daNpcCd2_cFii
/* 808355C8  7C 64 1B 78 */	mr r4, r3
/* 808355CC  7F A3 EB 78 */	mr r3, r29
/* 808355D0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 808355D4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 808355D8  38 A0 00 02 */	li r5, 2
/* 808355DC  7F E6 FB 78 */	mr r6, r31
/* 808355E0  38 E0 FF FF */	li r7, -1
/* 808355E4  4B 92 39 1D */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_808355E8:
/* 808355E8  3B 7B 00 01 */	addi r27, r27, 1
/* 808355EC  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_808355F0:
/* 808355F0  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 808355F4  80 1A 05 84 */	lwz r0, 0x584(r26)
/* 808355F8  7C 03 01 D6 */	mullw r0, r3, r0
/* 808355FC  7C 1B 00 00 */	cmpw r27, r0
/* 80835600  41 80 FF 8C */	blt lbl_8083558C
/* 80835604  7F 43 D3 78 */	mr r3, r26
/* 80835608  48 00 00 1D */	bl initMemberPos__10daFmtMng_cFv
/* 8083560C  39 61 00 30 */	addi r11, r1, 0x30
/* 80835610  4B B2 CC 0D */	bl _restgpr_26
/* 80835614  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80835618  7C 08 03 A6 */	mtlr r0
/* 8083561C  38 21 00 30 */	addi r1, r1, 0x30
/* 80835620  4E 80 00 20 */	blr 
