lbl_80A7D394:
/* 80A7D394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A7D398  7C 08 02 A6 */	mflr r0
/* 80A7D39C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7D3A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D3A4  4B 8E 4E 39 */	bl _savegpr_29
/* 80A7D3A8  7C 7E 1B 78 */	mr r30, r3
/* 80A7D3AC  7C 9F 23 78 */	mr r31, r4
/* 80A7D3B0  1F BF 00 0C */	mulli r29, r31, 0xc
/* 80A7D3B4  3C 80 80 A8 */	lis r4, l_btpGetParamList@ha /* 0x80A83AA4@ha */
/* 80A7D3B8  38 A4 3A A4 */	addi r5, r4, l_btpGetParamList@l /* 0x80A83AA4@l */
/* 80A7D3BC  7C 85 EA 14 */	add r4, r5, r29
/* 80A7D3C0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7D3C4  54 00 10 3A */	slwi r0, r0, 2
/* 80A7D3C8  3C 80 80 A8 */	lis r4, l_arcNames@ha /* 0x80A83AF8@ha */
/* 80A7D3CC  38 84 3A F8 */	addi r4, r4, l_arcNames@l /* 0x80A83AF8@l */
/* 80A7D3D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A7D3D4  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80A7D3D8  4B 6D 57 91 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80A7D3DC  7C 64 1B 79 */	or. r4, r3, r3
/* 80A7D3E0  3C 60 80 A8 */	lis r3, l_btpGetParamList@ha /* 0x80A83AA4@ha */
/* 80A7D3E4  38 03 3A A4 */	addi r0, r3, l_btpGetParamList@l /* 0x80A83AA4@l */
/* 80A7D3E8  7C 60 EA 14 */	add r3, r0, r29
/* 80A7D3EC  80 C3 00 04 */	lwz r6, 4(r3)
/* 80A7D3F0  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80A7D3F4  38 00 F5 7F */	li r0, -2689
/* 80A7D3F8  7C 60 00 38 */	and r0, r3, r0
/* 80A7D3FC  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A7D400  40 82 00 0C */	bne lbl_80A7D40C
/* 80A7D404  38 60 00 01 */	li r3, 1
/* 80A7D408  48 00 00 54 */	b lbl_80A7D45C
lbl_80A7D40C:
/* 80A7D40C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A7D410  80 63 00 04 */	lwz r3, 4(r3)
/* 80A7D414  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A7D418  7F C3 F3 78 */	mr r3, r30
/* 80A7D41C  3C E0 80 A8 */	lis r7, lit_4337@ha /* 0x80A83330@ha */
/* 80A7D420  C0 27 33 30 */	lfs f1, lit_4337@l(r7)  /* 0x80A83330@l */
/* 80A7D424  4B 6D 58 A1 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A7D428  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D42C  41 82 00 2C */	beq lbl_80A7D458
/* 80A7D430  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A7D434  60 00 02 80 */	ori r0, r0, 0x280
/* 80A7D438  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A7D43C  2C 1F 00 00 */	cmpwi r31, 0
/* 80A7D440  40 82 00 10 */	bne lbl_80A7D450
/* 80A7D444  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A7D448  60 00 08 00 */	ori r0, r0, 0x800
/* 80A7D44C  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80A7D450:
/* 80A7D450  38 60 00 01 */	li r3, 1
/* 80A7D454  48 00 00 08 */	b lbl_80A7D45C
lbl_80A7D458:
/* 80A7D458  38 60 00 00 */	li r3, 0
lbl_80A7D45C:
/* 80A7D45C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D460  4B 8E 4D C9 */	bl _restgpr_29
/* 80A7D464  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7D468  7C 08 03 A6 */	mtlr r0
/* 80A7D46C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A7D470  4E 80 00 20 */	blr 
