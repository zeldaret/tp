lbl_80AAAB2C:
/* 80AAAB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAAB30  7C 08 02 A6 */	mflr r0
/* 80AAAB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAAB38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAAB3C  7C 7F 1B 78 */	mr r31, r3
/* 80AAAB40  88 03 0F 8C */	lbz r0, 0xf8c(r3)
/* 80AAAB44  28 00 00 01 */	cmplwi r0, 1
/* 80AAAB48  40 82 00 40 */	bne lbl_80AAAB88
/* 80AAAB4C  3C 80 80 AB */	lis r4, l_motionAnmData@ha
/* 80AAAB50  38 A4 D5 E4 */	addi r5, r4, l_motionAnmData@l
/* 80AAAB54  80 05 00 78 */	lwz r0, 0x78(r5)
/* 80AAAB58  54 00 10 3A */	slwi r0, r0, 2
/* 80AAAB5C  3C 80 80 AB */	lis r4, l_resNameList@ha
/* 80AAAB60  38 84 D4 14 */	addi r4, r4, l_resNameList@l
/* 80AAAB64  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AAAB68  80 A5 00 70 */	lwz r5, 0x70(r5)
/* 80AAAB6C  4B 69 D4 EC */	b getTrnsfrmAnmP__8daNpcT_cFPCci
/* 80AAAB70  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80AAAB74  80 04 00 08 */	lwz r0, 8(r4)
/* 80AAAB78  7C 03 00 50 */	subf r0, r3, r0
/* 80AAAB7C  7C 00 00 34 */	cntlzw r0, r0
/* 80AAAB80  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AAAB84  48 00 00 08 */	b lbl_80AAAB8C
lbl_80AAAB88:
/* 80AAAB88  38 60 00 00 */	li r3, 0
lbl_80AAAB8C:
/* 80AAAB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAAB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAAB94  7C 08 03 A6 */	mtlr r0
/* 80AAAB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAAB9C  4E 80 00 20 */	blr 
