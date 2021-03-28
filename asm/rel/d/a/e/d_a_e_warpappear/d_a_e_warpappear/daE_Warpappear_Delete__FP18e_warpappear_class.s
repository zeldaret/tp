lbl_807D1C58:
/* 807D1C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D1C5C  7C 08 02 A6 */	mflr r0
/* 807D1C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D1C64  3C 80 80 7D */	lis r4, stringBase0@ha
/* 807D1C68  38 84 22 80 */	addi r4, r4, stringBase0@l
/* 807D1C6C  38 84 00 08 */	addi r4, r4, 8
/* 807D1C70  38 63 05 68 */	addi r3, r3, 0x568
/* 807D1C74  4B 85 B3 94 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807D1C78  38 60 00 01 */	li r3, 1
/* 807D1C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D1C80  7C 08 03 A6 */	mtlr r0
/* 807D1C84  38 21 00 10 */	addi r1, r1, 0x10
/* 807D1C88  4E 80 00 20 */	blr 
