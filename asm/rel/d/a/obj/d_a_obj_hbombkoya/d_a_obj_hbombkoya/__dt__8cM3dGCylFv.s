lbl_80C1C2BC:
/* 80C1C2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C2C0  7C 08 02 A6 */	mflr r0
/* 80C1C2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1C2CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1C2D0  41 82 00 1C */	beq lbl_80C1C2EC
/* 80C1C2D4  3C A0 80 C2 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C1C2D8  38 05 C9 78 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C1C2DC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C1C2E0  7C 80 07 35 */	extsh. r0, r4
/* 80C1C2E4  40 81 00 08 */	ble lbl_80C1C2EC
/* 80C1C2E8  4B 6B 2A 54 */	b __dl__FPv
lbl_80C1C2EC:
/* 80C1C2EC  7F E3 FB 78 */	mr r3, r31
/* 80C1C2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1C2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C2F8  7C 08 03 A6 */	mtlr r0
/* 80C1C2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C300  4E 80 00 20 */	blr 
