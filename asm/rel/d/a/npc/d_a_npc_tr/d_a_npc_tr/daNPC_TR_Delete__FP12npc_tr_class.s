lbl_80B262D8:
/* 80B262D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B262DC  7C 08 02 A6 */	mflr r0
/* 80B262E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B262E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B262E8  7C 7F 1B 78 */	mr r31, r3
/* 80B262EC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80B262F0  3C 80 80 B2 */	lis r4, stringBase0@ha
/* 80B262F4  38 84 66 08 */	addi r4, r4, stringBase0@l
/* 80B262F8  4B 50 6D 10 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B262FC  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 80B26300  28 00 00 00 */	cmplwi r0, 0
/* 80B26304  41 82 00 10 */	beq lbl_80B26314
/* 80B26308  38 00 00 00 */	li r0, 0
/* 80B2630C  3C 60 80 B2 */	lis r3, data_80B26678@ha
/* 80B26310  98 03 66 78 */	stb r0, data_80B26678@l(r3)
lbl_80B26314:
/* 80B26314  38 60 00 01 */	li r3, 1
/* 80B26318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2631C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B26320  7C 08 03 A6 */	mtlr r0
/* 80B26324  38 21 00 10 */	addi r1, r1, 0x10
/* 80B26328  4E 80 00 20 */	blr 
