lbl_8034A6D4:
/* 8034A6D4  7C 08 02 A6 */	mflr r0
/* 8034A6D8  28 03 00 10 */	cmplwi r3, 0x10
/* 8034A6DC  90 01 00 04 */	stw r0, 4(r1)
/* 8034A6E0  3C 80 80 45 */	lis r4, BB2@ha
/* 8034A6E4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034A6E8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034A6EC  3B E4 C9 00 */	addi r31, r4, BB2@l
/* 8034A6F0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034A6F4  40 82 00 20 */	bne lbl_8034A714
/* 8034A6F8  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 8034A6FC  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 8034A700  48 00 14 89 */	bl __DVDStoreErrorCode
/* 8034A704  48 00 0A 35 */	bl DVDReset
/* 8034A708  38 60 00 00 */	li r3, 0
/* 8034A70C  4B FF EB D1 */	bl cbForStateError
/* 8034A710  48 00 06 04 */	b lbl_8034AD14
lbl_8034A714:
/* 8034A714  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034A718  28 00 00 03 */	cmplwi r0, 3
/* 8034A71C  41 82 00 10 */	beq lbl_8034A72C
/* 8034A720  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034A724  28 00 00 0F */	cmplwi r0, 0xf
/* 8034A728  40 82 00 E0 */	bne lbl_8034A808
lbl_8034A72C:
/* 8034A72C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8034A730  41 82 00 20 */	beq lbl_8034A750
/* 8034A734  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 8034A738  38 63 45 67 */	addi r3, r3, 0x4567 /* 0x01234567@l */
/* 8034A73C  48 00 14 4D */	bl __DVDStoreErrorCode
/* 8034A740  3C 60 80 35 */	lis r3, cbForStateError@ha
/* 8034A744  38 63 92 DC */	addi r3, r3, cbForStateError@l
/* 8034A748  4B FF D8 CD */	bl DVDLowStopMotor
/* 8034A74C  48 00 05 C8 */	b lbl_8034AD14
lbl_8034A750:
/* 8034A750  38 00 00 00 */	li r0, 0
/* 8034A754  90 0D 92 2C */	stw r0, NumInternalRetry(r13)
/* 8034A758  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034A75C  28 00 00 0F */	cmplwi r0, 0xf
/* 8034A760  40 82 00 0C */	bne lbl_8034A76C
/* 8034A764  38 00 00 01 */	li r0, 1
/* 8034A768  90 0D 92 30 */	stw r0, ResetRequired(r13)
lbl_8034A76C:
/* 8034A76C  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034A770  28 00 00 00 */	cmplwi r0, 0
/* 8034A774  41 82 00 6C */	beq lbl_8034A7E0
/* 8034A778  38 00 00 07 */	li r0, 7
/* 8034A77C  83 CD 91 F8 */	lwz r30, executing(r13)
/* 8034A780  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
/* 8034A784  38 7F 00 40 */	addi r3, r31, 0x40
/* 8034A788  38 00 00 00 */	li r0, 0
/* 8034A78C  90 0D 92 18 */	stw r0, Canceling(r13)
/* 8034A790  38 00 00 0A */	li r0, 0xa
/* 8034A794  90 6D 91 F8 */	stw r3, executing(r13)
/* 8034A798  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8034A79C  81 9E 00 28 */	lwz r12, 0x28(r30)
/* 8034A7A0  28 0C 00 00 */	cmplwi r12, 0
/* 8034A7A4  41 82 00 14 */	beq lbl_8034A7B8
/* 8034A7A8  7D 88 03 A6 */	mtlr r12
/* 8034A7AC  38 9E 00 00 */	addi r4, r30, 0
/* 8034A7B0  38 60 FF FD */	li r3, -3
/* 8034A7B4  4E 80 00 21 */	blrl 
lbl_8034A7B8:
/* 8034A7B8  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 8034A7BC  28 0C 00 00 */	cmplwi r12, 0
/* 8034A7C0  41 82 00 14 */	beq lbl_8034A7D4
/* 8034A7C4  7D 88 03 A6 */	mtlr r12
/* 8034A7C8  38 9E 00 00 */	addi r4, r30, 0
/* 8034A7CC  38 60 00 00 */	li r3, 0
/* 8034A7D0  4E 80 00 21 */	blrl 
lbl_8034A7D4:
/* 8034A7D4  4B FF F8 D9 */	bl stateReady
/* 8034A7D8  38 00 00 01 */	li r0, 1
/* 8034A7DC  48 00 00 08 */	b lbl_8034A7E4
lbl_8034A7E0:
/* 8034A7E0  38 00 00 00 */	li r0, 0
lbl_8034A7E4:
/* 8034A7E4  2C 00 00 00 */	cmpwi r0, 0
/* 8034A7E8  40 82 05 2C */	bne lbl_8034AD14
/* 8034A7EC  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A7F0  38 00 00 07 */	li r0, 7
/* 8034A7F4  3C 60 80 35 */	lis r3, cbForStateMotorStopped@ha
/* 8034A7F8  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034A7FC  38 63 9F C0 */	addi r3, r3, cbForStateMotorStopped@l
/* 8034A800  4B FF D7 45 */	bl DVDLowWaitCoverClose
/* 8034A804  48 00 05 10 */	b lbl_8034AD14
lbl_8034A808:
/* 8034A808  80 8D 92 14 */	lwz r4, CurrCommand(r13)
/* 8034A80C  28 04 00 01 */	cmplwi r4, 1
/* 8034A810  41 82 00 18 */	beq lbl_8034A828
/* 8034A814  38 04 FF FC */	addi r0, r4, -4
/* 8034A818  28 00 00 01 */	cmplwi r0, 1
/* 8034A81C  40 81 00 0C */	ble lbl_8034A828
/* 8034A820  28 04 00 0E */	cmplwi r4, 0xe
/* 8034A824  40 82 00 0C */	bne lbl_8034A830
lbl_8034A828:
/* 8034A828  38 00 00 01 */	li r0, 1
/* 8034A82C  48 00 00 1C */	b lbl_8034A848
lbl_8034A830:
/* 8034A830  80 0D 84 7C */	lwz r0, DmaCommand(r13)
/* 8034A834  7C 04 00 40 */	cmplw r4, r0
/* 8034A838  40 82 00 0C */	bne lbl_8034A844
/* 8034A83C  38 00 00 01 */	li r0, 1
/* 8034A840  48 00 00 08 */	b lbl_8034A848
lbl_8034A844:
/* 8034A844  38 00 00 00 */	li r0, 0
lbl_8034A848:
/* 8034A848  2C 00 00 00 */	cmpwi r0, 0
/* 8034A84C  41 82 00 28 */	beq lbl_8034A874
/* 8034A850  80 CD 91 F8 */	lwz r6, executing(r13)
/* 8034A854  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006000@ha */
/* 8034A858  38 84 60 00 */	addi r4, r4, 0x6000 /* 0xCC006000@l */
/* 8034A85C  80 84 00 18 */	lwz r4, 0x18(r4)
/* 8034A860  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8034A864  80 A6 00 20 */	lwz r5, 0x20(r6)
/* 8034A868  7C 04 00 50 */	subf r0, r4, r0
/* 8034A86C  7C 05 02 14 */	add r0, r5, r0
/* 8034A870  90 06 00 20 */	stw r0, 0x20(r6)
lbl_8034A874:
/* 8034A874  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8034A878  41 82 00 60 */	beq lbl_8034A8D8
/* 8034A87C  83 CD 91 F8 */	lwz r30, executing(r13)
/* 8034A880  38 7F 00 40 */	addi r3, r31, 0x40
/* 8034A884  38 00 00 00 */	li r0, 0
/* 8034A888  90 0D 92 18 */	stw r0, Canceling(r13)
/* 8034A88C  38 00 00 0A */	li r0, 0xa
/* 8034A890  90 6D 91 F8 */	stw r3, executing(r13)
/* 8034A894  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8034A898  81 9E 00 28 */	lwz r12, 0x28(r30)
/* 8034A89C  28 0C 00 00 */	cmplwi r12, 0
/* 8034A8A0  41 82 00 14 */	beq lbl_8034A8B4
/* 8034A8A4  7D 88 03 A6 */	mtlr r12
/* 8034A8A8  38 9E 00 00 */	addi r4, r30, 0
/* 8034A8AC  38 60 FF FD */	li r3, -3
/* 8034A8B0  4E 80 00 21 */	blrl 
lbl_8034A8B4:
/* 8034A8B4  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 8034A8B8  28 0C 00 00 */	cmplwi r12, 0
/* 8034A8BC  41 82 00 14 */	beq lbl_8034A8D0
/* 8034A8C0  7D 88 03 A6 */	mtlr r12
/* 8034A8C4  38 9E 00 00 */	addi r4, r30, 0
/* 8034A8C8  38 60 00 00 */	li r3, 0
/* 8034A8CC  4E 80 00 21 */	blrl 
lbl_8034A8D0:
/* 8034A8D0  4B FF F7 DD */	bl stateReady
/* 8034A8D4  48 00 04 40 */	b lbl_8034AD14
lbl_8034A8D8:
/* 8034A8D8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8034A8DC  41 82 03 14 */	beq lbl_8034ABF0
/* 8034A8E0  38 A0 00 00 */	li r5, 0
/* 8034A8E4  90 AD 92 2C */	stw r5, NumInternalRetry(r13)
/* 8034A8E8  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034A8EC  28 00 00 10 */	cmplwi r0, 0x10
/* 8034A8F0  40 82 00 3C */	bne lbl_8034A92C
/* 8034A8F4  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A8F8  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034A8FC  38 60 00 01 */	li r3, 1
/* 8034A900  90 6D 92 38 */	stw r3, MotorState(r13)
/* 8034A904  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A908  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8034A90C  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034A910  28 0C 00 00 */	cmplwi r12, 0
/* 8034A914  41 82 00 10 */	beq lbl_8034A924
/* 8034A918  7D 88 03 A6 */	mtlr r12
/* 8034A91C  38 60 00 00 */	li r3, 0
/* 8034A920  4E 80 00 21 */	blrl 
lbl_8034A924:
/* 8034A924  4B FF F7 89 */	bl stateReady
/* 8034A928  48 00 03 EC */	b lbl_8034AD14
lbl_8034A92C:
/* 8034A92C  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034A930  28 00 00 00 */	cmplwi r0, 0
/* 8034A934  41 82 00 60 */	beq lbl_8034A994
/* 8034A938  90 AD 92 20 */	stw r5, ResumeFromHere(r13)
/* 8034A93C  38 7F 00 40 */	addi r3, r31, 0x40
/* 8034A940  83 CD 91 F8 */	lwz r30, executing(r13)
/* 8034A944  38 00 00 0A */	li r0, 0xa
/* 8034A948  90 AD 92 18 */	stw r5, Canceling(r13)
/* 8034A94C  90 6D 91 F8 */	stw r3, executing(r13)
/* 8034A950  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8034A954  81 9E 00 28 */	lwz r12, 0x28(r30)
/* 8034A958  28 0C 00 00 */	cmplwi r12, 0
/* 8034A95C  41 82 00 14 */	beq lbl_8034A970
/* 8034A960  7D 88 03 A6 */	mtlr r12
/* 8034A964  38 9E 00 00 */	addi r4, r30, 0
/* 8034A968  38 60 FF FD */	li r3, -3
/* 8034A96C  4E 80 00 21 */	blrl 
lbl_8034A970:
/* 8034A970  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 8034A974  28 0C 00 00 */	cmplwi r12, 0
/* 8034A978  41 82 00 14 */	beq lbl_8034A98C
/* 8034A97C  7D 88 03 A6 */	mtlr r12
/* 8034A980  38 9E 00 00 */	addi r4, r30, 0
/* 8034A984  38 60 00 00 */	li r3, 0
/* 8034A988  4E 80 00 21 */	blrl 
lbl_8034A98C:
/* 8034A98C  4B FF F7 21 */	bl stateReady
/* 8034A990  38 A0 00 01 */	li r5, 1
lbl_8034A994:
/* 8034A994  2C 05 00 00 */	cmpwi r5, 0
/* 8034A998  40 82 03 7C */	bne lbl_8034AD14
/* 8034A99C  80 6D 92 14 */	lwz r3, CurrCommand(r13)
/* 8034A9A0  28 03 00 01 */	cmplwi r3, 1
/* 8034A9A4  41 82 00 18 */	beq lbl_8034A9BC
/* 8034A9A8  38 03 FF FC */	addi r0, r3, -4
/* 8034A9AC  28 00 00 01 */	cmplwi r0, 1
/* 8034A9B0  40 81 00 0C */	ble lbl_8034A9BC
/* 8034A9B4  28 03 00 0E */	cmplwi r3, 0xe
/* 8034A9B8  40 82 00 0C */	bne lbl_8034A9C4
lbl_8034A9BC:
/* 8034A9BC  38 00 00 01 */	li r0, 1
/* 8034A9C0  48 00 00 1C */	b lbl_8034A9DC
lbl_8034A9C4:
/* 8034A9C4  80 0D 84 7C */	lwz r0, DmaCommand(r13)
/* 8034A9C8  7C 03 00 40 */	cmplw r3, r0
/* 8034A9CC  40 82 00 0C */	bne lbl_8034A9D8
/* 8034A9D0  38 00 00 01 */	li r0, 1
/* 8034A9D4  48 00 00 08 */	b lbl_8034A9DC
lbl_8034A9D8:
/* 8034A9D8  38 00 00 00 */	li r0, 0
lbl_8034A9DC:
/* 8034A9DC  2C 00 00 00 */	cmpwi r0, 0
/* 8034A9E0  41 82 00 54 */	beq lbl_8034AA34
/* 8034A9E4  80 6D 91 F8 */	lwz r3, executing(r13)
/* 8034A9E8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8034A9EC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8034A9F0  7C 04 00 40 */	cmplw r4, r0
/* 8034A9F4  41 82 00 0C */	beq lbl_8034AA00
/* 8034A9F8  4B FF F9 9D */	bl stateBusy
/* 8034A9FC  48 00 03 18 */	b lbl_8034AD14
lbl_8034AA00:
/* 8034AA00  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034AA04  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034AA08  38 00 00 00 */	li r0, 0
/* 8034AA0C  38 83 00 00 */	addi r4, r3, 0
/* 8034AA10  90 03 00 0C */	stw r0, 0xc(r3)
/* 8034AA14  81 83 00 28 */	lwz r12, 0x28(r3)
/* 8034AA18  28 0C 00 00 */	cmplwi r12, 0
/* 8034AA1C  41 82 00 10 */	beq lbl_8034AA2C
/* 8034AA20  80 64 00 20 */	lwz r3, 0x20(r4)
/* 8034AA24  7D 88 03 A6 */	mtlr r12
/* 8034AA28  4E 80 00 21 */	blrl 
lbl_8034AA2C:
/* 8034AA2C  4B FF F6 81 */	bl stateReady
/* 8034AA30  48 00 02 E4 */	b lbl_8034AD14
lbl_8034AA34:
/* 8034AA34  80 8D 92 14 */	lwz r4, CurrCommand(r13)
/* 8034AA38  38 04 FF F7 */	addi r0, r4, -9
/* 8034AA3C  28 00 00 03 */	cmplwi r0, 3
/* 8034AA40  41 81 00 0C */	bgt lbl_8034AA4C
/* 8034AA44  38 00 00 01 */	li r0, 1
/* 8034AA48  48 00 00 48 */	b lbl_8034AA90
lbl_8034AA4C:
/* 8034AA4C  3C 60 80 3D */	lis r3, ImmCommand@ha
/* 8034AA50  84 03 15 EC */	lwzu r0, ImmCommand@l(r3)
/* 8034AA54  7C 04 00 40 */	cmplw r4, r0
/* 8034AA58  40 82 00 0C */	bne lbl_8034AA64
/* 8034AA5C  38 00 00 01 */	li r0, 1
/* 8034AA60  48 00 00 30 */	b lbl_8034AA90
lbl_8034AA64:
/* 8034AA64  84 03 00 04 */	lwzu r0, 4(r3)
/* 8034AA68  7C 04 00 40 */	cmplw r4, r0
/* 8034AA6C  40 82 00 0C */	bne lbl_8034AA78
/* 8034AA70  38 00 00 01 */	li r0, 1
/* 8034AA74  48 00 00 1C */	b lbl_8034AA90
lbl_8034AA78:
/* 8034AA78  80 03 00 04 */	lwz r0, 4(r3)
/* 8034AA7C  7C 04 00 40 */	cmplw r4, r0
/* 8034AA80  40 82 00 0C */	bne lbl_8034AA8C
/* 8034AA84  38 00 00 01 */	li r0, 1
/* 8034AA88  48 00 00 08 */	b lbl_8034AA90
lbl_8034AA8C:
/* 8034AA8C  38 00 00 00 */	li r0, 0
lbl_8034AA90:
/* 8034AA90  2C 00 00 00 */	cmpwi r0, 0
/* 8034AA94  41 82 00 68 */	beq lbl_8034AAFC
/* 8034AA98  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034AA9C  28 00 00 0B */	cmplwi r0, 0xb
/* 8034AAA0  41 82 00 10 */	beq lbl_8034AAB0
/* 8034AAA4  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034AAA8  28 00 00 0A */	cmplwi r0, 0xa
/* 8034AAAC  40 82 00 14 */	bne lbl_8034AAC0
lbl_8034AAB0:
/* 8034AAB0  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006020@ha */
/* 8034AAB4  80 03 60 20 */	lwz r0, 0x6020(r3)
/* 8034AAB8  54 03 10 3A */	slwi r3, r0, 2
/* 8034AABC  48 00 00 10 */	b lbl_8034AACC
lbl_8034AAC0:
/* 8034AAC0  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 8034AAC4  38 63 60 00 */	addi r3, r3, 0x6000 /* 0xCC006000@l */
/* 8034AAC8  80 63 00 20 */	lwz r3, 0x20(r3)
lbl_8034AACC:
/* 8034AACC  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034AAD0  38 BF 00 40 */	addi r5, r31, 0x40
/* 8034AAD4  38 00 00 00 */	li r0, 0
/* 8034AAD8  90 AD 91 F8 */	stw r5, executing(r13)
/* 8034AADC  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034AAE0  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034AAE4  28 0C 00 00 */	cmplwi r12, 0
/* 8034AAE8  41 82 00 0C */	beq lbl_8034AAF4
/* 8034AAEC  7D 88 03 A6 */	mtlr r12
/* 8034AAF0  4E 80 00 21 */	blrl 
lbl_8034AAF4:
/* 8034AAF4  4B FF F5 B9 */	bl stateReady
/* 8034AAF8  48 00 02 1C */	b lbl_8034AD14
lbl_8034AAFC:
/* 8034AAFC  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034AB00  28 00 00 06 */	cmplwi r0, 6
/* 8034AB04  40 82 00 B8 */	bne lbl_8034ABBC
/* 8034AB08  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034AB0C  38 A4 00 1C */	addi r5, r4, 0x1c
/* 8034AB10  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8034AB14  28 00 00 00 */	cmplwi r0, 0
/* 8034AB18  40 82 00 74 */	bne lbl_8034AB8C
/* 8034AB1C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006020@ha */
/* 8034AB20  80 03 60 20 */	lwz r0, 0x6020(r3)
/* 8034AB24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8034AB28  41 82 00 34 */	beq lbl_8034AB5C
/* 8034AB2C  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034AB30  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034AB34  38 00 00 09 */	li r0, 9
/* 8034AB38  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034AB3C  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034AB40  28 0C 00 00 */	cmplwi r12, 0
/* 8034AB44  41 82 00 10 */	beq lbl_8034AB54
/* 8034AB48  7D 88 03 A6 */	mtlr r12
/* 8034AB4C  38 60 FF FE */	li r3, -2
/* 8034AB50  4E 80 00 21 */	blrl 
lbl_8034AB54:
/* 8034AB54  4B FF F5 59 */	bl stateReady
/* 8034AB58  48 00 01 BC */	b lbl_8034AD14
lbl_8034AB5C:
/* 8034AB5C  38 00 00 00 */	li r0, 0
/* 8034AB60  90 0D 92 0C */	stw r0, AutoFinishing(r13)
/* 8034AB64  38 00 00 01 */	li r0, 1
/* 8034AB68  3C 60 80 35 */	lis r3, cbForStateBusy@ha
/* 8034AB6C  90 05 00 00 */	stw r0, 0(r5)
/* 8034AB70  38 C3 A6 D4 */	addi r6, r3, cbForStateBusy@l
/* 8034AB74  38 60 00 00 */	li r3, 0
/* 8034AB78  80 AD 91 F8 */	lwz r5, executing(r13)
/* 8034AB7C  80 85 00 14 */	lwz r4, 0x14(r5)
/* 8034AB80  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8034AB84  4B FF D6 45 */	bl DVDLowAudioStream
/* 8034AB88  48 00 01 8C */	b lbl_8034AD14
lbl_8034AB8C:
/* 8034AB8C  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034AB90  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034AB94  38 00 00 00 */	li r0, 0
/* 8034AB98  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034AB9C  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034ABA0  28 0C 00 00 */	cmplwi r12, 0
/* 8034ABA4  41 82 00 10 */	beq lbl_8034ABB4
/* 8034ABA8  7D 88 03 A6 */	mtlr r12
/* 8034ABAC  38 60 00 00 */	li r3, 0
/* 8034ABB0  4E 80 00 21 */	blrl 
lbl_8034ABB4:
/* 8034ABB4  4B FF F4 F9 */	bl stateReady
/* 8034ABB8  48 00 01 5C */	b lbl_8034AD14
lbl_8034ABBC:
/* 8034ABBC  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034ABC0  38 7F 00 40 */	addi r3, r31, 0x40
/* 8034ABC4  38 00 00 00 */	li r0, 0
/* 8034ABC8  90 6D 91 F8 */	stw r3, executing(r13)
/* 8034ABCC  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034ABD0  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034ABD4  28 0C 00 00 */	cmplwi r12, 0
/* 8034ABD8  41 82 00 10 */	beq lbl_8034ABE8
/* 8034ABDC  7D 88 03 A6 */	mtlr r12
/* 8034ABE0  38 60 00 00 */	li r3, 0
/* 8034ABE4  4E 80 00 21 */	blrl 
lbl_8034ABE8:
/* 8034ABE8  4B FF F4 C5 */	bl stateReady
/* 8034ABEC  48 00 01 28 */	b lbl_8034AD14
lbl_8034ABF0:
/* 8034ABF0  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034ABF4  28 00 00 0E */	cmplwi r0, 0xe
/* 8034ABF8  40 82 00 20 */	bne lbl_8034AC18
/* 8034ABFC  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 8034AC00  38 63 45 67 */	addi r3, r3, 0x4567 /* 0x01234567@l */
/* 8034AC04  48 00 0F 85 */	bl __DVDStoreErrorCode
/* 8034AC08  3C 60 80 35 */	lis r3, cbForStateError@ha
/* 8034AC0C  38 63 92 DC */	addi r3, r3, cbForStateError@l
/* 8034AC10  4B FF D4 05 */	bl DVDLowStopMotor
/* 8034AC14  48 00 01 00 */	b lbl_8034AD14
lbl_8034AC18:
/* 8034AC18  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034AC1C  28 00 00 01 */	cmplwi r0, 1
/* 8034AC20  41 82 00 28 */	beq lbl_8034AC48
/* 8034AC24  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034AC28  28 00 00 04 */	cmplwi r0, 4
/* 8034AC2C  41 82 00 1C */	beq lbl_8034AC48
/* 8034AC30  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034AC34  28 00 00 05 */	cmplwi r0, 5
/* 8034AC38  41 82 00 10 */	beq lbl_8034AC48
/* 8034AC3C  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034AC40  28 00 00 0E */	cmplwi r0, 0xe
/* 8034AC44  40 82 00 C4 */	bne lbl_8034AD08
lbl_8034AC48:
/* 8034AC48  83 CD 91 F8 */	lwz r30, executing(r13)
/* 8034AC4C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8034AC50  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8034AC54  7C 03 00 40 */	cmplw r3, r0
/* 8034AC58  40 82 00 B0 */	bne lbl_8034AD08
/* 8034AC5C  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034AC60  28 00 00 00 */	cmplwi r0, 0
/* 8034AC64  41 82 00 64 */	beq lbl_8034ACC8
/* 8034AC68  38 80 00 00 */	li r4, 0
/* 8034AC6C  90 8D 92 20 */	stw r4, ResumeFromHere(r13)
/* 8034AC70  38 7F 00 40 */	addi r3, r31, 0x40
/* 8034AC74  38 00 00 0A */	li r0, 0xa
/* 8034AC78  90 8D 92 18 */	stw r4, Canceling(r13)
/* 8034AC7C  90 6D 91 F8 */	stw r3, executing(r13)
/* 8034AC80  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8034AC84  81 9E 00 28 */	lwz r12, 0x28(r30)
/* 8034AC88  28 0C 00 00 */	cmplwi r12, 0
/* 8034AC8C  41 82 00 14 */	beq lbl_8034ACA0
/* 8034AC90  7D 88 03 A6 */	mtlr r12
/* 8034AC94  38 9E 00 00 */	addi r4, r30, 0
/* 8034AC98  38 60 FF FD */	li r3, -3
/* 8034AC9C  4E 80 00 21 */	blrl 
lbl_8034ACA0:
/* 8034ACA0  81 8D 92 1C */	lwz r12, CancelCallback(r13)
/* 8034ACA4  28 0C 00 00 */	cmplwi r12, 0
/* 8034ACA8  41 82 00 14 */	beq lbl_8034ACBC
/* 8034ACAC  7D 88 03 A6 */	mtlr r12
/* 8034ACB0  38 9E 00 00 */	addi r4, r30, 0
/* 8034ACB4  38 60 00 00 */	li r3, 0
/* 8034ACB8  4E 80 00 21 */	blrl 
lbl_8034ACBC:
/* 8034ACBC  4B FF F3 F1 */	bl stateReady
/* 8034ACC0  38 00 00 01 */	li r0, 1
/* 8034ACC4  48 00 00 08 */	b lbl_8034ACCC
lbl_8034ACC8:
/* 8034ACC8  38 00 00 00 */	li r0, 0
lbl_8034ACCC:
/* 8034ACCC  2C 00 00 00 */	cmpwi r0, 0
/* 8034ACD0  40 82 00 44 */	bne lbl_8034AD14
/* 8034ACD4  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034ACD8  38 7F 00 40 */	addi r3, r31, 0x40
/* 8034ACDC  38 00 00 00 */	li r0, 0
/* 8034ACE0  90 6D 91 F8 */	stw r3, executing(r13)
/* 8034ACE4  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034ACE8  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034ACEC  28 0C 00 00 */	cmplwi r12, 0
/* 8034ACF0  41 82 00 10 */	beq lbl_8034AD00
/* 8034ACF4  80 64 00 20 */	lwz r3, 0x20(r4)
/* 8034ACF8  7D 88 03 A6 */	mtlr r12
/* 8034ACFC  4E 80 00 21 */	blrl 
lbl_8034AD00:
/* 8034AD00  4B FF F3 AD */	bl stateReady
/* 8034AD04  48 00 00 10 */	b lbl_8034AD14
lbl_8034AD08:
/* 8034AD08  3C 60 80 35 */	lis r3, cbForStateGettingError@ha
/* 8034AD0C  38 63 94 98 */	addi r3, r3, cbForStateGettingError@l
/* 8034AD10  4B FF D3 91 */	bl DVDLowRequestError
lbl_8034AD14:
/* 8034AD14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034AD18  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034AD1C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034AD20  38 21 00 18 */	addi r1, r1, 0x18
/* 8034AD24  7C 08 03 A6 */	mtlr r0
/* 8034AD28  4E 80 00 20 */	blr 
