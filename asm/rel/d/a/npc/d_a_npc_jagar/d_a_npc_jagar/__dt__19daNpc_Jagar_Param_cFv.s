lbl_80A1A2C4:
/* 80A1A2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1A2C8  7C 08 02 A6 */	mflr r0
/* 80A1A2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1A2D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1A2D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A1A2D8  41 82 00 1C */	beq lbl_80A1A2F4
/* 80A1A2DC  3C A0 80 A2 */	lis r5, __vt__19daNpc_Jagar_Param_c@ha /* 0x80A1ADCC@ha */
/* 80A1A2E0  38 05 AD CC */	addi r0, r5, __vt__19daNpc_Jagar_Param_c@l /* 0x80A1ADCC@l */
/* 80A1A2E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A1A2E8  7C 80 07 35 */	extsh. r0, r4
/* 80A1A2EC  40 81 00 08 */	ble lbl_80A1A2F4
/* 80A1A2F0  4B 8B 4A 4D */	bl __dl__FPv
lbl_80A1A2F4:
/* 80A1A2F4  7F E3 FB 78 */	mr r3, r31
/* 80A1A2F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1A2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1A300  7C 08 03 A6 */	mtlr r0
/* 80A1A304  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1A308  4E 80 00 20 */	blr 
