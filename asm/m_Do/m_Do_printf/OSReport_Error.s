lbl_80006C0C:
/* 80006C0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80006C10  7C 08 02 A6 */	mflr r0
/* 80006C14  90 01 00 84 */	stw r0, 0x84(r1)
/* 80006C18  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80006C1C  7C 7F 1B 78 */	mr r31, r3
/* 80006C20  40 86 00 24 */	bne cr1, lbl_80006C44
/* 80006C24  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80006C28  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80006C2C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80006C30  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80006C34  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80006C38  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80006C3C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80006C40  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80006C44:
/* 80006C44  90 61 00 08 */	stw r3, 8(r1)
/* 80006C48  90 81 00 0C */	stw r4, 0xc(r1)
/* 80006C4C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80006C50  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80006C54  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80006C58  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80006C5C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80006C60  91 41 00 24 */	stw r10, 0x24(r1)
/* 80006C64  80 6D 86 28 */	lwz r3, print_errors(r13)
/* 80006C68  38 03 00 01 */	addi r0, r3, 1
/* 80006C6C  90 0D 86 28 */	stw r0, print_errors(r13)
/* 80006C70  88 0D 86 19 */	lbz r0, struct_80450B98+0x1(r13)
/* 80006C74  28 00 00 00 */	cmplwi r0, 0
/* 80006C78  40 82 00 60 */	bne lbl_80006CD8
/* 80006C7C  3C 00 01 00 */	lis r0, 0x100
/* 80006C80  90 01 00 68 */	stw r0, 0x68(r1)
/* 80006C84  38 01 00 88 */	addi r0, r1, 0x88
/* 80006C88  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80006C8C  38 01 00 08 */	addi r0, r1, 8
/* 80006C90  90 01 00 70 */	stw r0, 0x70(r1)
/* 80006C94  4B FF FC 19 */	bl OSReportForceEnableOn
/* 80006C98  3C 60 80 37 */	lis r3, m_Do_m_Do_printf__stringBase0@ha
/* 80006C9C  38 63 3C B0 */	addi r3, r3, m_Do_m_Do_printf__stringBase0@l
/* 80006CA0  38 63 00 3D */	addi r3, r3, 0x3d
/* 80006CA4  4B FF FB 25 */	bl my_PutString__FPCc
/* 80006CA8  7F E3 FB 78 */	mr r3, r31
/* 80006CAC  38 81 00 68 */	addi r4, r1, 0x68
/* 80006CB0  4B FF FD ED */	bl OSVReport
/* 80006CB4  3C 60 80 37 */	lis r3, m_Do_m_Do_printf__stringBase0@ha
/* 80006CB8  38 63 3C B0 */	addi r3, r3, m_Do_m_Do_printf__stringBase0@l
/* 80006CBC  38 63 00 4D */	addi r3, r3, 0x4d
/* 80006CC0  4B FF FB 09 */	bl my_PutString__FPCc
/* 80006CC4  4B FF FB F5 */	bl OSReportForceEnableOff
/* 80006CC8  3C 60 80 3D */	lis r3, __files@ha
/* 80006CCC  38 63 29 B0 */	addi r3, r3, __files@l
/* 80006CD0  38 63 00 50 */	addi r3, r3, 0x50
/* 80006CD4  48 35 EB ED */	bl fflush
lbl_80006CD8:
/* 80006CD8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80006CDC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80006CE0  7C 08 03 A6 */	mtlr r0
/* 80006CE4  38 21 00 80 */	addi r1, r1, 0x80
/* 80006CE8  4E 80 00 20 */	blr 
