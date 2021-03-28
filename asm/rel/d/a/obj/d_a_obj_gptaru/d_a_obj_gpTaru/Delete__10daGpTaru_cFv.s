lbl_8057F328:
/* 8057F328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F32C  7C 08 02 A6 */	mflr r0
/* 8057F330  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F338  7C 7F 1B 78 */	mr r31, r3
/* 8057F33C  38 7F 09 58 */	addi r3, r31, 0x958
/* 8057F340  4B AD BB 18 */	b dKyw_pntwind_cut__FP14WIND_INFLUENCE
/* 8057F344  38 7F 05 6C */	addi r3, r31, 0x56c
/* 8057F348  3C 80 80 58 */	lis r4, stringBase0@ha
/* 8057F34C  38 84 F6 64 */	addi r4, r4, stringBase0@l
/* 8057F350  4B AA DC B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8057F354  38 60 00 01 */	li r3, 1
/* 8057F358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057F35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F360  7C 08 03 A6 */	mtlr r0
/* 8057F364  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F368  4E 80 00 20 */	blr 
