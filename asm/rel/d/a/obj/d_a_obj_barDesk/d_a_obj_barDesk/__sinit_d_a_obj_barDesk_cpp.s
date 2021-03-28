lbl_80BA9AEC:
/* 80BA9AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9AF0  7C 08 02 A6 */	mflr r0
/* 80BA9AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9AF8  3C 60 80 BB */	lis r3, l_HIO@ha
/* 80BA9AFC  38 63 9D 24 */	addi r3, r3, l_HIO@l
/* 80BA9B00  4B FF F6 8D */	bl __ct__15daBarDesk_HIO_cFv
/* 80BA9B04  3C 80 80 BB */	lis r4, __dt__15daBarDesk_HIO_cFv@ha
/* 80BA9B08  38 84 9A 90 */	addi r4, r4, __dt__15daBarDesk_HIO_cFv@l
/* 80BA9B0C  3C A0 80 BB */	lis r5, lit_3643@ha
/* 80BA9B10  38 A5 9D 18 */	addi r5, r5, lit_3643@l
/* 80BA9B14  4B FF F6 05 */	bl __register_global_object
/* 80BA9B18  3C 60 80 BB */	lis r3, mCcDCyl__11daBarDesk_c@ha
/* 80BA9B1C  38 63 9B DC */	addi r3, r3, mCcDCyl__11daBarDesk_c@l
/* 80BA9B20  38 A3 FF FC */	addi r5, r3, -4
/* 80BA9B24  3C 60 80 BB */	lis r3, mCcDObjInfo__11daBarDesk_c@ha
/* 80BA9B28  38 63 9B 70 */	addi r3, r3, mCcDObjInfo__11daBarDesk_c@l
/* 80BA9B2C  38 83 FF FC */	addi r4, r3, -4
/* 80BA9B30  38 00 00 06 */	li r0, 6
/* 80BA9B34  7C 09 03 A6 */	mtctr r0
lbl_80BA9B38:
/* 80BA9B38  80 64 00 04 */	lwz r3, 4(r4)
/* 80BA9B3C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BA9B40  90 65 00 04 */	stw r3, 4(r5)
/* 80BA9B44  94 05 00 08 */	stwu r0, 8(r5)
/* 80BA9B48  42 00 FF F0 */	bdnz lbl_80BA9B38
/* 80BA9B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9B50  7C 08 03 A6 */	mtlr r0
/* 80BA9B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9B58  4E 80 00 20 */	blr 
