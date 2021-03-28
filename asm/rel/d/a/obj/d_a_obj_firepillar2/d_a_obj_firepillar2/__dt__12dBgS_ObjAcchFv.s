lbl_80BEA514:
/* 80BEA514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEA518  7C 08 02 A6 */	mflr r0
/* 80BEA51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEA520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEA524  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEA528  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BEA52C  7C 9F 23 78 */	mr r31, r4
/* 80BEA530  41 82 00 38 */	beq lbl_80BEA568
/* 80BEA534  3C 80 80 BF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BEA538  38 84 B6 AC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BEA53C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BEA540  38 04 00 0C */	addi r0, r4, 0xc
/* 80BEA544  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BEA548  38 04 00 18 */	addi r0, r4, 0x18
/* 80BEA54C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BEA550  38 80 00 00 */	li r4, 0
/* 80BEA554  4B 48 BA 40 */	b __dt__9dBgS_AcchFv
/* 80BEA558  7F E0 07 35 */	extsh. r0, r31
/* 80BEA55C  40 81 00 0C */	ble lbl_80BEA568
/* 80BEA560  7F C3 F3 78 */	mr r3, r30
/* 80BEA564  4B 6E 47 D8 */	b __dl__FPv
lbl_80BEA568:
/* 80BEA568  7F C3 F3 78 */	mr r3, r30
/* 80BEA56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEA570  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEA574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEA578  7C 08 03 A6 */	mtlr r0
/* 80BEA57C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEA580  4E 80 00 20 */	blr 
