lbl_8035AC2C:
/* 8035AC2C  7C 08 02 A6 */	mflr r0
/* 8035AC30  3C 60 80 36 */	lis r3, GXCPInterruptHandler@ha /* 0x8035A5A8@ha */
/* 8035AC34  90 01 00 04 */	stw r0, 4(r1)
/* 8035AC38  38 83 A5 A8 */	addi r4, r3, GXCPInterruptHandler@l /* 0x8035A5A8@l */
/* 8035AC3C  38 60 00 11 */	li r3, 0x11
/* 8035AC40  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035AC44  4B FE 2A FD */	bl __OSSetInterruptHandler
/* 8035AC48  38 60 40 00 */	li r3, 0x4000
/* 8035AC4C  4B FE 2E F9 */	bl __OSUnmaskInterrupts
/* 8035AC50  4B FE 60 35 */	bl OSGetCurrentThread
/* 8035AC54  38 00 00 00 */	li r0, 0
/* 8035AC58  90 6D 93 D0 */	stw r3, __GXCurrentThread(r13)
/* 8035AC5C  90 0D 93 D8 */	stw r0, GXOverflowSuspendInProgress(r13)
/* 8035AC60  90 0D 93 C8 */	stw r0, CPUFifo(r13)
/* 8035AC64  90 0D 93 CC */	stw r0, GPFifo(r13)
/* 8035AC68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035AC6C  38 21 00 08 */	addi r1, r1, 8
/* 8035AC70  7C 08 03 A6 */	mtlr r0
/* 8035AC74  4E 80 00 20 */	blr 
