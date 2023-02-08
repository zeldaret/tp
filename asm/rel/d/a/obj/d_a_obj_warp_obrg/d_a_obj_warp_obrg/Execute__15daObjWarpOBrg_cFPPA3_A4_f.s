lbl_80D2A008:
/* 80D2A008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2A00C  7C 08 02 A6 */	mflr r0
/* 80D2A010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2A014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2A018  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2A01C  7C 7E 1B 78 */	mr r30, r3
/* 80D2A020  7C 9F 23 78 */	mr r31, r4
/* 80D2A024  48 00 00 29 */	bl event_proc_call__15daObjWarpOBrg_cFv
/* 80D2A028  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D2A02C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2A030  38 60 00 01 */	li r3, 1
/* 80D2A034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2A038  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2A03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2A040  7C 08 03 A6 */	mtlr r0
/* 80D2A044  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2A048  4E 80 00 20 */	blr 
