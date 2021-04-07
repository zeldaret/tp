lbl_809F2A78:
/* 809F2A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2A7C  7C 08 02 A6 */	mflr r0
/* 809F2A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F2A88  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F2A8C  41 82 00 1C */	beq lbl_809F2AA8
/* 809F2A90  3C A0 80 9F */	lis r5, __vt__8cM3dGCyl@ha /* 0x809F2F64@ha */
/* 809F2A94  38 05 2F 64 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809F2F64@l */
/* 809F2A98  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809F2A9C  7C 80 07 35 */	extsh. r0, r4
/* 809F2AA0  40 81 00 08 */	ble lbl_809F2AA8
/* 809F2AA4  4B 8D C2 99 */	bl __dl__FPv
lbl_809F2AA8:
/* 809F2AA8  7F E3 FB 78 */	mr r3, r31
/* 809F2AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2AB4  7C 08 03 A6 */	mtlr r0
/* 809F2AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2ABC  4E 80 00 20 */	blr 
