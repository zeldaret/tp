lbl_802DCE8C:
/* 802DCE8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DCE90  7C 08 02 A6 */	mflr r0
/* 802DCE94  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DCE98  39 61 00 30 */	addi r11, r1, 0x30
/* 802DCE9C  48 08 53 39 */	bl _savegpr_27
/* 802DCEA0  7C 7B 1B 78 */	mr r27, r3
/* 802DCEA4  7C BC 2B 79 */	or. r28, r5, r5
/* 802DCEA8  7C 9E 23 78 */	mr r30, r4
/* 802DCEAC  40 82 00 0C */	bne lbl_802DCEB8
/* 802DCEB0  7C 83 23 78 */	mr r3, r4
/* 802DCEB4  48 00 02 64 */	b lbl_802DD118
lbl_802DCEB8:
/* 802DCEB8  80 BB 00 04 */	lwz r5, 4(r27)
/* 802DCEBC  28 05 00 00 */	cmplwi r5, 0
/* 802DCEC0  40 82 00 0C */	bne lbl_802DCECC
/* 802DCEC4  38 00 00 00 */	li r0, 0
/* 802DCEC8  48 00 00 14 */	b lbl_802DCEDC
lbl_802DCECC:
/* 802DCECC  80 1B 00 08 */	lwz r0, 8(r27)
/* 802DCED0  7C 05 00 50 */	subf r0, r5, r0
/* 802DCED4  7C 00 16 70 */	srawi r0, r0, 2
/* 802DCED8  7C 00 01 94 */	addze r0, r0
lbl_802DCEDC:
/* 802DCEDC  7C 1C 02 14 */	add r0, r28, r0
/* 802DCEE0  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 802DCEE4  7C 00 18 40 */	cmplw r0, r3
/* 802DCEE8  41 81 01 00 */	bgt lbl_802DCFE8
/* 802DCEEC  57 86 10 3A */	slwi r6, r28, 2
/* 802DCEF0  7D 1E 32 14 */	add r8, r30, r6
/* 802DCEF4  80 FB 00 08 */	lwz r7, 8(r27)
/* 802DCEF8  7C 08 38 40 */	cmplw r8, r7
/* 802DCEFC  40 80 00 8C */	bge lbl_802DCF88
/* 802DCF00  7D 26 38 50 */	subf r9, r6, r7
/* 802DCF04  7D 23 4B 78 */	mr r3, r9
/* 802DCF08  38 07 00 03 */	addi r0, r7, 3
/* 802DCF0C  7C 09 00 50 */	subf r0, r9, r0
/* 802DCF10  54 00 F0 BE */	srwi r0, r0, 2
/* 802DCF14  7C 09 03 A6 */	mtctr r0
/* 802DCF18  7C 09 38 40 */	cmplw r9, r7
/* 802DCF1C  40 80 00 18 */	bge lbl_802DCF34
lbl_802DCF20:
/* 802DCF20  80 03 00 00 */	lwz r0, 0(r3)
/* 802DCF24  90 07 00 00 */	stw r0, 0(r7)
/* 802DCF28  38 E7 00 04 */	addi r7, r7, 4
/* 802DCF2C  38 63 00 04 */	addi r3, r3, 4
/* 802DCF30  42 00 FF F0 */	bdnz lbl_802DCF20
lbl_802DCF34:
/* 802DCF34  80 BB 00 08 */	lwz r5, 8(r27)
/* 802DCF38  7D 23 4B 78 */	mr r3, r9
/* 802DCF3C  38 09 00 03 */	addi r0, r9, 3
/* 802DCF40  7C 1E 00 50 */	subf r0, r30, r0
/* 802DCF44  54 00 F0 BE */	srwi r0, r0, 2
/* 802DCF48  7C 09 03 A6 */	mtctr r0
/* 802DCF4C  7C 09 F0 40 */	cmplw r9, r30
/* 802DCF50  40 81 00 10 */	ble lbl_802DCF60
lbl_802DCF54:
/* 802DCF54  84 03 FF FC */	lwzu r0, -4(r3)
/* 802DCF58  94 05 FF FC */	stwu r0, -4(r5)
/* 802DCF5C  42 00 FF F8 */	bdnz lbl_802DCF54
lbl_802DCF60:
/* 802DCF60  7F C3 F3 78 */	mr r3, r30
/* 802DCF64  48 00 00 08 */	b lbl_802DCF6C
lbl_802DCF68:
/* 802DCF68  38 63 00 04 */	addi r3, r3, 4
lbl_802DCF6C:
/* 802DCF6C  7C 03 40 40 */	cmplw r3, r8
/* 802DCF70  40 82 FF F8 */	bne lbl_802DCF68
/* 802DCF74  80 1B 00 08 */	lwz r0, 8(r27)
/* 802DCF78  7C 00 32 14 */	add r0, r0, r6
/* 802DCF7C  90 1B 00 08 */	stw r0, 8(r27)
/* 802DCF80  7C 83 23 78 */	mr r3, r4
/* 802DCF84  48 00 01 94 */	b lbl_802DD118
lbl_802DCF88:
/* 802DCF88  7D 05 43 78 */	mr r5, r8
/* 802DCF8C  7F C3 F3 78 */	mr r3, r30
/* 802DCF90  38 07 00 03 */	addi r0, r7, 3
/* 802DCF94  7C 1E 00 50 */	subf r0, r30, r0
/* 802DCF98  54 00 F0 BE */	srwi r0, r0, 2
/* 802DCF9C  7C 09 03 A6 */	mtctr r0
/* 802DCFA0  7C 1E 38 40 */	cmplw r30, r7
/* 802DCFA4  40 80 00 18 */	bge lbl_802DCFBC
lbl_802DCFA8:
/* 802DCFA8  80 03 00 00 */	lwz r0, 0(r3)
/* 802DCFAC  90 05 00 00 */	stw r0, 0(r5)
/* 802DCFB0  38 A5 00 04 */	addi r5, r5, 4
/* 802DCFB4  38 63 00 04 */	addi r3, r3, 4
/* 802DCFB8  42 00 FF F0 */	bdnz lbl_802DCFA8
lbl_802DCFBC:
/* 802DCFBC  80 1B 00 08 */	lwz r0, 8(r27)
/* 802DCFC0  7F C3 F3 78 */	mr r3, r30
/* 802DCFC4  48 00 00 08 */	b lbl_802DCFCC
lbl_802DCFC8:
/* 802DCFC8  38 63 00 04 */	addi r3, r3, 4
lbl_802DCFCC:
/* 802DCFCC  7C 03 00 40 */	cmplw r3, r0
/* 802DCFD0  40 82 FF F8 */	bne lbl_802DCFC8
/* 802DCFD4  80 1B 00 08 */	lwz r0, 8(r27)
/* 802DCFD8  7C 00 32 14 */	add r0, r0, r6
/* 802DCFDC  90 1B 00 08 */	stw r0, 8(r27)
/* 802DCFE0  7C 83 23 78 */	mr r3, r4
/* 802DCFE4  48 00 01 34 */	b lbl_802DD118
lbl_802DCFE8:
/* 802DCFE8  28 05 00 00 */	cmplwi r5, 0
/* 802DCFEC  40 82 00 0C */	bne lbl_802DCFF8
/* 802DCFF0  38 80 00 00 */	li r4, 0
/* 802DCFF4  48 00 00 14 */	b lbl_802DD008
lbl_802DCFF8:
/* 802DCFF8  80 1B 00 08 */	lwz r0, 8(r27)
/* 802DCFFC  7C 05 00 50 */	subf r0, r5, r0
/* 802DD000  7C 00 16 70 */	srawi r0, r0, 2
/* 802DD004  7C 80 01 94 */	addze r4, r0
lbl_802DD008:
/* 802DD008  7F A4 E2 14 */	add r29, r4, r28
/* 802DD00C  7F 85 E3 78 */	mr r5, r28
/* 802DD010  81 9B 00 10 */	lwz r12, 0x10(r27)
/* 802DD014  7D 89 03 A6 */	mtctr r12
/* 802DD018  4E 80 04 21 */	bctrl 
/* 802DD01C  7C 1D 18 40 */	cmplw r29, r3
/* 802DD020  7C 7F 1B 78 */	mr r31, r3
/* 802DD024  40 81 00 08 */	ble lbl_802DD02C
/* 802DD028  7F BF EB 78 */	mr r31, r29
lbl_802DD02C:
/* 802DD02C  57 E3 10 3A */	slwi r3, r31, 2
/* 802DD030  4B FF 1C 1D */	bl __nw__FUl
/* 802DD034  28 03 00 00 */	cmplwi r3, 0
/* 802DD038  40 82 00 0C */	bne lbl_802DD044
/* 802DD03C  80 7B 00 08 */	lwz r3, 8(r27)
/* 802DD040  48 00 00 D8 */	b lbl_802DD118
lbl_802DD044:
/* 802DD044  93 61 00 08 */	stw r27, 8(r1)
/* 802DD048  90 61 00 0C */	stw r3, 0xc(r1)
/* 802DD04C  7C 65 1B 78 */	mr r5, r3
/* 802DD050  80 9B 00 04 */	lwz r4, 4(r27)
/* 802DD054  38 1E 00 03 */	addi r0, r30, 3
/* 802DD058  7C 04 00 50 */	subf r0, r4, r0
/* 802DD05C  54 00 F0 BE */	srwi r0, r0, 2
/* 802DD060  7C 09 03 A6 */	mtctr r0
/* 802DD064  7C 04 F0 40 */	cmplw r4, r30
/* 802DD068  40 80 00 18 */	bge lbl_802DD080
lbl_802DD06C:
/* 802DD06C  80 04 00 00 */	lwz r0, 0(r4)
/* 802DD070  90 05 00 00 */	stw r0, 0(r5)
/* 802DD074  38 A5 00 04 */	addi r5, r5, 4
/* 802DD078  38 84 00 04 */	addi r4, r4, 4
/* 802DD07C  42 00 FF F0 */	bdnz lbl_802DD06C
lbl_802DD080:
/* 802DD080  7C BD 2B 78 */	mr r29, r5
/* 802DD084  80 9B 00 08 */	lwz r4, 8(r27)
/* 802DD088  57 80 10 3A */	slwi r0, r28, 2
/* 802DD08C  7C C5 02 14 */	add r6, r5, r0
/* 802DD090  7F C5 F3 78 */	mr r5, r30
/* 802DD094  38 04 00 03 */	addi r0, r4, 3
/* 802DD098  7C 1E 00 50 */	subf r0, r30, r0
/* 802DD09C  54 00 F0 BE */	srwi r0, r0, 2
/* 802DD0A0  7C 09 03 A6 */	mtctr r0
/* 802DD0A4  7C 1E 20 40 */	cmplw r30, r4
/* 802DD0A8  40 80 00 18 */	bge lbl_802DD0C0
lbl_802DD0AC:
/* 802DD0AC  80 05 00 00 */	lwz r0, 0(r5)
/* 802DD0B0  90 06 00 00 */	stw r0, 0(r6)
/* 802DD0B4  38 C6 00 04 */	addi r6, r6, 4
/* 802DD0B8  38 A5 00 04 */	addi r5, r5, 4
/* 802DD0BC  42 00 FF F0 */	bdnz lbl_802DD0AC
lbl_802DD0C0:
/* 802DD0C0  80 1B 00 08 */	lwz r0, 8(r27)
/* 802DD0C4  80 BB 00 04 */	lwz r5, 4(r27)
/* 802DD0C8  7C A4 2B 78 */	mr r4, r5
/* 802DD0CC  48 00 00 08 */	b lbl_802DD0D4
lbl_802DD0D0:
/* 802DD0D0  38 84 00 04 */	addi r4, r4, 4
lbl_802DD0D4:
/* 802DD0D4  7C 04 00 40 */	cmplw r4, r0
/* 802DD0D8  40 82 FF F8 */	bne lbl_802DD0D0
/* 802DD0DC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802DD0E0  80 9B 00 04 */	lwz r4, 4(r27)
/* 802DD0E4  80 1B 00 08 */	lwz r0, 8(r27)
/* 802DD0E8  7C 04 00 50 */	subf r0, r4, r0
/* 802DD0EC  7C 00 16 70 */	srawi r0, r0, 2
/* 802DD0F0  7C 00 01 94 */	addze r0, r0
/* 802DD0F4  7C 1C 02 14 */	add r0, r28, r0
/* 802DD0F8  54 00 10 3A */	slwi r0, r0, 2
/* 802DD0FC  7C 03 02 14 */	add r0, r3, r0
/* 802DD100  90 1B 00 08 */	stw r0, 8(r27)
/* 802DD104  90 7B 00 04 */	stw r3, 4(r27)
/* 802DD108  93 FB 00 0C */	stw r31, 0xc(r27)
/* 802DD10C  7C A3 2B 78 */	mr r3, r5
/* 802DD110  4B FF 1C 2D */	bl __dl__FPv
/* 802DD114  7F A3 EB 78 */	mr r3, r29
lbl_802DD118:
/* 802DD118  39 61 00 30 */	addi r11, r1, 0x30
/* 802DD11C  48 08 51 05 */	bl _restgpr_27
/* 802DD120  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DD124  7C 08 03 A6 */	mtlr r0
/* 802DD128  38 21 00 30 */	addi r1, r1, 0x30
/* 802DD12C  4E 80 00 20 */	blr 
