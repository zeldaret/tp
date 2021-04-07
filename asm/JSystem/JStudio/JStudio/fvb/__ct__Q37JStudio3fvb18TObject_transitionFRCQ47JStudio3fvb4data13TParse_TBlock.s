lbl_802843C8:
/* 802843C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802843CC  7C 08 02 A6 */	mflr r0
/* 802843D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802843D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802843D8  7C 7F 1B 78 */	mr r31, r3
/* 802843DC  7F E5 FB 78 */	mr r5, r31
/* 802843E0  80 84 00 00 */	lwz r4, 0(r4)
/* 802843E4  A0 04 00 06 */	lhz r0, 6(r4)
/* 802843E8  38 60 00 00 */	li r3, 0
/* 802843EC  28 00 00 00 */	cmplwi r0, 0
/* 802843F0  41 82 00 08 */	beq lbl_802843F8
/* 802843F4  38 64 00 08 */	addi r3, r4, 8
lbl_802843F8:
/* 802843F8  90 65 00 00 */	stw r3, 0(r5)
/* 802843FC  90 05 00 04 */	stw r0, 4(r5)
/* 80284400  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb7TObject@ha /* 0x803C4AB0@ha */
/* 80284404  38 03 4A B0 */	addi r0, r3, __vt__Q37JStudio3fvb7TObject@l /* 0x803C4AB0@l */
/* 80284408  90 05 00 08 */	stw r0, 8(r5)
/* 8028440C  38 00 00 00 */	li r0, 0
/* 80284410  90 05 00 0C */	stw r0, 0xc(r5)
/* 80284414  90 05 00 10 */	stw r0, 0x10(r5)
/* 80284418  38 7F 00 18 */	addi r3, r31, 0x18
/* 8028441C  90 65 00 14 */	stw r3, 0x14(r5)
/* 80284420  3C 80 80 3C */	lis r4, __vt__Q37JStudio3fvb18TObject_transition@ha /* 0x803C4A80@ha */
/* 80284424  38 04 4A 80 */	addi r0, r4, __vt__Q37JStudio3fvb18TObject_transition@l /* 0x803C4A80@l */
/* 80284428  90 1F 00 08 */	stw r0, 8(r31)
/* 8028442C  4B FF DF C1 */	bl __ct__Q27JStudio25TFunctionValue_transitionFv
/* 80284430  7F E3 FB 78 */	mr r3, r31
/* 80284434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028443C  7C 08 03 A6 */	mtlr r0
/* 80284440  38 21 00 10 */	addi r1, r1, 0x10
/* 80284444  4E 80 00 20 */	blr 
