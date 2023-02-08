lbl_80AF2E78:
/* 80AF2E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF2E7C  7C 08 02 A6 */	mflr r0
/* 80AF2E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF2E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF2E88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF2E8C  41 82 00 1C */	beq lbl_80AF2EA8
/* 80AF2E90  3C A0 80 AF */	lis r5, __vt__8cM3dGAab@ha /* 0x80AF5E00@ha */
/* 80AF2E94  38 05 5E 00 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AF5E00@l */
/* 80AF2E98  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AF2E9C  7C 80 07 35 */	extsh. r0, r4
/* 80AF2EA0  40 81 00 08 */	ble lbl_80AF2EA8
/* 80AF2EA4  4B 7D BE 99 */	bl __dl__FPv
lbl_80AF2EA8:
/* 80AF2EA8  7F E3 FB 78 */	mr r3, r31
/* 80AF2EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF2EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF2EB4  7C 08 03 A6 */	mtlr r0
/* 80AF2EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF2EBC  4E 80 00 20 */	blr 
