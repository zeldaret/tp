lbl_8034DD5C:
/* 8034DD5C  7C 08 02 A6 */	mflr r0
/* 8034DD60  3C E0 CC 00 */	lis r7, 0xCC00 /* 0xCC002000@ha */
/* 8034DD64  90 01 00 04 */	stw r0, 4(r1)
/* 8034DD68  38 C4 00 00 */	addi r6, r4, 0
/* 8034DD6C  39 27 20 00 */	addi r9, r7, 0x2000 /* 0xCC002000@l */
/* 8034DD70  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034DD74  38 A3 00 00 */	addi r5, r3, 0
/* 8034DD78  38 87 20 00 */	addi r4, r7, 0x2000
/* 8034DD7C  A4 09 00 2C */	lhzu r0, 0x2c(r9)
/* 8034DD80  54 08 05 7E */	clrlwi r8, r0, 0x15
lbl_8034DD84:
/* 8034DD84  A0 09 00 00 */	lhz r0, 0(r9)
/* 8034DD88  7D 07 43 78 */	mr r7, r8
/* 8034DD8C  A0 64 00 2E */	lhz r3, 0x2e(r4)
/* 8034DD90  54 08 05 7E */	clrlwi r8, r0, 0x15
/* 8034DD94  7C 07 40 40 */	cmplw r7, r8
/* 8034DD98  54 60 05 7E */	clrlwi r0, r3, 0x15
/* 8034DD9C  40 82 FF E8 */	bne lbl_8034DD84
/* 8034DDA0  7C 03 03 78 */	mr r3, r0
/* 8034DDA4  38 88 00 00 */	addi r4, r8, 0
/* 8034DDA8  4B FF FD 99 */	bl __VIDisplayPositionToXY
/* 8034DDAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034DDB0  38 21 00 08 */	addi r1, r1, 8
/* 8034DDB4  7C 08 03 A6 */	mtlr r0
/* 8034DDB8  4E 80 00 20 */	blr 
