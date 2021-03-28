lbl_80C30E54:
/* 80C30E54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C30E58  7C 08 02 A6 */	mflr r0
/* 80C30E5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C30E60  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C30E64  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C30E68  7C 7F 1B 78 */	mr r31, r3
/* 80C30E6C  C0 23 05 7C */	lfs f1, 0x57c(r3)
/* 80C30E70  4B 73 12 3C */	b __cvt_fp2unsigned
/* 80C30E74  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80C30E78  7C 03 00 40 */	cmplw r3, r0
/* 80C30E7C  40 81 00 20 */	ble lbl_80C30E9C
/* 80C30E80  38 7F 08 44 */	addi r3, r31, 0x844
/* 80C30E84  3C 80 80 C3 */	lis r4, lit_3945@ha
/* 80C30E88  C0 24 11 64 */	lfs f1, lit_3945@l(r4)
/* 80C30E8C  3C 80 80 C3 */	lis r4, lit_3867@ha
/* 80C30E90  C0 44 11 60 */	lfs f2, lit_3867@l(r4)
/* 80C30E94  4B 63 F8 AC */	b cLib_chaseF__FPfff
/* 80C30E98  48 00 00 18 */	b lbl_80C30EB0
lbl_80C30E9C:
/* 80C30E9C  38 7F 08 44 */	addi r3, r31, 0x844
/* 80C30EA0  3C 80 80 C3 */	lis r4, lit_3867@ha
/* 80C30EA4  C0 24 11 60 */	lfs f1, lit_3867@l(r4)
/* 80C30EA8  FC 40 08 90 */	fmr f2, f1
/* 80C30EAC  4B 63 F8 94 */	b cLib_chaseF__FPfff
lbl_80C30EB0:
/* 80C30EB0  88 1F 08 5E */	lbz r0, 0x85e(r31)
/* 80C30EB4  28 00 00 02 */	cmplwi r0, 2
/* 80C30EB8  41 82 01 90 */	beq lbl_80C31048
/* 80C30EBC  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C30EC0  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C30EC4  38 63 00 06 */	addi r3, r3, 6
/* 80C30EC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C30ECC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C30ED0  3B C4 4E 00 */	addi r30, r4, 0x4e00
/* 80C30ED4  7F C4 F3 78 */	mr r4, r30
/* 80C30ED8  4B 73 7A BC */	b strcmp
/* 80C30EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80C30EE0  40 82 00 34 */	bne lbl_80C30F14
/* 80C30EE4  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C30EE8  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C30EEC  38 63 00 06 */	addi r3, r3, 6
/* 80C30EF0  7F C4 F3 78 */	mr r4, r30
/* 80C30EF4  4B 73 7A A0 */	b strcmp
/* 80C30EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80C30EFC  40 82 01 4C */	bne lbl_80C31048
/* 80C30F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C30F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C30F08  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C30F0C  2C 00 00 03 */	cmpwi r0, 3
/* 80C30F10  41 82 01 38 */	beq lbl_80C31048
lbl_80C30F14:
/* 80C30F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C30F18  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80C30F1C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C30F20  38 00 00 FF */	li r0, 0xff
/* 80C30F24  90 01 00 08 */	stw r0, 8(r1)
/* 80C30F28  38 80 00 00 */	li r4, 0
/* 80C30F2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C30F30  38 00 FF FF */	li r0, -1
/* 80C30F34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C30F38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C30F3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C30F40  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C30F44  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C30F48  38 A0 00 00 */	li r5, 0
/* 80C30F4C  38 C0 0A 1B */	li r6, 0xa1b
/* 80C30F50  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C30F54  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C30F58  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C30F5C  39 40 00 00 */	li r10, 0
/* 80C30F60  3D 60 80 C3 */	lis r11, lit_3867@ha
/* 80C30F64  C0 2B 11 60 */	lfs f1, lit_3867@l(r11)
/* 80C30F68  4B 41 C5 64 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C30F6C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C30F70  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C30F74  38 63 02 10 */	addi r3, r3, 0x210
/* 80C30F78  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C30F7C  4B 41 A9 9C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C30F80  28 03 00 00 */	cmplwi r3, 0
/* 80C30F84  41 82 00 18 */	beq lbl_80C30F9C
/* 80C30F88  C0 3F 08 44 */	lfs f1, 0x844(r31)
/* 80C30F8C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C30F90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C30F94  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80C30F98  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80C30F9C:
/* 80C30F9C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C30FA0  38 00 00 FF */	li r0, 0xff
/* 80C30FA4  90 01 00 08 */	stw r0, 8(r1)
/* 80C30FA8  38 80 00 00 */	li r4, 0
/* 80C30FAC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C30FB0  38 00 FF FF */	li r0, -1
/* 80C30FB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C30FB8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C30FBC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C30FC0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C30FC4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C30FC8  38 A0 00 00 */	li r5, 0
/* 80C30FCC  38 C0 0A 1C */	li r6, 0xa1c
/* 80C30FD0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C30FD4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C30FD8  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C30FDC  39 40 00 00 */	li r10, 0
/* 80C30FE0  3D 60 80 C3 */	lis r11, lit_3867@ha
/* 80C30FE4  C0 2B 11 60 */	lfs f1, lit_3867@l(r11)
/* 80C30FE8  4B 41 C4 E4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C30FEC  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C30FF0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C30FF4  38 63 02 10 */	addi r3, r3, 0x210
/* 80C30FF8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C30FFC  4B 41 A9 1C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C31000  28 03 00 00 */	cmplwi r3, 0
/* 80C31004  41 82 00 18 */	beq lbl_80C3101C
/* 80C31008  C0 3F 08 44 */	lfs f1, 0x844(r31)
/* 80C3100C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C31010  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C31014  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80C31018  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80C3101C:
/* 80C3101C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C31020  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C31024  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C31028  38 7F 05 98 */	addi r3, r31, 0x598
/* 80C3102C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C31030  38 A0 00 00 */	li r5, 0
/* 80C31034  38 C0 FF FF */	li r6, -1
/* 80C31038  81 9F 05 98 */	lwz r12, 0x598(r31)
/* 80C3103C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C31040  7D 89 03 A6 */	mtctr r12
/* 80C31044  4E 80 04 21 */	bctrl 
lbl_80C31048:
/* 80C31048  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C3104C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C31050  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C31054  7C 08 03 A6 */	mtlr r0
/* 80C31058  38 21 00 30 */	addi r1, r1, 0x30
/* 80C3105C  4E 80 00 20 */	blr 
