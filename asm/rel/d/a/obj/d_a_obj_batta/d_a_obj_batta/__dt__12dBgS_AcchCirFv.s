lbl_80BAC7FC:
/* 80BAC7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC800  7C 08 02 A6 */	mflr r0
/* 80BAC804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC80C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BAC810  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BAC814  7C 9F 23 78 */	mr r31, r4
/* 80BAC818  41 82 00 38 */	beq lbl_80BAC850
/* 80BAC81C  3C 60 80 BB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BACBF8@ha */
/* 80BAC820  38 03 CB F8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BACBF8@l */
/* 80BAC824  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BAC828  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BAC82C  38 80 FF FF */	li r4, -1
/* 80BAC830  4B 6C 26 E9 */	bl __dt__8cM3dGCirFv
/* 80BAC834  7F C3 F3 78 */	mr r3, r30
/* 80BAC838  38 80 00 00 */	li r4, 0
/* 80BAC83C  4B 6B B8 75 */	bl __dt__13cBgS_PolyInfoFv
/* 80BAC840  7F E0 07 35 */	extsh. r0, r31
/* 80BAC844  40 81 00 0C */	ble lbl_80BAC850
/* 80BAC848  7F C3 F3 78 */	mr r3, r30
/* 80BAC84C  4B 72 24 F1 */	bl __dl__FPv
lbl_80BAC850:
/* 80BAC850  7F C3 F3 78 */	mr r3, r30
/* 80BAC854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC858  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BAC85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC860  7C 08 03 A6 */	mtlr r0
/* 80BAC864  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC868  4E 80 00 20 */	blr 
