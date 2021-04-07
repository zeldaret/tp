lbl_80B9D37C:
/* 80B9D37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D380  7C 08 02 A6 */	mflr r0
/* 80B9D384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9D38C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9D390  41 82 00 1C */	beq lbl_80B9D3AC
/* 80B9D394  3C A0 80 BA */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B9EAF0@ha */
/* 80B9D398  38 05 EA F0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B9EAF0@l */
/* 80B9D39C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B9D3A0  7C 80 07 35 */	extsh. r0, r4
/* 80B9D3A4  40 81 00 08 */	ble lbl_80B9D3AC
/* 80B9D3A8  4B 73 19 95 */	bl __dl__FPv
lbl_80B9D3AC:
/* 80B9D3AC  7F E3 FB 78 */	mr r3, r31
/* 80B9D3B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9D3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D3B8  7C 08 03 A6 */	mtlr r0
/* 80B9D3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D3C0  4E 80 00 20 */	blr 
