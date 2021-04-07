lbl_80349CFC:
/* 80349CFC  7C 08 02 A6 */	mflr r0
/* 80349D00  28 03 00 10 */	cmplwi r3, 0x10
/* 80349D04  90 01 00 04 */	stw r0, 4(r1)
/* 80349D08  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80349D0C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80349D10  40 82 00 20 */	bne lbl_80349D30
/* 80349D14  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 80349D18  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349D1C  48 00 1E 6D */	bl __DVDStoreErrorCode
/* 80349D20  48 00 14 19 */	bl DVDReset
/* 80349D24  38 60 00 00 */	li r3, 0
/* 80349D28  4B FF F5 B5 */	bl cbForStateError
/* 80349D2C  48 00 00 AC */	b lbl_80349DD8
lbl_80349D30:
/* 80349D30  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80349D34  41 82 00 98 */	beq lbl_80349DCC
/* 80349D38  38 80 00 00 */	li r4, 0
/* 80349D3C  90 8D 92 2C */	stw r4, NumInternalRetry(r13)
/* 80349D40  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 80349D44  28 00 00 00 */	cmplwi r0, 0
/* 80349D48  41 82 00 64 */	beq lbl_80349DAC
/* 80349D4C  90 8D 92 20 */	stw r4, ResumeFromHere(r13)
/* 80349D50  3C 60 80 45 */	lis r3, DummyCommandBlock@ha /* 0x8044C940@ha */
/* 80349D54  83 ED 91 F8 */	lwz r31, executing(r13)
/* 80349D58  38 63 C9 40 */	addi r3, r3, DummyCommandBlock@l /* 0x8044C940@l */
/* 80349D5C  90 8D 92 18 */	stw r4, Canceling(r13)
/* 80349D60  38 00 00 0A */	li r0, 0xa
/* 80349D64  90 6D 91 F8 */	stw r3, executing(r13)
/* 80349D68  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80349D6C  81 9F 00 28 */	lwz r12, 0x28(r31)
/* 80349D70  28 0C 00 00 */	cmplwi r12, 0
/* 80349D74  41 82 00 14 */	beq lbl_80349D88
/* 80349D78  7D 88 03 A6 */	mtlr r12
/* 80349D7C  38 9F 00 00 */	addi r4, r31, 0
/* 80349D80  38 60 FF FD */	li r3, -3
/* 80349D84  4E 80 00 21 */	blrl 
lbl_80349D88:
/* 80349D88  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 80349D8C  28 0C 00 00 */	cmplwi r12, 0
/* 80349D90  41 82 00 14 */	beq lbl_80349DA4
/* 80349D94  7D 88 03 A6 */	mtlr r12
/* 80349D98  38 9F 00 00 */	addi r4, r31, 0
/* 80349D9C  38 60 00 00 */	li r3, 0
/* 80349DA0  4E 80 00 21 */	blrl 
lbl_80349DA4:
/* 80349DA4  48 00 03 09 */	bl stateReady
/* 80349DA8  38 80 00 01 */	li r4, 1
lbl_80349DAC:
/* 80349DAC  2C 04 00 00 */	cmpwi r4, 0
/* 80349DB0  40 82 00 28 */	bne lbl_80349DD8
/* 80349DB4  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349DB8  38 00 00 01 */	li r0, 1
/* 80349DBC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80349DC0  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349DC4  48 00 05 D1 */	bl stateBusy
/* 80349DC8  48 00 00 10 */	b lbl_80349DD8
lbl_80349DCC:
/* 80349DCC  3C 60 80 35 */	lis r3, cbForStateGettingError@ha /* 0x80349498@ha */
/* 80349DD0  38 63 94 98 */	addi r3, r3, cbForStateGettingError@l /* 0x80349498@l */
/* 80349DD4  4B FF E2 CD */	bl DVDLowRequestError
lbl_80349DD8:
/* 80349DD8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80349DDC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80349DE0  38 21 00 18 */	addi r1, r1, 0x18
/* 80349DE4  7C 08 03 A6 */	mtlr r0
/* 80349DE8  4E 80 00 20 */	blr 
