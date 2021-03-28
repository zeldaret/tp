lbl_80006E7C:
/* 80006E7C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80006E80  7C 08 02 A6 */	mflr r0
/* 80006E84  90 01 00 94 */	stw r0, 0x94(r1)
/* 80006E88  39 61 00 90 */	addi r11, r1, 0x90
/* 80006E8C  48 35 B3 51 */	bl _savegpr_29
/* 80006E90  7C 7F 1B 78 */	mr r31, r3
/* 80006E94  7C 9E 23 78 */	mr r30, r4
/* 80006E98  7C BD 2B 78 */	mr r29, r5
/* 80006E9C  40 86 00 24 */	bne cr1, lbl_80006EC0
/* 80006EA0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80006EA4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80006EA8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80006EAC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80006EB0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80006EB4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80006EB8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80006EBC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80006EC0:
/* 80006EC0  90 61 00 08 */	stw r3, 8(r1)
/* 80006EC4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80006EC8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80006ECC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80006ED0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80006ED4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80006ED8  91 21 00 20 */	stw r9, 0x20(r1)
/* 80006EDC  91 41 00 24 */	stw r10, 0x24(r1)
/* 80006EE0  48 33 68 15 */	bl OSDisableInterrupts
/* 80006EE4  38 81 00 68 */	addi r4, r1, 0x68
/* 80006EE8  3C 00 03 00 */	lis r0, 0x300
/* 80006EEC  90 01 00 68 */	stw r0, 0x68(r1)
/* 80006EF0  38 01 00 98 */	addi r0, r1, 0x98
/* 80006EF4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80006EF8  38 01 00 08 */	addi r0, r1, 8
/* 80006EFC  90 01 00 70 */	stw r0, 0x70(r1)
/* 80006F00  7F A3 EB 78 */	mr r3, r29
/* 80006F04  4B FF FA 81 */	bl mDoPrintf_vprintf__FPCcP16__va_list_struct
/* 80006F08  3C 60 80 37 */	lis r3, m_Do_m_Do_printf__stringBase0@ha
/* 80006F0C  38 63 3C B0 */	addi r3, r3, m_Do_m_Do_printf__stringBase0@l
/* 80006F10  38 63 00 60 */	addi r3, r3, 0x60
/* 80006F14  7F E4 FB 78 */	mr r4, r31
/* 80006F18  7F C5 F3 78 */	mr r5, r30
/* 80006F1C  4C C6 31 82 */	crclr 6
/* 80006F20  4B FF F8 F5 */	bl OSAttention
/* 80006F24  3C 60 80 37 */	lis r3, m_Do_m_Do_printf__stringBase0@ha
/* 80006F28  38 63 3C B0 */	addi r3, r3, m_Do_m_Do_printf__stringBase0@l
/* 80006F2C  38 63 00 76 */	addi r3, r3, 0x76
/* 80006F30  4C C6 31 82 */	crclr 6
/* 80006F34  4B FF F8 E1 */	bl OSAttention
/* 80006F38  3B C0 00 00 */	li r30, 0
/* 80006F3C  48 33 50 BD */	bl OSGetStackPointer
/* 80006F40  7C 7D 1B 78 */	mr r29, r3
/* 80006F44  3C 60 80 37 */	lis r3, m_Do_m_Do_printf__stringBase0@ha
/* 80006F48  3B E3 3C B0 */	addi r31, r3, m_Do_m_Do_printf__stringBase0@l
/* 80006F4C  48 00 00 20 */	b lbl_80006F6C
lbl_80006F50:
/* 80006F50  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80006F54  7F A4 EB 78 */	mr r4, r29
/* 80006F58  80 BD 00 00 */	lwz r5, 0(r29)
/* 80006F5C  80 DD 00 04 */	lwz r6, 4(r29)
/* 80006F60  4C C6 31 82 */	crclr 6
/* 80006F64  4B FF F8 B1 */	bl OSAttention
/* 80006F68  83 BD 00 00 */	lwz r29, 0(r29)
lbl_80006F6C:
/* 80006F6C  28 1D 00 00 */	cmplwi r29, 0
/* 80006F70  41 82 00 1C */	beq lbl_80006F8C
/* 80006F74  3C 1D 00 01 */	addis r0, r29, 1
/* 80006F78  28 00 FF FF */	cmplwi r0, 0xffff
/* 80006F7C  41 82 00 10 */	beq lbl_80006F8C
/* 80006F80  28 1E 00 10 */	cmplwi r30, 0x10
/* 80006F84  3B DE 00 01 */	addi r30, r30, 1
/* 80006F88  41 80 FF C8 */	blt lbl_80006F50
lbl_80006F8C:
/* 80006F8C  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 80006F90  38 03 45 67 */	addi r0, r3, 0x4567 /* 0x01234567@l */
/* 80006F94  90 03 45 67 */	stw r0, 0x4567(r3)
/* 80006F98  48 33 2D 69 */	bl PPCHalt
/* 80006F9C  39 61 00 90 */	addi r11, r1, 0x90
/* 80006FA0  48 35 B2 89 */	bl _restgpr_29
/* 80006FA4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80006FA8  7C 08 03 A6 */	mtlr r0
/* 80006FAC  38 21 00 90 */	addi r1, r1, 0x90
/* 80006FB0  4E 80 00 20 */	blr 
