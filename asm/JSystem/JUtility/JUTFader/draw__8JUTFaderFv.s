lbl_802E56DC:
/* 802E56DC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 802E56E0  7C 08 02 A6 */	mflr r0
/* 802E56E4  90 01 01 04 */	stw r0, 0x104(r1)
/* 802E56E8  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 802E56EC  7C 7F 1B 78 */	mr r31, r3
/* 802E56F0  88 03 00 0F */	lbz r0, 0xf(r3)
/* 802E56F4  28 00 00 00 */	cmplwi r0, 0
/* 802E56F8  41 82 00 60 */	beq lbl_802E5758
/* 802E56FC  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E5700  48 00 3F 71 */	bl __ct__13J2DOrthoGraphFv
/* 802E5704  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802E5708  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E570C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5710  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E5714  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E5718  90 01 00 08 */	stw r0, 8(r1)
/* 802E571C  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E5720  38 81 00 08 */	addi r4, r1, 8
/* 802E5724  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E5728  38 C1 00 10 */	addi r6, r1, 0x10
/* 802E572C  38 E1 00 14 */	addi r7, r1, 0x14
/* 802E5730  48 00 39 E9 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 802E5734  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E5738  38 9F 00 10 */	addi r4, r31, 0x10
/* 802E573C  48 00 3B 25 */	bl func_802E9260
/* 802E5740  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802E5744  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802E5748  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E574C  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802E5750  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802E5754  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802E5758:
/* 802E5758  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 802E575C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 802E5760  7C 08 03 A6 */	mtlr r0
/* 802E5764  38 21 01 00 */	addi r1, r1, 0x100
/* 802E5768  4E 80 00 20 */	blr 
