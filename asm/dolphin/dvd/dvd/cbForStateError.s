lbl_803492DC:
/* 803492DC  7C 08 02 A6 */	mflr r0
/* 803492E0  28 03 00 10 */	cmplwi r3, 0x10
/* 803492E4  90 01 00 04 */	stw r0, 4(r1)
/* 803492E8  38 00 FF FF */	li r0, -1
/* 803492EC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803492F0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803492F4  80 8D 91 F8 */	lwz r4, executing(r13)
/* 803492F8  90 04 00 0C */	stw r0, 0xc(r4)
/* 803492FC  40 82 00 0C */	bne lbl_80349308
/* 80349300  48 00 00 89 */	bl stateTimeout
/* 80349304  48 00 00 70 */	b lbl_80349374
lbl_80349308:
/* 80349308  48 00 29 F5 */	bl __DVDPrintFatalMessage
/* 8034930C  3C 60 80 45 */	lis r3, DummyCommandBlock@ha
/* 80349310  83 ED 91 F8 */	lwz r31, executing(r13)
/* 80349314  38 03 C9 40 */	addi r0, r3, DummyCommandBlock@l
/* 80349318  38 60 00 01 */	li r3, 1
/* 8034931C  90 0D 91 F8 */	stw r0, executing(r13)
/* 80349320  90 6D 92 10 */	stw r3, FatalErrorFlag(r13)
/* 80349324  81 9F 00 28 */	lwz r12, 0x28(r31)
/* 80349328  28 0C 00 00 */	cmplwi r12, 0
/* 8034932C  41 82 00 14 */	beq lbl_80349340
/* 80349330  7D 88 03 A6 */	mtlr r12
/* 80349334  38 9F 00 00 */	addi r4, r31, 0
/* 80349338  38 60 FF FF */	li r3, -1
/* 8034933C  4E 80 00 21 */	blrl 
lbl_80349340:
/* 80349340  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 80349344  28 00 00 00 */	cmplwi r0, 0
/* 80349348  41 82 00 28 */	beq lbl_80349370
/* 8034934C  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 80349350  38 00 00 00 */	li r0, 0
/* 80349354  90 0D 92 18 */	stw r0, Canceling(r13)
/* 80349358  28 0C 00 00 */	cmplwi r12, 0
/* 8034935C  41 82 00 14 */	beq lbl_80349370
/* 80349360  7D 88 03 A6 */	mtlr r12
/* 80349364  38 9F 00 00 */	addi r4, r31, 0
/* 80349368  38 60 00 00 */	li r3, 0
/* 8034936C  4E 80 00 21 */	blrl 
lbl_80349370:
/* 80349370  48 00 0D 3D */	bl stateReady
lbl_80349374:
/* 80349374  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80349378  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034937C  38 21 00 18 */	addi r1, r1, 0x18
/* 80349380  7C 08 03 A6 */	mtlr r0
/* 80349384  4E 80 00 20 */	blr 
