lbl_80C81A58:
/* 80C81A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C81A5C  7C 08 02 A6 */	mflr r0
/* 80C81A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C81A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C81A68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C81A6C  41 82 00 1C */	beq lbl_80C81A88
/* 80C81A70  3C A0 80 C8 */	lis r5, __vt__8cM3dGAab@ha
/* 80C81A74  38 05 1F 98 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C81A78  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C81A7C  7C 80 07 35 */	extsh. r0, r4
/* 80C81A80  40 81 00 08 */	ble lbl_80C81A88
/* 80C81A84  4B 64 D2 B8 */	b __dl__FPv
lbl_80C81A88:
/* 80C81A88  7F E3 FB 78 */	mr r3, r31
/* 80C81A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C81A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C81A94  7C 08 03 A6 */	mtlr r0
/* 80C81A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C81A9C  4E 80 00 20 */	blr 
