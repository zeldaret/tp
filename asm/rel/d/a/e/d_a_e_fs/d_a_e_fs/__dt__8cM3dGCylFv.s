lbl_806BDD80:
/* 806BDD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDD84  7C 08 02 A6 */	mflr r0
/* 806BDD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDD90  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BDD94  41 82 00 1C */	beq lbl_806BDDB0
/* 806BDD98  3C A0 80 6C */	lis r5, __vt__8cM3dGCyl@ha
/* 806BDD9C  38 05 E7 0C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 806BDDA0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 806BDDA4  7C 80 07 35 */	extsh. r0, r4
/* 806BDDA8  40 81 00 08 */	ble lbl_806BDDB0
/* 806BDDAC  4B C1 0F 90 */	b __dl__FPv
lbl_806BDDB0:
/* 806BDDB0  7F E3 FB 78 */	mr r3, r31
/* 806BDDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDDBC  7C 08 03 A6 */	mtlr r0
/* 806BDDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDDC4  4E 80 00 20 */	blr 
