lbl_80349800:
/* 80349800  7C 08 02 A6 */	mflr r0
/* 80349804  28 03 00 10 */	cmplwi r3, 0x10
/* 80349808  90 01 00 04 */	stw r0, 4(r1)
/* 8034980C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80349810  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80349814  40 82 00 20 */	bne lbl_80349834
/* 80349818  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 8034981C  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349820  48 00 23 69 */	bl __DVDStoreErrorCode
/* 80349824  48 00 19 15 */	bl DVDReset
/* 80349828  38 60 00 00 */	li r3, 0
/* 8034982C  4B FF FA B1 */	bl cbForStateError
/* 80349830  48 00 00 FC */	b lbl_8034992C
lbl_80349834:
/* 80349834  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80349838  41 82 00 20 */	beq lbl_80349858
/* 8034983C  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 80349840  38 63 45 67 */	addi r3, r3, 0x4567 /* 0x01234567@l */
/* 80349844  48 00 23 45 */	bl __DVDStoreErrorCode
/* 80349848  3C 60 80 35 */	lis r3, cbForStateError@ha /* 0x803492DC@ha */
/* 8034984C  38 63 92 DC */	addi r3, r3, cbForStateError@l /* 0x803492DC@l */
/* 80349850  4B FF E7 C5 */	bl DVDLowStopMotor
/* 80349854  48 00 00 D8 */	b lbl_8034992C
lbl_80349858:
/* 80349858  38 00 00 00 */	li r0, 0
/* 8034985C  90 0D 92 2C */	stw r0, NumInternalRetry(r13)
/* 80349860  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 80349864  28 00 00 04 */	cmplwi r0, 4
/* 80349868  41 82 00 28 */	beq lbl_80349890
/* 8034986C  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 80349870  28 00 00 05 */	cmplwi r0, 5
/* 80349874  41 82 00 1C */	beq lbl_80349890
/* 80349878  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034987C  28 00 00 0D */	cmplwi r0, 0xd
/* 80349880  41 82 00 10 */	beq lbl_80349890
/* 80349884  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 80349888  28 00 00 0F */	cmplwi r0, 0xf
/* 8034988C  40 82 00 0C */	bne lbl_80349898
lbl_80349890:
/* 80349890  38 00 00 01 */	li r0, 1
/* 80349894  90 0D 92 30 */	stw r0, ResetRequired(r13)
lbl_80349898:
/* 80349898  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034989C  28 00 00 00 */	cmplwi r0, 0
/* 803498A0  41 82 00 70 */	beq lbl_80349910
/* 803498A4  38 00 00 02 */	li r0, 2
/* 803498A8  83 ED 91 F8 */	lwz r31, executing(r13)
/* 803498AC  3C 60 80 45 */	lis r3, DummyCommandBlock@ha /* 0x8044C940@ha */
/* 803498B0  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
/* 803498B4  38 03 C9 40 */	addi r0, r3, DummyCommandBlock@l /* 0x8044C940@l */
/* 803498B8  38 60 00 00 */	li r3, 0
/* 803498BC  90 0D 91 F8 */	stw r0, executing(r13)
/* 803498C0  38 00 00 0A */	li r0, 0xa
/* 803498C4  90 6D 92 18 */	stw r3, Canceling(r13)
/* 803498C8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803498CC  81 9F 00 28 */	lwz r12, 0x28(r31)
/* 803498D0  28 0C 00 00 */	cmplwi r12, 0
/* 803498D4  41 82 00 14 */	beq lbl_803498E8
/* 803498D8  7D 88 03 A6 */	mtlr r12
/* 803498DC  38 9F 00 00 */	addi r4, r31, 0
/* 803498E0  38 60 FF FD */	li r3, -3
/* 803498E4  4E 80 00 21 */	blrl 
lbl_803498E8:
/* 803498E8  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 803498EC  28 0C 00 00 */	cmplwi r12, 0
/* 803498F0  41 82 00 14 */	beq lbl_80349904
/* 803498F4  7D 88 03 A6 */	mtlr r12
/* 803498F8  38 9F 00 00 */	addi r4, r31, 0
/* 803498FC  38 60 00 00 */	li r3, 0
/* 80349900  4E 80 00 21 */	blrl 
lbl_80349904:
/* 80349904  48 00 07 A9 */	bl stateReady
/* 80349908  38 00 00 01 */	li r0, 1
/* 8034990C  48 00 00 08 */	b lbl_80349914
lbl_80349910:
/* 80349910  38 00 00 00 */	li r0, 0
lbl_80349914:
/* 80349914  2C 00 00 00 */	cmpwi r0, 0
/* 80349918  40 82 00 14 */	bne lbl_8034992C
/* 8034991C  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349920  38 00 00 0B */	li r0, 0xb
/* 80349924  90 03 00 0C */	stw r0, 0xc(r3)
/* 80349928  48 00 06 71 */	bl stateMotorStopped
lbl_8034992C:
/* 8034992C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80349930  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80349934  38 21 00 18 */	addi r1, r1, 0x18
/* 80349938  7C 08 03 A6 */	mtlr r0
/* 8034993C  4E 80 00 20 */	blr 
