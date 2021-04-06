lbl_80D676F4:
/* 80D676F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D676F8  7C 08 02 A6 */	mflr r0
/* 80D676FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D67700  7C 64 1B 78 */	mr r4, r3
/* 80D67704  3C 60 80 45 */	lis r3, m_object__7dDemo_c@ha /* 0x80450E20@ha */
/* 80D67708  38 63 0E 20 */	addi r3, r3, m_object__7dDemo_c@l /* 0x80450E20@l */
/* 80D6770C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D67710  88 84 04 98 */	lbz r4, 0x498(r4)
/* 80D67714  4B 2D 19 75 */	bl getActor__14dDemo_object_cFUc
/* 80D67718  28 03 00 00 */	cmplwi r3, 0
/* 80D6771C  41 82 00 38 */	beq lbl_80D67754
/* 80D67720  A0 03 00 04 */	lhz r0, 4(r3)
/* 80D67724  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D67728  41 82 00 2C */	beq lbl_80D67754
/* 80D6772C  34 63 00 4C */	addic. r3, r3, 0x4c
/* 80D67730  41 82 00 24 */	beq lbl_80D67754
/* 80D67734  80 03 00 04 */	lwz r0, 4(r3)
/* 80D67738  90 01 00 08 */	stw r0, 8(r1)
/* 80D6773C  38 61 00 08 */	addi r3, r1, 8
/* 80D67740  38 81 00 0C */	addi r4, r1, 0xc
/* 80D67744  4B 52 23 3D */	bl getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
/* 80D67748  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80D6774C  88 63 00 00 */	lbz r3, 0(r3)
/* 80D67750  48 00 00 08 */	b lbl_80D67758
lbl_80D67754:
/* 80D67754  38 60 FF FF */	li r3, -1
lbl_80D67758:
/* 80D67758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D6775C  7C 08 03 A6 */	mtlr r0
/* 80D67760  38 21 00 20 */	addi r1, r1, 0x20
/* 80D67764  4E 80 00 20 */	blr 
