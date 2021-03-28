lbl_8035C094:
/* 8035C094  7C 08 02 A6 */	mflr r0
/* 8035C098  90 01 00 04 */	stw r0, 4(r1)
/* 8035C09C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035C0A0  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8035C0A4  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035C0A8  88 03 05 AA */	lbz r0, 0x5aa(r3)
/* 8035C0AC  28 00 00 00 */	cmplwi r0, 0
/* 8035C0B0  41 82 00 B0 */	beq lbl_8035C160
/* 8035C0B4  4B FF ED FD */	bl GXGetGPFifo
/* 8035C0B8  28 03 00 00 */	cmplwi r3, 0
/* 8035C0BC  41 82 00 A4 */	beq lbl_8035C160
/* 8035C0C0  80 6D 93 AC */	lwz r3, __memReg(r13)
/* 8035C0C4  38 C3 00 4E */	addi r6, r3, 0x4e
/* 8035C0C8  A0 83 00 4E */	lhz r4, 0x4e(r3)
/* 8035C0CC  38 A3 00 50 */	addi r5, r3, 0x50
lbl_8035C0D0:
/* 8035C0D0  7C 80 23 78 */	mr r0, r4
/* 8035C0D4  A0 86 00 00 */	lhz r4, 0(r6)
/* 8035C0D8  A0 65 00 00 */	lhz r3, 0(r5)
/* 8035C0DC  7C 04 00 40 */	cmplw r4, r0
/* 8035C0E0  40 82 FF F0 */	bne lbl_8035C0D0
/* 8035C0E4  54 80 80 1E */	slwi r0, r4, 0x10
/* 8035C0E8  7C 1B 1B 78 */	or r27, r0, r3
lbl_8035C0EC:
/* 8035C0EC  4B FE 66 11 */	bl OSGetTime
/* 8035C0F0  38 00 00 00 */	li r0, 0
/* 8035C0F4  3B E4 00 00 */	addi r31, r4, 0
/* 8035C0F8  3B C3 00 00 */	addi r30, r3, 0
/* 8035C0FC  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8035C100  3B A0 00 08 */	li r29, 8
lbl_8035C104:
/* 8035C104  4B FE 65 F9 */	bl OSGetTime
/* 8035C108  7C 9F 20 10 */	subfc r4, r31, r4
/* 8035C10C  7C 1E 19 10 */	subfe r0, r30, r3
/* 8035C110  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C114  7C 04 E8 10 */	subfc r0, r4, r29
/* 8035C118  7C 63 E1 10 */	subfe r3, r3, r28
/* 8035C11C  7C 7C E1 10 */	subfe r3, r28, r28
/* 8035C120  7C 63 00 D1 */	neg. r3, r3
/* 8035C124  41 82 FF E0 */	beq lbl_8035C104
/* 8035C128  80 6D 93 AC */	lwz r3, __memReg(r13)
/* 8035C12C  38 C3 00 4E */	addi r6, r3, 0x4e
/* 8035C130  A0 83 00 4E */	lhz r4, 0x4e(r3)
/* 8035C134  38 A3 00 50 */	addi r5, r3, 0x50
lbl_8035C138:
/* 8035C138  7C 80 23 78 */	mr r0, r4
/* 8035C13C  A0 86 00 00 */	lhz r4, 0(r6)
/* 8035C140  A0 65 00 00 */	lhz r3, 0(r5)
/* 8035C144  7C 04 00 40 */	cmplw r4, r0
/* 8035C148  40 82 FF F0 */	bne lbl_8035C138
/* 8035C14C  54 80 80 1E */	slwi r0, r4, 0x10
/* 8035C150  7C 00 1B 78 */	or r0, r0, r3
/* 8035C154  7C 00 D8 40 */	cmplw r0, r27
/* 8035C158  7C 1B 03 78 */	mr r27, r0
/* 8035C15C  40 82 FF 90 */	bne lbl_8035C0EC
lbl_8035C160:
/* 8035C160  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC003000@ha */
/* 8035C164  38 00 00 01 */	li r0, 1
/* 8035C168  3B 63 30 00 */	addi r27, r3, 0x3000 /* 0xCC003000@l */
/* 8035C16C  94 1B 00 18 */	stwu r0, 0x18(r27)
/* 8035C170  4B FE 65 8D */	bl OSGetTime
/* 8035C174  38 00 00 00 */	li r0, 0
/* 8035C178  3B E4 00 00 */	addi r31, r4, 0
/* 8035C17C  3B C3 00 00 */	addi r30, r3, 0
/* 8035C180  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8035C184  3B A0 00 32 */	li r29, 0x32
lbl_8035C188:
/* 8035C188  4B FE 65 75 */	bl OSGetTime
/* 8035C18C  7C 9F 20 10 */	subfc r4, r31, r4
/* 8035C190  7C 1E 19 10 */	subfe r0, r30, r3
/* 8035C194  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C198  7C 04 E8 10 */	subfc r0, r4, r29
/* 8035C19C  7C 63 E1 10 */	subfe r3, r3, r28
/* 8035C1A0  7C 7C E1 10 */	subfe r3, r28, r28
/* 8035C1A4  7C 63 00 D1 */	neg. r3, r3
/* 8035C1A8  41 82 FF E0 */	beq lbl_8035C188
/* 8035C1AC  3B C0 00 00 */	li r30, 0
/* 8035C1B0  93 DB 00 00 */	stw r30, 0(r27)
/* 8035C1B4  4B FE 65 49 */	bl OSGetTime
/* 8035C1B8  3B 84 00 00 */	addi r28, r4, 0
/* 8035C1BC  3B A3 00 00 */	addi r29, r3, 0
/* 8035C1C0  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 8035C1C4  3B C0 00 05 */	li r30, 5
lbl_8035C1C8:
/* 8035C1C8  4B FE 65 35 */	bl OSGetTime
/* 8035C1CC  7C 9C 20 10 */	subfc r4, r28, r4
/* 8035C1D0  7C 1D 19 10 */	subfe r0, r29, r3
/* 8035C1D4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C1D8  7C 04 F0 10 */	subfc r0, r4, r30
/* 8035C1DC  7C 63 F9 10 */	subfe r3, r3, r31
/* 8035C1E0  7C 7F F9 10 */	subfe r3, r31, r31
/* 8035C1E4  7C 63 00 D1 */	neg. r3, r3
/* 8035C1E8  41 82 FF E0 */	beq lbl_8035C1C8
/* 8035C1EC  4B FF EC C5 */	bl GXGetGPFifo
/* 8035C1F0  28 03 00 00 */	cmplwi r3, 0
/* 8035C1F4  41 82 00 54 */	beq lbl_8035C248
/* 8035C1F8  4B FF EB 5D */	bl __GXCleanGPFifo
/* 8035C1FC  4B FF D2 D1 */	bl __GXInitRevisionBits
/* 8035C200  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035C204  38 00 00 00 */	li r0, 0
/* 8035C208  90 03 05 AC */	stw r0, 0x5ac(r3)
/* 8035C20C  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8035C210  28 00 00 00 */	cmplwi r0, 0
/* 8035C214  41 82 00 08 */	beq lbl_8035C21C
/* 8035C218  48 00 04 CD */	bl __GXSetDirtyState
lbl_8035C21C:
/* 8035C21C  38 00 00 00 */	li r0, 0
/* 8035C220  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035C224  90 03 80 00 */	stw r0, 0x8000(r3)
/* 8035C228  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C22C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C230  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C234  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C238  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C23C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C240  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C244  4B FD DA B5 */	bl PPCSync
lbl_8035C248:
/* 8035C248  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8035C24C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035C250  38 21 00 28 */	addi r1, r1, 0x28
/* 8035C254  7C 08 03 A6 */	mtlr r0
/* 8035C258  4E 80 00 20 */	blr 
