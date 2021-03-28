lbl_8033C798:
/* 8033C798  7C 08 02 A6 */	mflr r0
/* 8033C79C  3D 00 80 45 */	lis r8, __OSErrorTable@ha
/* 8033C7A0  90 01 00 04 */	stw r0, 4(r1)
/* 8033C7A4  3C E0 80 3D */	lis r7, lit_13@ha
/* 8033C7A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033C7AC  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 8033C7B0  3B 03 00 00 */	addi r24, r3, 0
/* 8033C7B4  3B 24 00 00 */	addi r25, r4, 0
/* 8033C7B8  3B 45 00 00 */	addi r26, r5, 0
/* 8033C7BC  3B 66 00 00 */	addi r27, r6, 0
/* 8033C7C0  3B C8 BA D0 */	addi r30, r8, __OSErrorTable@l
/* 8033C7C4  3B E7 F9 18 */	addi r31, r7, lit_13@l
/* 8033C7C8  48 00 5F 35 */	bl OSGetTime
/* 8033C7CC  80 B9 01 9C */	lwz r5, 0x19c(r25)
/* 8033C7D0  3B 84 00 00 */	addi r28, r4, 0
/* 8033C7D4  3B A3 00 00 */	addi r29, r3, 0
/* 8033C7D8  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 8033C7DC  40 82 00 18 */	bne lbl_8033C7F4
/* 8033C7E0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8033C7E4  4C C6 31 82 */	crclr 6
/* 8033C7E8  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 8033C7EC  4B CC A2 D1 */	bl OSReport
/* 8033C7F0  48 00 01 54 */	b lbl_8033C944
lbl_8033C7F4:
/* 8033C7F4  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8033C7F8  28 00 00 06 */	cmplwi r0, 6
/* 8033C7FC  40 82 00 D8 */	bne lbl_8033C8D4
/* 8033C800  54 A0 02 D7 */	rlwinm. r0, r5, 0, 0xb, 0xb
/* 8033C804  41 82 00 D0 */	beq lbl_8033C8D4
/* 8033C808  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8033C80C  28 00 00 00 */	cmplwi r0, 0
/* 8033C810  41 82 00 C4 */	beq lbl_8033C8D4
/* 8033C814  3B 00 00 10 */	li r24, 0x10
/* 8033C818  4B FF D4 A9 */	bl PPCMfmsr
/* 8033C81C  3A E3 00 00 */	addi r23, r3, 0
/* 8033C820  62 E3 20 00 */	ori r3, r23, 0x2000
/* 8033C824  4B FF D4 A5 */	bl PPCMtmsr
/* 8033C828  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000D8@ha */
/* 8033C82C  80 63 00 D8 */	lwz r3, 0x00D8(r3)
/* 8033C830  28 03 00 00 */	cmplwi r3, 0
/* 8033C834  41 82 00 08 */	beq lbl_8033C83C
/* 8033C838  4B FF F5 F9 */	bl OSSaveFPUContext
lbl_8033C83C:
/* 8033C83C  4B FF D5 09 */	bl PPCMffpscr
/* 8033C840  3C 80 60 06 */	lis r4, 0x6006 /* 0x6005F8FF@ha */
/* 8033C844  3A C4 F8 FF */	addi r22, r4, 0xF8FF /* 0x6005F8FF@l */
/* 8033C848  7C 63 B0 38 */	and r3, r3, r22
/* 8033C84C  4B FF D5 19 */	bl PPCMtfpscr
/* 8033C850  7E E3 BB 78 */	mr r3, r23
/* 8033C854  4B FF D4 75 */	bl PPCMtmsr
/* 8033C858  3E E0 80 00 */	lis r23, 0x8000 /* 0x800000D8@ha */
/* 8033C85C  80 17 00 D8 */	lwz r0, 0x00D8(r23)
/* 8033C860  7C 00 C8 40 */	cmplw r0, r25
/* 8033C864  40 82 00 54 */	bne lbl_8033C8B8
/* 8033C868  48 00 44 5D */	bl OSDisableScheduler
/* 8033C86C  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 8033C870  38 99 00 00 */	addi r4, r25, 0
/* 8033C874  38 BA 00 00 */	addi r5, r26, 0
/* 8033C878  4C C6 31 82 */	crclr 6
/* 8033C87C  7D 88 03 A6 */	mtlr r12
/* 8033C880  38 DB 00 00 */	addi r6, r27, 0
/* 8033C884  38 60 00 10 */	li r3, 0x10
/* 8033C888  4E 80 00 21 */	blrl 
/* 8033C88C  80 79 01 9C */	lwz r3, 0x19c(r25)
/* 8033C890  38 00 00 00 */	li r0, 0
/* 8033C894  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 8033C898  90 79 01 9C */	stw r3, 0x19c(r25)
/* 8033C89C  90 17 00 D8 */	stw r0, 0xd8(r23)
/* 8033C8A0  80 19 01 94 */	lwz r0, 0x194(r25)
/* 8033C8A4  7C 00 B0 38 */	and r0, r0, r22
/* 8033C8A8  90 19 01 94 */	stw r0, 0x194(r25)
/* 8033C8AC  48 00 44 59 */	bl OSEnableScheduler
/* 8033C8B0  48 00 49 71 */	bl __OSReschedule
/* 8033C8B4  48 00 00 18 */	b lbl_8033C8CC
lbl_8033C8B8:
/* 8033C8B8  80 79 01 9C */	lwz r3, 0x19c(r25)
/* 8033C8BC  38 00 00 00 */	li r0, 0
/* 8033C8C0  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 8033C8C4  90 79 01 9C */	stw r3, 0x19c(r25)
/* 8033C8C8  90 17 00 D8 */	stw r0, 0xd8(r23)
lbl_8033C8CC:
/* 8033C8CC  7F 23 CB 78 */	mr r3, r25
/* 8033C8D0  4B FF F6 51 */	bl OSLoadContext
lbl_8033C8D4:
/* 8033C8D4  57 17 06 3E */	clrlwi r23, r24, 0x18
/* 8033C8D8  57 00 15 BA */	rlwinm r0, r24, 2, 0x16, 0x1d
/* 8033C8DC  7E DE 02 14 */	add r22, r30, r0
/* 8033C8E0  80 16 00 00 */	lwz r0, 0(r22)
/* 8033C8E4  28 00 00 00 */	cmplwi r0, 0
/* 8033C8E8  41 82 00 38 */	beq lbl_8033C920
/* 8033C8EC  48 00 43 D9 */	bl OSDisableScheduler
/* 8033C8F0  81 96 00 00 */	lwz r12, 0(r22)
/* 8033C8F4  38 77 00 00 */	addi r3, r23, 0
/* 8033C8F8  38 99 00 00 */	addi r4, r25, 0
/* 8033C8FC  4C C6 31 82 */	crclr 6
/* 8033C900  7D 88 03 A6 */	mtlr r12
/* 8033C904  38 BA 00 00 */	addi r5, r26, 0
/* 8033C908  38 DB 00 00 */	addi r6, r27, 0
/* 8033C90C  4E 80 00 21 */	blrl 
/* 8033C910  48 00 43 F5 */	bl OSEnableScheduler
/* 8033C914  48 00 49 0D */	bl __OSReschedule
/* 8033C918  7F 23 CB 78 */	mr r3, r25
/* 8033C91C  4B FF F6 05 */	bl OSLoadContext
lbl_8033C920:
/* 8033C920  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8033C924  28 00 00 08 */	cmplwi r0, 8
/* 8033C928  40 82 00 0C */	bne lbl_8033C934
/* 8033C92C  7F 23 CB 78 */	mr r3, r25
/* 8033C930  4B FF F5 F1 */	bl OSLoadContext
lbl_8033C934:
/* 8033C934  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8033C938  4C C6 31 82 */	crclr 6
/* 8033C93C  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 8033C940  4B CC A1 7D */	bl OSReport
lbl_8033C944:
/* 8033C944  38 6D 84 24 */	la r3, lit_76(r13) /* 804509A4-_SDA_BASE_ */
/* 8033C948  4C C6 31 82 */	crclr 6
/* 8033C94C  4B CC A1 71 */	bl OSReport
/* 8033C950  7F 23 CB 78 */	mr r3, r25
/* 8033C954  4B FF F7 8D */	bl OSDumpContext
/* 8033C958  38 9A 00 00 */	addi r4, r26, 0
/* 8033C95C  4C C6 31 82 */	crclr 6
/* 8033C960  38 BB 00 00 */	addi r5, r27, 0
/* 8033C964  38 7F 00 94 */	addi r3, r31, 0x94
/* 8033C968  4B CC A1 55 */	bl OSReport
/* 8033C96C  38 DC 00 00 */	addi r6, r28, 0
/* 8033C970  4C C6 31 82 */	crclr 6
/* 8033C974  38 BD 00 00 */	addi r5, r29, 0
/* 8033C978  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 8033C97C  4B CC A1 41 */	bl OSReport
/* 8033C980  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8033C984  28 00 00 0F */	cmplwi r0, 0xf
/* 8033C988  41 81 00 C4 */	bgt lbl_8033CA4C
/* 8033C98C  3C 60 80 3D */	lis r3, lit_87@ha
/* 8033C990  38 63 FB F4 */	addi r3, r3, lit_87@l
/* 8033C994  54 00 10 3A */	slwi r0, r0, 2
/* 8033C998  7C 03 00 2E */	lwzx r0, r3, r0
/* 8033C99C  7C 09 03 A6 */	mtctr r0
/* 8033C9A0  4E 80 04 20 */	bctr 
/* 8033C9A4  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8033C9A8  38 BB 00 00 */	addi r5, r27, 0
/* 8033C9AC  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 8033C9B0  4C C6 31 82 */	crclr 6
/* 8033C9B4  4B CC A1 09 */	bl OSReport
/* 8033C9B8  48 00 00 94 */	b lbl_8033CA4C
/* 8033C9BC  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8033C9C0  38 7F 01 38 */	addi r3, r31, 0x138
/* 8033C9C4  4C C6 31 82 */	crclr 6
/* 8033C9C8  4B CC A0 F5 */	bl OSReport
/* 8033C9CC  48 00 00 80 */	b lbl_8033CA4C
/* 8033C9D0  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8033C9D4  38 BB 00 00 */	addi r5, r27, 0
/* 8033C9D8  38 7F 01 84 */	addi r3, r31, 0x184
/* 8033C9DC  4C C6 31 82 */	crclr 6
/* 8033C9E0  4B CC A0 DD */	bl OSReport
/* 8033C9E4  48 00 00 68 */	b lbl_8033CA4C
/* 8033C9E8  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8033C9EC  38 BB 00 00 */	addi r5, r27, 0
/* 8033C9F0  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 8033C9F4  4C C6 31 82 */	crclr 6
/* 8033C9F8  4B CC A0 C5 */	bl OSReport
/* 8033C9FC  48 00 00 50 */	b lbl_8033CA4C
/* 8033CA00  38 6D 84 24 */	la r3, lit_76(r13) /* 804509A4-_SDA_BASE_ */
/* 8033CA04  4C C6 31 82 */	crclr 6
/* 8033CA08  4B CC A0 B5 */	bl OSReport
/* 8033CA0C  3F 20 CC 00 */	lis r25, 0xCC00 /* 0xCC005000@ha */
/* 8033CA10  4C C6 31 82 */	crclr 6
/* 8033CA14  3B 19 50 00 */	addi r24, r25, 0x5000 /* 0xCC005000@l */
/* 8033CA18  A0 99 50 30 */	lhz r4, 0x5030(r25)
/* 8033CA1C  38 7F 02 48 */	addi r3, r31, 0x248
/* 8033CA20  A0 B9 50 32 */	lhz r5, 0x5032(r25)
/* 8033CA24  4B CC A0 99 */	bl OSReport
/* 8033CA28  A0 98 00 20 */	lhz r4, 0x20(r24)
/* 8033CA2C  38 7F 02 68 */	addi r3, r31, 0x268
/* 8033CA30  A0 B8 00 22 */	lhz r5, 0x22(r24)
/* 8033CA34  4C C6 31 82 */	crclr 6
/* 8033CA38  4B CC A0 85 */	bl OSReport
/* 8033CA3C  80 99 60 14 */	lwz r4, 0x6014(r25)
/* 8033CA40  4C C6 31 82 */	crclr 6
/* 8033CA44  38 7F 02 88 */	addi r3, r31, 0x288
/* 8033CA48  4B CC A0 75 */	bl OSReport
lbl_8033CA4C:
/* 8033CA4C  A8 8D 90 F8 */	lha r4, __OSLastInterrupt(r13)
/* 8033CA50  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 8033CA54  4C C6 31 82 */	crclr 6
/* 8033CA58  80 AD 90 F4 */	lwz r5, __OSLastInterruptSrr0(r13)
/* 8033CA5C  80 ED 91 00 */	lwz r7, __OSLastInterruptTime(r13)
/* 8033CA60  81 0D 91 04 */	lwz r8, data_80451684(r13)
/* 8033CA64  4B CC A0 59 */	bl OSReport
/* 8033CA68  4B FF D2 99 */	bl PPCHalt
/* 8033CA6C  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 8033CA70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033CA74  38 21 00 40 */	addi r1, r1, 0x40
/* 8033CA78  7C 08 03 A6 */	mtlr r0
/* 8033CA7C  4E 80 00 20 */	blr 
