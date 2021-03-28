lbl_809D9014:
/* 809D9014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D9018  7C 08 02 A6 */	mflr r0
/* 809D901C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D9020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D9024  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D9028  41 82 00 1C */	beq lbl_809D9044
/* 809D902C  3C A0 80 9E */	lis r5, __vt__18daNpc_grMC_Param_c@ha
/* 809D9030  38 05 A4 48 */	addi r0, r5, __vt__18daNpc_grMC_Param_c@l
/* 809D9034  90 1F 00 00 */	stw r0, 0(r31)
/* 809D9038  7C 80 07 35 */	extsh. r0, r4
/* 809D903C  40 81 00 08 */	ble lbl_809D9044
/* 809D9040  4B 8F 5C FC */	b __dl__FPv
lbl_809D9044:
/* 809D9044  7F E3 FB 78 */	mr r3, r31
/* 809D9048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D904C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D9050  7C 08 03 A6 */	mtlr r0
/* 809D9054  38 21 00 10 */	addi r1, r1, 0x10
/* 809D9058  4E 80 00 20 */	blr 
