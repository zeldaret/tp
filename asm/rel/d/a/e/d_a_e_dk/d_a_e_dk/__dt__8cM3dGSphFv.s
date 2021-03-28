lbl_806AD25C:
/* 806AD25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD260  7C 08 02 A6 */	mflr r0
/* 806AD264  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AD26C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AD270  41 82 00 1C */	beq lbl_806AD28C
/* 806AD274  3C A0 80 6B */	lis r5, __vt__8cM3dGSph@ha
/* 806AD278  38 05 D7 98 */	addi r0, r5, __vt__8cM3dGSph@l
/* 806AD27C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806AD280  7C 80 07 35 */	extsh. r0, r4
/* 806AD284  40 81 00 08 */	ble lbl_806AD28C
/* 806AD288  4B C2 1A B4 */	b __dl__FPv
lbl_806AD28C:
/* 806AD28C  7F E3 FB 78 */	mr r3, r31
/* 806AD290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AD294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD298  7C 08 03 A6 */	mtlr r0
/* 806AD29C  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD2A0  4E 80 00 20 */	blr 
