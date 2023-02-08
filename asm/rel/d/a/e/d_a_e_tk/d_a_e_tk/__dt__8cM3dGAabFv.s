lbl_807BA10C:
/* 807BA10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA110  7C 08 02 A6 */	mflr r0
/* 807BA114  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA11C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BA120  41 82 00 1C */	beq lbl_807BA13C
/* 807BA124  3C A0 80 7C */	lis r5, __vt__8cM3dGAab@ha /* 0x807BA3F4@ha */
/* 807BA128  38 05 A3 F4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x807BA3F4@l */
/* 807BA12C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807BA130  7C 80 07 35 */	extsh. r0, r4
/* 807BA134  40 81 00 08 */	ble lbl_807BA13C
/* 807BA138  4B B1 4C 05 */	bl __dl__FPv
lbl_807BA13C:
/* 807BA13C  7F E3 FB 78 */	mr r3, r31
/* 807BA140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA148  7C 08 03 A6 */	mtlr r0
/* 807BA14C  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA150  4E 80 00 20 */	blr 
