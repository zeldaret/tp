lbl_80B79798:
/* 80B79798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7979C  7C 08 02 A6 */	mflr r0
/* 80B797A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B797A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B797A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B797AC  41 82 00 1C */	beq lbl_80B797C8
/* 80B797B0  3C A0 80 B9 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B8D9E0@ha */
/* 80B797B4  38 05 D9 E0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B8D9E0@l */
/* 80B797B8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B797BC  7C 80 07 35 */	extsh. r0, r4
/* 80B797C0  40 81 00 08 */	ble lbl_80B797C8
/* 80B797C4  4B 75 55 79 */	bl __dl__FPv
lbl_80B797C8:
/* 80B797C8  7F E3 FB 78 */	mr r3, r31
/* 80B797CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B797D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B797D4  7C 08 03 A6 */	mtlr r0
/* 80B797D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B797DC  4E 80 00 20 */	blr 
