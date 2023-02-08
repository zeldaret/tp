lbl_80108F64:
/* 80108F64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80108F68  7C 08 02 A6 */	mflr r0
/* 80108F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80108F70  39 61 00 20 */	addi r11, r1, 0x20
/* 80108F74  48 25 92 69 */	bl _savegpr_29
/* 80108F78  7C 7D 1B 78 */	mr r29, r3
/* 80108F7C  A8 03 30 8E */	lha r0, 0x308e(r3)
/* 80108F80  2C 00 00 00 */	cmpwi r0, 0
/* 80108F84  40 82 00 9C */	bne lbl_80109020
/* 80108F88  A8 1D 30 1A */	lha r0, 0x301a(r29)
/* 80108F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80108F90  40 82 00 90 */	bne lbl_80109020
/* 80108F94  38 60 00 00 */	li r3, 0
/* 80108F98  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 80108F9C  28 00 01 8D */	cmplwi r0, 0x18d
/* 80108FA0  41 82 00 10 */	beq lbl_80108FB0
/* 80108FA4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80108FA8  28 00 01 8C */	cmplwi r0, 0x18c
/* 80108FAC  40 82 00 08 */	bne lbl_80108FB4
lbl_80108FB0:
/* 80108FB0  38 60 00 01 */	li r3, 1
lbl_80108FB4:
/* 80108FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80108FB8  41 82 00 68 */	beq lbl_80109020
/* 80108FBC  80 1D 27 EC */	lwz r0, 0x27ec(r29)
/* 80108FC0  28 00 00 00 */	cmplwi r0, 0
/* 80108FC4  40 82 00 34 */	bne lbl_80108FF8
/* 80108FC8  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 80108FCC  3B C0 00 01 */	li r30, 1
/* 80108FD0  7F E3 FB 78 */	mr r3, r31
/* 80108FD4  4B F6 A8 11 */	bl LockonTruth__12dAttention_cFv
/* 80108FD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80108FDC  40 82 00 14 */	bne lbl_80108FF0
/* 80108FE0  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80108FE4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80108FE8  40 82 00 08 */	bne lbl_80108FF0
/* 80108FEC  3B C0 00 00 */	li r30, 0
lbl_80108FF0:
/* 80108FF0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80108FF4  41 82 00 14 */	beq lbl_80109008
lbl_80108FF8:
/* 80108FF8  7F A3 EB 78 */	mr r3, r29
/* 80108FFC  4B FA 96 09 */	bl itemButton__9daAlink_cFv
/* 80109000  2C 03 00 00 */	cmpwi r3, 0
/* 80109004  40 82 00 1C */	bne lbl_80109020
lbl_80109008:
/* 80109008  7F A3 EB 78 */	mr r3, r29
/* 8010900C  38 80 00 02 */	li r4, 2
/* 80109010  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80109014  4B FA 47 11 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 80109018  38 60 00 01 */	li r3, 1
/* 8010901C  48 00 00 08 */	b lbl_80109024
lbl_80109020:
/* 80109020  38 60 00 00 */	li r3, 0
lbl_80109024:
/* 80109024  39 61 00 20 */	addi r11, r1, 0x20
/* 80109028  48 25 92 01 */	bl _restgpr_29
/* 8010902C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80109030  7C 08 03 A6 */	mtlr r0
/* 80109034  38 21 00 20 */	addi r1, r1, 0x20
/* 80109038  4E 80 00 20 */	blr 
