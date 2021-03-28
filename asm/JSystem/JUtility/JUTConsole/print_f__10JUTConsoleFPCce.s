lbl_802E7BB8:
/* 802E7BB8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802E7BBC  7C 08 02 A6 */	mflr r0
/* 802E7BC0  90 01 00 84 */	stw r0, 0x84(r1)
/* 802E7BC4  40 86 00 24 */	bne cr1, lbl_802E7BE8
/* 802E7BC8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802E7BCC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802E7BD0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802E7BD4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802E7BD8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802E7BDC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802E7BE0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 802E7BE4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_802E7BE8:
/* 802E7BE8  90 61 00 08 */	stw r3, 8(r1)
/* 802E7BEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 802E7BF0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802E7BF4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802E7BF8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802E7BFC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802E7C00  91 21 00 20 */	stw r9, 0x20(r1)
/* 802E7C04  91 41 00 24 */	stw r10, 0x24(r1)
/* 802E7C08  38 A1 00 68 */	addi r5, r1, 0x68
/* 802E7C0C  3C 00 02 00 */	lis r0, 0x200
/* 802E7C10  90 01 00 68 */	stw r0, 0x68(r1)
/* 802E7C14  38 01 00 88 */	addi r0, r1, 0x88
/* 802E7C18  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802E7C1C  38 01 00 08 */	addi r0, r1, 8
/* 802E7C20  90 01 00 70 */	stw r0, 0x70(r1)
/* 802E7C24  48 00 03 0D */	bl JUTConsole_print_f_va_
/* 802E7C28  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802E7C2C  7C 08 03 A6 */	mtlr r0
/* 802E7C30  38 21 00 80 */	addi r1, r1, 0x80
/* 802E7C34  4E 80 00 20 */	blr 
