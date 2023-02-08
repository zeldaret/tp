lbl_80B6E8AC:
/* 80B6E8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E8B0  7C 08 02 A6 */	mflr r0
/* 80B6E8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E8B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E8BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E8C0  41 82 00 1C */	beq lbl_80B6E8DC
/* 80B6E8C4  3C A0 80 B7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B6EC40@ha */
/* 80B6E8C8  38 05 EC 40 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B6EC40@l */
/* 80B6E8CC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B6E8D0  7C 80 07 35 */	extsh. r0, r4
/* 80B6E8D4  40 81 00 08 */	ble lbl_80B6E8DC
/* 80B6E8D8  4B 76 04 65 */	bl __dl__FPv
lbl_80B6E8DC:
/* 80B6E8DC  7F E3 FB 78 */	mr r3, r31
/* 80B6E8E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E8E8  7C 08 03 A6 */	mtlr r0
/* 80B6E8EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E8F0  4E 80 00 20 */	blr 
