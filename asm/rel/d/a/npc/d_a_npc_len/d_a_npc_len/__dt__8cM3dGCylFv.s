lbl_80A6806C:
/* 80A6806C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A68070  7C 08 02 A6 */	mflr r0
/* 80A68074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6807C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A68080  41 82 00 1C */	beq lbl_80A6809C
/* 80A68084  3C A0 80 A7 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A68088  38 05 99 64 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A6808C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A68090  7C 80 07 35 */	extsh. r0, r4
/* 80A68094  40 81 00 08 */	ble lbl_80A6809C
/* 80A68098  4B 86 6C A4 */	b __dl__FPv
lbl_80A6809C:
/* 80A6809C  7F E3 FB 78 */	mr r3, r31
/* 80A680A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A680A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A680A8  7C 08 03 A6 */	mtlr r0
/* 80A680AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A680B0  4E 80 00 20 */	blr 
