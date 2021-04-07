lbl_80739D00:
/* 80739D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80739D04  7C 08 02 A6 */	mflr r0
/* 80739D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80739D0C  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha /* 0x8073A14C@ha */
/* 80739D10  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l /* 0x8073A14C@l */
/* 80739D14  4B FF C4 F9 */	bl __ct__15daE_OctBg_HIO_cFv
/* 80739D18  3C 80 80 74 */	lis r4, __dt__15daE_OctBg_HIO_cFv@ha /* 0x80739CB8@ha */
/* 80739D1C  38 84 9C B8 */	addi r4, r4, __dt__15daE_OctBg_HIO_cFv@l /* 0x80739CB8@l */
/* 80739D20  3C A0 80 74 */	lis r5, lit_3763@ha /* 0x8073A140@ha */
/* 80739D24  38 A5 A1 40 */	addi r5, r5, lit_3763@l /* 0x8073A140@l */
/* 80739D28  4B FF C4 71 */	bl __register_global_object
/* 80739D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80739D30  7C 08 03 A6 */	mtlr r0
/* 80739D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80739D38  4E 80 00 20 */	blr 
