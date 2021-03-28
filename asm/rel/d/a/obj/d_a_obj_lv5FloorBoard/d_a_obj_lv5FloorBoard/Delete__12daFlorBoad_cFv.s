lbl_80C6AF54:
/* 80C6AF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6AF58  7C 08 02 A6 */	mflr r0
/* 80C6AF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6AF60  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C6AF64  38 84 B1 8C */	addi r4, r4, stringBase0@l
/* 80C6AF68  38 63 07 18 */	addi r3, r3, 0x718
/* 80C6AF6C  4B 3C 20 9C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C6AF70  38 60 00 01 */	li r3, 1
/* 80C6AF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6AF78  7C 08 03 A6 */	mtlr r0
/* 80C6AF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6AF80  4E 80 00 20 */	blr 
