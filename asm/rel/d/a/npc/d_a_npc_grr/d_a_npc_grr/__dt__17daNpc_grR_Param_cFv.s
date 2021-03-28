lbl_809E386C:
/* 809E386C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E3870  7C 08 02 A6 */	mflr r0
/* 809E3874  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E3878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E387C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E3880  41 82 00 1C */	beq lbl_809E389C
/* 809E3884  3C A0 80 9E */	lis r5, __vt__17daNpc_grR_Param_c@ha
/* 809E3888  38 05 3E E0 */	addi r0, r5, __vt__17daNpc_grR_Param_c@l
/* 809E388C  90 1F 00 00 */	stw r0, 0(r31)
/* 809E3890  7C 80 07 35 */	extsh. r0, r4
/* 809E3894  40 81 00 08 */	ble lbl_809E389C
/* 809E3898  4B 8E B4 A4 */	b __dl__FPv
lbl_809E389C:
/* 809E389C  7F E3 FB 78 */	mr r3, r31
/* 809E38A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E38A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E38A8  7C 08 03 A6 */	mtlr r0
/* 809E38AC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E38B0  4E 80 00 20 */	blr 
