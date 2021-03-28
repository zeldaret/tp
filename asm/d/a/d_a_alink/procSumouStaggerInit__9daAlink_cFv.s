lbl_800EC0F8:
/* 800EC0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC0FC  7C 08 02 A6 */	mflr r0
/* 800EC100  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EC104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EC108  7C 7F 1B 78 */	mr r31, r3
/* 800EC10C  38 80 00 D2 */	li r4, 0xd2
/* 800EC110  4B FD 5E 5D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EC114  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EC118  28 00 00 11 */	cmplwi r0, 0x11
/* 800EC11C  40 82 00 10 */	bne lbl_800EC12C
/* 800EC120  38 00 00 20 */	li r0, 0x20
/* 800EC124  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EC128  48 00 00 0C */	b lbl_800EC134
lbl_800EC12C:
/* 800EC12C  38 00 00 1F */	li r0, 0x1f
/* 800EC130  98 1F 05 6A */	stb r0, 0x56a(r31)
lbl_800EC134:
/* 800EC134  7F E3 FB 78 */	mr r3, r31
/* 800EC138  38 80 01 53 */	li r4, 0x153
/* 800EC13C  4B FC 0E 45 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EC140  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EC144  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EC148  38 00 00 0C */	li r0, 0xc
/* 800EC14C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EC150  38 00 00 1E */	li r0, 0x1e
/* 800EC154  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800EC158  38 60 00 01 */	li r3, 1
/* 800EC15C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EC160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC164  7C 08 03 A6 */	mtlr r0
/* 800EC168  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC16C  4E 80 00 20 */	blr 
