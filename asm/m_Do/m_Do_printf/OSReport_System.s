lbl_80006DCC:
/* 80006DCC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80006DD0  7C 08 02 A6 */	mflr r0
/* 80006DD4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80006DD8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80006DDC  7C 7F 1B 78 */	mr r31, r3
/* 80006DE0  40 86 00 24 */	bne cr1, lbl_80006E04
/* 80006DE4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80006DE8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80006DEC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80006DF0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80006DF4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80006DF8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80006DFC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80006E00  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80006E04:
/* 80006E04  90 61 00 08 */	stw r3, 8(r1)
/* 80006E08  90 81 00 0C */	stw r4, 0xc(r1)
/* 80006E0C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80006E10  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80006E14  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80006E18  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80006E1C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80006E20  91 41 00 24 */	stw r10, 0x24(r1)
/* 80006E24  80 6D 86 30 */	lwz r3, print_systems(r13)
/* 80006E28  38 03 00 01 */	addi r0, r3, 1
/* 80006E2C  90 0D 86 30 */	stw r0, print_systems(r13)
/* 80006E30  88 0D 86 1B */	lbz r0, struct_80450B98+0x3(r13)
/* 80006E34  28 00 00 00 */	cmplwi r0, 0
/* 80006E38  40 82 00 30 */	bne lbl_80006E68
/* 80006E3C  3C 00 01 00 */	lis r0, 0x100
/* 80006E40  90 01 00 68 */	stw r0, 0x68(r1)
/* 80006E44  38 01 00 88 */	addi r0, r1, 0x88
/* 80006E48  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80006E4C  38 01 00 08 */	addi r0, r1, 8
/* 80006E50  90 01 00 70 */	stw r0, 0x70(r1)
/* 80006E54  4B FF FA 59 */	bl OSReportForceEnableOn
/* 80006E58  7F E3 FB 78 */	mr r3, r31
/* 80006E5C  38 81 00 68 */	addi r4, r1, 0x68
/* 80006E60  4B FF F9 95 */	bl OSVAttention__FPCcP16__va_list_struct
/* 80006E64  4B FF FA 55 */	bl OSReportForceEnableOff
lbl_80006E68:
/* 80006E68  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80006E6C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80006E70  7C 08 03 A6 */	mtlr r0
/* 80006E74  38 21 00 80 */	addi r1, r1, 0x80
/* 80006E78  4E 80 00 20 */	blr 
