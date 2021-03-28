lbl_804D5BC0:
/* 804D5BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5BC4  7C 08 02 A6 */	mflr r0
/* 804D5BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5BCC  28 03 00 00 */	cmplwi r3, 0
/* 804D5BD0  41 82 00 0C */	beq lbl_804D5BDC
/* 804D5BD4  38 80 00 00 */	li r4, 0
/* 804D5BD8  4B B4 30 B4 */	b __dt__10fopAc_ac_cFv
lbl_804D5BDC:
/* 804D5BDC  38 60 00 01 */	li r3, 1
/* 804D5BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5BE4  7C 08 03 A6 */	mtlr r0
/* 804D5BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5BEC  4E 80 00 20 */	blr 
