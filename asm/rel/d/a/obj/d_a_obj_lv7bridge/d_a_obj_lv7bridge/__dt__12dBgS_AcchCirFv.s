lbl_80C877F4:
/* 80C877F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C877F8  7C 08 02 A6 */	mflr r0
/* 80C877FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87804  93 C1 00 08 */	stw r30, 8(r1)
/* 80C87808  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C8780C  7C 9F 23 78 */	mr r31, r4
/* 80C87810  41 82 00 38 */	beq lbl_80C87848
/* 80C87814  3C 60 80 C8 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C87B20@ha */
/* 80C87818  38 03 7B 20 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C87B20@l */
/* 80C8781C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C87820  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C87824  38 80 FF FF */	li r4, -1
/* 80C87828  4B 5E 76 F1 */	bl __dt__8cM3dGCirFv
/* 80C8782C  7F C3 F3 78 */	mr r3, r30
/* 80C87830  38 80 00 00 */	li r4, 0
/* 80C87834  4B 5E 08 7D */	bl __dt__13cBgS_PolyInfoFv
/* 80C87838  7F E0 07 35 */	extsh. r0, r31
/* 80C8783C  40 81 00 0C */	ble lbl_80C87848
/* 80C87840  7F C3 F3 78 */	mr r3, r30
/* 80C87844  4B 64 74 F9 */	bl __dl__FPv
lbl_80C87848:
/* 80C87848  7F C3 F3 78 */	mr r3, r30
/* 80C8784C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87850  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C87854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87858  7C 08 03 A6 */	mtlr r0
/* 80C8785C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87860  4E 80 00 20 */	blr 
