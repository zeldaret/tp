lbl_805CBD00:
/* 805CBD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CBD04  7C 08 02 A6 */	mflr r0
/* 805CBD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CBD0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CBD10  7C 7F 1B 78 */	mr r31, r3
/* 805CBD14  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 805CBD18  38 80 00 00 */	li r4, 0
/* 805CBD1C  38 A0 00 14 */	li r5, 0x14
/* 805CBD20  38 C0 01 00 */	li r6, 0x100
/* 805CBD24  4B CA 48 E4 */	b cLib_addCalcAngleS2__FPssss
/* 805CBD28  38 7F 07 AA */	addi r3, r31, 0x7aa
/* 805CBD2C  38 80 00 00 */	li r4, 0
/* 805CBD30  38 A0 00 14 */	li r5, 0x14
/* 805CBD34  38 C0 01 00 */	li r6, 0x100
/* 805CBD38  4B CA 48 D0 */	b cLib_addCalcAngleS2__FPssss
/* 805CBD3C  38 7F 07 AC */	addi r3, r31, 0x7ac
/* 805CBD40  38 80 00 00 */	li r4, 0
/* 805CBD44  38 A0 00 14 */	li r5, 0x14
/* 805CBD48  38 C0 01 00 */	li r6, 0x100
/* 805CBD4C  4B CA 48 BC */	b cLib_addCalcAngleS2__FPssss
/* 805CBD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CBD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CBD58  7C 08 03 A6 */	mtlr r0
/* 805CBD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CBD60  4E 80 00 20 */	blr 
