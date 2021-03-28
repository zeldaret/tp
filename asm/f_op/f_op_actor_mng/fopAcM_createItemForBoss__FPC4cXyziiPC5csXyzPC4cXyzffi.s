lbl_8001C0D4:
/* 8001C0D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001C0D8  7C 08 02 A6 */	mflr r0
/* 8001C0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001C0E0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8001C0E4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8001C0E8  7C 6C 1B 78 */	mr r12, r3
/* 8001C0EC  7C AB 2B 78 */	mr r11, r5
/* 8001C0F0  7C CA 33 78 */	mr r10, r6
/* 8001C0F4  7C E9 3B 78 */	mr r9, r7
/* 8001C0F8  FF C0 08 90 */	fmr f30, f1
/* 8001C0FC  FF E0 10 90 */	fmr f31, f2
/* 8001C100  38 00 00 00 */	li r0, 0
/* 8001C104  90 01 00 08 */	stw r0, 8(r1)
/* 8001C108  38 60 02 1B */	li r3, 0x21b
/* 8001C10C  55 00 40 2E */	slwi r0, r8, 8
/* 8001C110  64 05 FF FF */	oris r5, r0, 0xffff
/* 8001C114  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8001C118  7C A4 03 78 */	or r4, r5, r0
/* 8001C11C  7D 85 63 78 */	mr r5, r12
/* 8001C120  7D 66 5B 78 */	mr r6, r11
/* 8001C124  7D 47 53 78 */	mr r7, r10
/* 8001C128  7D 28 4B 78 */	mr r8, r9
/* 8001C12C  39 20 FF FF */	li r9, -1
/* 8001C130  39 40 00 00 */	li r10, 0
/* 8001C134  4B FF DC D1 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C138  28 03 00 00 */	cmplwi r3, 0
/* 8001C13C  41 82 00 0C */	beq lbl_8001C148
/* 8001C140  D3 C3 05 2C */	stfs f30, 0x52c(r3)
/* 8001C144  D3 E3 04 FC */	stfs f31, 0x4fc(r3)
lbl_8001C148:
/* 8001C148  28 03 00 00 */	cmplwi r3, 0
/* 8001C14C  41 82 00 0C */	beq lbl_8001C158
/* 8001C150  80 63 00 04 */	lwz r3, 4(r3)
/* 8001C154  48 00 00 08 */	b lbl_8001C15C
lbl_8001C158:
/* 8001C158  38 60 FF FF */	li r3, -1
lbl_8001C15C:
/* 8001C15C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8001C160  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8001C164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001C168  7C 08 03 A6 */	mtlr r0
/* 8001C16C  38 21 00 20 */	addi r1, r1, 0x20
/* 8001C170  4E 80 00 20 */	blr 
