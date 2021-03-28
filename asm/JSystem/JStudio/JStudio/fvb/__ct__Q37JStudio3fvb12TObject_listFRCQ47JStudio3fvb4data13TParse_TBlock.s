lbl_80284460:
/* 80284460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284464  7C 08 02 A6 */	mflr r0
/* 80284468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028446C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284470  7C 7F 1B 78 */	mr r31, r3
/* 80284474  7F E5 FB 78 */	mr r5, r31
/* 80284478  80 84 00 00 */	lwz r4, 0(r4)
/* 8028447C  A0 04 00 06 */	lhz r0, 6(r4)
/* 80284480  38 60 00 00 */	li r3, 0
/* 80284484  28 00 00 00 */	cmplwi r0, 0
/* 80284488  41 82 00 08 */	beq lbl_80284490
/* 8028448C  38 64 00 08 */	addi r3, r4, 8
lbl_80284490:
/* 80284490  90 65 00 00 */	stw r3, 0(r5)
/* 80284494  90 05 00 04 */	stw r0, 4(r5)
/* 80284498  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb7TObject@ha
/* 8028449C  38 03 4A B0 */	addi r0, r3, __vt__Q37JStudio3fvb7TObject@l
/* 802844A0  90 05 00 08 */	stw r0, 8(r5)
/* 802844A4  38 00 00 00 */	li r0, 0
/* 802844A8  90 05 00 0C */	stw r0, 0xc(r5)
/* 802844AC  90 05 00 10 */	stw r0, 0x10(r5)
/* 802844B0  38 7F 00 18 */	addi r3, r31, 0x18
/* 802844B4  90 65 00 14 */	stw r3, 0x14(r5)
/* 802844B8  3C 80 80 3C */	lis r4, __vt__Q37JStudio3fvb12TObject_list@ha
/* 802844BC  38 04 4A 70 */	addi r0, r4, __vt__Q37JStudio3fvb12TObject_list@l
/* 802844C0  90 1F 00 08 */	stw r0, 8(r31)
/* 802844C4  4B FF E1 F9 */	bl __ct__Q27JStudio19TFunctionValue_listFv
/* 802844C8  7F E3 FB 78 */	mr r3, r31
/* 802844CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802844D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802844D4  7C 08 03 A6 */	mtlr r0
/* 802844D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802844DC  4E 80 00 20 */	blr 
