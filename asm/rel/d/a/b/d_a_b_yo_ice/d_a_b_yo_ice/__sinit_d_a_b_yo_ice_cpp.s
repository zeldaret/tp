lbl_8063DC18:
/* 8063DC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DC1C  7C 08 02 A6 */	mflr r0
/* 8063DC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DC24  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x8063DFF8@ha */
/* 8063DC28  38 63 DF F8 */	addi r3, r3, l_HIO@l /* 0x8063DFF8@l */
/* 8063DC2C  4B FF C5 21 */	bl __ct__13daB_YOI_HIO_cFv
/* 8063DC30  3C 80 80 64 */	lis r4, __dt__13daB_YOI_HIO_cFv@ha /* 0x8063DBD0@ha */
/* 8063DC34  38 84 DB D0 */	addi r4, r4, __dt__13daB_YOI_HIO_cFv@l /* 0x8063DBD0@l */
/* 8063DC38  3C A0 80 64 */	lis r5, lit_3771@ha /* 0x8063DFEC@ha */
/* 8063DC3C  38 A5 DF EC */	addi r5, r5, lit_3771@l /* 0x8063DFEC@l */
/* 8063DC40  4B FF C4 99 */	bl __register_global_object
/* 8063DC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DC48  7C 08 03 A6 */	mtlr r0
/* 8063DC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DC50  4E 80 00 20 */	blr 
