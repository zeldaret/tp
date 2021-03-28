lbl_809FF36C:
/* 809FF36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF370  7C 08 02 A6 */	mflr r0
/* 809FF374  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF37C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FF380  41 82 00 1C */	beq lbl_809FF39C
/* 809FF384  3C A0 80 A0 */	lis r5, __vt__8cM3dGAab@ha
/* 809FF388  38 05 11 88 */	addi r0, r5, __vt__8cM3dGAab@l
/* 809FF38C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809FF390  7C 80 07 35 */	extsh. r0, r4
/* 809FF394  40 81 00 08 */	ble lbl_809FF39C
/* 809FF398  4B 8C F9 A4 */	b __dl__FPv
lbl_809FF39C:
/* 809FF39C  7F E3 FB 78 */	mr r3, r31
/* 809FF3A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF3A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF3A8  7C 08 03 A6 */	mtlr r0
/* 809FF3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF3B0  4E 80 00 20 */	blr 
