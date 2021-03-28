lbl_8048C1C8:
/* 8048C1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C1CC  7C 08 02 A6 */	mflr r0
/* 8048C1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C1D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C1D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8048C1DC  7C 7E 1B 78 */	mr r30, r3
/* 8048C1E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048C1E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048C1E8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8048C1EC  4B BB BB 60 */	b getIsAddvance__16dEvent_manager_cFi
/* 8048C1F0  2C 03 00 00 */	cmpwi r3, 0
/* 8048C1F4  41 82 00 6C */	beq lbl_8048C260
/* 8048C1F8  88 7E 05 E4 */	lbz r3, 0x5e4(r30)
/* 8048C1FC  7C 60 07 75 */	extsb. r0, r3
/* 8048C200  41 82 00 10 */	beq lbl_8048C210
/* 8048C204  7C 60 07 74 */	extsb r0, r3
/* 8048C208  2C 00 00 01 */	cmpwi r0, 1
/* 8048C20C  40 82 00 24 */	bne lbl_8048C230
lbl_8048C210:
/* 8048C210  88 9E 05 DE */	lbz r4, 0x5de(r30)
/* 8048C214  28 04 00 FF */	cmplwi r4, 0xff
/* 8048C218  41 82 00 18 */	beq lbl_8048C230
/* 8048C21C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048C220  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048C224  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8048C228  7C 05 07 74 */	extsb r5, r0
/* 8048C22C  4B BA 8F D4 */	b onSwitch__10dSv_info_cFii
lbl_8048C230:
/* 8048C230  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8048C234  7C 1F 07 74 */	extsb r31, r0
/* 8048C238  38 60 00 00 */	li r3, 0
/* 8048C23C  4B BA 07 40 */	b getLayerNo__14dComIfG_play_cFi
/* 8048C240  7C 67 1B 78 */	mr r7, r3
/* 8048C244  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8048C248  3C 80 80 49 */	lis r4, lit_3785@ha
/* 8048C24C  C0 24 C3 9C */	lfs f1, lit_3785@l(r4)
/* 8048C250  38 80 00 00 */	li r4, 0
/* 8048C254  7F E5 FB 78 */	mr r5, r31
/* 8048C258  38 C0 00 00 */	li r6, 0
/* 8048C25C  4B B9 AF 14 */	b dStage_changeScene__FifUlScsi
lbl_8048C260:
/* 8048C260  38 60 00 00 */	li r3, 0
/* 8048C264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C268  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048C26C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C270  7C 08 03 A6 */	mtlr r0
/* 8048C274  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C278  4E 80 00 20 */	blr 
