lbl_80AF72A8:
/* 80AF72A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF72AC  7C 08 02 A6 */	mflr r0
/* 80AF72B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF72B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF72B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF72BC  41 82 00 1C */	beq lbl_80AF72D8
/* 80AF72C0  3C A0 80 AF */	lis r5, __vt__8cM3dGAab@ha /* 0x80AF756C@ha */
/* 80AF72C4  38 05 75 6C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AF756C@l */
/* 80AF72C8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AF72CC  7C 80 07 35 */	extsh. r0, r4
/* 80AF72D0  40 81 00 08 */	ble lbl_80AF72D8
/* 80AF72D4  4B 7D 7A 69 */	bl __dl__FPv
lbl_80AF72D8:
/* 80AF72D8  7F E3 FB 78 */	mr r3, r31
/* 80AF72DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF72E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF72E4  7C 08 03 A6 */	mtlr r0
/* 80AF72E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF72EC  4E 80 00 20 */	blr 
