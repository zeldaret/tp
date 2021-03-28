lbl_80B4BA74:
/* 80B4BA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BA78  7C 08 02 A6 */	mflr r0
/* 80B4BA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BA80  80 04 00 00 */	lwz r0, 0(r4)
/* 80B4BA84  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B4BA88  41 82 00 08 */	beq lbl_80B4BA90
/* 80B4BA8C  48 00 00 0C */	b lbl_80B4BA98
lbl_80B4BA90:
/* 80B4BA90  80 63 0F 84 */	lwz r3, 0xf84(r3)
/* 80B4BA94  48 21 A4 90 */	b offMidnaTagSw2__11daTagYami_cFv
lbl_80B4BA98:
/* 80B4BA98  38 60 00 01 */	li r3, 1
/* 80B4BA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BAA0  7C 08 03 A6 */	mtlr r0
/* 80B4BAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BAA8  4E 80 00 20 */	blr 
