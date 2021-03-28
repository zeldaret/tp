lbl_8010755C:
/* 8010755C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80107560  7C 08 02 A6 */	mflr r0
/* 80107564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80107568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010756C  7C 7F 1B 78 */	mr r31, r3
/* 80107570  38 80 00 01 */	li r4, 1
/* 80107574  4B FF E5 E5 */	bl boardCommon__9daAlink_cFi
/* 80107578  2C 03 00 00 */	cmpwi r3, 0
/* 8010757C  41 82 00 0C */	beq lbl_80107588
/* 80107580  38 60 00 01 */	li r3, 1
/* 80107584  48 00 00 3C */	b lbl_801075C0
lbl_80107588:
/* 80107588  7F E3 FB 78 */	mr r3, r31
/* 8010758C  4B FC B0 F9 */	bl checkCutTurnCharge__9daAlink_cFv
/* 80107590  7F E3 FB 78 */	mr r3, r31
/* 80107594  4B FF EF F9 */	bl checkNextActionBoard__9daAlink_cFv
/* 80107598  2C 03 00 00 */	cmpwi r3, 0
/* 8010759C  40 82 00 20 */	bne lbl_801075BC
/* 801075A0  7F E3 FB 78 */	mr r3, r31
/* 801075A4  4B FB 1C B1 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 801075A8  2C 03 00 00 */	cmpwi r3, 0
/* 801075AC  41 82 00 10 */	beq lbl_801075BC
/* 801075B0  7F E3 FB 78 */	mr r3, r31
/* 801075B4  38 80 00 00 */	li r4, 0
/* 801075B8  4B FF F4 81 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
lbl_801075BC:
/* 801075BC  38 60 00 01 */	li r3, 1
lbl_801075C0:
/* 801075C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801075C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801075C8  7C 08 03 A6 */	mtlr r0
/* 801075CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801075D0  4E 80 00 20 */	blr 
