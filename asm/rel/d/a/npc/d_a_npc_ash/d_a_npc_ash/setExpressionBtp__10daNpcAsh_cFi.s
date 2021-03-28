lbl_809596E0:
/* 809596E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809596E4  7C 08 02 A6 */	mflr r0
/* 809596E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809596EC  39 61 00 20 */	addi r11, r1, 0x20
/* 809596F0  4B A0 8A EC */	b _savegpr_29
/* 809596F4  7C 7E 1B 78 */	mr r30, r3
/* 809596F8  7C 9F 23 78 */	mr r31, r4
/* 809596FC  1F BF 00 0C */	mulli r29, r31, 0xc
/* 80959700  3C 80 80 96 */	lis r4, l_btpGetParamList@ha
/* 80959704  38 A4 DA 88 */	addi r5, r4, l_btpGetParamList@l
/* 80959708  7C 85 EA 14 */	add r4, r5, r29
/* 8095970C  80 04 00 08 */	lwz r0, 8(r4)
/* 80959710  54 00 10 3A */	slwi r0, r0, 2
/* 80959714  3C 80 80 96 */	lis r4, l_arcNames@ha
/* 80959718  38 84 DA C0 */	addi r4, r4, l_arcNames@l
/* 8095971C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80959720  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80959724  4B 7F 94 44 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80959728  7C 64 1B 79 */	or. r4, r3, r3
/* 8095972C  3C 60 80 96 */	lis r3, l_btpGetParamList@ha
/* 80959730  38 03 DA 88 */	addi r0, r3, l_btpGetParamList@l
/* 80959734  7C 60 EA 14 */	add r3, r0, r29
/* 80959738  80 C3 00 04 */	lwz r6, 4(r3)
/* 8095973C  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80959740  38 00 F5 7F */	li r0, -2689
/* 80959744  7C 60 00 38 */	and r0, r3, r0
/* 80959748  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8095974C  40 82 00 0C */	bne lbl_80959758
/* 80959750  38 60 00 01 */	li r3, 1
/* 80959754  48 00 00 54 */	b lbl_809597A8
lbl_80959758:
/* 80959758  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8095975C  80 63 00 04 */	lwz r3, 4(r3)
/* 80959760  80 A3 00 04 */	lwz r5, 4(r3)
/* 80959764  7F C3 F3 78 */	mr r3, r30
/* 80959768  3C E0 80 96 */	lis r7, lit_4300@ha
/* 8095976C  C0 27 D6 BC */	lfs f1, lit_4300@l(r7)
/* 80959770  4B 7F 95 54 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80959774  2C 03 00 00 */	cmpwi r3, 0
/* 80959778  41 82 00 2C */	beq lbl_809597A4
/* 8095977C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80959780  60 00 02 80 */	ori r0, r0, 0x280
/* 80959784  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80959788  2C 1F 00 00 */	cmpwi r31, 0
/* 8095978C  40 82 00 10 */	bne lbl_8095979C
/* 80959790  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80959794  60 00 08 00 */	ori r0, r0, 0x800
/* 80959798  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_8095979C:
/* 8095979C  38 60 00 01 */	li r3, 1
/* 809597A0  48 00 00 08 */	b lbl_809597A8
lbl_809597A4:
/* 809597A4  38 60 00 00 */	li r3, 0
lbl_809597A8:
/* 809597A8  39 61 00 20 */	addi r11, r1, 0x20
/* 809597AC  4B A0 8A 7C */	b _restgpr_29
/* 809597B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809597B4  7C 08 03 A6 */	mtlr r0
/* 809597B8  38 21 00 20 */	addi r1, r1, 0x20
/* 809597BC  4E 80 00 20 */	blr 
