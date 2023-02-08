lbl_8029EF00:
/* 8029EF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EF04  7C 08 02 A6 */	mflr r0
/* 8029EF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EF0C  88 0D 8D 89 */	lbz r0, struct_80451308+0x1(r13)
/* 8029EF10  2C 00 00 01 */	cmpwi r0, 1
/* 8029EF14  41 82 00 18 */	beq lbl_8029EF2C
/* 8029EF18  40 80 00 08 */	bge lbl_8029EF20
/* 8029EF1C  48 00 00 4C */	b lbl_8029EF68
lbl_8029EF20:
/* 8029EF20  2C 00 00 03 */	cmpwi r0, 3
/* 8029EF24  40 80 00 44 */	bge lbl_8029EF68
/* 8029EF28  48 00 00 20 */	b lbl_8029EF48
lbl_8029EF2C:
/* 8029EF2C  3C 60 80 43 */	lis r3, sync_stack@ha /* 0x80434060@ha */
/* 8029EF30  38 A3 40 60 */	addi r5, r3, sync_stack@l /* 0x80434060@l */
/* 8029EF34  80 65 00 00 */	lwz r3, 0(r5)
/* 8029EF38  80 85 00 04 */	lwz r4, 4(r5)
/* 8029EF3C  80 A5 00 08 */	lwz r5, 8(r5)
/* 8029EF40  4B FF FF 01 */	bl DsyncFrame2__FUlUlUl
/* 8029EF44  48 00 00 24 */	b lbl_8029EF68
lbl_8029EF48:
/* 8029EF48  3C 60 80 43 */	lis r3, sync_stack@ha /* 0x80434060@ha */
/* 8029EF4C  38 E3 40 60 */	addi r7, r3, sync_stack@l /* 0x80434060@l */
/* 8029EF50  80 67 00 00 */	lwz r3, 0(r7)
/* 8029EF54  80 87 00 04 */	lwz r4, 4(r7)
/* 8029EF58  80 A7 00 08 */	lwz r5, 8(r7)
/* 8029EF5C  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 8029EF60  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 8029EF64  4B FF FF 3D */	bl DsyncFrame3__FUlUlUlUlUl
lbl_8029EF68:
/* 8029EF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EF6C  7C 08 03 A6 */	mtlr r0
/* 8029EF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EF74  4E 80 00 20 */	blr 
