lbl_802ECF48:
/* 802ECF48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802ECF4C  7C 08 02 A6 */	mflr r0
/* 802ECF50  90 01 00 34 */	stw r0, 0x34(r1)
/* 802ECF54  39 61 00 30 */	addi r11, r1, 0x30
/* 802ECF58  48 07 52 75 */	bl _savegpr_25
/* 802ECF5C  7C 79 1B 78 */	mr r25, r3
/* 802ECF60  7C 9A 23 78 */	mr r26, r4
/* 802ECF64  7C BB 2B 78 */	mr r27, r5
/* 802ECF68  28 1A 00 02 */	cmplwi r26, 2
/* 802ECF6C  41 80 00 0C */	blt lbl_802ECF78
/* 802ECF70  38 60 00 00 */	li r3, 0
/* 802ECF74  48 00 01 E0 */	b lbl_802ED154
lbl_802ECF78:
/* 802ECF78  3B 80 00 00 */	li r28, 0
/* 802ECF7C  28 1B 00 00 */	cmplwi r27, 0
/* 802ECF80  41 82 00 64 */	beq lbl_802ECFE4
/* 802ECF84  88 1B 00 08 */	lbz r0, 8(r27)
/* 802ECF88  28 00 00 00 */	cmplwi r0, 0
/* 802ECF8C  41 82 00 58 */	beq lbl_802ECFE4
/* 802ECF90  7F 40 00 34 */	cntlzw r0, r26
/* 802ECF94  54 00 ED BA */	rlwinm r0, r0, 0x1d, 0x16, 0x1d
/* 802ECF98  7C 79 02 14 */	add r3, r25, r0
/* 802ECF9C  80 83 00 64 */	lwz r4, 0x64(r3)
/* 802ECFA0  28 04 00 00 */	cmplwi r4, 0
/* 802ECFA4  41 82 00 40 */	beq lbl_802ECFE4
/* 802ECFA8  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802ECFAC  28 03 00 00 */	cmplwi r3, 0
/* 802ECFB0  41 82 00 34 */	beq lbl_802ECFE4
/* 802ECFB4  88 03 00 08 */	lbz r0, 8(r3)
/* 802ECFB8  28 00 00 00 */	cmplwi r0, 0
/* 802ECFBC  41 82 00 28 */	beq lbl_802ECFE4
/* 802ECFC0  88 64 00 3A */	lbz r3, 0x3a(r4)
/* 802ECFC4  2C 03 00 10 */	cmpwi r3, 0x10
/* 802ECFC8  38 00 00 00 */	li r0, 0
/* 802ECFCC  41 80 00 08 */	blt lbl_802ECFD4
/* 802ECFD0  38 00 00 10 */	li r0, 0x10
lbl_802ECFD4:
/* 802ECFD4  7C 00 18 50 */	subf r0, r0, r3
/* 802ECFD8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802ECFDC  40 82 00 08 */	bne lbl_802ECFE4
/* 802ECFE0  3B 80 00 01 */	li r28, 1
lbl_802ECFE4:
/* 802ECFE4  57 5D 10 3A */	slwi r29, r26, 2
/* 802ECFE8  7F F9 EA 14 */	add r31, r25, r29
/* 802ECFEC  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802ECFF0  28 03 00 00 */	cmplwi r3, 0
/* 802ECFF4  40 82 00 84 */	bne lbl_802ED078
/* 802ECFF8  28 1B 00 00 */	cmplwi r27, 0
/* 802ECFFC  41 82 00 64 */	beq lbl_802ED060
/* 802ED000  38 60 00 40 */	li r3, 0x40
/* 802ED004  4B FE 1C 49 */	bl __nw__FUl
/* 802ED008  7C 7E 1B 79 */	or. r30, r3, r3
/* 802ED00C  41 82 00 24 */	beq lbl_802ED030
/* 802ED010  38 00 00 00 */	li r0, 0
/* 802ED014  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802ED018  7F 64 DB 78 */	mr r4, r27
/* 802ED01C  7F 85 E3 78 */	mr r5, r28
/* 802ED020  4B FF 12 89 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802ED024  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802ED028  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802ED02C  98 1E 00 3B */	stb r0, 0x3b(r30)
lbl_802ED030:
/* 802ED030  93 DF 00 64 */	stw r30, 0x64(r31)
/* 802ED034  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 802ED038  28 00 00 00 */	cmplwi r0, 0
/* 802ED03C  40 82 00 0C */	bne lbl_802ED048
/* 802ED040  38 60 00 00 */	li r3, 0
/* 802ED044  48 00 01 10 */	b lbl_802ED154
lbl_802ED048:
/* 802ED048  88 79 00 78 */	lbz r3, 0x78(r25)
/* 802ED04C  38 00 00 01 */	li r0, 1
/* 802ED050  7C 00 D0 30 */	slw r0, r0, r26
/* 802ED054  7C 60 03 78 */	or r0, r3, r0
/* 802ED058  98 19 00 78 */	stb r0, 0x78(r25)
/* 802ED05C  48 00 00 CC */	b lbl_802ED128
lbl_802ED060:
/* 802ED060  88 79 00 78 */	lbz r3, 0x78(r25)
/* 802ED064  38 00 00 01 */	li r0, 1
/* 802ED068  7C 00 D0 30 */	slw r0, r0, r26
/* 802ED06C  7C 60 00 78 */	andc r0, r3, r0
/* 802ED070  98 19 00 78 */	stb r0, 0x78(r25)
/* 802ED074  48 00 00 B4 */	b lbl_802ED128
lbl_802ED078:
/* 802ED078  88 99 00 78 */	lbz r4, 0x78(r25)
/* 802ED07C  38 00 00 01 */	li r0, 1
/* 802ED080  7C 1E D0 30 */	slw r30, r0, r26
/* 802ED084  7C 80 F0 39 */	and. r0, r4, r30
/* 802ED088  41 82 00 3C */	beq lbl_802ED0C4
/* 802ED08C  28 1B 00 00 */	cmplwi r27, 0
/* 802ED090  41 82 00 14 */	beq lbl_802ED0A4
/* 802ED094  7F 64 DB 78 */	mr r4, r27
/* 802ED098  7F 85 E3 78 */	mr r5, r28
/* 802ED09C  4B FF 12 0D */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802ED0A0  48 00 00 88 */	b lbl_802ED128
lbl_802ED0A4:
/* 802ED0A4  38 80 00 01 */	li r4, 1
/* 802ED0A8  4B FF 11 8D */	bl __dt__10JUTTextureFv
/* 802ED0AC  38 00 00 00 */	li r0, 0
/* 802ED0B0  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802ED0B4  88 19 00 78 */	lbz r0, 0x78(r25)
/* 802ED0B8  7C 00 F0 78 */	andc r0, r0, r30
/* 802ED0BC  98 19 00 78 */	stb r0, 0x78(r25)
/* 802ED0C0  48 00 00 68 */	b lbl_802ED128
lbl_802ED0C4:
/* 802ED0C4  38 00 00 00 */	li r0, 0
/* 802ED0C8  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802ED0CC  28 1B 00 00 */	cmplwi r27, 0
/* 802ED0D0  41 82 00 58 */	beq lbl_802ED128
/* 802ED0D4  38 60 00 40 */	li r3, 0x40
/* 802ED0D8  4B FE 1B 75 */	bl __nw__FUl
/* 802ED0DC  7C 7C 1B 79 */	or. r28, r3, r3
/* 802ED0E0  41 82 00 24 */	beq lbl_802ED104
/* 802ED0E4  38 00 00 00 */	li r0, 0
/* 802ED0E8  90 1C 00 28 */	stw r0, 0x28(r28)
/* 802ED0EC  7F 64 DB 78 */	mr r4, r27
/* 802ED0F0  38 A0 00 00 */	li r5, 0
/* 802ED0F4  4B FF 11 B5 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802ED0F8  88 1C 00 3B */	lbz r0, 0x3b(r28)
/* 802ED0FC  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802ED100  98 1C 00 3B */	stb r0, 0x3b(r28)
lbl_802ED104:
/* 802ED104  93 9F 00 64 */	stw r28, 0x64(r31)
/* 802ED108  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 802ED10C  28 00 00 00 */	cmplwi r0, 0
/* 802ED110  40 82 00 0C */	bne lbl_802ED11C
/* 802ED114  38 60 00 00 */	li r3, 0
/* 802ED118  48 00 00 3C */	b lbl_802ED154
lbl_802ED11C:
/* 802ED11C  88 19 00 78 */	lbz r0, 0x78(r25)
/* 802ED120  7C 00 F3 78 */	or r0, r0, r30
/* 802ED124  98 19 00 78 */	stb r0, 0x78(r25)
lbl_802ED128:
/* 802ED128  7F 79 EA 14 */	add r27, r25, r29
/* 802ED12C  80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 802ED130  4B FE 1C 0D */	bl __dl__FPv
/* 802ED134  38 00 00 00 */	li r0, 0
/* 802ED138  90 1B 00 6C */	stw r0, 0x6c(r27)
/* 802ED13C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802ED140  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802ED144  57 40 08 3C */	slwi r0, r26, 1
/* 802ED148  7C 79 02 14 */	add r3, r25, r0
/* 802ED14C  B0 83 00 04 */	sth r4, 4(r3)
/* 802ED150  38 60 00 01 */	li r3, 1
lbl_802ED154:
/* 802ED154  39 61 00 30 */	addi r11, r1, 0x30
/* 802ED158  48 07 50 C1 */	bl _restgpr_25
/* 802ED15C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802ED160  7C 08 03 A6 */	mtlr r0
/* 802ED164  38 21 00 30 */	addi r1, r1, 0x30
/* 802ED168  4E 80 00 20 */	blr 
