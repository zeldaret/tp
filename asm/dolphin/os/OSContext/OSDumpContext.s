lbl_8033C0E0:
/* 8033C0E0  7C 08 02 A6 */	mflr r0
/* 8033C0E4  90 01 00 04 */	stw r0, 4(r1)
/* 8033C0E8  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 8033C0EC  BF 21 02 DC */	stmw r25, 0x2dc(r1)
/* 8033C0F0  7C 7C 1B 78 */	mr r28, r3
/* 8033C0F4  3C 60 80 3D */	lis r3, lit_61@ha
/* 8033C0F8  4C C6 31 82 */	crclr 6
/* 8033C0FC  3B E3 F7 40 */	addi r31, r3, lit_61@l
/* 8033C100  7F E3 FB 78 */	mr r3, r31
/* 8033C104  7F 84 E3 78 */	mr r4, r28
/* 8033C108  4B CC A9 B5 */	bl OSReport
/* 8033C10C  3B 20 00 00 */	li r25, 0
/* 8033C110  57 20 10 3A */	slwi r0, r25, 2
/* 8033C114  7F 7C 02 14 */	add r27, r28, r0
/* 8033C118  48 00 00 04 */	b lbl_8033C11C
lbl_8033C11C:
/* 8033C11C  48 00 00 04 */	b lbl_8033C120
lbl_8033C120:
/* 8033C120  48 00 00 04 */	b lbl_8033C124
lbl_8033C124:
/* 8033C124  81 1B 00 40 */	lwz r8, 0x40(r27)
/* 8033C128  7F 24 CB 78 */	mr r4, r25
/* 8033C12C  80 BB 00 00 */	lwz r5, 0(r27)
/* 8033C130  38 7F 00 44 */	addi r3, r31, 0x44
/* 8033C134  4C C6 31 82 */	crclr 6
/* 8033C138  7C A6 2B 78 */	mr r6, r5
/* 8033C13C  7D 09 43 78 */	mr r9, r8
/* 8033C140  38 F9 00 10 */	addi r7, r25, 0x10
/* 8033C144  4B CC A9 79 */	bl OSReport
/* 8033C148  3B 7B 00 04 */	addi r27, r27, 4
/* 8033C14C  3B 39 00 01 */	addi r25, r25, 1
/* 8033C150  28 19 00 10 */	cmplwi r25, 0x10
/* 8033C154  41 80 FF D0 */	blt lbl_8033C124
/* 8033C158  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 8033C15C  38 7F 00 74 */	addi r3, r31, 0x74
/* 8033C160  80 BC 00 80 */	lwz r5, 0x80(r28)
/* 8033C164  4C C6 31 82 */	crclr 6
/* 8033C168  4B CC A9 55 */	bl OSReport
/* 8033C16C  80 9C 01 98 */	lwz r4, 0x198(r28)
/* 8033C170  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 8033C174  80 BC 01 9C */	lwz r5, 0x19c(r28)
/* 8033C178  4C C6 31 82 */	crclr 6
/* 8033C17C  4B CC A9 41 */	bl OSReport
/* 8033C180  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8033C184  4C C6 31 82 */	crclr 6
/* 8033C188  4B CC A9 35 */	bl OSReport
/* 8033C18C  3B 20 00 00 */	li r25, 0
/* 8033C190  57 20 10 3A */	slwi r0, r25, 2
/* 8033C194  7F 7C 02 14 */	add r27, r28, r0
/* 8033C198  48 00 00 04 */	b lbl_8033C19C
lbl_8033C19C:
/* 8033C19C  48 00 00 04 */	b lbl_8033C1A0
lbl_8033C1A0:
/* 8033C1A0  48 00 00 04 */	b lbl_8033C1A4
lbl_8033C1A4:
/* 8033C1A4  80 BB 01 A4 */	lwz r5, 0x1a4(r27)
/* 8033C1A8  7F 24 CB 78 */	mr r4, r25
/* 8033C1AC  80 FB 01 B4 */	lwz r7, 0x1b4(r27)
/* 8033C1B0  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 8033C1B4  38 D9 00 04 */	addi r6, r25, 4
/* 8033C1B8  4C C6 31 82 */	crclr 6
/* 8033C1BC  4B CC A9 01 */	bl OSReport
/* 8033C1C0  3B 7B 00 04 */	addi r27, r27, 4
/* 8033C1C4  3B 39 00 01 */	addi r25, r25, 1
/* 8033C1C8  28 19 00 04 */	cmplwi r25, 4
/* 8033C1CC  41 80 FF D8 */	blt lbl_8033C1A4
/* 8033C1D0  A0 1C 01 A2 */	lhz r0, 0x1a2(r28)
/* 8033C1D4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8033C1D8  28 00 00 00 */	cmplwi r0, 0
/* 8033C1DC  41 82 01 3C */	beq lbl_8033C318
/* 8033C1E0  48 00 15 15 */	bl OSDisableInterrupts
/* 8033C1E4  3C C0 80 00 */	lis r6, 0x8000 /* 0x800000D4@ha */
/* 8033C1E8  80 06 00 D4 */	lwz r0, 0x00D4(r6)
/* 8033C1EC  38 A0 00 00 */	li r5, 0
/* 8033C1F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8033C1F4  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 8033C1F8  7C 1E 03 78 */	mr r30, r0
/* 8033C1FC  7C 7D 1B 78 */	mr r29, r3
/* 8033C200  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 8033C204  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 8033C208  7C 04 00 40 */	cmplw r4, r0
/* 8033C20C  40 82 00 08 */	bne lbl_8033C214
/* 8033C210  90 A6 00 D8 */	stw r5, 0xd8(r6)
lbl_8033C214:
/* 8033C214  38 61 00 10 */	addi r3, r1, 0x10
/* 8033C218  4B FF FC 21 */	bl OSSetCurrentContext
/* 8033C21C  38 7F 01 0C */	addi r3, r31, 0x10c
/* 8033C220  4C C6 31 82 */	crclr 6
/* 8033C224  4B CC A8 99 */	bl OSReport
/* 8033C228  3B 20 00 00 */	li r25, 0
/* 8033C22C  57 20 18 38 */	slwi r0, r25, 3
/* 8033C230  7F 5C 02 14 */	add r26, r28, r0
/* 8033C234  48 00 00 04 */	b lbl_8033C238
lbl_8033C238:
/* 8033C238  48 00 00 04 */	b lbl_8033C23C
lbl_8033C23C:
/* 8033C23C  48 00 00 04 */	b lbl_8033C240
lbl_8033C240:
/* 8033C240  C8 3A 00 98 */	lfd f1, 0x98(r26)
/* 8033C244  48 02 5E 69 */	bl __cvt_fp2unsigned
/* 8033C248  7C 7B 1B 78 */	mr r27, r3
/* 8033C24C  C8 3A 00 90 */	lfd f1, 0x90(r26)
/* 8033C250  48 02 5E 5D */	bl __cvt_fp2unsigned
/* 8033C254  7C 65 1B 78 */	mr r5, r3
/* 8033C258  4C C6 31 82 */	crclr 6
/* 8033C25C  7F 24 CB 78 */	mr r4, r25
/* 8033C260  7F 67 DB 78 */	mr r7, r27
/* 8033C264  38 7F 01 20 */	addi r3, r31, 0x120
/* 8033C268  38 D9 00 01 */	addi r6, r25, 1
/* 8033C26C  4B CC A8 51 */	bl OSReport
/* 8033C270  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8033C274  3B 39 00 02 */	addi r25, r25, 2
/* 8033C278  28 19 00 20 */	cmplwi r25, 0x20
/* 8033C27C  41 80 FF C4 */	blt lbl_8033C240
/* 8033C280  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8033C284  4C C6 31 82 */	crclr 6
/* 8033C288  4B CC A8 35 */	bl OSReport
/* 8033C28C  3B 20 00 00 */	li r25, 0
/* 8033C290  57 20 18 38 */	slwi r0, r25, 3
/* 8033C294  7F 5C 02 14 */	add r26, r28, r0
/* 8033C298  48 00 00 04 */	b lbl_8033C29C
lbl_8033C29C:
/* 8033C29C  48 00 00 04 */	b lbl_8033C2A0
lbl_8033C2A0:
/* 8033C2A0  48 00 00 04 */	b lbl_8033C2A4
lbl_8033C2A4:
/* 8033C2A4  C8 3A 01 D0 */	lfd f1, 0x1d0(r26)
/* 8033C2A8  48 02 5E 05 */	bl __cvt_fp2unsigned
/* 8033C2AC  7C 7B 1B 78 */	mr r27, r3
/* 8033C2B0  C8 3A 01 C8 */	lfd f1, 0x1c8(r26)
/* 8033C2B4  48 02 5D F9 */	bl __cvt_fp2unsigned
/* 8033C2B8  7C 65 1B 78 */	mr r5, r3
/* 8033C2BC  4C C6 31 82 */	crclr 6
/* 8033C2C0  7F 24 CB 78 */	mr r4, r25
/* 8033C2C4  7F 67 DB 78 */	mr r7, r27
/* 8033C2C8  38 7F 01 50 */	addi r3, r31, 0x150
/* 8033C2CC  38 D9 00 01 */	addi r6, r25, 1
/* 8033C2D0  4B CC A7 ED */	bl OSReport
/* 8033C2D4  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8033C2D8  3B 39 00 02 */	addi r25, r25, 2
/* 8033C2DC  28 19 00 20 */	cmplwi r25, 0x20
/* 8033C2E0  41 80 FF C4 */	blt lbl_8033C2A4
/* 8033C2E4  38 A0 00 00 */	li r5, 0
/* 8033C2E8  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 8033C2EC  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000D8@ha */
/* 8033C2F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8033C2F4  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 8033C2F8  80 03 00 D8 */	lwz r0, 0x00D8(r3)
/* 8033C2FC  7C 04 00 40 */	cmplw r4, r0
/* 8033C300  40 82 00 08 */	bne lbl_8033C308
/* 8033C304  90 A3 00 D8 */	stw r5, 0xd8(r3)
lbl_8033C308:
/* 8033C308  7F C3 F3 78 */	mr r3, r30
/* 8033C30C  4B FF FB 2D */	bl OSSetCurrentContext
/* 8033C310  7F A3 EB 78 */	mr r3, r29
/* 8033C314  48 00 14 09 */	bl OSRestoreInterrupts
lbl_8033C318:
/* 8033C318  38 7F 01 70 */	addi r3, r31, 0x170
/* 8033C31C  4C C6 31 82 */	crclr 6
/* 8033C320  4B CC A7 9D */	bl OSReport
/* 8033C324  83 3C 00 04 */	lwz r25, 4(r28)
/* 8033C328  3B 40 00 00 */	li r26, 0
/* 8033C32C  48 00 00 04 */	b lbl_8033C330
lbl_8033C330:
/* 8033C330  48 00 00 04 */	b lbl_8033C334
lbl_8033C334:
/* 8033C334  48 00 00 20 */	b lbl_8033C354
lbl_8033C338:
/* 8033C338  80 B9 00 00 */	lwz r5, 0(r25)
/* 8033C33C  7F 24 CB 78 */	mr r4, r25
/* 8033C340  80 D9 00 04 */	lwz r6, 4(r25)
/* 8033C344  38 7F 01 98 */	addi r3, r31, 0x198
/* 8033C348  4C C6 31 82 */	crclr 6
/* 8033C34C  4B CC A7 71 */	bl OSReport
/* 8033C350  83 39 00 00 */	lwz r25, 0(r25)
lbl_8033C354:
/* 8033C354  28 19 00 00 */	cmplwi r25, 0
/* 8033C358  41 82 00 1C */	beq lbl_8033C374
/* 8033C35C  3C 19 00 01 */	addis r0, r25, 1
/* 8033C360  28 00 FF FF */	cmplwi r0, 0xffff
/* 8033C364  41 82 00 10 */	beq lbl_8033C374
/* 8033C368  28 1A 00 10 */	cmplwi r26, 0x10
/* 8033C36C  3B 5A 00 01 */	addi r26, r26, 1
/* 8033C370  41 80 FF C8 */	blt lbl_8033C338
lbl_8033C374:
/* 8033C374  BB 21 02 DC */	lmw r25, 0x2dc(r1)
/* 8033C378  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 8033C37C  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 8033C380  7C 08 03 A6 */	mtlr r0
/* 8033C384  4E 80 00 20 */	blr 
