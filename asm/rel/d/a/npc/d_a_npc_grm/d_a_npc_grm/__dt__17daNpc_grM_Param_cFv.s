lbl_809D5FD8:
/* 809D5FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5FDC  7C 08 02 A6 */	mflr r0
/* 809D5FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D5FE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D5FEC  41 82 00 1C */	beq lbl_809D6008
/* 809D5FF0  3C A0 80 9D */	lis r5, __vt__17daNpc_grM_Param_c@ha /* 0x809D72E0@ha */
/* 809D5FF4  38 05 72 E0 */	addi r0, r5, __vt__17daNpc_grM_Param_c@l /* 0x809D72E0@l */
/* 809D5FF8  90 1F 00 00 */	stw r0, 0(r31)
/* 809D5FFC  7C 80 07 35 */	extsh. r0, r4
/* 809D6000  40 81 00 08 */	ble lbl_809D6008
/* 809D6004  4B 8F 8D 39 */	bl __dl__FPv
lbl_809D6008:
/* 809D6008  7F E3 FB 78 */	mr r3, r31
/* 809D600C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D6010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D6014  7C 08 03 A6 */	mtlr r0
/* 809D6018  38 21 00 10 */	addi r1, r1, 0x10
/* 809D601C  4E 80 00 20 */	blr 
