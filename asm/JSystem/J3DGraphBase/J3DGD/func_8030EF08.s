lbl_8030EF08:
/* 8030EF08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030EF0C  7C 08 02 A6 */	mflr r0
/* 8030EF10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030EF14  39 61 00 30 */	addi r11, r1, 0x30
/* 8030EF18  48 05 32 AD */	bl _savegpr_23
/* 8030EF1C  7C 7F 1B 78 */	mr r31, r3
/* 8030EF20  7C 97 23 78 */	mr r23, r4
/* 8030EF24  7C B8 2B 78 */	mr r24, r5
/* 8030EF28  7C D9 33 78 */	mr r25, r6
/* 8030EF2C  7C FA 3B 78 */	mr r26, r7
/* 8030EF30  7D 1B 43 78 */	mr r27, r8
/* 8030EF34  7D 3C 4B 78 */	mr r28, r9
/* 8030EF38  7D 5D 53 78 */	mr r29, r10
/* 8030EF3C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8030EF40  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EF44  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EF48  38 63 00 0A */	addi r3, r3, 0xa
/* 8030EF4C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8030EF50  7C 03 00 40 */	cmplw r3, r0
/* 8030EF54  40 81 00 08 */	ble lbl_8030EF5C
/* 8030EF58  48 05 21 7D */	bl GDOverflowed
lbl_8030EF5C:
/* 8030EF5C  38 A0 00 61 */	li r5, 0x61
/* 8030EF60  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EF64  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EF68  38 03 00 01 */	addi r0, r3, 1
/* 8030EF6C  90 04 00 08 */	stw r0, 8(r4)
/* 8030EF70  98 A3 00 00 */	stb r5, 0(r3)
/* 8030EF74  57 C5 07 7E */	clrlwi r5, r30, 0x1d
/* 8030EF78  57 84 07 7E */	clrlwi r4, r28, 0x1d
/* 8030EF7C  57 43 07 7E */	clrlwi r3, r26, 0x1d
/* 8030EF80  57 00 07 7E */	clrlwi r0, r24, 0x1d
/* 8030EF84  56 E6 1E B8 */	rlwinm r6, r23, 3, 0x1a, 0x1c
/* 8030EF88  53 06 07 7E */	rlwimi r6, r24, 0, 0x1d, 0x1f
/* 8030EF8C  53 46 35 F2 */	rlwimi r6, r26, 6, 0x17, 0x19
/* 8030EF90  53 26 4D 2C */	rlwimi r6, r25, 9, 0x14, 0x16
/* 8030EF94  53 86 64 66 */	rlwimi r6, r28, 0xc, 0x11, 0x13
/* 8030EF98  53 66 7B A0 */	rlwimi r6, r27, 0xf, 0xe, 0x10
/* 8030EF9C  53 C6 92 DA */	rlwimi r6, r30, 0x12, 0xb, 0xd
/* 8030EFA0  53 A6 AA 14 */	rlwimi r6, r29, 0x15, 8, 0xa
/* 8030EFA4  64 CA 27 00 */	oris r10, r6, 0x2700
/* 8030EFA8  55 49 46 3E */	srwi r9, r10, 0x18
/* 8030EFAC  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8030EFB0  80 E8 00 08 */	lwz r7, 8(r8)
/* 8030EFB4  38 C7 00 01 */	addi r6, r7, 1
/* 8030EFB8  90 C8 00 08 */	stw r6, 8(r8)
/* 8030EFBC  99 27 00 00 */	stb r9, 0(r7)
/* 8030EFC0  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8030EFC4  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8030EFC8  80 E8 00 08 */	lwz r7, 8(r8)
/* 8030EFCC  38 C7 00 01 */	addi r6, r7, 1
/* 8030EFD0  90 C8 00 08 */	stw r6, 8(r8)
/* 8030EFD4  99 27 00 00 */	stb r9, 0(r7)
/* 8030EFD8  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8030EFDC  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8030EFE0  80 E8 00 08 */	lwz r7, 8(r8)
/* 8030EFE4  38 C7 00 01 */	addi r6, r7, 1
/* 8030EFE8  90 C8 00 08 */	stw r6, 8(r8)
/* 8030EFEC  99 27 00 00 */	stb r9, 0(r7)
/* 8030EFF0  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8030EFF4  80 E8 00 08 */	lwz r7, 8(r8)
/* 8030EFF8  38 C7 00 01 */	addi r6, r7, 1
/* 8030EFFC  90 C8 00 08 */	stw r6, 8(r8)
/* 8030F000  99 47 00 00 */	stb r10, 0(r7)
/* 8030F004  38 E0 00 00 */	li r7, 0
/* 8030F008  39 00 00 00 */	li r8, 0
/* 8030F00C  38 C0 00 01 */	li r6, 1
/* 8030F010  7C C0 00 30 */	slw r0, r6, r0
/* 8030F014  7C C3 18 30 */	slw r3, r6, r3
/* 8030F018  7C C4 20 30 */	slw r4, r6, r4
/* 8030F01C  7C C5 28 30 */	slw r5, r6, r5
/* 8030F020  7F E9 03 A6 */	mtctr r31
/* 8030F024  28 1F 00 00 */	cmplwi r31, 0
/* 8030F028  40 81 00 50 */	ble lbl_8030F078
lbl_8030F02C:
/* 8030F02C  2C 08 00 02 */	cmpwi r8, 2
/* 8030F030  41 82 00 34 */	beq lbl_8030F064
/* 8030F034  40 80 00 14 */	bge lbl_8030F048
/* 8030F038  2C 08 00 00 */	cmpwi r8, 0
/* 8030F03C  41 82 00 18 */	beq lbl_8030F054
/* 8030F040  40 80 00 1C */	bge lbl_8030F05C
/* 8030F044  48 00 00 2C */	b lbl_8030F070
lbl_8030F048:
/* 8030F048  2C 08 00 04 */	cmpwi r8, 4
/* 8030F04C  40 80 00 24 */	bge lbl_8030F070
/* 8030F050  48 00 00 1C */	b lbl_8030F06C
lbl_8030F054:
/* 8030F054  7C E7 03 78 */	or r7, r7, r0
/* 8030F058  48 00 00 18 */	b lbl_8030F070
lbl_8030F05C:
/* 8030F05C  7C E7 1B 78 */	or r7, r7, r3
/* 8030F060  48 00 00 10 */	b lbl_8030F070
lbl_8030F064:
/* 8030F064  7C E7 23 78 */	or r7, r7, r4
/* 8030F068  48 00 00 08 */	b lbl_8030F070
lbl_8030F06C:
/* 8030F06C  7C E7 2B 78 */	or r7, r7, r5
lbl_8030F070:
/* 8030F070  39 08 00 01 */	addi r8, r8, 1
/* 8030F074  42 00 FF B8 */	bdnz lbl_8030F02C
lbl_8030F078:
/* 8030F078  38 A0 00 61 */	li r5, 0x61
/* 8030F07C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F080  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F084  38 03 00 01 */	addi r0, r3, 1
/* 8030F088  90 04 00 08 */	stw r0, 8(r4)
/* 8030F08C  98 A3 00 00 */	stb r5, 0(r3)
/* 8030F090  64 E6 0F 00 */	oris r6, r7, 0xf00
/* 8030F094  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030F098  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F09C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F0A0  38 03 00 01 */	addi r0, r3, 1
/* 8030F0A4  90 04 00 08 */	stw r0, 8(r4)
/* 8030F0A8  98 A3 00 00 */	stb r5, 0(r3)
/* 8030F0AC  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030F0B0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F0B4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F0B8  38 03 00 01 */	addi r0, r3, 1
/* 8030F0BC  90 04 00 08 */	stw r0, 8(r4)
/* 8030F0C0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030F0C4  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030F0C8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F0CC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F0D0  38 03 00 01 */	addi r0, r3, 1
/* 8030F0D4  90 04 00 08 */	stw r0, 8(r4)
/* 8030F0D8  98 A3 00 00 */	stb r5, 0(r3)
/* 8030F0DC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F0E0  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F0E4  38 03 00 01 */	addi r0, r3, 1
/* 8030F0E8  90 04 00 08 */	stw r0, 8(r4)
/* 8030F0EC  98 C3 00 00 */	stb r6, 0(r3)
/* 8030F0F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8030F0F4  48 05 31 1D */	bl _restgpr_23
/* 8030F0F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030F0FC  7C 08 03 A6 */	mtlr r0
/* 8030F100  38 21 00 30 */	addi r1, r1, 0x30
/* 8030F104  4E 80 00 20 */	blr 
