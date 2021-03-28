lbl_800D4C68:
/* 800D4C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D4C6C  7C 08 02 A6 */	mflr r0
/* 800D4C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D4C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D4C78  7C 7F 1B 78 */	mr r31, r3
/* 800D4C7C  88 03 05 69 */	lbz r0, 0x569(r3)
/* 800D4C80  28 00 00 00 */	cmplwi r0, 0
/* 800D4C84  40 82 00 24 */	bne lbl_800D4CA8
/* 800D4C88  4B FD 2D D5 */	bl checkDashAnime__9daAlink_cCFv
/* 800D4C8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D4C90  41 82 00 18 */	beq lbl_800D4CA8
/* 800D4C94  7F E3 FB 78 */	mr r3, r31
/* 800D4C98  38 80 00 83 */	li r4, 0x83
/* 800D4C9C  4B FD 86 A5 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800D4CA0  38 60 00 01 */	li r3, 1
/* 800D4CA4  48 00 00 4C */	b lbl_800D4CF0
lbl_800D4CA8:
/* 800D4CA8  7F E3 FB 78 */	mr r3, r31
/* 800D4CAC  38 80 00 29 */	li r4, 0x29
/* 800D4CB0  4B FE D2 BD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D4CB4  7F E3 FB 78 */	mr r3, r31
/* 800D4CB8  38 80 00 75 */	li r4, 0x75
/* 800D4CBC  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutTurn_c0@ha
/* 800D4CC0  38 A5 DB 84 */	addi r5, r5, m__21daAlinkHIO_cutTurn_c0@l
/* 800D4CC4  38 A5 00 14 */	addi r5, r5, 0x14
/* 800D4CC8  4B FD 84 2D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D4CCC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D4CD0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D4CD4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D4CD8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D4CDC  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha
/* 800D4CE0  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l
/* 800D4CE4  A8 03 00 56 */	lha r0, 0x56(r3)
/* 800D4CE8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800D4CEC  38 60 00 01 */	li r3, 1
lbl_800D4CF0:
/* 800D4CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D4CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D4CF8  7C 08 03 A6 */	mtlr r0
/* 800D4CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 800D4D00  4E 80 00 20 */	blr 
