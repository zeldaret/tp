lbl_80605368:
/* 80605368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060536C  7C 08 02 A6 */	mflr r0
/* 80605370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80605374  3C 60 80 60 */	lis r3, l_HIO@ha /* 0x8060561C@ha */
/* 80605378  38 63 56 1C */	addi r3, r3, l_HIO@l /* 0x8060561C@l */
/* 8060537C  4B FF EE F1 */	bl __ct__13daB_GOS_HIO_cFv
/* 80605380  3C 80 80 60 */	lis r4, __dt__13daB_GOS_HIO_cFv@ha /* 0x80605320@ha */
/* 80605384  38 84 53 20 */	addi r4, r4, __dt__13daB_GOS_HIO_cFv@l /* 0x80605320@l */
/* 80605388  3C A0 80 60 */	lis r5, lit_3641@ha /* 0x80605610@ha */
/* 8060538C  38 A5 56 10 */	addi r5, r5, lit_3641@l /* 0x80605610@l */
/* 80605390  4B FF EE 69 */	bl __register_global_object
/* 80605394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80605398  7C 08 03 A6 */	mtlr r0
/* 8060539C  38 21 00 10 */	addi r1, r1, 0x10
/* 806053A0  4E 80 00 20 */	blr 
