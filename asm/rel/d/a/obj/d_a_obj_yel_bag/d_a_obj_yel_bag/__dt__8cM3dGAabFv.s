lbl_80D3C248:
/* 80D3C248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C24C  7C 08 02 A6 */	mflr r0
/* 80D3C250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C258  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3C25C  41 82 00 1C */	beq lbl_80D3C278
/* 80D3C260  3C A0 80 D4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D3DE8C@ha */
/* 80D3C264  38 05 DE 8C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D3DE8C@l */
/* 80D3C268  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D3C26C  7C 80 07 35 */	extsh. r0, r4
/* 80D3C270  40 81 00 08 */	ble lbl_80D3C278
/* 80D3C274  4B 59 2A C9 */	bl __dl__FPv
lbl_80D3C278:
/* 80D3C278  7F E3 FB 78 */	mr r3, r31
/* 80D3C27C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C284  7C 08 03 A6 */	mtlr r0
/* 80D3C288  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C28C  4E 80 00 20 */	blr 
