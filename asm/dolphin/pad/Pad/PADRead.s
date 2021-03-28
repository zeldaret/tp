lbl_8034EEA0:
/* 8034EEA0  7C 08 02 A6 */	mflr r0
/* 8034EEA4  90 01 00 04 */	stw r0, 4(r1)
/* 8034EEA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034EEAC  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 8034EEB0  7C 77 1B 78 */	mr r23, r3
/* 8034EEB4  4B FE E8 41 */	bl OSDisableInterrupts
/* 8034EEB8  3B 20 00 00 */	li r25, 0
/* 8034EEBC  1C B9 00 0C */	mulli r5, r25, 0xc
/* 8034EEC0  3C 80 80 45 */	lis r4, Origin@ha
/* 8034EEC4  38 04 CB 80 */	addi r0, r4, Origin@l
/* 8034EEC8  7F 80 2A 14 */	add r28, r0, r5
/* 8034EECC  3C 80 80 35 */	lis r4, PADOriginUpdateCallback@ha
/* 8034EED0  3C A0 80 35 */	lis r5, PADReceiveCheckCallback@ha
/* 8034EED4  3B 43 00 00 */	addi r26, r3, 0
/* 8034EED8  3A C4 E5 1C */	addi r22, r4, PADOriginUpdateCallback@l
/* 8034EEDC  3B E5 E9 EC */	addi r31, r5, PADReceiveCheckCallback@l
/* 8034EEE0  3B 00 00 00 */	li r24, 0
/* 8034EEE4  3F C0 80 00 */	lis r30, 0x8000
lbl_8034EEE8:
/* 8034EEE8  80 0D 92 E0 */	lwz r0, PendingBits(r13)
/* 8034EEEC  7F DB CC 30 */	srw r27, r30, r25
/* 8034EEF0  7C 00 D8 39 */	and. r0, r0, r27
/* 8034EEF4  41 82 00 28 */	beq lbl_8034EF1C
/* 8034EEF8  38 60 00 00 */	li r3, 0
/* 8034EEFC  4B FF FC 31 */	bl PADReset
/* 8034EF00  38 00 FF FE */	li r0, -2
/* 8034EF04  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034EF08  38 77 00 00 */	addi r3, r23, 0
/* 8034EF0C  38 80 00 00 */	li r4, 0
/* 8034EF10  38 A0 00 0A */	li r5, 0xa
/* 8034EF14  4B CB 45 45 */	bl memset
/* 8034EF18  48 00 02 54 */	b lbl_8034F16C
lbl_8034EF1C:
/* 8034EF1C  80 0D 92 D0 */	lwz r0, ResettingBits(r13)
/* 8034EF20  7C 00 D8 39 */	and. r0, r0, r27
/* 8034EF24  40 82 00 10 */	bne lbl_8034EF34
/* 8034EF28  80 0D 84 A4 */	lwz r0, ResettingChan(r13)
/* 8034EF2C  7C 00 C8 00 */	cmpw r0, r25
/* 8034EF30  40 82 00 20 */	bne lbl_8034EF50
lbl_8034EF34:
/* 8034EF34  38 00 FF FE */	li r0, -2
/* 8034EF38  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034EF3C  38 77 00 00 */	addi r3, r23, 0
/* 8034EF40  38 80 00 00 */	li r4, 0
/* 8034EF44  38 A0 00 0A */	li r5, 0xa
/* 8034EF48  4B CB 45 11 */	bl memset
/* 8034EF4C  48 00 02 20 */	b lbl_8034F16C
lbl_8034EF50:
/* 8034EF50  80 0D 92 CC */	lwz r0, EnabledBits(r13)
/* 8034EF54  7C 00 D8 39 */	and. r0, r0, r27
/* 8034EF58  40 82 00 20 */	bne lbl_8034EF78
/* 8034EF5C  38 00 FF FF */	li r0, -1
/* 8034EF60  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034EF64  38 77 00 00 */	addi r3, r23, 0
/* 8034EF68  38 80 00 00 */	li r4, 0
/* 8034EF6C  38 A0 00 0A */	li r5, 0xa
/* 8034EF70  4B CB 44 E9 */	bl memset
/* 8034EF74  48 00 01 F8 */	b lbl_8034F16C
lbl_8034EF78:
/* 8034EF78  7F 23 CB 78 */	mr r3, r25
/* 8034EF7C  4B FF 5C 45 */	bl SIIsChanBusy
/* 8034EF80  2C 03 00 00 */	cmpwi r3, 0
/* 8034EF84  41 82 00 20 */	beq lbl_8034EFA4
/* 8034EF88  38 00 FF FD */	li r0, -3
/* 8034EF8C  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034EF90  38 77 00 00 */	addi r3, r23, 0
/* 8034EF94  38 80 00 00 */	li r4, 0
/* 8034EF98  38 A0 00 0A */	li r5, 0xa
/* 8034EF9C  4B CB 44 BD */	bl memset
/* 8034EFA0  48 00 01 CC */	b lbl_8034F16C
lbl_8034EFA4:
/* 8034EFA4  7F 23 CB 78 */	mr r3, r25
/* 8034EFA8  4B FF 67 AD */	bl SIGetStatus
/* 8034EFAC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8034EFB0  41 82 00 D8 */	beq lbl_8034F088
/* 8034EFB4  38 79 00 00 */	addi r3, r25, 0
/* 8034EFB8  38 81 00 10 */	addi r4, r1, 0x10
/* 8034EFBC  4B FF 6A 81 */	bl SIGetResponse
/* 8034EFC0  80 0D 92 D8 */	lwz r0, WaitingBits(r13)
/* 8034EFC4  7C 00 D8 39 */	and. r0, r0, r27
/* 8034EFC8  41 82 00 40 */	beq lbl_8034F008
/* 8034EFCC  38 00 00 00 */	li r0, 0
/* 8034EFD0  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034EFD4  38 77 00 00 */	addi r3, r23, 0
/* 8034EFD8  38 80 00 00 */	li r4, 0
/* 8034EFDC  38 A0 00 0A */	li r5, 0xa
/* 8034EFE0  4B CB 44 79 */	bl memset
/* 8034EFE4  80 6D 92 DC */	lwz r3, CheckingBits(r13)
/* 8034EFE8  7C 60 D8 39 */	and. r0, r3, r27
/* 8034EFEC  40 82 01 80 */	bne lbl_8034F16C
/* 8034EFF0  7C 60 DB 78 */	or r0, r3, r27
/* 8034EFF4  90 0D 92 DC */	stw r0, CheckingBits(r13)
/* 8034EFF8  38 79 00 00 */	addi r3, r25, 0
/* 8034EFFC  38 9F 00 00 */	addi r4, r31, 0
/* 8034F000  4B FF 71 55 */	bl SIGetTypeAsync
/* 8034F004  48 00 01 68 */	b lbl_8034F16C
lbl_8034F008:
/* 8034F008  4B FE E6 ED */	bl OSDisableInterrupts
/* 8034F00C  3B A3 00 00 */	addi r29, r3, 0
/* 8034F010  38 7B 00 00 */	addi r3, r27, 0
/* 8034F014  4B FF 68 E9 */	bl SIDisablePolling
/* 8034F018  80 0D 92 CC */	lwz r0, EnabledBits(r13)
/* 8034F01C  7F 69 D8 F8 */	nor r9, r27, r27
/* 8034F020  80 CD 92 D8 */	lwz r6, WaitingBits(r13)
/* 8034F024  7F 23 CB 78 */	mr r3, r25
/* 8034F028  80 AD 92 DC */	lwz r5, CheckingBits(r13)
/* 8034F02C  80 8D 92 E0 */	lwz r4, PendingBits(r13)
/* 8034F030  7C 08 48 38 */	and r8, r0, r9
/* 8034F034  80 0D 92 E4 */	lwz r0, BarrelBits(r13)
/* 8034F038  7C C7 48 38 */	and r7, r6, r9
/* 8034F03C  7C A6 48 38 */	and r6, r5, r9
/* 8034F040  7C 85 48 38 */	and r5, r4, r9
/* 8034F044  91 0D 92 CC */	stw r8, EnabledBits(r13)
/* 8034F048  7C 00 48 38 */	and r0, r0, r9
/* 8034F04C  90 ED 92 D8 */	stw r7, WaitingBits(r13)
/* 8034F050  38 80 00 00 */	li r4, 0
/* 8034F054  90 CD 92 DC */	stw r6, CheckingBits(r13)
/* 8034F058  90 AD 92 E0 */	stw r5, PendingBits(r13)
/* 8034F05C  90 0D 92 E4 */	stw r0, BarrelBits(r13)
/* 8034F060  4B FF 17 ED */	bl OSSetWirelessID
/* 8034F064  7F A3 EB 78 */	mr r3, r29
/* 8034F068  4B FE E6 B5 */	bl OSRestoreInterrupts
/* 8034F06C  38 00 FF FF */	li r0, -1
/* 8034F070  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034F074  38 77 00 00 */	addi r3, r23, 0
/* 8034F078  38 80 00 00 */	li r4, 0
/* 8034F07C  38 A0 00 0A */	li r5, 0xa
/* 8034F080  4B CB 43 D9 */	bl memset
/* 8034F084  48 00 00 E8 */	b lbl_8034F16C
lbl_8034F088:
/* 8034F088  7F 23 CB 78 */	mr r3, r25
/* 8034F08C  4B FF 6F 05 */	bl SIGetType
/* 8034F090  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 8034F094  40 82 00 08 */	bne lbl_8034F09C
/* 8034F098  7F 18 DB 78 */	or r24, r24, r27
lbl_8034F09C:
/* 8034F09C  38 79 00 00 */	addi r3, r25, 0
/* 8034F0A0  38 81 00 10 */	addi r4, r1, 0x10
/* 8034F0A4  4B FF 69 99 */	bl SIGetResponse
/* 8034F0A8  2C 03 00 00 */	cmpwi r3, 0
/* 8034F0AC  40 82 00 20 */	bne lbl_8034F0CC
/* 8034F0B0  38 00 FF FD */	li r0, -3
/* 8034F0B4  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034F0B8  38 77 00 00 */	addi r3, r23, 0
/* 8034F0BC  38 80 00 00 */	li r4, 0
/* 8034F0C0  38 A0 00 0A */	li r5, 0xa
/* 8034F0C4  4B CB 43 95 */	bl memset
/* 8034F0C8  48 00 00 A4 */	b lbl_8034F16C
lbl_8034F0CC:
/* 8034F0CC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8034F0D0  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8034F0D4  41 82 00 20 */	beq lbl_8034F0F4
/* 8034F0D8  38 00 FF FD */	li r0, -3
/* 8034F0DC  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034F0E0  38 77 00 00 */	addi r3, r23, 0
/* 8034F0E4  38 80 00 00 */	li r4, 0
/* 8034F0E8  38 A0 00 0A */	li r5, 0xa
/* 8034F0EC  4B CB 43 6D */	bl memset
/* 8034F0F0  48 00 00 7C */	b lbl_8034F16C
lbl_8034F0F4:
/* 8034F0F4  81 8D 84 B4 */	lwz r12, MakeStatus(r13)
/* 8034F0F8  38 79 00 00 */	addi r3, r25, 0
/* 8034F0FC  38 97 00 00 */	addi r4, r23, 0
/* 8034F100  7D 88 03 A6 */	mtlr r12
/* 8034F104  38 A1 00 10 */	addi r5, r1, 0x10
/* 8034F108  4E 80 00 21 */	blrl 
/* 8034F10C  A0 17 00 00 */	lhz r0, 0(r23)
/* 8034F110  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8034F114  41 82 00 44 */	beq lbl_8034F158
/* 8034F118  38 00 FF FD */	li r0, -3
/* 8034F11C  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034F120  38 77 00 00 */	addi r3, r23, 0
/* 8034F124  38 80 00 00 */	li r4, 0
/* 8034F128  38 A0 00 0A */	li r5, 0xa
/* 8034F12C  4B CB 43 2D */	bl memset
/* 8034F130  38 79 00 00 */	addi r3, r25, 0
/* 8034F134  38 DC 00 00 */	addi r6, r28, 0
/* 8034F138  39 16 00 00 */	addi r8, r22, 0
/* 8034F13C  38 8D 84 B8 */	la r4, CmdReadOrigin(r13) /* 80450A38-_SDA_BASE_ */
/* 8034F140  38 A0 00 01 */	li r5, 1
/* 8034F144  38 E0 00 0A */	li r7, 0xa
/* 8034F148  39 40 00 00 */	li r10, 0
/* 8034F14C  39 20 00 00 */	li r9, 0
/* 8034F150  4B FF 6A 3D */	bl SITransfer
/* 8034F154  48 00 00 18 */	b lbl_8034F16C
lbl_8034F158:
/* 8034F158  38 00 00 00 */	li r0, 0
/* 8034F15C  98 17 00 0A */	stb r0, 0xa(r23)
/* 8034F160  A0 17 00 00 */	lhz r0, 0(r23)
/* 8034F164  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8034F168  B0 17 00 00 */	sth r0, 0(r23)
lbl_8034F16C:
/* 8034F16C  3B 39 00 01 */	addi r25, r25, 1
/* 8034F170  2C 19 00 04 */	cmpwi r25, 4
/* 8034F174  3B 9C 00 0C */	addi r28, r28, 0xc
/* 8034F178  3A F7 00 0C */	addi r23, r23, 0xc
/* 8034F17C  41 80 FD 6C */	blt lbl_8034EEE8
/* 8034F180  7F 43 D3 78 */	mr r3, r26
/* 8034F184  4B FE E5 99 */	bl OSRestoreInterrupts
/* 8034F188  7F 03 C3 78 */	mr r3, r24
/* 8034F18C  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 8034F190  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034F194  38 21 00 40 */	addi r1, r1, 0x40
/* 8034F198  7C 08 03 A6 */	mtlr r0
/* 8034F19C  4E 80 00 20 */	blr 
