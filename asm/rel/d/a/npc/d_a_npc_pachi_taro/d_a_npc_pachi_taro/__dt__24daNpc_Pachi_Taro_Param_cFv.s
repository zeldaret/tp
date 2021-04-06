lbl_80AA1598:
/* 80AA1598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA159C  7C 08 02 A6 */	mflr r0
/* 80AA15A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA15A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA15A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA15AC  41 82 00 1C */	beq lbl_80AA15C8
/* 80AA15B0  3C A0 80 AA */	lis r5, __vt__24daNpc_Pachi_Taro_Param_c@ha /* 0x80AA2B74@ha */
/* 80AA15B4  38 05 2B 74 */	addi r0, r5, __vt__24daNpc_Pachi_Taro_Param_c@l /* 0x80AA2B74@l */
/* 80AA15B8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA15BC  7C 80 07 35 */	extsh. r0, r4
/* 80AA15C0  40 81 00 08 */	ble lbl_80AA15C8
/* 80AA15C4  4B 82 D7 79 */	bl __dl__FPv
lbl_80AA15C8:
/* 80AA15C8  7F E3 FB 78 */	mr r3, r31
/* 80AA15CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA15D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA15D4  7C 08 03 A6 */	mtlr r0
/* 80AA15D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA15DC  4E 80 00 20 */	blr 
