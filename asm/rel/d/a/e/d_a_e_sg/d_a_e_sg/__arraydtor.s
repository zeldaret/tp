lbl_8078DD44:
/* 8078DD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078DD48  7C 08 02 A6 */	mflr r0
/* 8078DD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078DD50  3C 60 80 79 */	lis r3, bg_cross@ha
/* 8078DD54  38 63 E1 48 */	addi r3, r3, bg_cross@l
/* 8078DD58  3C 80 80 79 */	lis r4, __dt__4cXyzFv@ha
/* 8078DD5C  38 84 A4 DC */	addi r4, r4, __dt__4cXyzFv@l
/* 8078DD60  38 A0 00 0C */	li r5, 0xc
/* 8078DD64  38 C0 00 0A */	li r6, 0xa
/* 8078DD68  4B BD 3F 80 */	b __destroy_arr
/* 8078DD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078DD70  7C 08 03 A6 */	mtlr r0
/* 8078DD74  38 21 00 10 */	addi r1, r1, 0x10
/* 8078DD78  4E 80 00 20 */	blr 
