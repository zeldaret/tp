lbl_80A9AABC:
/* 80A9AABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9AAC0  7C 08 02 A6 */	mflr r0
/* 80A9AAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9AAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9AACC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9AAD0  41 82 00 1C */	beq lbl_80A9AAEC
/* 80A9AAD4  3C A0 80 AA */	lis r5, __vt__8cM3dGCyl@ha
/* 80A9AAD8  38 05 C0 9C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A9AADC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A9AAE0  7C 80 07 35 */	extsh. r0, r4
/* 80A9AAE4  40 81 00 08 */	ble lbl_80A9AAEC
/* 80A9AAE8  4B 83 42 54 */	b __dl__FPv
lbl_80A9AAEC:
/* 80A9AAEC  7F E3 FB 78 */	mr r3, r31
/* 80A9AAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9AAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9AAF8  7C 08 03 A6 */	mtlr r0
/* 80A9AAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9AB00  4E 80 00 20 */	blr 
