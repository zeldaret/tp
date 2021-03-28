lbl_804CCE00:
/* 804CCE00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CCE04  7C 08 02 A6 */	mflr r0
/* 804CCE08  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CCE0C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804CCE10  7C 7F 1B 78 */	mr r31, r3
/* 804CCE14  3C 60 80 4D */	lis r3, lit_3969@ha
/* 804CCE18  C0 03 E4 6C */	lfs f0, lit_3969@l(r3)
/* 804CCE1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804CCE20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804CCE24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804CCE28  80 1F 09 78 */	lwz r0, 0x978(r31)
/* 804CCE2C  28 00 00 00 */	cmplwi r0, 0
/* 804CCE30  40 82 00 58 */	bne lbl_804CCE88
/* 804CCE34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CCE38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CCE3C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804CCE40  38 1F 09 74 */	addi r0, r31, 0x974
/* 804CCE44  90 01 00 08 */	stw r0, 8(r1)
/* 804CCE48  38 00 FF FF */	li r0, -1
/* 804CCE4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CCE50  38 00 00 00 */	li r0, 0
/* 804CCE54  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CCE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCE5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CCE60  38 80 00 00 */	li r4, 0
/* 804CCE64  38 A0 08 DE */	li r5, 0x8de
/* 804CCE68  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 804CCE6C  38 E0 00 00 */	li r7, 0
/* 804CCE70  39 00 00 00 */	li r8, 0
/* 804CCE74  39 21 00 20 */	addi r9, r1, 0x20
/* 804CCE78  39 40 00 FF */	li r10, 0xff
/* 804CCE7C  3D 60 80 4D */	lis r11, lit_3970@ha
/* 804CCE80  C0 2B E4 70 */	lfs f1, lit_3970@l(r11)
/* 804CCE84  4B B7 FC 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804CCE88:
/* 804CCE88  80 1F 09 8C */	lwz r0, 0x98c(r31)
/* 804CCE8C  28 00 00 00 */	cmplwi r0, 0
/* 804CCE90  40 82 00 58 */	bne lbl_804CCEE8
/* 804CCE94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CCE98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CCE9C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804CCEA0  38 1F 09 88 */	addi r0, r31, 0x988
/* 804CCEA4  90 01 00 08 */	stw r0, 8(r1)
/* 804CCEA8  38 00 FF FF */	li r0, -1
/* 804CCEAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CCEB0  38 00 00 00 */	li r0, 0
/* 804CCEB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CCEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCEBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CCEC0  38 80 00 00 */	li r4, 0
/* 804CCEC4  38 A0 08 DF */	li r5, 0x8df
/* 804CCEC8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 804CCECC  38 E0 00 00 */	li r7, 0
/* 804CCED0  39 00 00 00 */	li r8, 0
/* 804CCED4  39 21 00 20 */	addi r9, r1, 0x20
/* 804CCED8  39 40 00 FF */	li r10, 0xff
/* 804CCEDC  3D 60 80 4D */	lis r11, lit_3970@ha
/* 804CCEE0  C0 2B E4 70 */	lfs f1, lit_3970@l(r11)
/* 804CCEE4  4B B7 FB AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804CCEE8:
/* 804CCEE8  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 804CCEEC  28 00 00 00 */	cmplwi r0, 0
/* 804CCEF0  40 82 00 58 */	bne lbl_804CCF48
/* 804CCEF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CCEF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CCEFC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804CCF00  38 1F 09 9C */	addi r0, r31, 0x99c
/* 804CCF04  90 01 00 08 */	stw r0, 8(r1)
/* 804CCF08  38 00 FF FF */	li r0, -1
/* 804CCF0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CCF10  38 00 00 00 */	li r0, 0
/* 804CCF14  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CCF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCF1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CCF20  38 80 00 00 */	li r4, 0
/* 804CCF24  38 A0 08 E0 */	li r5, 0x8e0
/* 804CCF28  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 804CCF2C  38 E0 00 00 */	li r7, 0
/* 804CCF30  39 00 00 00 */	li r8, 0
/* 804CCF34  39 21 00 20 */	addi r9, r1, 0x20
/* 804CCF38  39 40 00 FF */	li r10, 0xff
/* 804CCF3C  3D 60 80 4D */	lis r11, lit_3970@ha
/* 804CCF40  C0 2B E4 70 */	lfs f1, lit_3970@l(r11)
/* 804CCF44  4B B7 FB 4C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804CCF48:
/* 804CCF48  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804CCF4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CCF50  7C 08 03 A6 */	mtlr r0
/* 804CCF54  38 21 00 40 */	addi r1, r1, 0x40
/* 804CCF58  4E 80 00 20 */	blr 
