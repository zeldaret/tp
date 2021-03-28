lbl_809E7D60:
/* 809E7D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7D64  7C 08 02 A6 */	mflr r0
/* 809E7D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7D70  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E7D74  41 82 00 1C */	beq lbl_809E7D90
/* 809E7D78  3C A0 80 9F */	lis r5, __vt__17daNpc_grS_Param_c@ha
/* 809E7D7C  38 05 82 24 */	addi r0, r5, __vt__17daNpc_grS_Param_c@l
/* 809E7D80  90 1F 00 00 */	stw r0, 0(r31)
/* 809E7D84  7C 80 07 35 */	extsh. r0, r4
/* 809E7D88  40 81 00 08 */	ble lbl_809E7D90
/* 809E7D8C  4B 8E 6F B0 */	b __dl__FPv
lbl_809E7D90:
/* 809E7D90  7F E3 FB 78 */	mr r3, r31
/* 809E7D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7D9C  7C 08 03 A6 */	mtlr r0
/* 809E7DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7DA4  4E 80 00 20 */	blr 
