lbl_807B3FEC:
/* 807B3FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3FF0  7C 08 02 A6 */	mflr r0
/* 807B3FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3FF8  3C 60 80 7B */	lis r3, l_HIO@ha
/* 807B3FFC  38 63 48 80 */	addi r3, r3, l_HIO@l
/* 807B4000  4B FF C3 8D */	bl __ct__12daE_TH_HIO_cFv
/* 807B4004  3C 80 80 7B */	lis r4, __dt__12daE_TH_HIO_cFv@ha
/* 807B4008  38 84 3F A4 */	addi r4, r4, __dt__12daE_TH_HIO_cFv@l
/* 807B400C  3C A0 80 7B */	lis r5, lit_3922@ha
/* 807B4010  38 A5 48 74 */	addi r5, r5, lit_3922@l
/* 807B4014  4B FF C3 05 */	bl __register_global_object
/* 807B4018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B401C  7C 08 03 A6 */	mtlr r0
/* 807B4020  38 21 00 10 */	addi r1, r1, 0x10
/* 807B4024  4E 80 00 20 */	blr 
