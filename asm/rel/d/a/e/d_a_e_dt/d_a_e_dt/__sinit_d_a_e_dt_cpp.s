lbl_806B5C24:
/* 806B5C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5C28  7C 08 02 A6 */	mflr r0
/* 806B5C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5C34  3C 60 80 6B */	lis r3, lit_1109@ha /* 0x806B6260@ha */
/* 806B5C38  3B E3 62 60 */	addi r31, r3, lit_1109@l /* 0x806B6260@l */
/* 806B5C3C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 806B5C40  4B FF 7C CD */	bl __ct__12daE_DT_HIO_cFv
/* 806B5C44  3C 80 80 6B */	lis r4, __dt__12daE_DT_HIO_cFv@ha /* 0x806B5BDC@ha */
/* 806B5C48  38 84 5B DC */	addi r4, r4, __dt__12daE_DT_HIO_cFv@l /* 0x806B5BDC@l */
/* 806B5C4C  38 BF 00 40 */	addi r5, r31, 0x40
/* 806B5C50  4B FF 7C 49 */	bl __register_global_object
/* 806B5C54  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 806B5C58  3C 80 80 6B */	lis r4, __dt__4cXyzFv@ha /* 0x806AE56C@ha */
/* 806B5C5C  38 84 E5 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x806AE56C@l */
/* 806B5C60  38 BF 00 D4 */	addi r5, r31, 0xd4
/* 806B5C64  4B FF 7C 35 */	bl __register_global_object
/* 806B5C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5C70  7C 08 03 A6 */	mtlr r0
/* 806B5C74  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5C78  4E 80 00 20 */	blr 
