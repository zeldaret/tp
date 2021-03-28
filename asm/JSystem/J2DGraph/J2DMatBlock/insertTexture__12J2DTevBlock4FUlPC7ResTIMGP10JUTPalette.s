lbl_802EDE04:
/* 802EDE04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EDE08  7C 08 02 A6 */	mflr r0
/* 802EDE0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EDE10  39 61 00 30 */	addi r11, r1, 0x30
/* 802EDE14  48 07 43 B9 */	bl _savegpr_25
/* 802EDE18  7C 79 1B 78 */	mr r25, r3
/* 802EDE1C  7C 9A 23 78 */	mr r26, r4
/* 802EDE20  7C BB 2B 78 */	mr r27, r5
/* 802EDE24  7C DC 33 78 */	mr r28, r6
/* 802EDE28  28 1A 00 04 */	cmplwi r26, 4
/* 802EDE2C  40 80 00 0C */	bge lbl_802EDE38
/* 802EDE30  28 1B 00 00 */	cmplwi r27, 0
/* 802EDE34  40 82 00 0C */	bne lbl_802EDE40
lbl_802EDE38:
/* 802EDE38  38 60 00 00 */	li r3, 0
/* 802EDE3C  48 00 03 80 */	b lbl_802EE1BC
lbl_802EDE40:
/* 802EDE40  3B C0 00 00 */	li r30, 0
/* 802EDE44  48 00 00 28 */	b lbl_802EDE6C
lbl_802EDE48:
/* 802EDE48  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802EDE4C  38 03 00 8C */	addi r0, r3, 0x8c
/* 802EDE50  7C 79 00 2E */	lwzx r3, r25, r0
/* 802EDE54  28 03 00 00 */	cmplwi r3, 0
/* 802EDE58  41 82 00 20 */	beq lbl_802EDE78
/* 802EDE5C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EDE60  28 00 00 00 */	cmplwi r0, 0
/* 802EDE64  41 82 00 14 */	beq lbl_802EDE78
/* 802EDE68  3B DE 00 01 */	addi r30, r30, 1
lbl_802EDE6C:
/* 802EDE6C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802EDE70  28 00 00 04 */	cmplwi r0, 4
/* 802EDE74  41 80 FF D4 */	blt lbl_802EDE48
lbl_802EDE78:
/* 802EDE78  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802EDE7C  7C 00 D0 40 */	cmplw r0, r26
/* 802EDE80  40 80 00 0C */	bge lbl_802EDE8C
/* 802EDE84  38 60 00 00 */	li r3, 0
/* 802EDE88  48 00 03 34 */	b lbl_802EE1BC
lbl_802EDE8C:
/* 802EDE8C  28 00 00 04 */	cmplwi r0, 4
/* 802EDE90  40 82 00 0C */	bne lbl_802EDE9C
/* 802EDE94  38 60 00 00 */	li r3, 0
/* 802EDE98  48 00 03 24 */	b lbl_802EE1BC
lbl_802EDE9C:
/* 802EDE9C  3B A0 00 00 */	li r29, 0
/* 802EDEA0  88 1B 00 08 */	lbz r0, 8(r27)
/* 802EDEA4  28 00 00 00 */	cmplwi r0, 0
/* 802EDEA8  41 82 00 B8 */	beq lbl_802EDF60
/* 802EDEAC  28 1C 00 00 */	cmplwi r28, 0
/* 802EDEB0  40 82 00 B0 */	bne lbl_802EDF60
/* 802EDEB4  38 C0 00 00 */	li r6, 0
/* 802EDEB8  38 60 00 00 */	li r3, 0
/* 802EDEBC  38 00 00 03 */	li r0, 3
/* 802EDEC0  7C 09 03 A6 */	mtctr r0
lbl_802EDEC4:
/* 802EDEC4  38 03 00 8C */	addi r0, r3, 0x8c
/* 802EDEC8  7C B9 00 2E */	lwzx r5, r25, r0
/* 802EDECC  28 05 00 00 */	cmplwi r5, 0
/* 802EDED0  41 82 00 50 */	beq lbl_802EDF20
/* 802EDED4  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802EDED8  28 04 00 00 */	cmplwi r4, 0
/* 802EDEDC  41 82 00 44 */	beq lbl_802EDF20
/* 802EDEE0  88 04 00 08 */	lbz r0, 8(r4)
/* 802EDEE4  28 00 00 00 */	cmplwi r0, 0
/* 802EDEE8  41 82 00 38 */	beq lbl_802EDF20
/* 802EDEEC  88 85 00 3A */	lbz r4, 0x3a(r5)
/* 802EDEF0  2C 04 00 10 */	cmpwi r4, 0x10
/* 802EDEF4  38 00 00 00 */	li r0, 0
/* 802EDEF8  41 80 00 08 */	blt lbl_802EDF00
/* 802EDEFC  38 00 00 10 */	li r0, 0x10
lbl_802EDF00:
/* 802EDF00  7C 00 20 50 */	subf r0, r0, r4
/* 802EDF04  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EDF08  28 04 00 04 */	cmplwi r4, 4
/* 802EDF0C  40 80 00 14 */	bge lbl_802EDF20
/* 802EDF10  38 00 00 01 */	li r0, 1
/* 802EDF14  7C 00 20 30 */	slw r0, r0, r4
/* 802EDF18  7C C0 03 78 */	or r0, r6, r0
/* 802EDF1C  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_802EDF20:
/* 802EDF20  38 63 00 04 */	addi r3, r3, 4
/* 802EDF24  42 00 FF A0 */	bdnz lbl_802EDEC4
/* 802EDF28  38 A0 00 00 */	li r5, 0
/* 802EDF2C  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 802EDF30  38 60 00 01 */	li r3, 1
/* 802EDF34  48 00 00 20 */	b lbl_802EDF54
lbl_802EDF38:
/* 802EDF38  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EDF3C  7C 60 00 30 */	slw r0, r3, r0
/* 802EDF40  7C 80 00 39 */	and. r0, r4, r0
/* 802EDF44  40 82 00 0C */	bne lbl_802EDF50
/* 802EDF48  7C BD 2B 78 */	mr r29, r5
/* 802EDF4C  48 00 00 14 */	b lbl_802EDF60
lbl_802EDF50:
/* 802EDF50  38 A5 00 01 */	addi r5, r5, 1
lbl_802EDF54:
/* 802EDF54  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EDF58  28 00 00 04 */	cmplwi r0, 4
/* 802EDF5C  41 80 FF DC */	blt lbl_802EDF38
lbl_802EDF60:
/* 802EDF60  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 802EDF64  7C 79 02 14 */	add r3, r25, r0
/* 802EDF68  83 E3 00 8C */	lwz r31, 0x8c(r3)
/* 802EDF6C  28 1F 00 00 */	cmplwi r31, 0
/* 802EDF70  40 82 00 EC */	bne lbl_802EE05C
/* 802EDF74  38 60 00 40 */	li r3, 0x40
/* 802EDF78  4B FE 0C D5 */	bl __nw__FUl
/* 802EDF7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EDF80  41 82 00 24 */	beq lbl_802EDFA4
/* 802EDF84  38 00 00 00 */	li r0, 0
/* 802EDF88  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802EDF8C  7F 64 DB 78 */	mr r4, r27
/* 802EDF90  7F A5 EB 78 */	mr r5, r29
/* 802EDF94  4B FF 03 15 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EDF98  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802EDF9C  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EDFA0  98 1F 00 3B */	stb r0, 0x3b(r31)
lbl_802EDFA4:
/* 802EDFA4  28 1F 00 00 */	cmplwi r31, 0
/* 802EDFA8  40 82 00 0C */	bne lbl_802EDFB4
/* 802EDFAC  38 60 00 00 */	li r3, 0
/* 802EDFB0  48 00 02 0C */	b lbl_802EE1BC
lbl_802EDFB4:
/* 802EDFB4  28 1C 00 00 */	cmplwi r28, 0
/* 802EDFB8  41 82 00 14 */	beq lbl_802EDFCC
/* 802EDFBC  7F E3 FB 78 */	mr r3, r31
/* 802EDFC0  7F 64 DB 78 */	mr r4, r27
/* 802EDFC4  7F 85 E3 78 */	mr r5, r28
/* 802EDFC8  4B FF 04 85 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802EDFCC:
/* 802EDFCC  38 E0 00 03 */	li r7, 3
/* 802EDFD0  48 00 00 40 */	b lbl_802EE010
lbl_802EDFD4:
/* 802EDFD4  54 80 10 3A */	slwi r0, r4, 2
/* 802EDFD8  7C B9 02 14 */	add r5, r25, r0
/* 802EDFDC  80 65 00 88 */	lwz r3, 0x88(r5)
/* 802EDFE0  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 802EDFE4  7C D9 02 14 */	add r6, r25, r0
/* 802EDFE8  90 66 00 8C */	stw r3, 0x8c(r6)
/* 802EDFEC  80 05 00 98 */	lwz r0, 0x98(r5)
/* 802EDFF0  90 06 00 9C */	stw r0, 0x9c(r6)
/* 802EDFF4  54 83 08 3C */	slwi r3, r4, 1
/* 802EDFF8  38 03 00 02 */	addi r0, r3, 2
/* 802EDFFC  7C 99 02 2E */	lhzx r4, r25, r0
/* 802EE000  54 E3 0D FC */	rlwinm r3, r7, 1, 0x17, 0x1e
/* 802EE004  38 03 00 04 */	addi r0, r3, 4
/* 802EE008  7C 99 03 2E */	sthx r4, r25, r0
/* 802EE00C  38 E7 FF FF */	addi r7, r7, -1
lbl_802EE010:
/* 802EE010  54 E4 06 3E */	clrlwi r4, r7, 0x18
/* 802EE014  7C 04 D0 40 */	cmplw r4, r26
/* 802EE018  41 81 FF BC */	bgt lbl_802EDFD4
/* 802EE01C  57 40 10 3A */	slwi r0, r26, 2
/* 802EE020  7C 79 02 14 */	add r3, r25, r0
/* 802EE024  93 E3 00 8C */	stw r31, 0x8c(r3)
/* 802EE028  7F 23 CB 78 */	mr r3, r25
/* 802EE02C  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 802EE030  38 A0 00 01 */	li r5, 1
/* 802EE034  81 99 00 00 */	lwz r12, 0(r25)
/* 802EE038  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802EE03C  7D 89 03 A6 */	mtctr r12
/* 802EE040  4E 80 04 21 */	bctrl 
/* 802EE044  88 79 00 B0 */	lbz r3, 0xb0(r25)
/* 802EE048  38 00 00 01 */	li r0, 1
/* 802EE04C  7C 00 D0 30 */	slw r0, r0, r26
/* 802EE050  7C 60 03 78 */	or r0, r3, r0
/* 802EE054  98 19 00 B0 */	stb r0, 0xb0(r25)
/* 802EE058  48 00 01 3C */	b lbl_802EE194
lbl_802EE05C:
/* 802EE05C  28 1C 00 00 */	cmplwi r28, 0
/* 802EE060  40 82 00 18 */	bne lbl_802EE078
/* 802EE064  7F E3 FB 78 */	mr r3, r31
/* 802EE068  7F 64 DB 78 */	mr r4, r27
/* 802EE06C  7F A5 EB 78 */	mr r5, r29
/* 802EE070  4B FF 02 39 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EE074  48 00 00 14 */	b lbl_802EE088
lbl_802EE078:
/* 802EE078  7F E3 FB 78 */	mr r3, r31
/* 802EE07C  7F 64 DB 78 */	mr r4, r27
/* 802EE080  7F 85 E3 78 */	mr r5, r28
/* 802EE084  4B FF 03 C9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802EE088:
/* 802EE088  38 E0 00 00 */	li r7, 0
/* 802EE08C  38 C0 00 01 */	li r6, 1
/* 802EE090  38 61 00 08 */	addi r3, r1, 8
/* 802EE094  48 00 00 24 */	b lbl_802EE0B8
lbl_802EE098:
/* 802EE098  88 99 00 B0 */	lbz r4, 0xb0(r25)
/* 802EE09C  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 802EE0A0  7C C0 28 30 */	slw r0, r6, r5
/* 802EE0A4  7C 84 00 38 */	and r4, r4, r0
/* 802EE0A8  30 04 FF FF */	addic r0, r4, -1
/* 802EE0AC  7C 00 21 10 */	subfe r0, r0, r4
/* 802EE0B0  7C 03 29 AE */	stbx r0, r3, r5
/* 802EE0B4  38 E7 00 01 */	addi r7, r7, 1
lbl_802EE0B8:
/* 802EE0B8  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802EE0BC  28 00 00 04 */	cmplwi r0, 4
/* 802EE0C0  41 80 FF D8 */	blt lbl_802EE098
/* 802EE0C4  7F C9 F3 78 */	mr r9, r30
/* 802EE0C8  38 61 00 08 */	addi r3, r1, 8
/* 802EE0CC  48 00 00 50 */	b lbl_802EE11C
lbl_802EE0D0:
/* 802EE0D0  54 C0 10 3A */	slwi r0, r6, 2
/* 802EE0D4  7C B9 02 14 */	add r5, r25, r0
/* 802EE0D8  80 85 00 88 */	lwz r4, 0x88(r5)
/* 802EE0DC  55 28 06 3E */	clrlwi r8, r9, 0x18
/* 802EE0E0  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802EE0E4  7C F9 02 14 */	add r7, r25, r0
/* 802EE0E8  90 87 00 8C */	stw r4, 0x8c(r7)
/* 802EE0EC  80 05 00 98 */	lwz r0, 0x98(r5)
/* 802EE0F0  90 07 00 9C */	stw r0, 0x9c(r7)
/* 802EE0F4  54 C4 08 3C */	slwi r4, r6, 1
/* 802EE0F8  38 04 00 02 */	addi r0, r4, 2
/* 802EE0FC  7C B9 02 2E */	lhzx r5, r25, r0
/* 802EE100  55 24 0D FC */	rlwinm r4, r9, 1, 0x17, 0x1e
/* 802EE104  38 04 00 04 */	addi r0, r4, 4
/* 802EE108  7C B9 03 2E */	sthx r5, r25, r0
/* 802EE10C  38 06 FF FF */	addi r0, r6, -1
/* 802EE110  7C 03 00 AE */	lbzx r0, r3, r0
/* 802EE114  7C 03 41 AE */	stbx r0, r3, r8
/* 802EE118  39 29 FF FF */	addi r9, r9, -1
lbl_802EE11C:
/* 802EE11C  55 26 06 3E */	clrlwi r6, r9, 0x18
/* 802EE120  7C 06 D0 40 */	cmplw r6, r26
/* 802EE124  41 81 FF AC */	bgt lbl_802EE0D0
/* 802EE128  57 40 10 3A */	slwi r0, r26, 2
/* 802EE12C  7C 79 02 14 */	add r3, r25, r0
/* 802EE130  93 E3 00 8C */	stw r31, 0x8c(r3)
/* 802EE134  88 19 00 B0 */	lbz r0, 0xb0(r25)
/* 802EE138  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EE13C  98 19 00 B0 */	stb r0, 0xb0(r25)
/* 802EE140  38 E0 00 00 */	li r7, 0
/* 802EE144  38 A1 00 08 */	addi r5, r1, 8
/* 802EE148  38 60 00 01 */	li r3, 1
/* 802EE14C  48 00 00 28 */	b lbl_802EE174
lbl_802EE150:
/* 802EE150  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 802EE154  7C 05 30 AE */	lbzx r0, r5, r6
/* 802EE158  28 00 00 00 */	cmplwi r0, 0
/* 802EE15C  41 82 00 14 */	beq lbl_802EE170
/* 802EE160  88 99 00 B0 */	lbz r4, 0xb0(r25)
/* 802EE164  7C 60 30 30 */	slw r0, r3, r6
/* 802EE168  7C 80 03 78 */	or r0, r4, r0
/* 802EE16C  98 19 00 B0 */	stb r0, 0xb0(r25)
lbl_802EE170:
/* 802EE170  38 E7 00 01 */	addi r7, r7, 1
lbl_802EE174:
/* 802EE174  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802EE178  28 00 00 04 */	cmplwi r0, 4
/* 802EE17C  41 80 FF D4 */	blt lbl_802EE150
/* 802EE180  88 79 00 B0 */	lbz r3, 0xb0(r25)
/* 802EE184  38 00 00 01 */	li r0, 1
/* 802EE188  7C 00 D0 30 */	slw r0, r0, r26
/* 802EE18C  7C 60 03 78 */	or r0, r3, r0
/* 802EE190  98 19 00 B0 */	stb r0, 0xb0(r25)
lbl_802EE194:
/* 802EE194  38 80 00 00 */	li r4, 0
/* 802EE198  57 40 10 3A */	slwi r0, r26, 2
/* 802EE19C  7C 79 02 14 */	add r3, r25, r0
/* 802EE1A0  90 83 00 9C */	stw r4, 0x9c(r3)
/* 802EE1A4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EE1A8  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EE1AC  57 40 08 3C */	slwi r0, r26, 1
/* 802EE1B0  7C 79 02 14 */	add r3, r25, r0
/* 802EE1B4  B0 83 00 04 */	sth r4, 4(r3)
/* 802EE1B8  38 60 00 01 */	li r3, 1
lbl_802EE1BC:
/* 802EE1BC  39 61 00 30 */	addi r11, r1, 0x30
/* 802EE1C0  48 07 40 59 */	bl _restgpr_25
/* 802EE1C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EE1C8  7C 08 03 A6 */	mtlr r0
/* 802EE1CC  38 21 00 30 */	addi r1, r1, 0x30
/* 802EE1D0  4E 80 00 20 */	blr 
