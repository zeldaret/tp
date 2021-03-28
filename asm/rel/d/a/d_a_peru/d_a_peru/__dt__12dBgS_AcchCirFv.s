lbl_80D4B804:
/* 80D4B804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B808  7C 08 02 A6 */	mflr r0
/* 80D4B80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B814  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4B818  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4B81C  7C 9F 23 78 */	mr r31, r4
/* 80D4B820  41 82 00 38 */	beq lbl_80D4B858
/* 80D4B824  3C 60 80 D5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D4B828  38 03 C6 C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D4B82C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D4B830  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D4B834  38 80 FF FF */	li r4, -1
/* 80D4B838  4B 52 36 E0 */	b __dt__8cM3dGCirFv
/* 80D4B83C  7F C3 F3 78 */	mr r3, r30
/* 80D4B840  38 80 00 00 */	li r4, 0
/* 80D4B844  4B 51 C8 6C */	b __dt__13cBgS_PolyInfoFv
/* 80D4B848  7F E0 07 35 */	extsh. r0, r31
/* 80D4B84C  40 81 00 0C */	ble lbl_80D4B858
/* 80D4B850  7F C3 F3 78 */	mr r3, r30
/* 80D4B854  4B 58 34 E8 */	b __dl__FPv
lbl_80D4B858:
/* 80D4B858  7F C3 F3 78 */	mr r3, r30
/* 80D4B85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B860  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4B864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B868  7C 08 03 A6 */	mtlr r0
/* 80D4B86C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B870  4E 80 00 20 */	blr 
