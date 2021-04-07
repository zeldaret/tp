lbl_80C27BBC:
/* 80C27BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C27BC0  7C 08 02 A6 */	mflr r0
/* 80C27BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C27BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C27BCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C27BD0  41 82 00 1C */	beq lbl_80C27BEC
/* 80C27BD4  3C A0 80 C3 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C28250@ha */
/* 80C27BD8  38 05 82 50 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C28250@l */
/* 80C27BDC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C27BE0  7C 80 07 35 */	extsh. r0, r4
/* 80C27BE4  40 81 00 08 */	ble lbl_80C27BEC
/* 80C27BE8  4B 6A 71 55 */	bl __dl__FPv
lbl_80C27BEC:
/* 80C27BEC  7F E3 FB 78 */	mr r3, r31
/* 80C27BF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C27BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27BF8  7C 08 03 A6 */	mtlr r0
/* 80C27BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C27C00  4E 80 00 20 */	blr 
