lbl_80CB4F70:
/* 80CB4F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4F74  7C 08 02 A6 */	mflr r0
/* 80CB4F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4F7C  3C 60 80 CB */	lis r3, l_HIO@ha /* 0x80CB5134@ha */
/* 80CB4F80  38 63 51 34 */	addi r3, r3, l_HIO@l /* 0x80CB5134@l */
/* 80CB4F84  4B FF F2 C9 */	bl __ct__14daPoTbox_HIO_cFv
/* 80CB4F88  3C 80 80 CB */	lis r4, __dt__14daPoTbox_HIO_cFv@ha /* 0x80CB4F14@ha */
/* 80CB4F8C  38 84 4F 14 */	addi r4, r4, __dt__14daPoTbox_HIO_cFv@l /* 0x80CB4F14@l */
/* 80CB4F90  3C A0 80 CB */	lis r5, lit_3622@ha /* 0x80CB5128@ha */
/* 80CB4F94  38 A5 51 28 */	addi r5, r5, lit_3622@l /* 0x80CB5128@l */
/* 80CB4F98  4B FF F2 41 */	bl __register_global_object
/* 80CB4F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4FA0  7C 08 03 A6 */	mtlr r0
/* 80CB4FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4FA8  4E 80 00 20 */	blr 
