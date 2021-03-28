lbl_807C7534:
/* 807C7534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C7538  7C 08 02 A6 */	mflr r0
/* 807C753C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C7540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C7544  93 C1 00 08 */	stw r30, 8(r1)
/* 807C7548  7C 7E 1B 78 */	mr r30, r3
/* 807C754C  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C7550  3B E3 EC A8 */	addi r31, r3, lit_3907@l
/* 807C7554  80 1E 13 20 */	lwz r0, 0x1320(r30)
/* 807C7558  2C 00 00 01 */	cmpwi r0, 1
/* 807C755C  41 82 00 20 */	beq lbl_807C757C
/* 807C7560  40 80 00 10 */	bge lbl_807C7570
/* 807C7564  2C 00 00 00 */	cmpwi r0, 0
/* 807C7568  40 80 00 1C */	bge lbl_807C7584
/* 807C756C  48 00 00 BC */	b lbl_807C7628
lbl_807C7570:
/* 807C7570  2C 00 00 03 */	cmpwi r0, 3
/* 807C7574  40 80 00 B4 */	bge lbl_807C7628
/* 807C7578  48 00 00 34 */	b lbl_807C75AC
lbl_807C757C:
/* 807C757C  38 00 00 3C */	li r0, 0x3c
/* 807C7580  90 1E 13 40 */	stw r0, 0x1340(r30)
lbl_807C7584:
/* 807C7584  7F C3 F3 78 */	mr r3, r30
/* 807C7588  38 80 00 0F */	li r4, 0xf
/* 807C758C  38 A0 00 02 */	li r5, 2
/* 807C7590  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 807C7594  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7598  4B FF C2 81 */	bl setBck__8daE_VA_cFiUcff
/* 807C759C  38 00 00 04 */	li r0, 4
/* 807C75A0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807C75A4  38 00 00 02 */	li r0, 2
/* 807C75A8  90 1E 13 20 */	stw r0, 0x1320(r30)
lbl_807C75AC:
/* 807C75AC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807C75B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C75B4  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807C75B8  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 807C75BC  C0 9F 00 08 */	lfs f4, 8(r31)
/* 807C75C0  4B AA 83 BC */	b cLib_addCalc__FPfffff
/* 807C75C4  80 1E 13 40 */	lwz r0, 0x1340(r30)
/* 807C75C8  2C 00 00 00 */	cmpwi r0, 0
/* 807C75CC  40 82 00 34 */	bne lbl_807C7600
/* 807C75D0  7F C3 F3 78 */	mr r3, r30
/* 807C75D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807C75D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807C75DC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807C75E0  4B 85 32 00 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C75E4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 807C75E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C75EC  40 80 00 14 */	bge lbl_807C7600
/* 807C75F0  7F C3 F3 78 */	mr r3, r30
/* 807C75F4  38 80 00 03 */	li r4, 3
/* 807C75F8  38 A0 00 00 */	li r5, 0
/* 807C75FC  4B FF C3 1D */	bl setActionMode__8daE_VA_cFii
lbl_807C7600:
/* 807C7600  4B 99 7E 24 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 807C7604  2C 03 00 00 */	cmpwi r3, 0
/* 807C7608  41 82 00 20 */	beq lbl_807C7628
/* 807C760C  80 1E 13 58 */	lwz r0, 0x1358(r30)
/* 807C7610  2C 00 00 00 */	cmpwi r0, 0
/* 807C7614  40 82 00 14 */	bne lbl_807C7628
/* 807C7618  7F C3 F3 78 */	mr r3, r30
/* 807C761C  38 80 00 05 */	li r4, 5
/* 807C7620  38 A0 00 00 */	li r5, 0
/* 807C7624  4B FF C2 F5 */	bl setActionMode__8daE_VA_cFii
lbl_807C7628:
/* 807C7628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C762C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807C7630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C7634  7C 08 03 A6 */	mtlr r0
/* 807C7638  38 21 00 10 */	addi r1, r1, 0x10
/* 807C763C  4E 80 00 20 */	blr 
