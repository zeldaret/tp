lbl_80B5C828:
/* 80B5C828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C82C  7C 08 02 A6 */	mflr r0
/* 80B5C830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C838  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5C83C  41 82 00 1C */	beq lbl_80B5C858
/* 80B5C840  3C A0 80 B6 */	lis r5, __vt__8cM3dGCyl@ha
/* 80B5C844  38 05 EC 38 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80B5C848  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B5C84C  7C 80 07 35 */	extsh. r0, r4
/* 80B5C850  40 81 00 08 */	ble lbl_80B5C858
/* 80B5C854  4B 77 24 E8 */	b __dl__FPv
lbl_80B5C858:
/* 80B5C858  7F E3 FB 78 */	mr r3, r31
/* 80B5C85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C864  7C 08 03 A6 */	mtlr r0
/* 80B5C868  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C86C  4E 80 00 20 */	blr 
