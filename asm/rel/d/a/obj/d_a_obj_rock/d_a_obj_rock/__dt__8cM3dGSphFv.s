lbl_80CBE70C:
/* 80CBE70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBE710  7C 08 02 A6 */	mflr r0
/* 80CBE714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBE718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBE71C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBE720  41 82 00 1C */	beq lbl_80CBE73C
/* 80CBE724  3C A0 80 CC */	lis r5, __vt__8cM3dGSph@ha
/* 80CBE728  38 05 E8 8C */	addi r0, r5, __vt__8cM3dGSph@l
/* 80CBE72C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CBE730  7C 80 07 35 */	extsh. r0, r4
/* 80CBE734  40 81 00 08 */	ble lbl_80CBE73C
/* 80CBE738  4B 61 06 04 */	b __dl__FPv
lbl_80CBE73C:
/* 80CBE73C  7F E3 FB 78 */	mr r3, r31
/* 80CBE740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBE744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBE748  7C 08 03 A6 */	mtlr r0
/* 80CBE74C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBE750  4E 80 00 20 */	blr 
