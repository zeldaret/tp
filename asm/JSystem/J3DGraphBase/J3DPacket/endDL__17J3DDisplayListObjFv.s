lbl_80312698:
/* 80312698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031269C  7C 08 02 A6 */	mflr r0
/* 803126A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803126A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803126A8  7C 7F 1B 78 */	mr r31, r3
/* 803126AC  48 04 E9 31 */	bl GDPadCurr32
/* 803126B0  80 6D 90 20 */	lwz r3, sInterruptFlag__17J3DDisplayListObj(r13)
/* 803126B4  48 02 B0 69 */	bl OSRestoreInterrupts
/* 803126B8  3C 60 80 43 */	lis r3, sGDLObj__17J3DDisplayListObj@ha
/* 803126BC  38 83 4C 70 */	addi r4, r3, sGDLObj__17J3DDisplayListObj@l
/* 803126C0  80 64 00 00 */	lwz r3, 0(r4)
/* 803126C4  80 04 00 08 */	lwz r0, 8(r4)
/* 803126C8  7C 03 00 50 */	subf r0, r3, r0
/* 803126CC  90 1F 00 08 */	stw r0, 8(r31)
/* 803126D0  48 04 E8 E1 */	bl GDFlushCurrToMem
/* 803126D4  38 00 00 00 */	li r0, 0
/* 803126D8  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 803126DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 803126E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803126E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803126E8  7C 08 03 A6 */	mtlr r0
/* 803126EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803126F0  4E 80 00 20 */	blr 
