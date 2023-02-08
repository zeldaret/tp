lbl_8098D848:
/* 8098D848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098D84C  7C 08 02 A6 */	mflr r0
/* 8098D850  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098D854  39 61 00 20 */	addi r11, r1, 0x20
/* 8098D858  4B 9D 49 85 */	bl _savegpr_29
/* 8098D85C  7C 7E 1B 78 */	mr r30, r3
/* 8098D860  7C 9F 23 78 */	mr r31, r4
/* 8098D864  38 80 00 00 */	li r4, 0
/* 8098D868  1F BF 00 0C */	mulli r29, r31, 0xc
/* 8098D86C  3C A0 80 99 */	lis r5, l_btpGetParamList@ha /* 0x80991F88@ha */
/* 8098D870  38 C5 1F 88 */	addi r6, r5, l_btpGetParamList@l /* 0x80991F88@l */
/* 8098D874  7C A6 E8 2E */	lwzx r5, r6, r29
/* 8098D878  2C 05 00 00 */	cmpwi r5, 0
/* 8098D87C  41 80 00 24 */	blt lbl_8098D8A0
/* 8098D880  7C 86 EA 14 */	add r4, r6, r29
/* 8098D884  80 04 00 08 */	lwz r0, 8(r4)
/* 8098D888  54 00 10 3A */	slwi r0, r0, 2
/* 8098D88C  3C 80 80 99 */	lis r4, l_arcNames@ha /* 0x809920A8@ha */
/* 8098D890  38 84 20 A8 */	addi r4, r4, l_arcNames@l /* 0x809920A8@l */
/* 8098D894  7C 84 00 2E */	lwzx r4, r4, r0
/* 8098D898  4B 7C 52 D1 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 8098D89C  7C 64 1B 78 */	mr r4, r3
lbl_8098D8A0:
/* 8098D8A0  3C 60 80 99 */	lis r3, l_btpGetParamList@ha /* 0x80991F88@ha */
/* 8098D8A4  38 03 1F 88 */	addi r0, r3, l_btpGetParamList@l /* 0x80991F88@l */
/* 8098D8A8  7C 60 EA 14 */	add r3, r0, r29
/* 8098D8AC  80 C3 00 04 */	lwz r6, 4(r3)
/* 8098D8B0  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 8098D8B4  38 00 F5 7F */	li r0, -2689
/* 8098D8B8  7C 60 00 38 */	and r0, r3, r0
/* 8098D8BC  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8098D8C0  28 04 00 00 */	cmplwi r4, 0
/* 8098D8C4  40 82 00 0C */	bne lbl_8098D8D0
/* 8098D8C8  38 60 00 01 */	li r3, 1
/* 8098D8CC  48 00 00 54 */	b lbl_8098D920
lbl_8098D8D0:
/* 8098D8D0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8098D8D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8098D8D8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8098D8DC  7F C3 F3 78 */	mr r3, r30
/* 8098D8E0  3C E0 80 99 */	lis r7, lit_3884@ha /* 0x80991978@ha */
/* 8098D8E4  C0 27 19 78 */	lfs f1, lit_3884@l(r7)  /* 0x80991978@l */
/* 8098D8E8  4B 7C 53 DD */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 8098D8EC  2C 03 00 00 */	cmpwi r3, 0
/* 8098D8F0  41 82 00 2C */	beq lbl_8098D91C
/* 8098D8F4  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 8098D8F8  60 00 02 80 */	ori r0, r0, 0x280
/* 8098D8FC  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8098D900  2C 1F 00 00 */	cmpwi r31, 0
/* 8098D904  40 82 00 10 */	bne lbl_8098D914
/* 8098D908  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 8098D90C  60 00 08 00 */	ori r0, r0, 0x800
/* 8098D910  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_8098D914:
/* 8098D914  38 60 00 01 */	li r3, 1
/* 8098D918  48 00 00 08 */	b lbl_8098D920
lbl_8098D91C:
/* 8098D91C  38 60 00 00 */	li r3, 0
lbl_8098D920:
/* 8098D920  39 61 00 20 */	addi r11, r1, 0x20
/* 8098D924  4B 9D 49 05 */	bl _restgpr_29
/* 8098D928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098D92C  7C 08 03 A6 */	mtlr r0
/* 8098D930  38 21 00 20 */	addi r1, r1, 0x20
/* 8098D934  4E 80 00 20 */	blr 
