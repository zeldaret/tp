lbl_809D1670:
/* 809D1670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D1674  7C 08 02 A6 */	mflr r0
/* 809D1678  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D167C  39 61 00 20 */	addi r11, r1, 0x20
/* 809D1680  4B 99 0B 5C */	b _savegpr_29
/* 809D1684  7C 7D 1B 78 */	mr r29, r3
/* 809D1688  7C 9E 23 78 */	mr r30, r4
/* 809D168C  38 80 00 00 */	li r4, 0
/* 809D1690  3B E0 00 00 */	li r31, 0
/* 809D1694  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 809D1698  38 00 F5 7F */	li r0, -2689
/* 809D169C  7C A0 00 38 */	and r0, r5, r0
/* 809D16A0  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809D16A4  57 C0 18 38 */	slwi r0, r30, 3
/* 809D16A8  3C A0 80 9D */	lis r5, l_btpGetParamList@ha
/* 809D16AC  38 C5 3C 9C */	addi r6, r5, l_btpGetParamList@l
/* 809D16B0  7C A6 00 2E */	lwzx r5, r6, r0
/* 809D16B4  2C 05 00 00 */	cmpwi r5, 0
/* 809D16B8  41 80 00 24 */	blt lbl_809D16DC
/* 809D16BC  7C 86 02 14 */	add r4, r6, r0
/* 809D16C0  80 04 00 04 */	lwz r0, 4(r4)
/* 809D16C4  54 00 10 3A */	slwi r0, r0, 2
/* 809D16C8  3C 80 80 9D */	lis r4, l_resNames@ha
/* 809D16CC  38 84 3C FC */	addi r4, r4, l_resNames@l
/* 809D16D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D16D4  4B 78 14 94 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 809D16D8  7C 64 1B 78 */	mr r4, r3
lbl_809D16DC:
/* 809D16DC  2C 1E 00 02 */	cmpwi r30, 2
/* 809D16E0  41 82 00 2C */	beq lbl_809D170C
/* 809D16E4  40 80 00 14 */	bge lbl_809D16F8
/* 809D16E8  2C 1E 00 00 */	cmpwi r30, 0
/* 809D16EC  41 82 00 18 */	beq lbl_809D1704
/* 809D16F0  40 80 00 28 */	bge lbl_809D1718
/* 809D16F4  48 00 00 20 */	b lbl_809D1714
lbl_809D16F8:
/* 809D16F8  2C 1E 00 04 */	cmpwi r30, 4
/* 809D16FC  40 80 00 18 */	bge lbl_809D1714
/* 809D1700  48 00 00 18 */	b lbl_809D1718
lbl_809D1704:
/* 809D1704  3B E0 00 02 */	li r31, 2
/* 809D1708  48 00 00 10 */	b lbl_809D1718
lbl_809D170C:
/* 809D170C  3B E0 00 02 */	li r31, 2
/* 809D1710  48 00 00 08 */	b lbl_809D1718
lbl_809D1714:
/* 809D1714  38 80 00 00 */	li r4, 0
lbl_809D1718:
/* 809D1718  28 04 00 00 */	cmplwi r4, 0
/* 809D171C  40 82 00 0C */	bne lbl_809D1728
/* 809D1720  38 60 00 01 */	li r3, 1
/* 809D1724  48 00 00 58 */	b lbl_809D177C
lbl_809D1728:
/* 809D1728  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809D172C  80 63 00 04 */	lwz r3, 4(r3)
/* 809D1730  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D1734  7F A3 EB 78 */	mr r3, r29
/* 809D1738  3C C0 80 9D */	lis r6, lit_4450@ha
/* 809D173C  C0 26 3A 80 */	lfs f1, lit_4450@l(r6)
/* 809D1740  7F E6 FB 78 */	mr r6, r31
/* 809D1744  4B 78 15 80 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809D1748  2C 03 00 00 */	cmpwi r3, 0
/* 809D174C  41 82 00 2C */	beq lbl_809D1778
/* 809D1750  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809D1754  60 00 02 80 */	ori r0, r0, 0x280
/* 809D1758  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809D175C  2C 1E 00 00 */	cmpwi r30, 0
/* 809D1760  40 82 00 10 */	bne lbl_809D1770
/* 809D1764  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809D1768  60 00 08 00 */	ori r0, r0, 0x800
/* 809D176C  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_809D1770:
/* 809D1770  38 60 00 01 */	li r3, 1
/* 809D1774  48 00 00 08 */	b lbl_809D177C
lbl_809D1778:
/* 809D1778  38 60 00 00 */	li r3, 0
lbl_809D177C:
/* 809D177C  39 61 00 20 */	addi r11, r1, 0x20
/* 809D1780  4B 99 0A A8 */	b _restgpr_29
/* 809D1784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D1788  7C 08 03 A6 */	mtlr r0
/* 809D178C  38 21 00 20 */	addi r1, r1, 0x20
/* 809D1790  4E 80 00 20 */	blr 
