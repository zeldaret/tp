lbl_80BB96B8:
/* 80BB96B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB96BC  7C 08 02 A6 */	mflr r0
/* 80BB96C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB96C4  3C 60 80 BC */	lis r3, l_HIO@ha /* 0x80BB999C@ha */
/* 80BB96C8  38 63 99 9C */	addi r3, r3, l_HIO@l /* 0x80BB999C@l */
/* 80BB96CC  4B FF EB 41 */	bl __ct__16daBmWindow_HIO_cFv
/* 80BB96D0  3C 80 80 BC */	lis r4, __dt__16daBmWindow_HIO_cFv@ha /* 0x80BB964C@ha */
/* 80BB96D4  38 84 96 4C */	addi r4, r4, __dt__16daBmWindow_HIO_cFv@l /* 0x80BB964C@l */
/* 80BB96D8  3C A0 80 BC */	lis r5, lit_3645@ha /* 0x80BB9990@ha */
/* 80BB96DC  38 A5 99 90 */	addi r5, r5, lit_3645@l /* 0x80BB9990@l */
/* 80BB96E0  4B FF EA B9 */	bl __register_global_object
/* 80BB96E4  3C 60 80 BC */	lis r3, mCcDCyl__12daBmWindow_c@ha /* 0x80BB982C@ha */
/* 80BB96E8  38 63 98 2C */	addi r3, r3, mCcDCyl__12daBmWindow_c@l /* 0x80BB982C@l */
/* 80BB96EC  38 A3 FF FC */	addi r5, r3, -4
/* 80BB96F0  3C 60 80 BC */	lis r3, mCcDObjInfo__12daBmWindow_c@ha /* 0x80BB9760@ha */
/* 80BB96F4  38 63 97 60 */	addi r3, r3, mCcDObjInfo__12daBmWindow_c@l /* 0x80BB9760@l */
/* 80BB96F8  38 83 FF FC */	addi r4, r3, -4
/* 80BB96FC  38 00 00 06 */	li r0, 6
/* 80BB9700  7C 09 03 A6 */	mtctr r0
lbl_80BB9704:
/* 80BB9704  80 64 00 04 */	lwz r3, 4(r4)
/* 80BB9708  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BB970C  90 65 00 04 */	stw r3, 4(r5)
/* 80BB9710  94 05 00 08 */	stwu r0, 8(r5)
/* 80BB9714  42 00 FF F0 */	bdnz lbl_80BB9704
/* 80BB9718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB971C  7C 08 03 A6 */	mtlr r0
/* 80BB9720  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9724  4E 80 00 20 */	blr 
