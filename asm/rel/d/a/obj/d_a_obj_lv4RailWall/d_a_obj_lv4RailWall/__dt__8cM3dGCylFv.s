lbl_80C61660:
/* 80C61660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61664  7C 08 02 A6 */	mflr r0
/* 80C61668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6166C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C61670  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C61674  41 82 00 1C */	beq lbl_80C61690
/* 80C61678  3C A0 80 C6 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C61C9C@ha */
/* 80C6167C  38 05 1C 9C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C61C9C@l */
/* 80C61680  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C61684  7C 80 07 35 */	extsh. r0, r4
/* 80C61688  40 81 00 08 */	ble lbl_80C61690
/* 80C6168C  4B 66 D6 B1 */	bl __dl__FPv
lbl_80C61690:
/* 80C61690  7F E3 FB 78 */	mr r3, r31
/* 80C61694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6169C  7C 08 03 A6 */	mtlr r0
/* 80C616A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C616A4  4E 80 00 20 */	blr 
