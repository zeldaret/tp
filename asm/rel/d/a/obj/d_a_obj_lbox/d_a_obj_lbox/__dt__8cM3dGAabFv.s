lbl_80C53E5C:
/* 80C53E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53E60  7C 08 02 A6 */	mflr r0
/* 80C53E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53E6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C53E70  41 82 00 1C */	beq lbl_80C53E8C
/* 80C53E74  3C A0 80 C5 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C540A4@ha */
/* 80C53E78  38 05 40 A4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C540A4@l */
/* 80C53E7C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C53E80  7C 80 07 35 */	extsh. r0, r4
/* 80C53E84  40 81 00 08 */	ble lbl_80C53E8C
/* 80C53E88  4B 67 AE B5 */	bl __dl__FPv
lbl_80C53E8C:
/* 80C53E8C  7F E3 FB 78 */	mr r3, r31
/* 80C53E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C53E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53E98  7C 08 03 A6 */	mtlr r0
/* 80C53E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53EA0  4E 80 00 20 */	blr 
