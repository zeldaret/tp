lbl_80D2C304:
/* 80D2C304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C308  7C 08 02 A6 */	mflr r0
/* 80D2C30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C310  3C 80 80 D3 */	lis r4, d_a_obj_waterGate__stringBase0@ha /* 0x80D2C48C@ha */
/* 80D2C314  38 84 C4 8C */	addi r4, r4, d_a_obj_waterGate__stringBase0@l /* 0x80D2C48C@l */
/* 80D2C318  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D2C31C  4B 30 0C ED */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D2C320  38 60 00 01 */	li r3, 1
/* 80D2C324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C328  7C 08 03 A6 */	mtlr r0
/* 80D2C32C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C330  4E 80 00 20 */	blr 
