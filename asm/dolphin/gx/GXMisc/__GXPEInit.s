lbl_8035C670:
/* 8035C670  7C 08 02 A6 */	mflr r0
/* 8035C674  3C 60 80 36 */	lis r3, GXTokenInterruptHandler@ha
/* 8035C678  90 01 00 04 */	stw r0, 4(r1)
/* 8035C67C  38 83 C5 24 */	addi r4, r3, GXTokenInterruptHandler@l
/* 8035C680  38 60 00 12 */	li r3, 0x12
/* 8035C684  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035C688  4B FE 10 B9 */	bl __OSSetInterruptHandler
/* 8035C68C  3C 60 80 36 */	lis r3, GXFinishInterruptHandler@ha
/* 8035C690  38 83 C5 F0 */	addi r4, r3, GXFinishInterruptHandler@l
/* 8035C694  38 60 00 13 */	li r3, 0x13
/* 8035C698  4B FE 10 A9 */	bl __OSSetInterruptHandler
/* 8035C69C  38 6D 93 F4 */	la r3, FinishQueue(r13) /* 80451974-_SDA_BASE_ */
/* 8035C6A0  4B FE 45 D5 */	bl OSInitThreadQueue
/* 8035C6A4  38 60 20 00 */	li r3, 0x2000
/* 8035C6A8  4B FE 14 9D */	bl __OSUnmaskInterrupts
/* 8035C6AC  38 60 10 00 */	li r3, 0x1000
/* 8035C6B0  4B FE 14 95 */	bl __OSUnmaskInterrupts
/* 8035C6B4  80 6D 93 A8 */	lwz r3, __peReg(r13)
/* 8035C6B8  38 00 00 01 */	li r0, 1
/* 8035C6BC  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8035C6C0  50 04 17 7A */	rlwimi r4, r0, 2, 0x1d, 0x1d
/* 8035C6C4  50 04 1F 38 */	rlwimi r4, r0, 3, 0x1c, 0x1c
/* 8035C6C8  50 04 07 FE */	rlwimi r4, r0, 0, 0x1f, 0x1f
/* 8035C6CC  50 04 0F BC */	rlwimi r4, r0, 1, 0x1e, 0x1e
/* 8035C6D0  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8035C6D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035C6D8  38 21 00 08 */	addi r1, r1, 8
/* 8035C6DC  7C 08 03 A6 */	mtlr r0
/* 8035C6E0  4E 80 00 20 */	blr 
