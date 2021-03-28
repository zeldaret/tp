lbl_80BF48D8:
/* 80BF48D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF48DC  7C 08 02 A6 */	mflr r0
/* 80BF48E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF48E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF48E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF48EC  41 82 00 1C */	beq lbl_80BF4908
/* 80BF48F0  3C A0 80 BF */	lis r5, __vt__20daObj_Gadget_Param_c@ha
/* 80BF48F4  38 05 4B 84 */	addi r0, r5, __vt__20daObj_Gadget_Param_c@l
/* 80BF48F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF48FC  7C 80 07 35 */	extsh. r0, r4
/* 80BF4900  40 81 00 08 */	ble lbl_80BF4908
/* 80BF4904  4B 6D A4 38 */	b __dl__FPv
lbl_80BF4908:
/* 80BF4908  7F E3 FB 78 */	mr r3, r31
/* 80BF490C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF4910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4914  7C 08 03 A6 */	mtlr r0
/* 80BF4918  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF491C  4E 80 00 20 */	blr 
