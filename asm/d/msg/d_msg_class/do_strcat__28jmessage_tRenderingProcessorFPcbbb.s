lbl_8022EF00:
/* 8022EF00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8022EF04  7C 08 02 A6 */	mflr r0
/* 8022EF08  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022EF0C  39 61 00 50 */	addi r11, r1, 0x50
/* 8022EF10  48 13 32 C1 */	bl _savegpr_26
/* 8022EF14  7C 7C 1B 78 */	mr r28, r3
/* 8022EF18  7C 9D 23 78 */	mr r29, r4
/* 8022EF1C  7C BA 2B 78 */	mr r26, r5
/* 8022EF20  7C DE 33 78 */	mr r30, r6
/* 8022EF24  7C FB 3B 78 */	mr r27, r7
/* 8022EF28  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022EF2C  7F E3 FB 78 */	mr r3, r31
/* 8022EF30  4B FF A9 3D */	bl isCharSend__19jmessage_tReferenceFv
/* 8022EF34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022EF38  40 82 00 0C */	bne lbl_8022EF44
/* 8022EF3C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8022EF40  40 82 01 F0 */	bne lbl_8022F130
lbl_8022EF44:
/* 8022EF44  7F A3 EB 78 */	mr r3, r29
/* 8022EF48  48 13 9C 9D */	bl strlen
/* 8022EF4C  80 1C 01 1C */	lwz r0, 0x11c(r28)
/* 8022EF50  7C 00 1A 14 */	add r0, r0, r3
/* 8022EF54  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8022EF58  88 7C 01 4E */	lbz r3, 0x14e(r28)
/* 8022EF5C  28 03 00 00 */	cmplwi r3, 0
/* 8022EF60  41 82 00 2C */	beq lbl_8022EF8C
/* 8022EF64  80 1C 01 1C */	lwz r0, 0x11c(r28)
/* 8022EF68  2C 00 00 32 */	cmpwi r0, 0x32
/* 8022EF6C  40 80 01 C4 */	bge lbl_8022F130
/* 8022EF70  38 03 FF FF */	addi r0, r3, -1
/* 8022EF74  1C 60 00 32 */	mulli r3, r0, 0x32
/* 8022EF78  38 63 10 1C */	addi r3, r3, 0x101c
/* 8022EF7C  7C 7F 1A 14 */	add r3, r31, r3
/* 8022EF80  7F A4 EB 78 */	mr r4, r29
/* 8022EF84  48 13 9B 39 */	bl strcat
/* 8022EF88  48 00 01 A8 */	b lbl_8022F130
lbl_8022EF8C:
/* 8022EF8C  80 1C 01 1C */	lwz r0, 0x11c(r28)
/* 8022EF90  2C 00 02 00 */	cmpwi r0, 0x200
/* 8022EF94  40 80 01 9C */	bge lbl_8022F130
/* 8022EF98  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8022EF9C  41 82 01 60 */	beq lbl_8022F0FC
/* 8022EFA0  A8 7C 01 46 */	lha r3, 0x146(r28)
/* 8022EFA4  38 03 00 01 */	addi r0, r3, 1
/* 8022EFA8  B0 1C 01 46 */	sth r0, 0x146(r28)
/* 8022EFAC  88 1F 12 76 */	lbz r0, 0x1276(r31)
/* 8022EFB0  28 00 00 00 */	cmplwi r0, 0
/* 8022EFB4  41 82 00 10 */	beq lbl_8022EFC4
/* 8022EFB8  A8 1C 01 46 */	lha r0, 0x146(r28)
/* 8022EFBC  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 8022EFC0  48 00 01 50 */	b lbl_8022F110
lbl_8022EFC4:
/* 8022EFC4  A8 7C 01 46 */	lha r3, 0x146(r28)
/* 8022EFC8  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 8022EFCC  7C 03 00 00 */	cmpw r3, r0
/* 8022EFD0  41 81 00 18 */	bgt lbl_8022EFE8
/* 8022EFD4  40 82 01 3C */	bne lbl_8022F110
/* 8022EFD8  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 8022EFDC  C0 02 B0 8C */	lfs f0, lit_5491(r2)
/* 8022EFE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022EFE4  40 80 01 2C */	bge lbl_8022F110
lbl_8022EFE8:
/* 8022EFE8  7C 03 00 00 */	cmpw r3, r0
/* 8022EFEC  40 81 00 14 */	ble lbl_8022F000
/* 8022EFF0  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022EFF4  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 8022EFF8  A8 1C 01 46 */	lha r0, 0x146(r28)
/* 8022EFFC  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
lbl_8022F000:
/* 8022F000  C0 5F 04 64 */	lfs f2, 0x464(r31)
/* 8022F004  C0 22 B0 8C */	lfs f1, lit_5491(r2)
/* 8022F008  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8022F00C  40 80 01 04 */	bge lbl_8022F110
/* 8022F010  C0 1F 04 60 */	lfs f0, 0x460(r31)
/* 8022F014  EC 02 00 2A */	fadds f0, f2, f0
/* 8022F018  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 8022F01C  C0 1F 04 64 */	lfs f0, 0x464(r31)
/* 8022F020  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022F024  40 81 00 08 */	ble lbl_8022F02C
/* 8022F028  D0 3F 04 64 */	stfs f1, 0x464(r31)
lbl_8022F02C:
/* 8022F02C  A0 9C 01 48 */	lhz r4, 0x148(r28)
/* 8022F030  28 04 00 00 */	cmplwi r4, 0
/* 8022F034  41 82 00 18 */	beq lbl_8022F04C
/* 8022F038  38 7F 0A 1C */	addi r3, r31, 0xa1c
/* 8022F03C  38 00 00 00 */	li r0, 0
/* 8022F040  7C 03 21 AE */	stbx r0, r3, r4
/* 8022F044  38 9C 01 84 */	addi r4, r28, 0x184
/* 8022F048  48 13 9A 75 */	bl strcat
lbl_8022F04C:
/* 8022F04C  A0 9C 01 4A */	lhz r4, 0x14a(r28)
/* 8022F050  28 04 00 00 */	cmplwi r4, 0
/* 8022F054  41 82 00 18 */	beq lbl_8022F06C
/* 8022F058  38 7F 0C 1C */	addi r3, r31, 0xc1c
/* 8022F05C  38 00 00 00 */	li r0, 0
/* 8022F060  7C 03 21 AE */	stbx r0, r3, r4
/* 8022F064  38 9C 01 84 */	addi r4, r28, 0x184
/* 8022F068  48 13 9A 55 */	bl strcat
lbl_8022F06C:
/* 8022F06C  C0 1F 04 64 */	lfs f0, 0x464(r31)
/* 8022F070  FC 00 00 1E */	fctiwz f0, f0
/* 8022F074  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8022F078  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 8022F07C  38 61 00 08 */	addi r3, r1, 8
/* 8022F080  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022F084  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022F088  38 84 00 18 */	addi r4, r4, 0x18
/* 8022F08C  80 BC 01 20 */	lwz r5, 0x120(r28)
/* 8022F090  50 C5 06 3E */	rlwimi r5, r6, 0, 0x18, 0x1f
/* 8022F094  80 1C 01 24 */	lwz r0, 0x124(r28)
/* 8022F098  50 06 00 2E */	rlwimi r6, r0, 0, 0, 0x17
/* 8022F09C  4C C6 31 82 */	crclr 6
/* 8022F0A0  48 13 74 3D */	bl sprintf
/* 8022F0A4  38 61 00 08 */	addi r3, r1, 8
/* 8022F0A8  48 13 9B 3D */	bl strlen
/* 8022F0AC  80 1C 01 1C */	lwz r0, 0x11c(r28)
/* 8022F0B0  7C 00 1A 14 */	add r0, r0, r3
/* 8022F0B4  2C 00 02 00 */	cmpwi r0, 0x200
/* 8022F0B8  40 80 00 58 */	bge lbl_8022F110
/* 8022F0BC  38 7F 0A 1C */	addi r3, r31, 0xa1c
/* 8022F0C0  48 13 9B 25 */	bl strlen
/* 8022F0C4  B0 7C 01 48 */	sth r3, 0x148(r28)
/* 8022F0C8  38 7F 0C 1C */	addi r3, r31, 0xc1c
/* 8022F0CC  48 13 9B 19 */	bl strlen
/* 8022F0D0  B0 7C 01 4A */	sth r3, 0x14a(r28)
/* 8022F0D4  38 7C 01 84 */	addi r3, r28, 0x184
/* 8022F0D8  7F A4 EB 78 */	mr r4, r29
/* 8022F0DC  48 13 9A 51 */	bl strcpy
/* 8022F0E0  38 7F 0A 1C */	addi r3, r31, 0xa1c
/* 8022F0E4  38 81 00 08 */	addi r4, r1, 8
/* 8022F0E8  48 13 99 D5 */	bl strcat
/* 8022F0EC  38 7F 0C 1C */	addi r3, r31, 0xc1c
/* 8022F0F0  38 81 00 08 */	addi r4, r1, 8
/* 8022F0F4  48 13 99 C9 */	bl strcat
/* 8022F0F8  48 00 00 18 */	b lbl_8022F110
lbl_8022F0FC:
/* 8022F0FC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8022F100  41 82 00 10 */	beq lbl_8022F110
/* 8022F104  38 00 00 00 */	li r0, 0
/* 8022F108  B0 1C 01 48 */	sth r0, 0x148(r28)
/* 8022F10C  B0 1C 01 4A */	sth r0, 0x14a(r28)
lbl_8022F110:
/* 8022F110  38 7F 0A 1C */	addi r3, r31, 0xa1c
/* 8022F114  7F A4 EB 78 */	mr r4, r29
/* 8022F118  48 13 99 A5 */	bl strcat
/* 8022F11C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8022F120  41 82 00 10 */	beq lbl_8022F130
/* 8022F124  38 7F 0C 1C */	addi r3, r31, 0xc1c
/* 8022F128  7F A4 EB 78 */	mr r4, r29
/* 8022F12C  48 13 99 91 */	bl strcat
lbl_8022F130:
/* 8022F130  39 61 00 50 */	addi r11, r1, 0x50
/* 8022F134  48 13 30 E9 */	bl _restgpr_26
/* 8022F138  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022F13C  7C 08 03 A6 */	mtlr r0
/* 8022F140  38 21 00 50 */	addi r1, r1, 0x50
/* 8022F144  4E 80 00 20 */	blr 
