lbl_802F4778:
/* 802F4778  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802F477C  7C 08 02 A6 */	mflr r0
/* 802F4780  90 01 00 94 */	stw r0, 0x94(r1)
/* 802F4784  39 61 00 90 */	addi r11, r1, 0x90
/* 802F4788  48 06 DA 55 */	bl _savegpr_29
/* 802F478C  7C 7D 1B 78 */	mr r29, r3
/* 802F4790  7C 9E 23 78 */	mr r30, r4
/* 802F4794  7C BF 2B 78 */	mr r31, r5
/* 802F4798  40 86 00 24 */	bne cr1, lbl_802F47BC
/* 802F479C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802F47A0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802F47A4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802F47A8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802F47AC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802F47B0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802F47B4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 802F47B8  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_802F47BC:
/* 802F47BC  90 61 00 08 */	stw r3, 8(r1)
/* 802F47C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 802F47C4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802F47C8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802F47CC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802F47D0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802F47D4  91 21 00 20 */	stw r9, 0x20(r1)
/* 802F47D8  91 41 00 24 */	stw r10, 0x24(r1)
/* 802F47DC  7F A3 EB 78 */	mr r3, r29
/* 802F47E0  4B FF FF 7D */	bl locate__8J2DPrintFff
/* 802F47E4  38 C1 00 68 */	addi r6, r1, 0x68
/* 802F47E8  3C 00 03 02 */	lis r0, 0x302
/* 802F47EC  90 01 00 68 */	stw r0, 0x68(r1)
/* 802F47F0  38 01 00 98 */	addi r0, r1, 0x98
/* 802F47F4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802F47F8  38 01 00 08 */	addi r0, r1, 8
/* 802F47FC  90 01 00 70 */	stw r0, 0x70(r1)
/* 802F4800  7F A3 EB 78 */	mr r3, r29
/* 802F4804  7F C4 F3 78 */	mr r4, r30
/* 802F4808  7F E5 FB 78 */	mr r5, r31
/* 802F480C  4B FF FA E5 */	bl J2DPrint_print_alpha_va
/* 802F4810  39 61 00 90 */	addi r11, r1, 0x90
/* 802F4814  48 06 DA 15 */	bl _restgpr_29
/* 802F4818  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802F481C  7C 08 03 A6 */	mtlr r0
/* 802F4820  38 21 00 90 */	addi r1, r1, 0x90
/* 802F4824  4E 80 00 20 */	blr 
