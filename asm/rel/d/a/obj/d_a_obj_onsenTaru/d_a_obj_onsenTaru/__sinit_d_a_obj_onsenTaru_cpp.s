lbl_80CA9AE4:
/* 80CA9AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9AE8  7C 08 02 A6 */	mflr r0
/* 80CA9AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9AF0  3C 60 80 CB */	lis r3, l_HIO@ha /* 0x80CA9DF4@ha */
/* 80CA9AF4  38 63 9D F4 */	addi r3, r3, l_HIO@l /* 0x80CA9DF4@l */
/* 80CA9AF8  4B FF EA D5 */	bl __ct__15daOnsTaru_HIO_cFv
/* 80CA9AFC  3C 80 80 CB */	lis r4, __dt__15daOnsTaru_HIO_cFv@ha /* 0x80CA9A78@ha */
/* 80CA9B00  38 84 9A 78 */	addi r4, r4, __dt__15daOnsTaru_HIO_cFv@l /* 0x80CA9A78@l */
/* 80CA9B04  3C A0 80 CB */	lis r5, lit_3647@ha /* 0x80CA9DE8@ha */
/* 80CA9B08  38 A5 9D E8 */	addi r5, r5, lit_3647@l /* 0x80CA9DE8@l */
/* 80CA9B0C  4B FF EA 4D */	bl __register_global_object
/* 80CA9B10  3C 60 80 CB */	lis r3, mCcDCyl__11daOnsTaru_c@ha /* 0x80CA9C38@ha */
/* 80CA9B14  38 63 9C 38 */	addi r3, r3, mCcDCyl__11daOnsTaru_c@l /* 0x80CA9C38@l */
/* 80CA9B18  38 A3 FF FC */	addi r5, r3, -4
/* 80CA9B1C  3C 60 80 CB */	lis r3, mCcDObjInfo__11daOnsTaru_c@ha /* 0x80CA9B80@ha */
/* 80CA9B20  38 63 9B 80 */	addi r3, r3, mCcDObjInfo__11daOnsTaru_c@l /* 0x80CA9B80@l */
/* 80CA9B24  38 83 FF FC */	addi r4, r3, -4
/* 80CA9B28  38 00 00 06 */	li r0, 6
/* 80CA9B2C  7C 09 03 A6 */	mtctr r0
lbl_80CA9B30:
/* 80CA9B30  80 64 00 04 */	lwz r3, 4(r4)
/* 80CA9B34  84 04 00 08 */	lwzu r0, 8(r4)
/* 80CA9B38  90 65 00 04 */	stw r3, 4(r5)
/* 80CA9B3C  94 05 00 08 */	stwu r0, 8(r5)
/* 80CA9B40  42 00 FF F0 */	bdnz lbl_80CA9B30
/* 80CA9B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9B48  7C 08 03 A6 */	mtlr r0
/* 80CA9B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9B50  4E 80 00 20 */	blr 
