lbl_8034B2D4:
/* 8034B2D4  7C 08 02 A6 */	mflr r0
/* 8034B2D8  90 01 00 04 */	stw r0, 4(r1)
/* 8034B2DC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034B2E0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8034B2E4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8034B2E8  3B C4 00 00 */	addi r30, r4, 0
/* 8034B2EC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8034B2F0  3B A3 00 00 */	addi r29, r3, 0
/* 8034B2F4  4B FF 24 01 */	bl OSDisableInterrupts
/* 8034B2F8  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8034B2FC  3B E3 00 00 */	addi r31, r3, 0
/* 8034B300  38 04 00 01 */	addi r0, r4, 1
/* 8034B304  28 00 00 0C */	cmplwi r0, 0xc
/* 8034B308  41 81 02 20 */	bgt lbl_8034B528
/* 8034B30C  3C 60 80 3D */	lis r3, lit_956@ha /* 0x803D163C@ha */
/* 8034B310  38 63 16 3C */	addi r3, r3, lit_956@l /* 0x803D163C@l */
/* 8034B314  54 00 10 3A */	slwi r0, r0, 2
/* 8034B318  7C 03 00 2E */	lwzx r0, r3, r0
/* 8034B31C  7C 09 03 A6 */	mtctr r0
/* 8034B320  4E 80 04 20 */	bctr 
/* 8034B324  28 1E 00 00 */	cmplwi r30, 0
/* 8034B328  41 82 02 00 */	beq lbl_8034B528
/* 8034B32C  39 9E 00 00 */	addi r12, r30, 0
/* 8034B330  7D 88 03 A6 */	mtlr r12
/* 8034B334  38 9D 00 00 */	addi r4, r29, 0
/* 8034B338  38 60 00 00 */	li r3, 0
/* 8034B33C  4E 80 00 21 */	blrl 
/* 8034B340  48 00 01 E8 */	b lbl_8034B528
/* 8034B344  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034B348  28 00 00 00 */	cmplwi r0, 0
/* 8034B34C  41 82 00 14 */	beq lbl_8034B360
/* 8034B350  7F E3 FB 78 */	mr r3, r31
/* 8034B354  4B FF 23 C9 */	bl OSRestoreInterrupts
/* 8034B358  38 60 00 00 */	li r3, 0
/* 8034B35C  48 00 01 D8 */	b lbl_8034B534
lbl_8034B360:
/* 8034B360  38 00 00 01 */	li r0, 1
/* 8034B364  93 CD 92 1C */	stw r30, CancelCallback(r13)
/* 8034B368  90 0D 92 18 */	stw r0, Canceling(r13)
/* 8034B36C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8034B370  28 00 00 04 */	cmplwi r0, 4
/* 8034B374  41 82 00 0C */	beq lbl_8034B380
/* 8034B378  28 00 00 01 */	cmplwi r0, 1
/* 8034B37C  40 82 01 AC */	bne lbl_8034B528
lbl_8034B380:
/* 8034B380  4B FF D0 C5 */	bl DVDLowBreak
/* 8034B384  48 00 01 A4 */	b lbl_8034B528
/* 8034B388  7F A3 EB 78 */	mr r3, r29
/* 8034B38C  48 00 06 81 */	bl __DVDDequeueWaitingQueue
/* 8034B390  38 00 00 0A */	li r0, 0xa
/* 8034B394  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8034B398  81 9D 00 28 */	lwz r12, 0x28(r29)
/* 8034B39C  28 0C 00 00 */	cmplwi r12, 0
/* 8034B3A0  41 82 00 14 */	beq lbl_8034B3B4
/* 8034B3A4  7D 88 03 A6 */	mtlr r12
/* 8034B3A8  38 9D 00 00 */	addi r4, r29, 0
/* 8034B3AC  38 60 FF FD */	li r3, -3
/* 8034B3B0  4E 80 00 21 */	blrl 
lbl_8034B3B4:
/* 8034B3B4  28 1E 00 00 */	cmplwi r30, 0
/* 8034B3B8  41 82 01 70 */	beq lbl_8034B528
/* 8034B3BC  39 9E 00 00 */	addi r12, r30, 0
/* 8034B3C0  7D 88 03 A6 */	mtlr r12
/* 8034B3C4  38 9D 00 00 */	addi r4, r29, 0
/* 8034B3C8  38 60 00 00 */	li r3, 0
/* 8034B3CC  4E 80 00 21 */	blrl 
/* 8034B3D0  48 00 01 58 */	b lbl_8034B528
/* 8034B3D4  80 1D 00 08 */	lwz r0, 8(r29)
/* 8034B3D8  2C 00 00 0D */	cmpwi r0, 0xd
/* 8034B3DC  41 82 00 28 */	beq lbl_8034B404
/* 8034B3E0  40 80 00 18 */	bge lbl_8034B3F8
/* 8034B3E4  2C 00 00 06 */	cmpwi r0, 6
/* 8034B3E8  40 80 00 3C */	bge lbl_8034B424
/* 8034B3EC  2C 00 00 04 */	cmpwi r0, 4
/* 8034B3F0  40 80 00 14 */	bge lbl_8034B404
/* 8034B3F4  48 00 00 30 */	b lbl_8034B424
lbl_8034B3F8:
/* 8034B3F8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8034B3FC  41 82 00 08 */	beq lbl_8034B404
/* 8034B400  48 00 00 24 */	b lbl_8034B424
lbl_8034B404:
/* 8034B404  28 1E 00 00 */	cmplwi r30, 0
/* 8034B408  41 82 01 20 */	beq lbl_8034B528
/* 8034B40C  39 9E 00 00 */	addi r12, r30, 0
/* 8034B410  7D 88 03 A6 */	mtlr r12
/* 8034B414  38 9D 00 00 */	addi r4, r29, 0
/* 8034B418  38 60 00 00 */	li r3, 0
/* 8034B41C  4E 80 00 21 */	blrl 
/* 8034B420  48 00 01 08 */	b lbl_8034B528
lbl_8034B424:
/* 8034B424  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034B428  28 00 00 00 */	cmplwi r0, 0
/* 8034B42C  41 82 00 14 */	beq lbl_8034B440
/* 8034B430  7F E3 FB 78 */	mr r3, r31
/* 8034B434  4B FF 22 E9 */	bl OSRestoreInterrupts
/* 8034B438  38 60 00 00 */	li r3, 0
/* 8034B43C  48 00 00 F8 */	b lbl_8034B534
lbl_8034B440:
/* 8034B440  38 00 00 01 */	li r0, 1
/* 8034B444  93 CD 92 1C */	stw r30, CancelCallback(r13)
/* 8034B448  90 0D 92 18 */	stw r0, Canceling(r13)
/* 8034B44C  48 00 00 DC */	b lbl_8034B528
/* 8034B450  4B FF D0 09 */	bl DVDLowClearCallback
/* 8034B454  3C 80 80 35 */	lis r4, cbForStateMotorStopped@ha /* 0x80349FC0@ha */
/* 8034B458  38 04 9F C0 */	addi r0, r4, cbForStateMotorStopped@l /* 0x80349FC0@l */
/* 8034B45C  7C 03 00 40 */	cmplw r3, r0
/* 8034B460  41 82 00 14 */	beq lbl_8034B474
/* 8034B464  7F E3 FB 78 */	mr r3, r31
/* 8034B468  4B FF 22 B5 */	bl OSRestoreInterrupts
/* 8034B46C  38 60 00 00 */	li r3, 0
/* 8034B470  48 00 00 C4 */	b lbl_8034B534
lbl_8034B474:
/* 8034B474  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8034B478  2C 00 00 04 */	cmpwi r0, 4
/* 8034B47C  40 82 00 0C */	bne lbl_8034B488
/* 8034B480  38 00 00 03 */	li r0, 3
/* 8034B484  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
lbl_8034B488:
/* 8034B488  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8034B48C  2C 00 00 05 */	cmpwi r0, 5
/* 8034B490  40 82 00 0C */	bne lbl_8034B49C
/* 8034B494  38 00 00 04 */	li r0, 4
/* 8034B498  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
lbl_8034B49C:
/* 8034B49C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8034B4A0  2C 00 00 06 */	cmpwi r0, 6
/* 8034B4A4  40 82 00 0C */	bne lbl_8034B4B0
/* 8034B4A8  38 00 00 01 */	li r0, 1
/* 8034B4AC  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
lbl_8034B4B0:
/* 8034B4B0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8034B4B4  2C 00 00 0B */	cmpwi r0, 0xb
/* 8034B4B8  40 82 00 0C */	bne lbl_8034B4C4
/* 8034B4BC  38 00 00 02 */	li r0, 2
/* 8034B4C0  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
lbl_8034B4C4:
/* 8034B4C4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8034B4C8  2C 00 00 07 */	cmpwi r0, 7
/* 8034B4CC  40 82 00 0C */	bne lbl_8034B4D8
/* 8034B4D0  38 00 00 07 */	li r0, 7
/* 8034B4D4  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
lbl_8034B4D8:
/* 8034B4D8  3C 60 80 45 */	lis r3, DummyCommandBlock@ha /* 0x8044C940@ha */
/* 8034B4DC  38 03 C9 40 */	addi r0, r3, DummyCommandBlock@l /* 0x8044C940@l */
/* 8034B4E0  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034B4E4  38 00 00 0A */	li r0, 0xa
/* 8034B4E8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8034B4EC  81 9D 00 28 */	lwz r12, 0x28(r29)
/* 8034B4F0  28 0C 00 00 */	cmplwi r12, 0
/* 8034B4F4  41 82 00 14 */	beq lbl_8034B508
/* 8034B4F8  7D 88 03 A6 */	mtlr r12
/* 8034B4FC  38 9D 00 00 */	addi r4, r29, 0
/* 8034B500  38 60 FF FD */	li r3, -3
/* 8034B504  4E 80 00 21 */	blrl 
lbl_8034B508:
/* 8034B508  28 1E 00 00 */	cmplwi r30, 0
/* 8034B50C  41 82 00 18 */	beq lbl_8034B524
/* 8034B510  39 9E 00 00 */	addi r12, r30, 0
/* 8034B514  7D 88 03 A6 */	mtlr r12
/* 8034B518  38 9D 00 00 */	addi r4, r29, 0
/* 8034B51C  38 60 00 00 */	li r3, 0
/* 8034B520  4E 80 00 21 */	blrl 
lbl_8034B524:
/* 8034B524  4B FF EB 89 */	bl stateReady
lbl_8034B528:
/* 8034B528  7F E3 FB 78 */	mr r3, r31
/* 8034B52C  4B FF 21 F1 */	bl OSRestoreInterrupts
/* 8034B530  38 60 00 01 */	li r3, 1
lbl_8034B534:
/* 8034B534  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8034B538  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8034B53C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8034B540  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8034B544  38 21 00 28 */	addi r1, r1, 0x28
/* 8034B548  7C 08 03 A6 */	mtlr r0
/* 8034B54C  4E 80 00 20 */	blr 
