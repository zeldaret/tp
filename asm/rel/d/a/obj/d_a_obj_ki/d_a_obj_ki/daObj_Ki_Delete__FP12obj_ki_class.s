lbl_80C44424:
/* 80C44424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44428  7C 08 02 A6 */	mflr r0
/* 80C4442C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44434  7C 7F 1B 78 */	mr r31, r3
/* 80C44438  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C4443C  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C44440  38 84 4B 88 */	addi r4, r4, stringBase0@l
/* 80C44444  4B 3E 8B C4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C44448  88 1F 06 6C */	lbz r0, 0x66c(r31)
/* 80C4444C  28 00 00 00 */	cmplwi r0, 0
/* 80C44450  41 82 00 10 */	beq lbl_80C44460
/* 80C44454  38 00 00 00 */	li r0, 0
/* 80C44458  3C 60 80 C4 */	lis r3, data_80C44C08@ha
/* 80C4445C  98 03 4C 08 */	stb r0, data_80C44C08@l(r3)
lbl_80C44460:
/* 80C44460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C44464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C44468  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C4446C  80 9F 06 68 */	lwz r4, 0x668(r31)
/* 80C44470  4B 42 FD E0 */	b Release__4cBgSFP9dBgW_Base
/* 80C44474  38 60 00 01 */	li r3, 1
/* 80C44478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4447C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44480  7C 08 03 A6 */	mtlr r0
/* 80C44484  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44488  4E 80 00 20 */	blr 
