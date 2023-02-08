lbl_80655524:
/* 80655524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655528  7C 08 02 A6 */	mflr r0
/* 8065552C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80655530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80655534  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655538  38 83 57 7C */	addi r4, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 8065553C  7C 9F 23 78 */	mr r31, r4
/* 80655540  3C 60 80 65 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x8065575C@ha */
/* 80655544  38 03 57 5C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x8065575C@l */
/* 80655548  90 04 00 00 */	stw r0, 0(r4)
/* 8065554C  3C 60 80 65 */	lis r3, __vt__17daBalloon2D_HIO_c@ha /* 0x80655750@ha */
/* 80655550  38 03 57 50 */	addi r0, r3, __vt__17daBalloon2D_HIO_c@l /* 0x80655750@l */
/* 80655554  90 04 00 00 */	stw r0, 0(r4)
/* 80655558  38 64 00 04 */	addi r3, r4, 4
/* 8065555C  3C 80 80 65 */	lis r4, data_80655610@ha /* 0x80655610@ha */
/* 80655560  38 84 56 10 */	addi r4, r4, data_80655610@l /* 0x80655610@l */
/* 80655564  38 A0 00 C4 */	li r5, 0xc4
/* 80655568  4B 9A DF D9 */	bl memcpy
/* 8065556C  7F E3 FB 78 */	mr r3, r31
/* 80655570  3C 80 80 65 */	lis r4, __dt__17daBalloon2D_HIO_cFv@ha /* 0x806553A8@ha */
/* 80655574  38 84 53 A8 */	addi r4, r4, __dt__17daBalloon2D_HIO_cFv@l /* 0x806553A8@l */
/* 80655578  3C A0 80 65 */	lis r5, lit_3779@ha /* 0x80655770@ha */
/* 8065557C  38 A5 57 70 */	addi r5, r5, lit_3779@l /* 0x80655770@l */
/* 80655580  4B FF DE D9 */	bl __register_global_object
/* 80655584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065558C  7C 08 03 A6 */	mtlr r0
/* 80655590  38 21 00 10 */	addi r1, r1, 0x10
/* 80655594  4E 80 00 20 */	blr 
