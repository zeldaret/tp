lbl_809DA738:
/* 809DA738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DA73C  7C 08 02 A6 */	mflr r0
/* 809DA740  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DA744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DA748  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DA74C  41 82 00 1C */	beq lbl_809DA768
/* 809DA750  3C A0 80 9E */	lis r5, __vt__8cM3dGAab@ha
/* 809DA754  38 05 F6 D4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 809DA758  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809DA75C  7C 80 07 35 */	extsh. r0, r4
/* 809DA760  40 81 00 08 */	ble lbl_809DA768
/* 809DA764  4B 8F 45 D8 */	b __dl__FPv
lbl_809DA768:
/* 809DA768  7F E3 FB 78 */	mr r3, r31
/* 809DA76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DA770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DA774  7C 08 03 A6 */	mtlr r0
/* 809DA778  38 21 00 10 */	addi r1, r1, 0x10
/* 809DA77C  4E 80 00 20 */	blr 
