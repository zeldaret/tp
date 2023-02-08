lbl_80B45290:
/* 80B45290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B45294  7C 08 02 A6 */	mflr r0
/* 80B45298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4529C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B452A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B452A4  41 82 00 1C */	beq lbl_80B452C0
/* 80B452A8  3C A0 80 B4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B46374@ha */
/* 80B452AC  38 05 63 74 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B46374@l */
/* 80B452B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B452B4  7C 80 07 35 */	extsh. r0, r4
/* 80B452B8  40 81 00 08 */	ble lbl_80B452C0
/* 80B452BC  4B 78 9A 81 */	bl __dl__FPv
lbl_80B452C0:
/* 80B452C0  7F E3 FB 78 */	mr r3, r31
/* 80B452C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B452C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B452CC  7C 08 03 A6 */	mtlr r0
/* 80B452D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B452D4  4E 80 00 20 */	blr 
