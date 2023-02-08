lbl_809C9258:
/* 809C9258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C925C  7C 08 02 A6 */	mflr r0
/* 809C9260  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9268  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C926C  41 82 00 1C */	beq lbl_809C9288
/* 809C9270  3C A0 80 9D */	lis r5, __vt__8cM3dGCyl@ha /* 0x809CB2C0@ha */
/* 809C9274  38 05 B2 C0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809CB2C0@l */
/* 809C9278  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809C927C  7C 80 07 35 */	extsh. r0, r4
/* 809C9280  40 81 00 08 */	ble lbl_809C9288
/* 809C9284  4B 90 5A B9 */	bl __dl__FPv
lbl_809C9288:
/* 809C9288  7F E3 FB 78 */	mr r3, r31
/* 809C928C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9294  7C 08 03 A6 */	mtlr r0
/* 809C9298  38 21 00 10 */	addi r1, r1, 0x10
/* 809C929C  4E 80 00 20 */	blr 
