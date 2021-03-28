lbl_8029EEA0:
/* 8029EEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EEA4  7C 08 02 A6 */	mflr r0
/* 8029EEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EEAC  88 0D 8D 88 */	lbz r0, struct_80451308+0x0(r13)
/* 8029EEB0  28 00 00 01 */	cmplwi r0, 1
/* 8029EEB4  41 82 00 28 */	beq lbl_8029EEDC
/* 8029EEB8  3D 00 80 43 */	lis r8, sync_stack@ha
/* 8029EEBC  94 68 40 60 */	stwu r3, sync_stack@l(r8)
/* 8029EEC0  38 00 00 02 */	li r0, 2
/* 8029EEC4  98 0D 8D 89 */	stb r0, struct_80451308+0x1(r13)
/* 8029EEC8  90 88 00 04 */	stw r4, 4(r8)
/* 8029EECC  90 A8 00 08 */	stw r5, 8(r8)
/* 8029EED0  90 C8 00 0C */	stw r6, 0xc(r8)
/* 8029EED4  90 E8 00 10 */	stw r7, 0x10(r8)
/* 8029EED8  48 00 00 10 */	b lbl_8029EEE8
lbl_8029EEDC:
/* 8029EEDC  4B FF F7 A5 */	bl DsyncFrame4ch__FUlUlUlUlUl
/* 8029EEE0  38 00 00 00 */	li r0, 0
/* 8029EEE4  98 0D 8D 89 */	stb r0, struct_80451308+0x1(r13)
lbl_8029EEE8:
/* 8029EEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EEEC  7C 08 03 A6 */	mtlr r0
/* 8029EEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EEF4  4E 80 00 20 */	blr 
