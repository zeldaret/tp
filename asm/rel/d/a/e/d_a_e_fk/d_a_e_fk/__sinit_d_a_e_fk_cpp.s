lbl_806BB5DC:
/* 806BB5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB5E0  7C 08 02 A6 */	mflr r0
/* 806BB5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BB5EC  93 C1 00 08 */	stw r30, 8(r1)
/* 806BB5F0  3C 60 80 6C */	lis r3, lit_1109@ha /* 0x806BB8D0@ha */
/* 806BB5F4  3B C3 B8 D0 */	addi r30, r3, lit_1109@l /* 0x806BB8D0@l */
/* 806BB5F8  3C 60 80 6C */	lis r3, lit_3826@ha /* 0x806BB6D0@ha */
/* 806BB5FC  3B E3 B6 D0 */	addi r31, r3, lit_3826@l /* 0x806BB6D0@l */
/* 806BB600  38 7E 00 4C */	addi r3, r30, 0x4c
/* 806BB604  4B FF DD 89 */	bl __ct__12daE_FK_HIO_cFv
/* 806BB608  3C 80 80 6C */	lis r4, __dt__12daE_FK_HIO_cFv@ha /* 0x806BB594@ha */
/* 806BB60C  38 84 B5 94 */	addi r4, r4, __dt__12daE_FK_HIO_cFv@l /* 0x806BB594@l */
/* 806BB610  38 BE 00 40 */	addi r5, r30, 0x40
/* 806BB614  4B FF DD 05 */	bl __register_global_object
/* 806BB618  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 806BB61C  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 806BB620  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 806BB624  38 7E 00 78 */	addi r3, r30, 0x78
/* 806BB628  D0 03 00 04 */	stfs f0, 4(r3)
/* 806BB62C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 806BB630  D0 03 00 08 */	stfs f0, 8(r3)
/* 806BB634  3C 80 80 6C */	lis r4, __dt__4cXyzFv@ha /* 0x806BB680@ha */
/* 806BB638  38 84 B6 80 */	addi r4, r4, __dt__4cXyzFv@l /* 0x806BB680@l */
/* 806BB63C  38 BE 00 6C */	addi r5, r30, 0x6c
/* 806BB640  4B FF DC D9 */	bl __register_global_object
/* 806BB644  38 7E 00 90 */	addi r3, r30, 0x90
/* 806BB648  3C 80 80 6C */	lis r4, __dt__4cXyzFv@ha /* 0x806BB680@ha */
/* 806BB64C  38 84 B6 80 */	addi r4, r4, __dt__4cXyzFv@l /* 0x806BB680@l */
/* 806BB650  38 BE 00 84 */	addi r5, r30, 0x84
/* 806BB654  4B FF DC C5 */	bl __register_global_object
/* 806BB658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BB65C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BB660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BB664  7C 08 03 A6 */	mtlr r0
/* 806BB668  38 21 00 10 */	addi r1, r1, 0x10
/* 806BB66C  4E 80 00 20 */	blr 
