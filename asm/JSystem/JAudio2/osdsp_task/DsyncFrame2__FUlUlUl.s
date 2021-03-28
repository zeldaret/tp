lbl_8029EE40:
/* 8029EE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EE44  7C 08 02 A6 */	mflr r0
/* 8029EE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EE4C  88 0D 8D 88 */	lbz r0, struct_80451308+0x0(r13)
/* 8029EE50  28 00 00 01 */	cmplwi r0, 1
/* 8029EE54  41 82 00 20 */	beq lbl_8029EE74
/* 8029EE58  3C C0 80 43 */	lis r6, sync_stack@ha
/* 8029EE5C  94 66 40 60 */	stwu r3, sync_stack@l(r6)
/* 8029EE60  38 00 00 01 */	li r0, 1
/* 8029EE64  98 0D 8D 89 */	stb r0, struct_80451308+0x1(r13)
/* 8029EE68  90 86 00 04 */	stw r4, 4(r6)
/* 8029EE6C  90 A6 00 08 */	stw r5, 8(r6)
/* 8029EE70  48 00 00 10 */	b lbl_8029EE80
lbl_8029EE74:
/* 8029EE74  4B FF F7 AD */	bl DsyncFrame2ch__FUlUlUl
/* 8029EE78  38 00 00 00 */	li r0, 0
/* 8029EE7C  98 0D 8D 89 */	stb r0, struct_80451308+0x1(r13)
lbl_8029EE80:
/* 8029EE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EE84  7C 08 03 A6 */	mtlr r0
/* 8029EE88  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EE8C  4E 80 00 20 */	blr 
