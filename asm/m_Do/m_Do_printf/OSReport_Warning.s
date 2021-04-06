lbl_80006CEC:
/* 80006CEC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80006CF0  7C 08 02 A6 */	mflr r0
/* 80006CF4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80006CF8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80006CFC  7C 7F 1B 78 */	mr r31, r3
/* 80006D00  40 86 00 24 */	bne cr1, lbl_80006D24
/* 80006D04  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80006D08  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80006D0C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80006D10  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80006D14  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80006D18  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80006D1C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80006D20  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80006D24:
/* 80006D24  90 61 00 08 */	stw r3, 8(r1)
/* 80006D28  90 81 00 0C */	stw r4, 0xc(r1)
/* 80006D2C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80006D30  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80006D34  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80006D38  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80006D3C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80006D40  91 41 00 24 */	stw r10, 0x24(r1)
/* 80006D44  80 6D 86 2C */	lwz r3, print_warings(r13)
/* 80006D48  38 03 00 01 */	addi r0, r3, 1
/* 80006D4C  90 0D 86 2C */	stw r0, print_warings(r13)
/* 80006D50  88 0D 86 1A */	lbz r0, struct_80450B98+0x2(r13)
/* 80006D54  28 00 00 00 */	cmplwi r0, 0
/* 80006D58  40 82 00 60 */	bne lbl_80006DB8
/* 80006D5C  3C 00 01 00 */	lis r0, 0x100
/* 80006D60  90 01 00 68 */	stw r0, 0x68(r1)
/* 80006D64  38 01 00 88 */	addi r0, r1, 0x88
/* 80006D68  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80006D6C  38 01 00 08 */	addi r0, r1, 8
/* 80006D70  90 01 00 70 */	stw r0, 0x70(r1)
/* 80006D74  4B FF FB 39 */	bl OSReportForceEnableOn
/* 80006D78  3C 60 80 37 */	lis r3, m_Do_m_Do_printf__stringBase0@ha /* 0x80373CB0@ha */
/* 80006D7C  38 63 3C B0 */	addi r3, r3, m_Do_m_Do_printf__stringBase0@l /* 0x80373CB0@l */
/* 80006D80  38 63 00 51 */	addi r3, r3, 0x51
/* 80006D84  4B FF FA 45 */	bl my_PutString__FPCc
/* 80006D88  7F E3 FB 78 */	mr r3, r31
/* 80006D8C  38 81 00 68 */	addi r4, r1, 0x68
/* 80006D90  4B FF FA 65 */	bl OSVAttention__FPCcP16__va_list_struct
/* 80006D94  3C 60 80 37 */	lis r3, m_Do_m_Do_printf__stringBase0@ha /* 0x80373CB0@ha */
/* 80006D98  38 63 3C B0 */	addi r3, r3, m_Do_m_Do_printf__stringBase0@l /* 0x80373CB0@l */
/* 80006D9C  38 63 00 4D */	addi r3, r3, 0x4d
/* 80006DA0  4B FF FA 29 */	bl my_PutString__FPCc
/* 80006DA4  4B FF FB 15 */	bl OSReportForceEnableOff
/* 80006DA8  3C 60 80 3D */	lis r3, __files@ha /* 0x803D29B0@ha */
/* 80006DAC  38 63 29 B0 */	addi r3, r3, __files@l /* 0x803D29B0@l */
/* 80006DB0  38 63 00 50 */	addi r3, r3, 0x50
/* 80006DB4  48 35 EB 0D */	bl fflush
lbl_80006DB8:
/* 80006DB8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80006DBC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80006DC0  7C 08 03 A6 */	mtlr r0
/* 80006DC4  38 21 00 80 */	addi r1, r1, 0x80
/* 80006DC8  4E 80 00 20 */	blr 
