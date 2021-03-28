lbl_80A3C2DC:
/* 80A3C2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C2E0  7C 08 02 A6 */	mflr r0
/* 80A3C2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C2EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C2F0  41 82 00 1C */	beq lbl_80A3C30C
/* 80A3C2F4  3C A0 80 A4 */	lis r5, __vt__8cM3dGAab@ha
/* 80A3C2F8  38 05 32 10 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A3C2FC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A3C300  7C 80 07 35 */	extsh. r0, r4
/* 80A3C304  40 81 00 08 */	ble lbl_80A3C30C
/* 80A3C308  4B 89 2A 34 */	b __dl__FPv
lbl_80A3C30C:
/* 80A3C30C  7F E3 FB 78 */	mr r3, r31
/* 80A3C310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C318  7C 08 03 A6 */	mtlr r0
/* 80A3C31C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C320  4E 80 00 20 */	blr 
