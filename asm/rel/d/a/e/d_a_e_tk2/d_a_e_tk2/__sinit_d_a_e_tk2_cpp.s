lbl_807BBD48:
/* 807BBD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBD4C  7C 08 02 A6 */	mflr r0
/* 807BBD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBD54  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807BBF50@ha */
/* 807BBD58  38 63 BF 50 */	addi r3, r3, l_HIO@l /* 0x807BBF50@l */
/* 807BBD5C  4B FF E8 11 */	bl __ct__13daE_TK2_HIO_cFv
/* 807BBD60  3C 80 80 7C */	lis r4, __dt__13daE_TK2_HIO_cFv@ha /* 0x807BBD00@ha */
/* 807BBD64  38 84 BD 00 */	addi r4, r4, __dt__13daE_TK2_HIO_cFv@l /* 0x807BBD00@l */
/* 807BBD68  3C A0 80 7C */	lis r5, lit_3757@ha /* 0x807BBF44@ha */
/* 807BBD6C  38 A5 BF 44 */	addi r5, r5, lit_3757@l /* 0x807BBF44@l */
/* 807BBD70  4B FF E7 89 */	bl __register_global_object
/* 807BBD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBD78  7C 08 03 A6 */	mtlr r0
/* 807BBD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBD80  4E 80 00 20 */	blr 
