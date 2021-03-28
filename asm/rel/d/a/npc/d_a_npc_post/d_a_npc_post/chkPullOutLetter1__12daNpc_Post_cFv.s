lbl_80AAAAB8:
/* 80AAAAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAAABC  7C 08 02 A6 */	mflr r0
/* 80AAAAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAAAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAAAC8  7C 7F 1B 78 */	mr r31, r3
/* 80AAAACC  88 03 0F 8C */	lbz r0, 0xf8c(r3)
/* 80AAAAD0  28 00 00 01 */	cmplwi r0, 1
/* 80AAAAD4  40 82 00 40 */	bne lbl_80AAAB14
/* 80AAAAD8  3C 80 80 AB */	lis r4, l_motionAnmData@ha
/* 80AAAADC  38 A4 D5 E4 */	addi r5, r4, l_motionAnmData@l
/* 80AAAAE0  80 05 00 5C */	lwz r0, 0x5c(r5)
/* 80AAAAE4  54 00 10 3A */	slwi r0, r0, 2
/* 80AAAAE8  3C 80 80 AB */	lis r4, l_resNameList@ha
/* 80AAAAEC  38 84 D4 14 */	addi r4, r4, l_resNameList@l
/* 80AAAAF0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AAAAF4  80 A5 00 54 */	lwz r5, 0x54(r5)
/* 80AAAAF8  4B 69 D5 60 */	b getTrnsfrmAnmP__8daNpcT_cFPCci
/* 80AAAAFC  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80AAAB00  80 04 00 08 */	lwz r0, 8(r4)
/* 80AAAB04  7C 03 00 50 */	subf r0, r3, r0
/* 80AAAB08  7C 00 00 34 */	cntlzw r0, r0
/* 80AAAB0C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AAAB10  48 00 00 08 */	b lbl_80AAAB18
lbl_80AAAB14:
/* 80AAAB14  38 60 00 00 */	li r3, 0
lbl_80AAAB18:
/* 80AAAB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAAB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAAB20  7C 08 03 A6 */	mtlr r0
/* 80AAAB24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAAB28  4E 80 00 20 */	blr 
