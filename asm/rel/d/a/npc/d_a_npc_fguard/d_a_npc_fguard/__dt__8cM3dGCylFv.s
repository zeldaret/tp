lbl_809BB1F4:
/* 809BB1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB1F8  7C 08 02 A6 */	mflr r0
/* 809BB1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB204  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BB208  41 82 00 1C */	beq lbl_809BB224
/* 809BB20C  3C A0 80 9C */	lis r5, __vt__8cM3dGCyl@ha /* 0x809BB4D8@ha */
/* 809BB210  38 05 B4 D8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809BB4D8@l */
/* 809BB214  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809BB218  7C 80 07 35 */	extsh. r0, r4
/* 809BB21C  40 81 00 08 */	ble lbl_809BB224
/* 809BB220  4B 91 3B 1D */	bl __dl__FPv
lbl_809BB224:
/* 809BB224  7F E3 FB 78 */	mr r3, r31
/* 809BB228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB230  7C 08 03 A6 */	mtlr r0
/* 809BB234  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB238  4E 80 00 20 */	blr 
