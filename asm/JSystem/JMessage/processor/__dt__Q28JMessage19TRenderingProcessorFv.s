lbl_802A8AC0:
/* 802A8AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8AC4  7C 08 02 A6 */	mflr r0
/* 802A8AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8AD0  93 C1 00 08 */	stw r30, 8(r1)
/* 802A8AD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A8AD8  7C 9F 23 78 */	mr r31, r4
/* 802A8ADC  41 82 00 28 */	beq lbl_802A8B04
/* 802A8AE0  3C 80 80 3D */	lis r4, __vt__Q28JMessage19TRenderingProcessor@ha /* 0x803C9B94@ha */
/* 802A8AE4  38 04 9B 94 */	addi r0, r4, __vt__Q28JMessage19TRenderingProcessor@l /* 0x803C9B94@l */
/* 802A8AE8  90 1E 00 00 */	stw r0, 0(r30)
/* 802A8AEC  38 80 00 00 */	li r4, 0
/* 802A8AF0  4B FF F0 59 */	bl __dt__Q28JMessage10TProcessorFv
/* 802A8AF4  7F E0 07 35 */	extsh. r0, r31
/* 802A8AF8  40 81 00 0C */	ble lbl_802A8B04
/* 802A8AFC  7F C3 F3 78 */	mr r3, r30
/* 802A8B00  48 02 62 3D */	bl __dl__FPv
lbl_802A8B04:
/* 802A8B04  7F C3 F3 78 */	mr r3, r30
/* 802A8B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8B0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8B14  7C 08 03 A6 */	mtlr r0
/* 802A8B18  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8B1C  4E 80 00 20 */	blr 
