lbl_80BFF704:
/* 80BFF704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF708  7C 08 02 A6 */	mflr r0
/* 80BFF70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFF714  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFF718  41 82 00 1C */	beq lbl_80BFF734
/* 80BFF71C  3C A0 80 C0 */	lis r5, __vt__8cM3dGSph@ha /* 0x80BFFDC0@ha */
/* 80BFF720  38 05 FD C0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BFFDC0@l */
/* 80BFF724  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BFF728  7C 80 07 35 */	extsh. r0, r4
/* 80BFF72C  40 81 00 08 */	ble lbl_80BFF734
/* 80BFF730  4B 6C F6 0D */	bl __dl__FPv
lbl_80BFF734:
/* 80BFF734  7F E3 FB 78 */	mr r3, r31
/* 80BFF738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFF73C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF740  7C 08 03 A6 */	mtlr r0
/* 80BFF744  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF748  4E 80 00 20 */	blr 
