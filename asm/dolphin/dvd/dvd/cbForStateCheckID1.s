lbl_80349B28:
/* 80349B28  7C 08 02 A6 */	mflr r0
/* 80349B2C  28 03 00 10 */	cmplwi r3, 0x10
/* 80349B30  90 01 00 04 */	stw r0, 4(r1)
/* 80349B34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80349B38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80349B3C  40 82 00 20 */	bne lbl_80349B5C
/* 80349B40  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 80349B44  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349B48  48 00 20 41 */	bl __DVDStoreErrorCode
/* 80349B4C  48 00 15 ED */	bl DVDReset
/* 80349B50  38 60 00 00 */	li r3, 0
/* 80349B54  4B FF F7 89 */	bl cbForStateError
/* 80349B58  48 00 00 B8 */	b lbl_80349C10
lbl_80349B5C:
/* 80349B5C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80349B60  41 82 00 20 */	beq lbl_80349B80
/* 80349B64  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 80349B68  38 63 45 67 */	addi r3, r3, 0x4567 /* 0x01234567@l */
/* 80349B6C  48 00 20 1D */	bl __DVDStoreErrorCode
/* 80349B70  3C 60 80 35 */	lis r3, cbForStateError@ha
/* 80349B74  38 63 92 DC */	addi r3, r3, cbForStateError@l
/* 80349B78  4B FF E4 9D */	bl DVDLowStopMotor
/* 80349B7C  48 00 00 94 */	b lbl_80349C10
lbl_80349B80:
/* 80349B80  38 80 00 00 */	li r4, 0
/* 80349B84  90 8D 92 2C */	stw r4, NumInternalRetry(r13)
/* 80349B88  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 80349B8C  28 00 00 00 */	cmplwi r0, 0
/* 80349B90  41 82 00 68 */	beq lbl_80349BF8
/* 80349B94  38 00 00 01 */	li r0, 1
/* 80349B98  83 ED 91 F8 */	lwz r31, executing(r13)
/* 80349B9C  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
/* 80349BA0  3C 60 80 45 */	lis r3, DummyCommandBlock@ha
/* 80349BA4  38 63 C9 40 */	addi r3, r3, DummyCommandBlock@l
/* 80349BA8  90 8D 92 18 */	stw r4, Canceling(r13)
/* 80349BAC  38 00 00 0A */	li r0, 0xa
/* 80349BB0  90 6D 91 F8 */	stw r3, executing(r13)
/* 80349BB4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80349BB8  81 9F 00 28 */	lwz r12, 0x28(r31)
/* 80349BBC  28 0C 00 00 */	cmplwi r12, 0
/* 80349BC0  41 82 00 14 */	beq lbl_80349BD4
/* 80349BC4  7D 88 03 A6 */	mtlr r12
/* 80349BC8  38 9F 00 00 */	addi r4, r31, 0
/* 80349BCC  38 60 FF FD */	li r3, -3
/* 80349BD0  4E 80 00 21 */	blrl 
lbl_80349BD4:
/* 80349BD4  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 80349BD8  28 0C 00 00 */	cmplwi r12, 0
/* 80349BDC  41 82 00 14 */	beq lbl_80349BF0
/* 80349BE0  7D 88 03 A6 */	mtlr r12
/* 80349BE4  38 9F 00 00 */	addi r4, r31, 0
/* 80349BE8  38 60 00 00 */	li r3, 0
/* 80349BEC  4E 80 00 21 */	blrl 
lbl_80349BF0:
/* 80349BF0  48 00 04 BD */	bl stateReady
/* 80349BF4  38 80 00 01 */	li r4, 1
lbl_80349BF8:
/* 80349BF8  2C 04 00 00 */	cmpwi r4, 0
/* 80349BFC  40 82 00 14 */	bne lbl_80349C10
/* 80349C00  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349C04  38 00 00 06 */	li r0, 6
/* 80349C08  90 03 00 0C */	stw r0, 0xc(r3)
/* 80349C0C  48 00 03 8D */	bl stateMotorStopped
lbl_80349C10:
/* 80349C10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80349C14  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80349C18  38 21 00 18 */	addi r1, r1, 0x18
/* 80349C1C  7C 08 03 A6 */	mtlr r0
/* 80349C20  4E 80 00 20 */	blr 
