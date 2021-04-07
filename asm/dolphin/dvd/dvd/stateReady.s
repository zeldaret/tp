lbl_8034A0AC:
/* 8034A0AC  7C 08 02 A6 */	mflr r0
/* 8034A0B0  3C 60 80 45 */	lis r3, BB2@ha /* 0x8044C900@ha */
/* 8034A0B4  90 01 00 04 */	stw r0, 4(r1)
/* 8034A0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034A0BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034A0C0  3B E3 C9 00 */	addi r31, r3, BB2@l /* 0x8044C900@l */
/* 8034A0C4  48 00 18 F1 */	bl __DVDCheckWaitingQueue
/* 8034A0C8  2C 03 00 00 */	cmpwi r3, 0
/* 8034A0CC  40 82 00 10 */	bne lbl_8034A0DC
/* 8034A0D0  38 00 00 00 */	li r0, 0
/* 8034A0D4  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A0D8  48 00 02 A8 */	b lbl_8034A380
lbl_8034A0DC:
/* 8034A0DC  80 0D 92 04 */	lwz r0, PauseFlag(r13)
/* 8034A0E0  2C 00 00 00 */	cmpwi r0, 0
/* 8034A0E4  41 82 00 18 */	beq lbl_8034A0FC
/* 8034A0E8  38 60 00 01 */	li r3, 1
/* 8034A0EC  38 00 00 00 */	li r0, 0
/* 8034A0F0  90 6D 92 08 */	stw r3, PausingFlag(r13)
/* 8034A0F4  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A0F8  48 00 02 88 */	b lbl_8034A380
lbl_8034A0FC:
/* 8034A0FC  48 00 18 19 */	bl __DVDPopWaitingQueue
/* 8034A100  80 0D 92 10 */	lwz r0, FatalErrorFlag(r13)
/* 8034A104  90 6D 91 F8 */	stw r3, executing(r13)
/* 8034A108  2C 00 00 00 */	cmpwi r0, 0
/* 8034A10C  41 82 00 3C */	beq lbl_8034A148
/* 8034A110  80 6D 91 F8 */	lwz r3, executing(r13)
/* 8034A114  38 80 FF FF */	li r4, -1
/* 8034A118  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034A11C  90 83 00 0C */	stw r4, 0xc(r3)
/* 8034A120  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A124  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A128  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034A12C  28 0C 00 00 */	cmplwi r12, 0
/* 8034A130  41 82 00 10 */	beq lbl_8034A140
/* 8034A134  7D 88 03 A6 */	mtlr r12
/* 8034A138  38 60 FF FF */	li r3, -1
/* 8034A13C  4E 80 00 21 */	blrl 
lbl_8034A140:
/* 8034A140  4B FF FF 6D */	bl stateReady
/* 8034A144  48 00 02 3C */	b lbl_8034A380
lbl_8034A148:
/* 8034A148  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A14C  80 04 00 08 */	lwz r0, 8(r4)
/* 8034A150  90 0D 92 14 */	stw r0, CurrCommand(r13)
/* 8034A154  80 0D 92 20 */	lwz r0, ResumeFromHere(r13)
/* 8034A158  28 00 00 00 */	cmplwi r0, 0
/* 8034A15C  41 82 01 5C */	beq lbl_8034A2B8
/* 8034A160  80 0D 92 20 */	lwz r0, ResumeFromHere(r13)
/* 8034A164  2C 00 00 04 */	cmpwi r0, 4
/* 8034A168  41 82 00 64 */	beq lbl_8034A1CC
/* 8034A16C  40 80 00 1C */	bge lbl_8034A188
/* 8034A170  2C 00 00 02 */	cmpwi r0, 2
/* 8034A174  41 82 00 28 */	beq lbl_8034A19C
/* 8034A178  40 80 00 3C */	bge lbl_8034A1B4
/* 8034A17C  2C 00 00 01 */	cmpwi r0, 1
/* 8034A180  40 80 00 64 */	bge lbl_8034A1E4
/* 8034A184  48 00 01 28 */	b lbl_8034A2AC
lbl_8034A188:
/* 8034A188  2C 00 00 08 */	cmpwi r0, 8
/* 8034A18C  40 80 01 20 */	bge lbl_8034A2AC
/* 8034A190  2C 00 00 06 */	cmpwi r0, 6
/* 8034A194  40 80 00 50 */	bge lbl_8034A1E4
/* 8034A198  48 00 01 00 */	b lbl_8034A298
lbl_8034A19C:
/* 8034A19C  38 00 00 0B */	li r0, 0xb
/* 8034A1A0  3C 60 80 35 */	lis r3, cbForStateMotorStopped@ha /* 0x80349FC0@ha */
/* 8034A1A4  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034A1A8  38 63 9F C0 */	addi r3, r3, cbForStateMotorStopped@l /* 0x80349FC0@l */
/* 8034A1AC  4B FF DD 99 */	bl DVDLowWaitCoverClose
/* 8034A1B0  48 00 00 FC */	b lbl_8034A2AC
lbl_8034A1B4:
/* 8034A1B4  38 00 00 04 */	li r0, 4
/* 8034A1B8  3C 60 80 35 */	lis r3, cbForStateMotorStopped@ha /* 0x80349FC0@ha */
/* 8034A1BC  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034A1C0  38 63 9F C0 */	addi r3, r3, cbForStateMotorStopped@l /* 0x80349FC0@l */
/* 8034A1C4  4B FF DD 81 */	bl DVDLowWaitCoverClose
/* 8034A1C8  48 00 00 E4 */	b lbl_8034A2AC
lbl_8034A1CC:
/* 8034A1CC  38 00 00 05 */	li r0, 5
/* 8034A1D0  3C 60 80 35 */	lis r3, cbForStateMotorStopped@ha /* 0x80349FC0@ha */
/* 8034A1D4  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034A1D8  38 63 9F C0 */	addi r3, r3, cbForStateMotorStopped@l /* 0x80349FC0@l */
/* 8034A1DC  4B FF DD 69 */	bl DVDLowWaitCoverClose
/* 8034A1E0  48 00 00 CC */	b lbl_8034A2AC
lbl_8034A1E4:
/* 8034A1E4  38 00 00 03 */	li r0, 3
/* 8034A1E8  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034A1EC  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034A1F0  2C 00 00 0D */	cmpwi r0, 0xd
/* 8034A1F4  41 82 00 28 */	beq lbl_8034A21C
/* 8034A1F8  40 80 00 18 */	bge lbl_8034A210
/* 8034A1FC  2C 00 00 06 */	cmpwi r0, 6
/* 8034A200  40 80 00 4C */	bge lbl_8034A24C
/* 8034A204  2C 00 00 04 */	cmpwi r0, 4
/* 8034A208  40 80 00 14 */	bge lbl_8034A21C
/* 8034A20C  48 00 00 40 */	b lbl_8034A24C
lbl_8034A210:
/* 8034A210  2C 00 00 0F */	cmpwi r0, 0xf
/* 8034A214  41 82 00 08 */	beq lbl_8034A21C
/* 8034A218  48 00 00 34 */	b lbl_8034A24C
lbl_8034A21C:
/* 8034A21C  48 00 16 59 */	bl __DVDClearWaitingQueue
/* 8034A220  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A224  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034A228  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A22C  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034A230  28 0C 00 00 */	cmplwi r12, 0
/* 8034A234  41 82 00 10 */	beq lbl_8034A244
/* 8034A238  7D 88 03 A6 */	mtlr r12
/* 8034A23C  38 60 FF FC */	li r3, -4
/* 8034A240  4E 80 00 21 */	blrl 
lbl_8034A244:
/* 8034A244  4B FF FE 69 */	bl stateReady
/* 8034A248  48 00 00 64 */	b lbl_8034A2AC
lbl_8034A24C:
/* 8034A24C  38 00 00 00 */	li r0, 0
/* 8034A250  90 0D 92 38 */	stw r0, MotorState(r13)
/* 8034A254  48 00 0E E5 */	bl DVDReset
/* 8034A258  38 7F 00 70 */	addi r3, r31, 0x70
/* 8034A25C  4B FF 06 9D */	bl OSCreateAlarm
/* 8034A260  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 8034A264  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 8034A268  3C 80 10 62 */	lis r4, 0x1062 /* 0x10624DD3@ha */
/* 8034A26C  3C 60 80 35 */	lis r3, AlarmHandler@ha /* 0x80349DEC@ha */
/* 8034A270  54 00 F0 BE */	srwi r0, r0, 2
/* 8034A274  38 84 4D D3 */	addi r4, r4, 0x4DD3 /* 0x10624DD3@l */
/* 8034A278  7C 04 00 16 */	mulhwu r0, r4, r0
/* 8034A27C  54 00 D1 BE */	srwi r0, r0, 6
/* 8034A280  1C C0 04 7E */	mulli r6, r0, 0x47e
/* 8034A284  38 E3 9D EC */	addi r7, r3, AlarmHandler@l /* 0x80349DEC@l */
/* 8034A288  38 7F 00 70 */	addi r3, r31, 0x70
/* 8034A28C  38 A0 00 00 */	li r5, 0
/* 8034A290  4B FF 08 C9 */	bl OSSetAlarm
/* 8034A294  48 00 00 18 */	b lbl_8034A2AC
lbl_8034A298:
/* 8034A298  80 6D 92 24 */	lwz r3, CancelLastError(r13)
/* 8034A29C  48 00 18 ED */	bl __DVDStoreErrorCode
/* 8034A2A0  3C 60 80 35 */	lis r3, cbForStateError@ha /* 0x803492DC@ha */
/* 8034A2A4  38 63 92 DC */	addi r3, r3, cbForStateError@l /* 0x803492DC@l */
/* 8034A2A8  4B FF DD 6D */	bl DVDLowStopMotor
lbl_8034A2AC:
/* 8034A2AC  38 00 00 00 */	li r0, 0
/* 8034A2B0  90 0D 92 20 */	stw r0, ResumeFromHere(r13)
/* 8034A2B4  48 00 00 CC */	b lbl_8034A380
lbl_8034A2B8:
/* 8034A2B8  80 0D 92 38 */	lwz r0, MotorState(r13)
/* 8034A2BC  28 00 00 00 */	cmplwi r0, 0
/* 8034A2C0  40 82 00 18 */	bne lbl_8034A2D8
/* 8034A2C4  38 00 00 01 */	li r0, 1
/* 8034A2C8  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034A2CC  80 6D 91 F8 */	lwz r3, executing(r13)
/* 8034A2D0  48 00 00 C5 */	bl stateBusy
/* 8034A2D4  48 00 00 AC */	b lbl_8034A380
lbl_8034A2D8:
/* 8034A2D8  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034A2DC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8034A2E0  41 82 00 28 */	beq lbl_8034A308
/* 8034A2E4  40 80 00 18 */	bge lbl_8034A2FC
/* 8034A2E8  2C 00 00 06 */	cmpwi r0, 6
/* 8034A2EC  40 80 00 4C */	bge lbl_8034A338
/* 8034A2F0  2C 00 00 04 */	cmpwi r0, 4
/* 8034A2F4  40 80 00 14 */	bge lbl_8034A308
/* 8034A2F8  48 00 00 40 */	b lbl_8034A338
lbl_8034A2FC:
/* 8034A2FC  2C 00 00 0F */	cmpwi r0, 0xf
/* 8034A300  41 82 00 08 */	beq lbl_8034A308
/* 8034A304  48 00 00 34 */	b lbl_8034A338
lbl_8034A308:
/* 8034A308  48 00 15 6D */	bl __DVDClearWaitingQueue
/* 8034A30C  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A310  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034A314  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A318  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034A31C  28 0C 00 00 */	cmplwi r12, 0
/* 8034A320  41 82 00 10 */	beq lbl_8034A330
/* 8034A324  7D 88 03 A6 */	mtlr r12
/* 8034A328  38 60 FF FC */	li r3, -4
/* 8034A32C  4E 80 00 21 */	blrl 
lbl_8034A330:
/* 8034A330  4B FF FD 7D */	bl stateReady
/* 8034A334  48 00 00 4C */	b lbl_8034A380
lbl_8034A338:
/* 8034A338  38 00 00 00 */	li r0, 0
/* 8034A33C  90 0D 92 38 */	stw r0, MotorState(r13)
/* 8034A340  48 00 0D F9 */	bl DVDReset
/* 8034A344  38 7F 00 70 */	addi r3, r31, 0x70
/* 8034A348  4B FF 05 B1 */	bl OSCreateAlarm
/* 8034A34C  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 8034A350  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 8034A354  3C 80 10 62 */	lis r4, 0x1062 /* 0x10624DD3@ha */
/* 8034A358  3C 60 80 35 */	lis r3, AlarmHandler@ha /* 0x80349DEC@ha */
/* 8034A35C  54 00 F0 BE */	srwi r0, r0, 2
/* 8034A360  38 84 4D D3 */	addi r4, r4, 0x4DD3 /* 0x10624DD3@l */
/* 8034A364  7C 04 00 16 */	mulhwu r0, r4, r0
/* 8034A368  54 00 D1 BE */	srwi r0, r0, 6
/* 8034A36C  1C C0 04 7E */	mulli r6, r0, 0x47e
/* 8034A370  38 E3 9D EC */	addi r7, r3, AlarmHandler@l /* 0x80349DEC@l */
/* 8034A374  38 7F 00 70 */	addi r3, r31, 0x70
/* 8034A378  38 A0 00 00 */	li r5, 0
/* 8034A37C  4B FF 07 DD */	bl OSSetAlarm
lbl_8034A380:
/* 8034A380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034A384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034A388  38 21 00 10 */	addi r1, r1, 0x10
/* 8034A38C  7C 08 03 A6 */	mtlr r0
/* 8034A390  4E 80 00 20 */	blr 
