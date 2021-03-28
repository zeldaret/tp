lbl_80485E88:
/* 80485E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485E8C  7C 08 02 A6 */	mflr r0
/* 80485E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485E94  7C 64 1B 78 */	mr r4, r3
/* 80485E98  38 64 05 68 */	addi r3, r4, 0x568
/* 80485E9C  38 84 05 70 */	addi r4, r4, 0x570
/* 80485EA0  4B BA 71 68 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80485EA4  38 60 00 01 */	li r3, 1
/* 80485EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485EAC  7C 08 03 A6 */	mtlr r0
/* 80485EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80485EB4  4E 80 00 20 */	blr 
