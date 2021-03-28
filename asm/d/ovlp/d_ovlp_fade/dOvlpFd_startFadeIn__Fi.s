lbl_80252184:
/* 80252184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252188  7C 08 02 A6 */	mflr r0
/* 8025218C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252194  93 C1 00 08 */	stw r30, 8(r1)
/* 80252198  7C 7E 1B 78 */	mr r30, r3
/* 8025219C  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 802521A0  83 E3 00 04 */	lwz r31, 4(r3)
/* 802521A4  7F E3 FB 78 */	mr r3, r31
/* 802521A8  38 80 00 00 */	li r4, 0
/* 802521AC  38 A0 00 00 */	li r5, 0
/* 802521B0  48 09 36 21 */	bl setStatus__8JUTFaderFQ28JUTFader7EStatusi
/* 802521B4  7F E3 FB 78 */	mr r3, r31
/* 802521B8  38 80 00 00 */	li r4, 0
/* 802521BC  38 A0 FF FF */	li r5, -1
/* 802521C0  48 09 36 11 */	bl setStatus__8JUTFaderFQ28JUTFader7EStatusi
/* 802521C4  7F E3 FB 78 */	mr r3, r31
/* 802521C8  7F C4 F3 78 */	mr r4, r30
/* 802521CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802521D0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802521D4  7D 89 03 A6 */	mtctr r12
/* 802521D8  4E 80 04 21 */	bctrl 
/* 802521DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802521E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802521E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802521E8  7C 08 03 A6 */	mtlr r0
/* 802521EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802521F0  4E 80 00 20 */	blr 
