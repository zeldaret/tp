lbl_80349498:
/* 80349498  7C 08 02 A6 */	mflr r0
/* 8034949C  28 03 00 10 */	cmplwi r3, 0x10
/* 803494A0  90 01 00 04 */	stw r0, 4(r1)
/* 803494A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803494A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803494AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803494B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803494B4  93 81 00 10 */	stw r28, 0x10(r1)
/* 803494B8  40 82 00 20 */	bne lbl_803494D8
/* 803494BC  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 803494C0  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 803494C4  48 00 26 C5 */	bl __DVDStoreErrorCode
/* 803494C8  48 00 1C 71 */	bl DVDReset
/* 803494CC  38 60 00 00 */	li r3, 0
/* 803494D0  4B FF FE 0D */	bl cbForStateError
/* 803494D4  48 00 02 08 */	b lbl_803496DC
lbl_803494D8:
/* 803494D8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 803494DC  41 82 00 20 */	beq lbl_803494FC
/* 803494E0  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 803494E4  38 63 45 67 */	addi r3, r3, 0x4567 /* 0x01234567@l */
/* 803494E8  48 00 26 A1 */	bl __DVDStoreErrorCode
/* 803494EC  3C 60 80 35 */	lis r3, cbForStateError@ha /* 0x803492DC@ha */
/* 803494F0  38 63 92 DC */	addi r3, r3, cbForStateError@l /* 0x803492DC@l */
/* 803494F4  4B FF EB 21 */	bl DVDLowStopMotor
/* 803494F8  48 00 01 E4 */	b lbl_803496DC
lbl_803494FC:
/* 803494FC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006020@ha */
/* 80349500  83 A3 60 20 */	lwz r29, 0x6020(r3)  /* 0xCC006020@l */
/* 80349504  38 7D 00 00 */	addi r3, r29, 0
/* 80349508  57 BC 00 0E */	rlwinm r28, r29, 0, 0, 7
/* 8034950C  4B FF FE D9 */	bl CategorizeError
/* 80349510  3B E3 00 00 */	addi r31, r3, 0
/* 80349514  28 1F 00 01 */	cmplwi r31, 1
/* 80349518  40 82 00 1C */	bne lbl_80349534
/* 8034951C  7F A3 EB 78 */	mr r3, r29
/* 80349520  48 00 26 69 */	bl __DVDStoreErrorCode
/* 80349524  3C 60 80 35 */	lis r3, cbForStateError@ha /* 0x803492DC@ha */
/* 80349528  38 63 92 DC */	addi r3, r3, cbForStateError@l /* 0x803492DC@l */
/* 8034952C  4B FF EA E9 */	bl DVDLowStopMotor
/* 80349530  48 00 01 AC */	b lbl_803496DC
lbl_80349534:
/* 80349534  38 1F FF FE */	addi r0, r31, -2
/* 80349538  28 00 00 01 */	cmplwi r0, 1
/* 8034953C  41 81 00 0C */	bgt lbl_80349548
/* 80349540  38 80 00 00 */	li r4, 0
/* 80349544  48 00 00 44 */	b lbl_80349588
lbl_80349548:
/* 80349548  3C 1C FF 00 */	addis r0, r28, 0xff00
/* 8034954C  28 00 00 00 */	cmplwi r0, 0
/* 80349550  40 82 00 0C */	bne lbl_8034955C
/* 80349554  38 80 00 04 */	li r4, 4
/* 80349558  48 00 00 30 */	b lbl_80349588
lbl_8034955C:
/* 8034955C  3C 1C FE 00 */	addis r0, r28, 0xfe00
/* 80349560  28 00 00 00 */	cmplwi r0, 0
/* 80349564  40 82 00 0C */	bne lbl_80349570
/* 80349568  38 80 00 06 */	li r4, 6
/* 8034956C  48 00 00 1C */	b lbl_80349588
lbl_80349570:
/* 80349570  3C 1C FD 00 */	addis r0, r28, 0xfd00
/* 80349574  28 00 00 00 */	cmplwi r0, 0
/* 80349578  40 82 00 0C */	bne lbl_80349584
/* 8034957C  38 80 00 03 */	li r4, 3
/* 80349580  48 00 00 08 */	b lbl_80349588
lbl_80349584:
/* 80349584  38 80 00 05 */	li r4, 5
lbl_80349588:
/* 80349588  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034958C  28 00 00 00 */	cmplwi r0, 0
/* 80349590  41 82 00 6C */	beq lbl_803495FC
/* 80349594  3C 60 80 45 */	lis r3, DummyCommandBlock@ha /* 0x8044C940@ha */
/* 80349598  90 8D 92 20 */	stw r4, ResumeFromHere(r13)
/* 8034959C  38 00 00 00 */	li r0, 0
/* 803495A0  83 CD 91 F8 */	lwz r30, executing(r13)
/* 803495A4  38 63 C9 40 */	addi r3, r3, DummyCommandBlock@l /* 0x8044C940@l */
/* 803495A8  90 0D 92 18 */	stw r0, Canceling(r13)
/* 803495AC  38 00 00 0A */	li r0, 0xa
/* 803495B0  90 6D 91 F8 */	stw r3, executing(r13)
/* 803495B4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 803495B8  81 9E 00 28 */	lwz r12, 0x28(r30)
/* 803495BC  28 0C 00 00 */	cmplwi r12, 0
/* 803495C0  41 82 00 14 */	beq lbl_803495D4
/* 803495C4  7D 88 03 A6 */	mtlr r12
/* 803495C8  38 9E 00 00 */	addi r4, r30, 0
/* 803495CC  38 60 FF FD */	li r3, -3
/* 803495D0  4E 80 00 21 */	blrl 
lbl_803495D4:
/* 803495D4  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 803495D8  28 0C 00 00 */	cmplwi r12, 0
/* 803495DC  41 82 00 14 */	beq lbl_803495F0
/* 803495E0  7D 88 03 A6 */	mtlr r12
/* 803495E4  38 9E 00 00 */	addi r4, r30, 0
/* 803495E8  38 60 00 00 */	li r3, 0
/* 803495EC  4E 80 00 21 */	blrl 
lbl_803495F0:
/* 803495F0  48 00 0A BD */	bl stateReady
/* 803495F4  38 00 00 01 */	li r0, 1
/* 803495F8  48 00 00 08 */	b lbl_80349600
lbl_803495FC:
/* 803495FC  38 00 00 00 */	li r0, 0
lbl_80349600:
/* 80349600  2C 00 00 00 */	cmpwi r0, 0
/* 80349604  40 82 00 D8 */	bne lbl_803496DC
/* 80349608  28 1F 00 02 */	cmplwi r31, 2
/* 8034960C  40 82 00 14 */	bne lbl_80349620
/* 80349610  7F A3 EB 78 */	mr r3, r29
/* 80349614  48 00 25 75 */	bl __DVDStoreErrorCode
/* 80349618  48 00 01 C1 */	bl stateGoToRetry
/* 8034961C  48 00 00 C0 */	b lbl_803496DC
lbl_80349620:
/* 80349620  28 1F 00 03 */	cmplwi r31, 3
/* 80349624  40 82 00 40 */	bne lbl_80349664
/* 80349628  57 A3 02 3E */	clrlwi r3, r29, 8
/* 8034962C  3C 03 FF FD */	addis r0, r3, 0xfffd
/* 80349630  28 00 11 00 */	cmplwi r0, 0x1100
/* 80349634  40 82 00 1C */	bne lbl_80349650
/* 80349638  80 AD 91 F8 */	lwz r5, executing(r13)
/* 8034963C  3C 60 80 35 */	lis r3, cbForUnrecoveredError@ha /* 0x803496FC@ha */
/* 80349640  38 83 96 FC */	addi r4, r3, cbForUnrecoveredError@l /* 0x803496FC@l */
/* 80349644  80 65 00 10 */	lwz r3, 0x10(r5)
/* 80349648  4B FF E8 69 */	bl DVDLowSeek
/* 8034964C  48 00 00 90 */	b lbl_803496DC
lbl_80349650:
/* 80349650  81 8D 92 40 */	lwz r12, LastState(r13)
/* 80349654  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349658  7D 88 03 A6 */	mtlr r12
/* 8034965C  4E 80 00 21 */	blrl 
/* 80349660  48 00 00 7C */	b lbl_803496DC
lbl_80349664:
/* 80349664  3C 1C FF 00 */	addis r0, r28, 0xff00
/* 80349668  28 00 00 00 */	cmplwi r0, 0
/* 8034966C  40 82 00 18 */	bne lbl_80349684
/* 80349670  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349674  38 00 00 05 */	li r0, 5
/* 80349678  90 03 00 0C */	stw r0, 0xc(r3)
/* 8034967C  48 00 09 1D */	bl stateMotorStopped
/* 80349680  48 00 00 5C */	b lbl_803496DC
lbl_80349684:
/* 80349684  3C 1C FE 00 */	addis r0, r28, 0xfe00
/* 80349688  28 00 00 00 */	cmplwi r0, 0
/* 8034968C  40 82 00 18 */	bne lbl_803496A4
/* 80349690  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349694  38 00 00 03 */	li r0, 3
/* 80349698  90 03 00 0C */	stw r0, 0xc(r3)
/* 8034969C  48 00 07 95 */	bl stateCoverClosed
/* 803496A0  48 00 00 3C */	b lbl_803496DC
lbl_803496A4:
/* 803496A4  3C 1C FD 00 */	addis r0, r28, 0xfd00
/* 803496A8  28 00 00 00 */	cmplwi r0, 0
/* 803496AC  40 82 00 18 */	bne lbl_803496C4
/* 803496B0  80 6D 91 F8 */	lwz r3, executing(r13)
/* 803496B4  38 00 00 04 */	li r0, 4
/* 803496B8  90 03 00 0C */	stw r0, 0xc(r3)
/* 803496BC  48 00 08 DD */	bl stateMotorStopped
/* 803496C0  48 00 00 1C */	b lbl_803496DC
lbl_803496C4:
/* 803496C4  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 803496C8  38 63 45 67 */	addi r3, r3, 0x4567 /* 0x01234567@l */
/* 803496CC  48 00 24 BD */	bl __DVDStoreErrorCode
/* 803496D0  3C 60 80 35 */	lis r3, cbForStateError@ha /* 0x803492DC@ha */
/* 803496D4  38 63 92 DC */	addi r3, r3, cbForStateError@l /* 0x803492DC@l */
/* 803496D8  4B FF E9 3D */	bl DVDLowStopMotor
lbl_803496DC:
/* 803496DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803496E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803496E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803496E8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803496EC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803496F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803496F4  7C 08 03 A6 */	mtlr r0
/* 803496F8  4E 80 00 20 */	blr 
