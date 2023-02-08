lbl_80A7C2F0:
/* 80A7C2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7C2F4  7C 08 02 A6 */	mflr r0
/* 80A7C2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7C2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7C300  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7C304  41 82 00 1C */	beq lbl_80A7C320
/* 80A7C308  3C A0 80 A8 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A83D3C@ha */
/* 80A7C30C  38 05 3D 3C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A83D3C@l */
/* 80A7C310  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A7C314  7C 80 07 35 */	extsh. r0, r4
/* 80A7C318  40 81 00 08 */	ble lbl_80A7C320
/* 80A7C31C  4B 85 2A 21 */	bl __dl__FPv
lbl_80A7C320:
/* 80A7C320  7F E3 FB 78 */	mr r3, r31
/* 80A7C324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7C328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7C32C  7C 08 03 A6 */	mtlr r0
/* 80A7C330  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7C334  4E 80 00 20 */	blr 
