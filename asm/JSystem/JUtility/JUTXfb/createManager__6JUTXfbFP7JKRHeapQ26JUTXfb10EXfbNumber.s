lbl_802E53B8:
/* 802E53B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E53BC  7C 08 02 A6 */	mflr r0
/* 802E53C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E53C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E53C8  93 C1 00 08 */	stw r30, 8(r1)
/* 802E53CC  7C 7E 1B 78 */	mr r30, r3
/* 802E53D0  7C 9F 23 78 */	mr r31, r4
/* 802E53D4  80 0D 8F D0 */	lwz r0, sManager__6JUTXfb(r13)
/* 802E53D8  28 00 00 00 */	cmplwi r0, 0
/* 802E53DC  40 82 00 2C */	bne lbl_802E5408
/* 802E53E0  38 60 00 20 */	li r3, 0x20
/* 802E53E4  4B FE 98 69 */	bl __nw__FUl
/* 802E53E8  7C 60 1B 79 */	or. r0, r3, r3
/* 802E53EC  41 82 00 18 */	beq lbl_802E5404
/* 802E53F0  38 80 00 00 */	li r4, 0
/* 802E53F4  7F C5 F3 78 */	mr r5, r30
/* 802E53F8  7F E6 FB 78 */	mr r6, r31
/* 802E53FC  4B FF FE 65 */	bl __ct__6JUTXfbFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumber
/* 802E5400  7C 60 1B 78 */	mr r0, r3
lbl_802E5404:
/* 802E5404  90 0D 8F D0 */	stw r0, sManager__6JUTXfb(r13)
lbl_802E5408:
/* 802E5408  80 6D 8F D0 */	lwz r3, sManager__6JUTXfb(r13)
/* 802E540C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5410  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E5414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5418  7C 08 03 A6 */	mtlr r0
/* 802E541C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5420  4E 80 00 20 */	blr 
