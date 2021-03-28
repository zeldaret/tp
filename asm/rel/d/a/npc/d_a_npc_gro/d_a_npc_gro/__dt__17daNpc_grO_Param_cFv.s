lbl_809DEF10:
/* 809DEF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DEF14  7C 08 02 A6 */	mflr r0
/* 809DEF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DEF1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DEF20  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DEF24  41 82 00 1C */	beq lbl_809DEF40
/* 809DEF28  3C A0 80 9E */	lis r5, __vt__17daNpc_grO_Param_c@ha
/* 809DEF2C  38 05 F6 EC */	addi r0, r5, __vt__17daNpc_grO_Param_c@l
/* 809DEF30  90 1F 00 00 */	stw r0, 0(r31)
/* 809DEF34  7C 80 07 35 */	extsh. r0, r4
/* 809DEF38  40 81 00 08 */	ble lbl_809DEF40
/* 809DEF3C  4B 8E FE 00 */	b __dl__FPv
lbl_809DEF40:
/* 809DEF40  7F E3 FB 78 */	mr r3, r31
/* 809DEF44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DEF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DEF4C  7C 08 03 A6 */	mtlr r0
/* 809DEF50  38 21 00 10 */	addi r1, r1, 0x10
/* 809DEF54  4E 80 00 20 */	blr 
