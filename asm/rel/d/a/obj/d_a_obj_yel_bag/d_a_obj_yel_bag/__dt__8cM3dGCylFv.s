lbl_80D3C200:
/* 80D3C200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C204  7C 08 02 A6 */	mflr r0
/* 80D3C208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C20C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C210  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3C214  41 82 00 1C */	beq lbl_80D3C230
/* 80D3C218  3C A0 80 D4 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D3C21C  38 05 DE 80 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D3C220  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D3C224  7C 80 07 35 */	extsh. r0, r4
/* 80D3C228  40 81 00 08 */	ble lbl_80D3C230
/* 80D3C22C  4B 59 2B 10 */	b __dl__FPv
lbl_80D3C230:
/* 80D3C230  7F E3 FB 78 */	mr r3, r31
/* 80D3C234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C23C  7C 08 03 A6 */	mtlr r0
/* 80D3C240  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C244  4E 80 00 20 */	blr 
