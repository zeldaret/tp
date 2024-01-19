lbl_8034BF6C:
/* 8034BF6C  7C 08 02 A6 */	mflr r0
/* 8034BF70  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002000@ha */
/* 8034BF74  90 01 00 04 */	stw r0, 4(r1)
/* 8034BF78  38 A3 20 00 */	addi r5, r3, 0x2000 /* 0xCC002000@l */
/* 8034BF7C  3C 60 80 45 */	lis r3, regs@ha /* 0x8044CA28@ha */
/* 8034BF80  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 8034BF84  38 E0 00 00 */	li r7, 0
/* 8034BF88  BF 61 02 E4 */	stmw r27, 0x2e4(r1)
/* 8034BF8C  3B C4 00 00 */	addi r30, r4, 0
/* 8034BF90  3B E3 CA 28 */	addi r31, r3, regs@l /* 0x8044CA28@l */
/* 8034BF94  A4 C5 00 30 */	lhzu r6, 0x30(r5)
/* 8034BF98  54 C0 04 21 */	rlwinm. r0, r6, 0, 0x10, 0x10
/* 8034BF9C  41 82 00 10 */	beq lbl_8034BFAC
/* 8034BFA0  54 C0 04 5E */	rlwinm r0, r6, 0, 0x11, 0xf
/* 8034BFA4  B0 05 00 00 */	sth r0, 0(r5)
/* 8034BFA8  60 E7 00 01 */	ori r7, r7, 1
lbl_8034BFAC:
/* 8034BFAC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002034@ha */
/* 8034BFB0  A4 83 20 34 */	lhzu r4, 0x2034(r3)  /* 0xCC002034@l */
/* 8034BFB4  54 80 04 21 */	rlwinm. r0, r4, 0, 0x10, 0x10
/* 8034BFB8  41 82 00 10 */	beq lbl_8034BFC8
/* 8034BFBC  54 80 04 5E */	rlwinm r0, r4, 0, 0x11, 0xf
/* 8034BFC0  B0 03 00 00 */	sth r0, 0(r3)
/* 8034BFC4  60 E7 00 02 */	ori r7, r7, 2
lbl_8034BFC8:
/* 8034BFC8  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002038@ha */
/* 8034BFCC  A4 83 20 38 */	lhzu r4, 0x2038(r3)  /* 0xCC002038@l */
/* 8034BFD0  54 80 04 21 */	rlwinm. r0, r4, 0, 0x10, 0x10
/* 8034BFD4  41 82 00 10 */	beq lbl_8034BFE4
/* 8034BFD8  54 80 04 5E */	rlwinm r0, r4, 0, 0x11, 0xf
/* 8034BFDC  B0 03 00 00 */	sth r0, 0(r3)
/* 8034BFE0  60 E7 00 04 */	ori r7, r7, 4
lbl_8034BFE4:
/* 8034BFE4  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC00203C@ha */
/* 8034BFE8  A4 83 20 3C */	lhzu r4, 0x203C(r3)  /* 0xCC00203C@l */
/* 8034BFEC  54 80 04 21 */	rlwinm. r0, r4, 0, 0x10, 0x10
/* 8034BFF0  41 82 00 10 */	beq lbl_8034C000
/* 8034BFF4  54 80 04 5E */	rlwinm r0, r4, 0, 0x11, 0xf
/* 8034BFF8  B0 03 00 00 */	sth r0, 0(r3)
/* 8034BFFC  60 E7 00 08 */	ori r7, r7, 8
lbl_8034C000:
/* 8034C000  54 E0 07 7B */	rlwinm. r0, r7, 0, 0x1d, 0x1d
/* 8034C004  40 82 00 0C */	bne lbl_8034C010
/* 8034C008  54 E0 07 39 */	rlwinm. r0, r7, 0, 0x1c, 0x1c
/* 8034C00C  41 82 00 54 */	beq lbl_8034C060
lbl_8034C010:
/* 8034C010  38 61 00 18 */	addi r3, r1, 0x18
/* 8034C014  4B FE FF ED */	bl OSClearContext
/* 8034C018  38 61 00 18 */	addi r3, r1, 0x18
/* 8034C01C  4B FE FE 1D */	bl OSSetCurrentContext
/* 8034C020  80 0D 92 7C */	lwz r0, PositionCallback(r13)
/* 8034C024  28 00 00 00 */	cmplwi r0, 0
/* 8034C028  41 82 00 24 */	beq lbl_8034C04C
/* 8034C02C  38 61 00 16 */	addi r3, r1, 0x16
/* 8034C030  38 81 00 14 */	addi r4, r1, 0x14
/* 8034C034  48 00 1D 29 */	bl __VIGetCurrentPosition
/* 8034C038  81 8D 92 7C */	lwz r12, PositionCallback(r13)
/* 8034C03C  A8 61 00 16 */	lha r3, 0x16(r1)
/* 8034C040  7D 88 03 A6 */	mtlr r12
/* 8034C044  A8 81 00 14 */	lha r4, 0x14(r1)
/* 8034C048  4E 80 00 21 */	blrl 
lbl_8034C04C:
/* 8034C04C  38 61 00 18 */	addi r3, r1, 0x18
/* 8034C050  4B FE FF B1 */	bl OSClearContext
/* 8034C054  7F C3 F3 78 */	mr r3, r30
/* 8034C058  4B FE FD E1 */	bl OSSetCurrentContext
/* 8034C05C  48 00 01 70 */	b lbl_8034C1CC
lbl_8034C060:
/* 8034C060  80 8D 92 64 */	lwz r4, retraceCount(r13)
/* 8034C064  38 61 00 18 */	addi r3, r1, 0x18
/* 8034C068  38 04 00 01 */	addi r0, r4, 1
/* 8034C06C  90 0D 92 64 */	stw r0, retraceCount(r13)
/* 8034C070  4B FE FF 91 */	bl OSClearContext
/* 8034C074  38 61 00 18 */	addi r3, r1, 0x18
/* 8034C078  4B FE FD C1 */	bl OSSetCurrentContext
/* 8034C07C  81 8D 92 74 */	lwz r12, PreCB(r13)
/* 8034C080  28 0C 00 00 */	cmplwi r12, 0
/* 8034C084  41 82 00 10 */	beq lbl_8034C094
/* 8034C088  80 6D 92 64 */	lwz r3, retraceCount(r13)
/* 8034C08C  7D 88 03 A6 */	mtlr r12
/* 8034C090  4E 80 00 21 */	blrl 
lbl_8034C094:
/* 8034C094  80 0D 92 68 */	lwz r0, flushFlag(r13)
/* 8034C098  28 00 00 00 */	cmplwi r0, 0
/* 8034C09C  41 82 00 F4 */	beq lbl_8034C190
/* 8034C0A0  80 0D 92 98 */	lwz r0, shdwChangeMode(r13)
/* 8034C0A4  28 00 00 01 */	cmplwi r0, 1
/* 8034C0A8  40 82 00 10 */	bne lbl_8034C0B8
/* 8034C0AC  48 00 18 55 */	bl getCurrentFieldEvenOdd
/* 8034C0B0  28 03 00 00 */	cmplwi r3, 0
/* 8034C0B4  41 82 00 C4 */	beq lbl_8034C178
lbl_8034C0B8:
/* 8034C0B8  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002000@ha */
/* 8034C0BC  3B A3 20 00 */	addi r29, r3, 0x2000 /* 0xCC002000@l */
/* 8034C0C0  48 00 00 78 */	b lbl_8034C138
lbl_8034C0C4:
/* 8034C0C4  80 6D 92 A0 */	lwz r3, shdwChanged(r13)
/* 8034C0C8  38 A0 00 20 */	li r5, 0x20
/* 8034C0CC  83 6D 92 A4 */	lwz r27, shdwChanged+0x4(r13)
/* 8034C0D0  38 9B 00 00 */	addi r4, r27, 0
/* 8034C0D4  48 01 65 9D */	bl __shr2u
/* 8034C0D8  7C 84 00 34 */	cntlzw r4, r4
/* 8034C0DC  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034C0E0  38 00 FF FF */	li r0, -1
/* 8034C0E4  7F 60 00 38 */	and r0, r27, r0
/* 8034C0E8  40 80 00 08 */	bge lbl_8034C0F0
/* 8034C0EC  48 00 00 0C */	b lbl_8034C0F8
lbl_8034C0F0:
/* 8034C0F0  7C 03 00 34 */	cntlzw r3, r0
/* 8034C0F4  38 83 00 20 */	addi r4, r3, 0x20
lbl_8034C0F8:
/* 8034C0F8  54 86 08 3C */	slwi r6, r4, 1
/* 8034C0FC  7C 7F 32 14 */	add r3, r31, r6
/* 8034C100  A0 03 00 78 */	lhz r0, 0x78(r3)
/* 8034C104  20 A4 00 3F */	subfic r5, r4, 0x3f
/* 8034C108  38 60 00 00 */	li r3, 0
/* 8034C10C  7C 1D 33 2E */	sthx r0, r29, r6
/* 8034C110  38 80 00 01 */	li r4, 1
/* 8034C114  48 01 65 39 */	bl __shl2i
/* 8034C118  80 0D 92 A0 */	lwz r0, shdwChanged(r13)
/* 8034C11C  7C 65 18 F8 */	nor r5, r3, r3
/* 8034C120  7C 84 20 F8 */	nor r4, r4, r4
/* 8034C124  80 6D 92 A4 */	lwz r3, shdwChanged+0x4(r13)
/* 8034C128  7C 00 28 38 */	and r0, r0, r5
/* 8034C12C  7C 63 20 38 */	and r3, r3, r4
/* 8034C130  90 6D 92 A4 */	stw r3, shdwChanged+0x4(r13)
/* 8034C134  90 0D 92 A0 */	stw r0, shdwChanged(r13)
lbl_8034C138:
/* 8034C138  80 0D 92 A0 */	lwz r0, shdwChanged(r13)
/* 8034C13C  38 80 00 00 */	li r4, 0
/* 8034C140  80 6D 92 A4 */	lwz r3, shdwChanged+0x4(r13)
/* 8034C144  7C 00 22 78 */	xor r0, r0, r4
/* 8034C148  7C 63 22 78 */	xor r3, r3, r4
/* 8034C14C  7C 60 03 79 */	or. r0, r3, r0
/* 8034C150  40 82 FF 74 */	bne lbl_8034C0C4
/* 8034C154  90 8D 92 98 */	stw r4, shdwChangeMode(r13)
/* 8034C158  38 80 00 01 */	li r4, 1
/* 8034C15C  80 0D 92 B0 */	lwz r0, NextBufAddr(r13)
/* 8034C160  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 8034C164  90 6D 92 A8 */	stw r3, CurrTiming(r13)
/* 8034C168  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8034C16C  90 6D 92 AC */	stw r3, CurrTvMode(r13)
/* 8034C170  90 0D 92 B4 */	stw r0, CurrBufAddr(r13)
/* 8034C174  48 00 00 08 */	b lbl_8034C17C
lbl_8034C178:
/* 8034C178  38 80 00 00 */	li r4, 0
lbl_8034C17C:
/* 8034C17C  2C 04 00 00 */	cmpwi r4, 0
/* 8034C180  41 82 00 10 */	beq lbl_8034C190
/* 8034C184  38 00 00 00 */	li r0, 0
/* 8034C188  90 0D 92 68 */	stw r0, flushFlag(r13)
/* 8034C18C  4B FF A1 E9 */	bl SIRefreshSamplingRate
lbl_8034C190:
/* 8034C190  80 0D 92 78 */	lwz r0, PostCB(r13)
/* 8034C194  28 00 00 00 */	cmplwi r0, 0
/* 8034C198  41 82 00 1C */	beq lbl_8034C1B4
/* 8034C19C  38 61 00 18 */	addi r3, r1, 0x18
/* 8034C1A0  4B FE FE 61 */	bl OSClearContext
/* 8034C1A4  81 8D 92 78 */	lwz r12, PostCB(r13)
/* 8034C1A8  80 6D 92 64 */	lwz r3, retraceCount(r13)
/* 8034C1AC  7D 88 03 A6 */	mtlr r12
/* 8034C1B0  4E 80 00 21 */	blrl 
lbl_8034C1B4:
/* 8034C1B4  38 6D 92 6C */	la r3, retraceQueue(r13) /* 804517EC-_SDA_BASE_ */
/* 8034C1B8  4B FF 5A E1 */	bl OSWakeupThread
/* 8034C1BC  38 61 00 18 */	addi r3, r1, 0x18
/* 8034C1C0  4B FE FE 41 */	bl OSClearContext
/* 8034C1C4  7F C3 F3 78 */	mr r3, r30
/* 8034C1C8  4B FE FC 71 */	bl OSSetCurrentContext
lbl_8034C1CC:
/* 8034C1CC  BB 61 02 E4 */	lmw r27, 0x2e4(r1)
/* 8034C1D0  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 8034C1D4  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 8034C1D8  7C 08 03 A6 */	mtlr r0
/* 8034C1DC  4E 80 00 20 */	blr 
