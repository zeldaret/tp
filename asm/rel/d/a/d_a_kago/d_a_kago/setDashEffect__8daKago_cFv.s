lbl_80852F14:
/* 80852F14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80852F18  7C 08 02 A6 */	mflr r0
/* 80852F1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80852F20  39 61 00 30 */	addi r11, r1, 0x30
/* 80852F24  4B B0 F2 B4 */	b _savegpr_28
/* 80852F28  7C 7D 1B 78 */	mr r29, r3
/* 80852F2C  80 63 05 70 */	lwz r3, 0x570(r3)
/* 80852F30  83 C3 00 04 */	lwz r30, 4(r3)
/* 80852F34  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80852F38  28 00 00 00 */	cmplwi r0, 0
/* 80852F3C  40 82 01 44 */	bne lbl_80853080
/* 80852F40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852F44  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80852F48  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80852F4C  38 00 00 FF */	li r0, 0xff
/* 80852F50  90 01 00 08 */	stw r0, 8(r1)
/* 80852F54  38 80 00 00 */	li r4, 0
/* 80852F58  90 81 00 0C */	stw r4, 0xc(r1)
/* 80852F5C  38 00 FF FF */	li r0, -1
/* 80852F60  90 01 00 10 */	stw r0, 0x10(r1)
/* 80852F64  90 81 00 14 */	stw r4, 0x14(r1)
/* 80852F68  90 81 00 18 */	stw r4, 0x18(r1)
/* 80852F6C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80852F70  80 9D 0B 38 */	lwz r4, 0xb38(r29)
/* 80852F74  38 A0 00 00 */	li r5, 0
/* 80852F78  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008609@ha */
/* 80852F7C  38 C6 86 09 */	addi r6, r6, 0x8609 /* 0x00008609@l */
/* 80852F80  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80852F84  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80852F88  39 20 00 00 */	li r9, 0
/* 80852F8C  39 40 00 00 */	li r10, 0
/* 80852F90  3D 60 80 85 */	lis r11, lit_3932@ha
/* 80852F94  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)
/* 80852F98  4B 7F A5 34 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80852F9C  90 7D 0B 38 */	stw r3, 0xb38(r29)
/* 80852FA0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80852FA4  38 63 02 10 */	addi r3, r3, 0x210
/* 80852FA8  80 9D 0B 38 */	lwz r4, 0xb38(r29)
/* 80852FAC  4B 7F 89 6C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80852FB0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80852FB4  41 82 00 30 */	beq lbl_80852FE4
/* 80852FB8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80852FBC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80852FC0  38 63 02 70 */	addi r3, r3, 0x270
/* 80852FC4  38 9C 00 68 */	addi r4, r28, 0x68
/* 80852FC8  38 BC 00 98 */	addi r5, r28, 0x98
/* 80852FCC  38 DC 00 A4 */	addi r6, r28, 0xa4
/* 80852FD0  4B A2 D8 38 */	b func_80280808
/* 80852FD4  C0 3C 00 9C */	lfs f1, 0x9c(r28)
/* 80852FD8  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 80852FDC  D0 1C 00 B0 */	stfs f0, 0xb0(r28)
/* 80852FE0  D0 3C 00 B4 */	stfs f1, 0xb4(r28)
lbl_80852FE4:
/* 80852FE4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80852FE8  38 00 00 FF */	li r0, 0xff
/* 80852FEC  90 01 00 08 */	stw r0, 8(r1)
/* 80852FF0  38 80 00 00 */	li r4, 0
/* 80852FF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80852FF8  38 00 FF FF */	li r0, -1
/* 80852FFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80853000  90 81 00 14 */	stw r4, 0x14(r1)
/* 80853004  90 81 00 18 */	stw r4, 0x18(r1)
/* 80853008  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8085300C  80 9D 0B 3C */	lwz r4, 0xb3c(r29)
/* 80853010  38 A0 00 00 */	li r5, 0
/* 80853014  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000860A@ha */
/* 80853018  38 C6 86 0A */	addi r6, r6, 0x860A /* 0x0000860A@l */
/* 8085301C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80853020  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80853024  39 20 00 00 */	li r9, 0
/* 80853028  39 40 00 00 */	li r10, 0
/* 8085302C  3D 60 80 85 */	lis r11, lit_3932@ha
/* 80853030  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)
/* 80853034  4B 7F A4 98 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80853038  90 7D 0B 3C */	stw r3, 0xb3c(r29)
/* 8085303C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80853040  38 63 02 10 */	addi r3, r3, 0x210
/* 80853044  80 9D 0B 3C */	lwz r4, 0xb3c(r29)
/* 80853048  4B 7F 88 D0 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8085304C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80853050  41 82 00 30 */	beq lbl_80853080
/* 80853054  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80853058  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8085305C  38 63 03 60 */	addi r3, r3, 0x360
/* 80853060  38 9F 00 68 */	addi r4, r31, 0x68
/* 80853064  38 BF 00 98 */	addi r5, r31, 0x98
/* 80853068  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 8085306C  4B A2 D7 9C */	b func_80280808
/* 80853070  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80853074  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80853078  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 8085307C  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_80853080:
/* 80853080  7F A3 EB 78 */	mr r3, r29
/* 80853084  38 80 00 01 */	li r4, 1
/* 80853088  48 00 01 A1 */	bl setDashBlurEffect__8daKago_cFi
/* 8085308C  39 61 00 30 */	addi r11, r1, 0x30
/* 80853090  4B B0 F1 94 */	b _restgpr_28
/* 80853094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80853098  7C 08 03 A6 */	mtlr r0
/* 8085309C  38 21 00 30 */	addi r1, r1, 0x30
/* 808530A0  4E 80 00 20 */	blr 
