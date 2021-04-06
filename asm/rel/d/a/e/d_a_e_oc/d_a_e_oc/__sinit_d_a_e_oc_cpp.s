lbl_80735678:
/* 80735678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073567C  7C 08 02 A6 */	mflr r0
/* 80735680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80735684  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x80736060@ha */
/* 80735688  38 63 60 60 */	addi r3, r3, l_HIO@l /* 0x80736060@l */
/* 8073568C  4B FF 6F 41 */	bl __ct__12daE_OC_HIO_cFv
/* 80735690  3C 80 80 73 */	lis r4, __dt__12daE_OC_HIO_cFv@ha /* 0x80735630@ha */
/* 80735694  38 84 56 30 */	addi r4, r4, __dt__12daE_OC_HIO_cFv@l /* 0x80735630@l */
/* 80735698  3C A0 80 73 */	lis r5, lit_3927@ha /* 0x80736054@ha */
/* 8073569C  38 A5 60 54 */	addi r5, r5, lit_3927@l /* 0x80736054@l */
/* 807356A0  4B FF 6E B9 */	bl __register_global_object
/* 807356A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807356A8  7C 08 03 A6 */	mtlr r0
/* 807356AC  38 21 00 10 */	addi r1, r1, 0x10
/* 807356B0  4E 80 00 20 */	blr 
