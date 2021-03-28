lbl_8003C2EC:
/* 8003C2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003C2F0  7C 08 02 A6 */	mflr r0
/* 8003C2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003C2F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003C2FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8003C300  7C 7E 1B 78 */	mr r30, r3
/* 8003C304  7C 9F 23 78 */	mr r31, r4
/* 8003C308  7C A4 2B 78 */	mr r4, r5
/* 8003C30C  7C C5 33 78 */	mr r5, r6
/* 8003C310  4B FF FF 79 */	bl getResInfoLoaded__14dRes_control_cFPCcP11dRes_info_ci
/* 8003C314  28 03 00 00 */	cmplwi r3, 0
/* 8003C318  40 82 00 08 */	bne lbl_8003C320
/* 8003C31C  48 00 00 48 */	b lbl_8003C364
lbl_8003C320:
/* 8003C320  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8003C324  80 84 00 44 */	lwz r4, 0x44(r4)
/* 8003C328  80 C4 00 08 */	lwz r6, 8(r4)
/* 8003C32C  7C 1F 30 00 */	cmpw r31, r6
/* 8003C330  41 80 00 28 */	blt lbl_8003C358
/* 8003C334  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003C338  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003C33C  38 63 02 E8 */	addi r3, r3, 0x2e8
/* 8003C340  7F C4 F3 78 */	mr r4, r30
/* 8003C344  7F E5 FB 78 */	mr r5, r31
/* 8003C348  4C C6 31 82 */	crclr 6
/* 8003C34C  4B FC A8 C1 */	bl OSReport_Error
/* 8003C350  38 60 00 00 */	li r3, 0
/* 8003C354  48 00 00 10 */	b lbl_8003C364
lbl_8003C358:
/* 8003C358  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8003C35C  57 E0 10 3A */	slwi r0, r31, 2
/* 8003C360  7C 63 00 2E */	lwzx r3, r3, r0
lbl_8003C364:
/* 8003C364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003C368  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003C36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003C370  7C 08 03 A6 */	mtlr r0
/* 8003C374  38 21 00 10 */	addi r1, r1, 0x10
/* 8003C378  4E 80 00 20 */	blr 
