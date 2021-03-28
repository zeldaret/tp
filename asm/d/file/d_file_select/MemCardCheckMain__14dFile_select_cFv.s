lbl_8018E4CC:
/* 8018E4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E4D0  7C 08 02 A6 */	mflr r0
/* 8018E4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E4D8  88 03 02 71 */	lbz r0, 0x271(r3)
/* 8018E4DC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8018E4E0  3C 80 80 3C */	lis r4, MemCardCheckProc@ha
/* 8018E4E4  38 04 B1 2C */	addi r0, r4, MemCardCheckProc@l
/* 8018E4E8  7D 80 2A 14 */	add r12, r0, r5
/* 8018E4EC  48 1D 3B 99 */	bl __ptmf_scall
/* 8018E4F0  60 00 00 00 */	nop 
/* 8018E4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E4F8  7C 08 03 A6 */	mtlr r0
/* 8018E4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E500  4E 80 00 20 */	blr 
