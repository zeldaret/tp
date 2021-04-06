lbl_80500618:
/* 80500618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050061C  7C 08 02 A6 */	mflr r0
/* 80500620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500624  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x80500E70@ha */
/* 80500628  38 63 0E 70 */	addi r3, r3, l_HIO@l /* 0x80500E70@l */
/* 8050062C  4B FF B7 41 */	bl __ct__12daE_HB_HIO_cFv
/* 80500630  3C 80 80 50 */	lis r4, __dt__12daE_HB_HIO_cFv@ha /* 0x805005D0@ha */
/* 80500634  38 84 05 D0 */	addi r4, r4, __dt__12daE_HB_HIO_cFv@l /* 0x805005D0@l */
/* 80500638  3C A0 80 50 */	lis r5, lit_3804@ha /* 0x80500E64@ha */
/* 8050063C  38 A5 0E 64 */	addi r5, r5, lit_3804@l /* 0x80500E64@l */
/* 80500640  4B FF B6 B9 */	bl __register_global_object
/* 80500644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500648  7C 08 03 A6 */	mtlr r0
/* 8050064C  38 21 00 10 */	addi r1, r1, 0x10
/* 80500650  4E 80 00 20 */	blr 
