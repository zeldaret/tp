lbl_809F8230:
/* 809F8230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F8234  7C 08 02 A6 */	mflr r0
/* 809F8238  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F823C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F8240  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F8244  41 82 00 30 */	beq lbl_809F8274
/* 809F8248  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha
/* 809F824C  38 03 8E 68 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809F8250  90 1F 00 00 */	stw r0, 0(r31)
/* 809F8254  41 82 00 10 */	beq lbl_809F8264
/* 809F8258  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha
/* 809F825C  38 03 8E 5C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809F8260  90 1F 00 00 */	stw r0, 0(r31)
lbl_809F8264:
/* 809F8264  7C 80 07 35 */	extsh. r0, r4
/* 809F8268  40 81 00 0C */	ble lbl_809F8274
/* 809F826C  7F E3 FB 78 */	mr r3, r31
/* 809F8270  4B 8D 6A CC */	b __dl__FPv
lbl_809F8274:
/* 809F8274  7F E3 FB 78 */	mr r3, r31
/* 809F8278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F827C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F8280  7C 08 03 A6 */	mtlr r0
/* 809F8284  38 21 00 10 */	addi r1, r1, 0x10
/* 809F8288  4E 80 00 20 */	blr 
