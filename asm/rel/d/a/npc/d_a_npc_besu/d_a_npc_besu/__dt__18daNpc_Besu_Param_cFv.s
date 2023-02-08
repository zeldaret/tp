lbl_8053E6E8:
/* 8053E6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E6EC  7C 08 02 A6 */	mflr r0
/* 8053E6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E6F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053E6F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053E6FC  41 82 00 1C */	beq lbl_8053E718
/* 8053E700  3C A0 80 54 */	lis r5, __vt__18daNpc_Besu_Param_c@ha /* 0x8053FE5C@ha */
/* 8053E704  38 05 FE 5C */	addi r0, r5, __vt__18daNpc_Besu_Param_c@l /* 0x8053FE5C@l */
/* 8053E708  90 1F 00 00 */	stw r0, 0(r31)
/* 8053E70C  7C 80 07 35 */	extsh. r0, r4
/* 8053E710  40 81 00 08 */	ble lbl_8053E718
/* 8053E714  4B D9 06 29 */	bl __dl__FPv
lbl_8053E718:
/* 8053E718  7F E3 FB 78 */	mr r3, r31
/* 8053E71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053E720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E724  7C 08 03 A6 */	mtlr r0
/* 8053E728  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E72C  4E 80 00 20 */	blr 
