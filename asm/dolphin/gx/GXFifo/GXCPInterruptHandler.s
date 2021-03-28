lbl_8035A5A8:
/* 8035A5A8  7C 08 02 A6 */	mflr r0
/* 8035A5AC  90 01 00 04 */	stw r0, 4(r1)
/* 8035A5B0  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8035A5B4  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8035A5B8  7C 9F 23 78 */	mr r31, r4
/* 8035A5BC  80 AD 93 A4 */	lwz r5, __cpReg(r13)
/* 8035A5C0  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035A5C4  A0 05 00 00 */	lhz r0, 0(r5)
/* 8035A5C8  90 03 00 0C */	stw r0, 0xc(r3)
/* 8035A5CC  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A5D0  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8035A5D4  41 82 00 38 */	beq lbl_8035A60C
/* 8035A5D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8035A5DC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8035A5E0  41 82 00 2C */	beq lbl_8035A60C
/* 8035A5E4  80 6D 93 D0 */	lwz r3, __GXCurrentThread(r13)
/* 8035A5E8  4B FE 71 CD */	bl OSResumeThread
/* 8035A5EC  38 00 00 00 */	li r0, 0
/* 8035A5F0  90 0D 93 D8 */	stw r0, GXOverflowSuspendInProgress(r13)
/* 8035A5F4  38 60 00 01 */	li r3, 1
/* 8035A5F8  38 80 00 01 */	li r4, 1
/* 8035A5FC  48 00 07 29 */	bl __GXWriteFifoIntReset
/* 8035A600  38 60 00 01 */	li r3, 1
/* 8035A604  38 80 00 00 */	li r4, 0
/* 8035A608  48 00 06 ED */	bl __GXWriteFifoIntEnable
lbl_8035A60C:
/* 8035A60C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035A610  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A614  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8035A618  41 82 00 44 */	beq lbl_8035A65C
/* 8035A61C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8035A620  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8035A624  41 82 00 38 */	beq lbl_8035A65C
/* 8035A628  80 AD 93 E0 */	lwz r5, __GXOverflowCount(r13)
/* 8035A62C  38 60 00 00 */	li r3, 0
/* 8035A630  38 80 00 01 */	li r4, 1
/* 8035A634  38 05 00 01 */	addi r0, r5, 1
/* 8035A638  90 0D 93 E0 */	stw r0, __GXOverflowCount(r13)
/* 8035A63C  48 00 06 B9 */	bl __GXWriteFifoIntEnable
/* 8035A640  38 60 00 01 */	li r3, 1
/* 8035A644  38 80 00 00 */	li r4, 0
/* 8035A648  48 00 06 DD */	bl __GXWriteFifoIntReset
/* 8035A64C  38 00 00 01 */	li r0, 1
/* 8035A650  80 6D 93 D0 */	lwz r3, __GXCurrentThread(r13)
/* 8035A654  90 0D 93 D8 */	stw r0, GXOverflowSuspendInProgress(r13)
/* 8035A658  4B FE 73 E5 */	bl OSSuspendThread
lbl_8035A65C:
/* 8035A65C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035A660  80 83 00 08 */	lwz r4, 8(r3)
/* 8035A664  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 8035A668  41 82 00 60 */	beq lbl_8035A6C8
/* 8035A66C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8035A670  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8035A674  41 82 00 54 */	beq lbl_8035A6C8
/* 8035A678  38 00 00 00 */	li r0, 0
/* 8035A67C  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 8035A680  90 83 00 08 */	stw r4, 8(r3)
/* 8035A684  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A688  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A68C  B0 03 00 02 */	sth r0, 2(r3)
/* 8035A690  80 0D 93 DC */	lwz r0, BreakPointCB(r13)
/* 8035A694  28 00 00 00 */	cmplwi r0, 0
/* 8035A698  41 82 00 30 */	beq lbl_8035A6C8
/* 8035A69C  38 61 00 10 */	addi r3, r1, 0x10
/* 8035A6A0  4B FE 19 61 */	bl OSClearContext
/* 8035A6A4  38 61 00 10 */	addi r3, r1, 0x10
/* 8035A6A8  4B FE 17 91 */	bl OSSetCurrentContext
/* 8035A6AC  81 8D 93 DC */	lwz r12, BreakPointCB(r13)
/* 8035A6B0  7D 88 03 A6 */	mtlr r12
/* 8035A6B4  4E 80 00 21 */	blrl 
/* 8035A6B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8035A6BC  4B FE 19 45 */	bl OSClearContext
/* 8035A6C0  7F E3 FB 78 */	mr r3, r31
/* 8035A6C4  4B FE 17 75 */	bl OSSetCurrentContext
lbl_8035A6C8:
/* 8035A6C8  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8035A6CC  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8035A6D0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8035A6D4  7C 08 03 A6 */	mtlr r0
/* 8035A6D8  4E 80 00 20 */	blr 
