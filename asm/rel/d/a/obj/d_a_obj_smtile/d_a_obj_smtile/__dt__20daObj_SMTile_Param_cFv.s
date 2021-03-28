lbl_80CDE300:
/* 80CDE300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE304  7C 08 02 A6 */	mflr r0
/* 80CDE308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE30C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDE310  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDE314  41 82 00 1C */	beq lbl_80CDE330
/* 80CDE318  3C A0 80 CE */	lis r5, __vt__20daObj_SMTile_Param_c@ha
/* 80CDE31C  38 05 E4 60 */	addi r0, r5, __vt__20daObj_SMTile_Param_c@l
/* 80CDE320  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDE324  7C 80 07 35 */	extsh. r0, r4
/* 80CDE328  40 81 00 08 */	ble lbl_80CDE330
/* 80CDE32C  4B 5F 0A 10 */	b __dl__FPv
lbl_80CDE330:
/* 80CDE330  7F E3 FB 78 */	mr r3, r31
/* 80CDE334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDE338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE33C  7C 08 03 A6 */	mtlr r0
/* 80CDE340  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE344  4E 80 00 20 */	blr 
