lbl_801F9F28:
/* 801F9F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9F2C  7C 08 02 A6 */	mflr r0
/* 801F9F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F9F38  3C 60 80 43 */	lis r3, lit_3773@ha
/* 801F9F3C  3B E3 E8 60 */	addi r31, r3, lit_3773@l
/* 801F9F40  38 7F 00 0C */	addi r3, r31, 0xc
/* 801F9F44  4B FF FB B9 */	bl __ct__9dMw_HIO_cFv
/* 801F9F48  3C 80 80 20 */	lis r4, __dt__9dMw_HIO_cFv@ha
/* 801F9F4C  38 84 9E E0 */	addi r4, r4, __dt__9dMw_HIO_cFv@l
/* 801F9F50  38 BF 00 00 */	addi r5, r31, 0
/* 801F9F54  48 16 7C D1 */	bl __register_global_object
/* 801F9F58  38 7F 01 48 */	addi r3, r31, 0x148
/* 801F9F5C  4B FF FE D1 */	bl __ct__10dMw_DHIO_cFv
/* 801F9F60  3C 80 80 20 */	lis r4, __dt__10dMw_DHIO_cFv@ha
/* 801F9F64  38 84 9E 98 */	addi r4, r4, __dt__10dMw_DHIO_cFv@l
/* 801F9F68  38 BF 01 3C */	addi r5, r31, 0x13c
/* 801F9F6C  48 16 7C B9 */	bl __register_global_object
/* 801F9F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9F78  7C 08 03 A6 */	mtlr r0
/* 801F9F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9F80  4E 80 00 20 */	blr 
