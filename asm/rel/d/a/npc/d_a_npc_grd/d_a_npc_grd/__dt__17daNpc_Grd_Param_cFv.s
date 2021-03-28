lbl_809D3998:
/* 809D3998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D399C  7C 08 02 A6 */	mflr r0
/* 809D39A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D39A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D39A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D39AC  41 82 00 1C */	beq lbl_809D39C8
/* 809D39B0  3C A0 80 9D */	lis r5, __vt__17daNpc_Grd_Param_c@ha
/* 809D39B4  38 05 3E 9C */	addi r0, r5, __vt__17daNpc_Grd_Param_c@l
/* 809D39B8  90 1F 00 00 */	stw r0, 0(r31)
/* 809D39BC  7C 80 07 35 */	extsh. r0, r4
/* 809D39C0  40 81 00 08 */	ble lbl_809D39C8
/* 809D39C4  4B 8F B3 78 */	b __dl__FPv
lbl_809D39C8:
/* 809D39C8  7F E3 FB 78 */	mr r3, r31
/* 809D39CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D39D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D39D4  7C 08 03 A6 */	mtlr r0
/* 809D39D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D39DC  4E 80 00 20 */	blr 
