lbl_80AF7898:
/* 80AF7898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF789C  7C 08 02 A6 */	mflr r0
/* 80AF78A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF78A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF78A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF78AC  41 82 00 1C */	beq lbl_80AF78C8
/* 80AF78B0  3C A0 80 B0 */	lis r5, __vt__8cM3dGAab@ha /* 0x80AFC644@ha */
/* 80AF78B4  38 05 C6 44 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AFC644@l */
/* 80AF78B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AF78BC  7C 80 07 35 */	extsh. r0, r4
/* 80AF78C0  40 81 00 08 */	ble lbl_80AF78C8
/* 80AF78C4  4B 7D 74 79 */	bl __dl__FPv
lbl_80AF78C8:
/* 80AF78C8  7F E3 FB 78 */	mr r3, r31
/* 80AF78CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF78D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF78D4  7C 08 03 A6 */	mtlr r0
/* 80AF78D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF78DC  4E 80 00 20 */	blr 
