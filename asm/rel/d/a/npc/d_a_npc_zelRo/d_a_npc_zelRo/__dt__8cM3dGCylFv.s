lbl_80B73ED8:
/* 80B73ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73EDC  7C 08 02 A6 */	mflr r0
/* 80B73EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B73EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B73EE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B73EEC  41 82 00 1C */	beq lbl_80B73F08
/* 80B73EF0  3C A0 80 B7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B74F3C@ha */
/* 80B73EF4  38 05 4F 3C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B74F3C@l */
/* 80B73EF8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B73EFC  7C 80 07 35 */	extsh. r0, r4
/* 80B73F00  40 81 00 08 */	ble lbl_80B73F08
/* 80B73F04  4B 75 AE 39 */	bl __dl__FPv
lbl_80B73F08:
/* 80B73F08  7F E3 FB 78 */	mr r3, r31
/* 80B73F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B73F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73F14  7C 08 03 A6 */	mtlr r0
/* 80B73F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73F1C  4E 80 00 20 */	blr 
