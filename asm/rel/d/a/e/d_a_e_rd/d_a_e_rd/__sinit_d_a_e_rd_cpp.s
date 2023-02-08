lbl_80518064:
/* 80518064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80518068  7C 08 02 A6 */	mflr r0
/* 8051806C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80518070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80518074  3C 60 80 52 */	lis r3, lit_1109@ha /* 0x80519140@ha */
/* 80518078  3B E3 91 40 */	addi r31, r3, lit_1109@l /* 0x80519140@l */
/* 8051807C  38 7F 00 54 */	addi r3, r31, 0x54
/* 80518080  4B FE C9 ED */	bl __ct__12daE_RD_HIO_cFv
/* 80518084  3C 80 80 52 */	lis r4, __dt__12daE_RD_HIO_cFv@ha /* 0x8051801C@ha */
/* 80518088  38 84 80 1C */	addi r4, r4, __dt__12daE_RD_HIO_cFv@l /* 0x8051801C@l */
/* 8051808C  38 BF 00 48 */	addi r5, r31, 0x48
/* 80518090  4B FE C9 69 */	bl __register_global_object
/* 80518094  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80518098  3C 80 80 52 */	lis r4, __dt__4cXyzFv@ha /* 0x80518534@ha */
/* 8051809C  38 84 85 34 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80518534@l */
/* 805180A0  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 805180A4  4B FE C9 55 */	bl __register_global_object
/* 805180A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805180AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805180B0  7C 08 03 A6 */	mtlr r0
/* 805180B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805180B8  4E 80 00 20 */	blr 
