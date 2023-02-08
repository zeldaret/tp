lbl_809E87E8:
/* 809E87E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E87EC  7C 08 02 A6 */	mflr r0
/* 809E87F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E87F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E87F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E87FC  41 82 00 1C */	beq lbl_809E8818
/* 809E8800  3C A0 80 9F */	lis r5, __vt__8cM3dGSph@ha /* 0x809EFBAC@ha */
/* 809E8804  38 05 FB AC */	addi r0, r5, __vt__8cM3dGSph@l /* 0x809EFBAC@l */
/* 809E8808  90 1F 00 10 */	stw r0, 0x10(r31)
/* 809E880C  7C 80 07 35 */	extsh. r0, r4
/* 809E8810  40 81 00 08 */	ble lbl_809E8818
/* 809E8814  4B 8E 65 29 */	bl __dl__FPv
lbl_809E8818:
/* 809E8818  7F E3 FB 78 */	mr r3, r31
/* 809E881C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E8820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E8824  7C 08 03 A6 */	mtlr r0
/* 809E8828  38 21 00 10 */	addi r1, r1, 0x10
/* 809E882C  4E 80 00 20 */	blr 
