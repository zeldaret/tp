lbl_8069421C:
/* 8069421C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80694220  7C 08 02 A6 */	mflr r0
/* 80694224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80694228  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x80694968@ha */
/* 8069422C  38 63 49 68 */	addi r3, r3, l_HIO@l /* 0x80694968@l */
/* 80694230  4B FF CF 7D */	bl __ct__12daE_BU_HIO_cFv
/* 80694234  3C 80 80 69 */	lis r4, __dt__12daE_BU_HIO_cFv@ha /* 0x806941D4@ha */
/* 80694238  38 84 41 D4 */	addi r4, r4, __dt__12daE_BU_HIO_cFv@l /* 0x806941D4@l */
/* 8069423C  3C A0 80 69 */	lis r5, lit_3804@ha /* 0x8069495C@ha */
/* 80694240  38 A5 49 5C */	addi r5, r5, lit_3804@l /* 0x8069495C@l */
/* 80694244  4B FF CE F5 */	bl __register_global_object
/* 80694248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069424C  7C 08 03 A6 */	mtlr r0
/* 80694250  38 21 00 10 */	addi r1, r1, 0x10
/* 80694254  4E 80 00 20 */	blr 
