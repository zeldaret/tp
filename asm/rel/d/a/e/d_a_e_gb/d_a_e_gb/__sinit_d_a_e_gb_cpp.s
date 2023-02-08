lbl_806C6FE0:
/* 806C6FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6FE4  7C 08 02 A6 */	mflr r0
/* 806C6FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6FEC  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C7938@ha */
/* 806C6FF0  38 63 79 38 */	addi r3, r3, l_HIO@l /* 0x806C7938@l */
/* 806C6FF4  4B FF AC F9 */	bl __ct__12daE_GB_HIO_cFv
/* 806C6FF8  3C 80 80 6C */	lis r4, __dt__12daE_GB_HIO_cFv@ha /* 0x806C6F98@ha */
/* 806C6FFC  38 84 6F 98 */	addi r4, r4, __dt__12daE_GB_HIO_cFv@l /* 0x806C6F98@l */
/* 806C7000  3C A0 80 6C */	lis r5, lit_3922@ha /* 0x806C792C@ha */
/* 806C7004  38 A5 79 2C */	addi r5, r5, lit_3922@l /* 0x806C792C@l */
/* 806C7008  4B FF AC 71 */	bl __register_global_object
/* 806C700C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C7010  7C 08 03 A6 */	mtlr r0
/* 806C7014  38 21 00 10 */	addi r1, r1, 0x10
/* 806C7018  4E 80 00 20 */	blr 
