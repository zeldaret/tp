lbl_8033B990:
/* 8033B990  7C 08 02 A6 */	mflr r0
/* 8033B994  90 01 00 04 */	stw r0, 4(r1)
/* 8033B998  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8033B99C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8033B9A0  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8033B9A4  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8033B9A8  40 86 00 24 */	bne cr1, lbl_8033B9CC
/* 8033B9AC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8033B9B0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8033B9B4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8033B9B8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8033B9BC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8033B9C0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8033B9C4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8033B9C8  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8033B9CC:
/* 8033B9CC  90 61 00 08 */	stw r3, 8(r1)
/* 8033B9D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8033B9D4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8033B9D8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8033B9DC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8033B9E0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8033B9E4  91 21 00 20 */	stw r9, 0x20(r1)
/* 8033B9E8  91 41 00 24 */	stw r10, 0x24(r1)
/* 8033B9EC  7C 9D 23 78 */	mr r29, r4
/* 8033B9F0  3C 60 80 3D */	lis r3, lit_63@ha /* 0x803CF510@ha */
/* 8033B9F4  3B E3 F5 10 */	addi r31, r3, lit_63@l /* 0x803CF510@l */
/* 8033B9F8  4B FF E3 95 */	bl PPCMfhid2
/* 8033B9FC  7C 7E 1B 78 */	mr r30, r3
/* 8033BA00  4C C6 31 82 */	crclr 6
/* 8033BA04  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8033BA08  4B CC B0 B5 */	bl OSReport
/* 8033BA0C  80 BD 01 9C */	lwz r5, 0x19c(r29)
/* 8033BA10  7F C4 F3 78 */	mr r4, r30
/* 8033BA14  38 7F 00 44 */	addi r3, r31, 0x44
/* 8033BA18  4C C6 31 82 */	crclr 6
/* 8033BA1C  4B CC B0 A1 */	bl OSReport
/* 8033BA20  57 C0 02 16 */	rlwinm r0, r30, 0, 8, 0xb
/* 8033BA24  28 00 00 00 */	cmplwi r0, 0
/* 8033BA28  41 82 00 14 */	beq lbl_8033BA3C
/* 8033BA2C  80 1D 01 9C */	lwz r0, 0x19c(r29)
/* 8033BA30  54 00 02 94 */	rlwinm r0, r0, 0, 0xa, 0xa
/* 8033BA34  28 00 00 00 */	cmplwi r0, 0
/* 8033BA38  40 82 00 1C */	bne lbl_8033BA54
lbl_8033BA3C:
/* 8033BA3C  38 7F 00 60 */	addi r3, r31, 0x60
/* 8033BA40  4C C6 31 82 */	crclr 6
/* 8033BA44  4B CC B0 79 */	bl OSReport
/* 8033BA48  7F A3 EB 78 */	mr r3, r29
/* 8033BA4C  48 00 06 95 */	bl OSDumpContext
/* 8033BA50  4B FF E2 B1 */	bl PPCHalt
lbl_8033BA54:
/* 8033BA54  38 7F 00 90 */	addi r3, r31, 0x90
/* 8033BA58  4C C6 31 82 */	crclr 6
/* 8033BA5C  4B CC B0 61 */	bl OSReport
/* 8033BA60  38 7F 00 CC */	addi r3, r31, 0xcc
/* 8033BA64  4C C6 31 82 */	crclr 6
/* 8033BA68  4B CC B0 55 */	bl OSReport
/* 8033BA6C  57 C0 02 10 */	rlwinm r0, r30, 0, 8, 8
/* 8033BA70  28 00 00 00 */	cmplwi r0, 0
/* 8033BA74  41 82 00 10 */	beq lbl_8033BA84
/* 8033BA78  38 7F 01 04 */	addi r3, r31, 0x104
/* 8033BA7C  4C C6 31 82 */	crclr 6
/* 8033BA80  4B CC B0 3D */	bl OSReport
lbl_8033BA84:
/* 8033BA84  57 C0 02 52 */	rlwinm r0, r30, 0, 9, 9
/* 8033BA88  28 00 00 00 */	cmplwi r0, 0
/* 8033BA8C  41 82 00 10 */	beq lbl_8033BA9C
/* 8033BA90  38 7F 01 44 */	addi r3, r31, 0x144
/* 8033BA94  4C C6 31 82 */	crclr 6
/* 8033BA98  4B CC B0 25 */	bl OSReport
lbl_8033BA9C:
/* 8033BA9C  57 C0 02 94 */	rlwinm r0, r30, 0, 0xa, 0xa
/* 8033BAA0  28 00 00 00 */	cmplwi r0, 0
/* 8033BAA4  41 82 00 10 */	beq lbl_8033BAB4
/* 8033BAA8  38 7F 01 70 */	addi r3, r31, 0x170
/* 8033BAAC  4C C6 31 82 */	crclr 6
/* 8033BAB0  4B CC B0 0D */	bl OSReport
lbl_8033BAB4:
/* 8033BAB4  57 C0 02 D6 */	rlwinm r0, r30, 0, 0xb, 0xb
/* 8033BAB8  28 00 00 00 */	cmplwi r0, 0
/* 8033BABC  41 82 00 10 */	beq lbl_8033BACC
/* 8033BAC0  38 7F 01 90 */	addi r3, r31, 0x190
/* 8033BAC4  4C C6 31 82 */	crclr 6
/* 8033BAC8  4B CC AF F5 */	bl OSReport
lbl_8033BACC:
/* 8033BACC  7F C3 F3 78 */	mr r3, r30
/* 8033BAD0  4B FF E2 C5 */	bl PPCMthid2
/* 8033BAD4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8033BAD8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8033BADC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8033BAE0  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8033BAE4  38 21 00 80 */	addi r1, r1, 0x80
/* 8033BAE8  7C 08 03 A6 */	mtlr r0
/* 8033BAEC  4E 80 00 20 */	blr 
