lbl_80A058A0:
/* 80A058A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A058A4  7C 08 02 A6 */	mflr r0
/* 80A058A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A058AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A058B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A058B4  41 82 00 1C */	beq lbl_80A058D0
/* 80A058B8  3C A0 80 A0 */	lis r5, __vt__8cM3dGAab@ha /* 0x80A077EC@ha */
/* 80A058BC  38 05 77 EC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A077EC@l */
/* 80A058C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A058C4  7C 80 07 35 */	extsh. r0, r4
/* 80A058C8  40 81 00 08 */	ble lbl_80A058D0
/* 80A058CC  4B 8C 94 71 */	bl __dl__FPv
lbl_80A058D0:
/* 80A058D0  7F E3 FB 78 */	mr r3, r31
/* 80A058D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A058D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A058DC  7C 08 03 A6 */	mtlr r0
/* 80A058E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A058E4  4E 80 00 20 */	blr 
