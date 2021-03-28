lbl_809DA6F0:
/* 809DA6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DA6F4  7C 08 02 A6 */	mflr r0
/* 809DA6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DA6FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DA700  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DA704  41 82 00 1C */	beq lbl_809DA720
/* 809DA708  3C A0 80 9E */	lis r5, __vt__8cM3dGCyl@ha
/* 809DA70C  38 05 F6 C8 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 809DA710  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809DA714  7C 80 07 35 */	extsh. r0, r4
/* 809DA718  40 81 00 08 */	ble lbl_809DA720
/* 809DA71C  4B 8F 46 20 */	b __dl__FPv
lbl_809DA720:
/* 809DA720  7F E3 FB 78 */	mr r3, r31
/* 809DA724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DA728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DA72C  7C 08 03 A6 */	mtlr r0
/* 809DA730  38 21 00 10 */	addi r1, r1, 0x10
/* 809DA734  4E 80 00 20 */	blr 
