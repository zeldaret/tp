lbl_80C5DDF0:
/* 80C5DDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DDF4  7C 08 02 A6 */	mflr r0
/* 80C5DDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5DE00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5DE04  41 82 00 1C */	beq lbl_80C5DE20
/* 80C5DE08  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C5DE0C  38 05 EA 40 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C5DE10  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5DE14  7C 80 07 35 */	extsh. r0, r4
/* 80C5DE18  40 81 00 08 */	ble lbl_80C5DE20
/* 80C5DE1C  4B 67 0F 20 */	b __dl__FPv
lbl_80C5DE20:
/* 80C5DE20  7F E3 FB 78 */	mr r3, r31
/* 80C5DE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5DE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DE2C  7C 08 03 A6 */	mtlr r0
/* 80C5DE30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DE34  4E 80 00 20 */	blr 
