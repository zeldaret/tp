lbl_80AC448C:
/* 80AC448C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC4490  7C 08 02 A6 */	mflr r0
/* 80AC4494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC4498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC449C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC44A0  41 82 00 1C */	beq lbl_80AC44BC
/* 80AC44A4  3C A0 80 AC */	lis r5, __vt__18daNpc_Saru_Param_c@ha /* 0x80AC4FD4@ha */
/* 80AC44A8  38 05 4F D4 */	addi r0, r5, __vt__18daNpc_Saru_Param_c@l /* 0x80AC4FD4@l */
/* 80AC44AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC44B0  7C 80 07 35 */	extsh. r0, r4
/* 80AC44B4  40 81 00 08 */	ble lbl_80AC44BC
/* 80AC44B8  4B 80 A8 85 */	bl __dl__FPv
lbl_80AC44BC:
/* 80AC44BC  7F E3 FB 78 */	mr r3, r31
/* 80AC44C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC44C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC44C8  7C 08 03 A6 */	mtlr r0
/* 80AC44CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC44D0  4E 80 00 20 */	blr 
