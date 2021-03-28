lbl_800B97EC:
/* 800B97EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B97F0  7C 08 02 A6 */	mflr r0
/* 800B97F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B97F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B97FC  3B E0 00 00 */	li r31, 0
/* 800B9800  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800B9804  28 00 00 00 */	cmplwi r0, 0
/* 800B9808  41 82 00 18 */	beq lbl_800B9820
/* 800B980C  28 00 00 3B */	cmplwi r0, 0x3b
/* 800B9810  41 82 00 10 */	beq lbl_800B9820
/* 800B9814  48 05 C4 0D */	bl checkEventRun__9daAlink_cCFv
/* 800B9818  2C 03 00 00 */	cmpwi r3, 0
/* 800B981C  41 82 00 08 */	beq lbl_800B9824
lbl_800B9820:
/* 800B9820  3B E0 00 01 */	li r31, 1
lbl_800B9824:
/* 800B9824  7F E3 FB 78 */	mr r3, r31
/* 800B9828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B982C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B9830  7C 08 03 A6 */	mtlr r0
/* 800B9834  38 21 00 10 */	addi r1, r1, 0x10
/* 800B9838  4E 80 00 20 */	blr 
