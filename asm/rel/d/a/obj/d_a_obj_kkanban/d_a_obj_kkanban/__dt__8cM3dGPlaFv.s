lbl_80C46E50:
/* 80C46E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46E54  7C 08 02 A6 */	mflr r0
/* 80C46E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46E5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46E60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C46E64  41 82 00 1C */	beq lbl_80C46E80
/* 80C46E68  3C A0 80 C4 */	lis r5, __vt__8cM3dGPla@ha /* 0x80C4704C@ha */
/* 80C46E6C  38 05 70 4C */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80C4704C@l */
/* 80C46E70  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C46E74  7C 80 07 35 */	extsh. r0, r4
/* 80C46E78  40 81 00 08 */	ble lbl_80C46E80
/* 80C46E7C  4B 68 7E C1 */	bl __dl__FPv
lbl_80C46E80:
/* 80C46E80  7F E3 FB 78 */	mr r3, r31
/* 80C46E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46E8C  7C 08 03 A6 */	mtlr r0
/* 80C46E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46E94  4E 80 00 20 */	blr 
