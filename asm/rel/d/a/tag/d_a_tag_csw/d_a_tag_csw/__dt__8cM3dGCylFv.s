lbl_80D576D4:
/* 80D576D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D576D8  7C 08 02 A6 */	mflr r0
/* 80D576DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D576E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D576E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D576E8  41 82 00 1C */	beq lbl_80D57704
/* 80D576EC  3C A0 80 D6 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D58754@ha */
/* 80D576F0  38 05 87 54 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D58754@l */
/* 80D576F4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D576F8  7C 80 07 35 */	extsh. r0, r4
/* 80D576FC  40 81 00 08 */	ble lbl_80D57704
/* 80D57700  4B 57 76 3D */	bl __dl__FPv
lbl_80D57704:
/* 80D57704  7F E3 FB 78 */	mr r3, r31
/* 80D57708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5770C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D57710  7C 08 03 A6 */	mtlr r0
/* 80D57714  38 21 00 10 */	addi r1, r1, 0x10
/* 80D57718  4E 80 00 20 */	blr 
