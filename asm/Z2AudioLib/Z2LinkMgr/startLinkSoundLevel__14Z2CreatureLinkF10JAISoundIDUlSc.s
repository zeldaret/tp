lbl_802C3E68:
/* 802C3E68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C3E6C  7C 08 02 A6 */	mflr r0
/* 802C3E70  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C3E74  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802C3E78  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802C3E7C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802C3E80  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802C3E84  39 61 00 30 */	addi r11, r1, 0x30
/* 802C3E88  48 09 E3 51 */	bl _savegpr_28
/* 802C3E8C  7C 7D 1B 78 */	mr r29, r3
/* 802C3E90  7C 9C 23 78 */	mr r28, r4
/* 802C3E94  80 84 00 00 */	lwz r4, 0(r4)
/* 802C3E98  3C 04 FF FE */	addis r0, r4, 0xfffe
/* 802C3E9C  28 00 00 BD */	cmplwi r0, 0xbd
/* 802C3EA0  40 82 00 2C */	bne lbl_802C3ECC
/* 802C3EA4  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802C3EA8  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802C3EAC  28 00 00 02 */	cmplwi r0, 2
/* 802C3EB0  41 82 00 14 */	beq lbl_802C3EC4
/* 802C3EB4  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C3EB8  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 802C3EBC  28 00 00 00 */	cmplwi r0, 0
/* 802C3EC0  40 82 00 0C */	bne lbl_802C3ECC
lbl_802C3EC4:
/* 802C3EC4  38 60 00 00 */	li r3, 0
/* 802C3EC8  48 00 04 30 */	b lbl_802C42F8
lbl_802C3ECC:
/* 802C3ECC  90 81 00 0C */	stw r4, 0xc(r1)
/* 802C3ED0  7F A3 EB 78 */	mr r3, r29
/* 802C3ED4  38 81 00 0C */	addi r4, r1, 0xc
/* 802C3ED8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802C3EDC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C3EE0  7D 89 03 A6 */	mtctr r12
/* 802C3EE4  4E 80 04 21 */	bctrl 
/* 802C3EE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C3EEC  41 82 04 08 */	beq lbl_802C42F4
/* 802C3EF0  80 BF 00 00 */	lwz r5, 0(r31)
/* 802C3EF4  28 05 00 00 */	cmplwi r5, 0
/* 802C3EF8  41 82 03 FC */	beq lbl_802C42F4
/* 802C3EFC  C3 E2 C2 98 */	lfs f31, lit_3721(r2)
/* 802C3F00  FF C0 F8 90 */	fmr f30, f31
/* 802C3F04  3B C0 00 00 */	li r30, 0
/* 802C3F08  80 9C 00 00 */	lwz r4, 0(r28)
/* 802C3F0C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020073@ha */
/* 802C3F10  38 03 00 73 */	addi r0, r3, 0x0073 /* 0x00020073@l */
/* 802C3F14  7C 04 00 00 */	cmpw r4, r0
/* 802C3F18  41 82 00 F0 */	beq lbl_802C4008
/* 802C3F1C  40 80 00 34 */	bge lbl_802C3F50
/* 802C3F20  38 03 00 6E */	addi r0, r3, 0x6e
/* 802C3F24  7C 04 00 00 */	cmpw r4, r0
/* 802C3F28  41 82 02 38 */	beq lbl_802C4160
/* 802C3F2C  40 80 00 14 */	bge lbl_802C3F40
/* 802C3F30  38 03 00 6C */	addi r0, r3, 0x6c
/* 802C3F34  7C 04 00 00 */	cmpw r4, r0
/* 802C3F38  41 82 01 5C */	beq lbl_802C4094
/* 802C3F3C  48 00 03 90 */	b lbl_802C42CC
lbl_802C3F40:
/* 802C3F40  38 03 00 70 */	addi r0, r3, 0x70
/* 802C3F44  7C 04 00 00 */	cmpw r4, r0
/* 802C3F48  41 82 00 34 */	beq lbl_802C3F7C
/* 802C3F4C  48 00 03 80 */	b lbl_802C42CC
lbl_802C3F50:
/* 802C3F50  38 03 00 BD */	addi r0, r3, 0xbd
/* 802C3F54  7C 04 00 00 */	cmpw r4, r0
/* 802C3F58  41 82 03 34 */	beq lbl_802C428C
/* 802C3F5C  40 80 03 70 */	bge lbl_802C42CC
/* 802C3F60  38 03 00 93 */	addi r0, r3, 0x93
/* 802C3F64  7C 04 00 00 */	cmpw r4, r0
/* 802C3F68  40 80 03 64 */	bge lbl_802C42CC
/* 802C3F6C  38 03 00 91 */	addi r0, r3, 0x91
/* 802C3F70  7C 04 00 00 */	cmpw r4, r0
/* 802C3F74  40 80 02 2C */	bge lbl_802C41A0
/* 802C3F78  48 00 03 54 */	b lbl_802C42CC
lbl_802C3F7C:
/* 802C3F7C  88 7D 00 CA */	lbz r3, 0xca(r29)
/* 802C3F80  7C 60 07 75 */	extsb. r0, r3
/* 802C3F84  40 81 03 48 */	ble lbl_802C42CC
/* 802C3F88  7C 60 07 74 */	extsb r0, r3
/* 802C3F8C  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C3F90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C3F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3F98  3C 00 43 30 */	lis r0, 0x4330
/* 802C3F9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C3FA0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C3FA4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C3FA8  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C3FAC  C0 62 C2 C8 */	lfs f3, lit_3835(r2)
/* 802C3FB0  C0 82 C2 CC */	lfs f4, lit_3836(r2)
/* 802C3FB4  FC A0 F8 90 */	fmr f5, f31
/* 802C3FB8  38 60 00 01 */	li r3, 1
/* 802C3FBC  4B FE 56 D1 */	bl linearTransform__6Z2CalcFfffffb
/* 802C3FC0  FF E0 08 90 */	fmr f31, f1
/* 802C3FC4  88 1D 00 CA */	lbz r0, 0xca(r29)
/* 802C3FC8  7C 00 07 74 */	extsb r0, r0
/* 802C3FCC  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C3FD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C3FD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C3FD8  3C 00 43 30 */	lis r0, 0x4330
/* 802C3FDC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C3FE0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C3FE4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C3FE8  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C3FEC  C0 62 C2 C8 */	lfs f3, lit_3835(r2)
/* 802C3FF0  C0 82 C2 98 */	lfs f4, lit_3721(r2)
/* 802C3FF4  C0 A2 C2 D0 */	lfs f5, lit_3837(r2)
/* 802C3FF8  38 60 00 01 */	li r3, 1
/* 802C3FFC  4B FE 56 91 */	bl linearTransform__6Z2CalcFfffffb
/* 802C4000  FF C0 08 90 */	fmr f30, f1
/* 802C4004  48 00 02 C8 */	b lbl_802C42CC
lbl_802C4008:
/* 802C4008  88 7D 00 CA */	lbz r3, 0xca(r29)
/* 802C400C  7C 60 07 75 */	extsb. r0, r3
/* 802C4010  40 81 02 BC */	ble lbl_802C42CC
/* 802C4014  7C 60 07 74 */	extsb r0, r3
/* 802C4018  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C401C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C4020  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C4024  3C 00 43 30 */	lis r0, 0x4330
/* 802C4028  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C402C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C4030  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C4034  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C4038  C0 62 C2 D4 */	lfs f3, lit_3838(r2)
/* 802C403C  C0 82 C2 D0 */	lfs f4, lit_3837(r2)
/* 802C4040  FC A0 F8 90 */	fmr f5, f31
/* 802C4044  38 60 00 01 */	li r3, 1
/* 802C4048  4B FE 56 45 */	bl linearTransform__6Z2CalcFfffffb
/* 802C404C  FF E0 08 90 */	fmr f31, f1
/* 802C4050  88 1D 00 CA */	lbz r0, 0xca(r29)
/* 802C4054  7C 00 07 74 */	extsb r0, r0
/* 802C4058  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C405C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C4060  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C4064  3C 00 43 30 */	lis r0, 0x4330
/* 802C4068  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C406C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C4070  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C4074  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C4078  C0 62 C2 D4 */	lfs f3, lit_3838(r2)
/* 802C407C  C0 82 C2 98 */	lfs f4, lit_3721(r2)
/* 802C4080  C0 A2 C2 D0 */	lfs f5, lit_3837(r2)
/* 802C4084  38 60 00 01 */	li r3, 1
/* 802C4088  4B FE 56 05 */	bl linearTransform__6Z2CalcFfffffb
/* 802C408C  FF C0 08 90 */	fmr f30, f1
/* 802C4090  48 00 02 3C */	b lbl_802C42CC
lbl_802C4094:
/* 802C4094  88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 802C4098  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C409C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C40A0  3C 00 43 30 */	lis r0, 0x4330
/* 802C40A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C40A8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C40AC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C40B0  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C40B4  C0 62 C2 E8 */	lfs f3, lit_3941(r2)
/* 802C40B8  C0 82 C2 EC */	lfs f4, lit_3942(r2)
/* 802C40BC  C0 A2 C2 F0 */	lfs f5, lit_3943(r2)
/* 802C40C0  FC C0 F8 90 */	fmr f6, f31
/* 802C40C4  38 60 00 00 */	li r3, 0
/* 802C40C8  4B FE 56 2D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C40CC  FF C0 08 90 */	fmr f30, f1
/* 802C40D0  88 7D 00 C8 */	lbz r3, 0xc8(r29)
/* 802C40D4  28 03 00 00 */	cmplwi r3, 0
/* 802C40D8  40 82 00 4C */	bne lbl_802C4124
/* 802C40DC  88 1D 00 C9 */	lbz r0, 0xc9(r29)
/* 802C40E0  28 00 00 78 */	cmplwi r0, 0x78
/* 802C40E4  40 81 00 40 */	ble lbl_802C4124
/* 802C40E8  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C40EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C40F0  3C 00 43 30 */	lis r0, 0x4330
/* 802C40F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C40F8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C40FC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C4100  C0 42 C2 F4 */	lfs f2, lit_3944(r2)
/* 802C4104  C0 62 C2 F8 */	lfs f3, lit_3945(r2)
/* 802C4108  C0 82 C2 FC */	lfs f4, lit_3946(r2)
/* 802C410C  C0 A2 C2 A0 */	lfs f5, lit_3723(r2)
/* 802C4110  C0 C2 C2 CC */	lfs f6, lit_3836(r2)
/* 802C4114  38 60 00 00 */	li r3, 0
/* 802C4118  4B FE 55 DD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C411C  FF E0 08 90 */	fmr f31, f1
/* 802C4120  48 00 01 AC */	b lbl_802C42CC
lbl_802C4124:
/* 802C4124  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C4128  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802C412C  3C 00 43 30 */	lis r0, 0x4330
/* 802C4130  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C4134  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C4138  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C413C  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C4140  C0 62 C2 E8 */	lfs f3, lit_3941(r2)
/* 802C4144  C0 82 C2 FC */	lfs f4, lit_3946(r2)
/* 802C4148  C0 A2 C2 CC */	lfs f5, lit_3836(r2)
/* 802C414C  C0 C2 C2 98 */	lfs f6, lit_3721(r2)
/* 802C4150  38 60 00 00 */	li r3, 0
/* 802C4154  4B FE 55 A1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C4158  FF E0 08 90 */	fmr f31, f1
/* 802C415C  48 00 01 70 */	b lbl_802C42CC
lbl_802C4160:
/* 802C4160  88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 802C4164  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C4168  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C416C  3C 00 43 30 */	lis r0, 0x4330
/* 802C4170  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C4174  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C4178  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C417C  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C4180  C0 62 C3 00 */	lfs f3, lit_3947(r2)
/* 802C4184  C0 82 C2 EC */	lfs f4, lit_3942(r2)
/* 802C4188  C0 A2 C2 F0 */	lfs f5, lit_3943(r2)
/* 802C418C  C0 C2 C3 04 */	lfs f6, lit_3948(r2)
/* 802C4190  38 60 00 00 */	li r3, 0
/* 802C4194  4B FE 55 61 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C4198  FF C0 08 90 */	fmr f30, f1
/* 802C419C  48 00 01 30 */	b lbl_802C42CC
lbl_802C41A0:
/* 802C41A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802C41A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802C41A8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 802C41AC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802C41B0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802C41B4  A0 84 02 14 */	lhz r4, 0x214(r4)
/* 802C41B8  4B D7 08 05 */	bl isEventBit__11dSv_event_cCFUs
/* 802C41BC  2C 03 00 00 */	cmpwi r3, 0
/* 802C41C0  41 82 00 3C */	beq lbl_802C41FC
/* 802C41C4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C41C8  80 63 00 04 */	lwz r3, 4(r3)
/* 802C41CC  28 03 00 00 */	cmplwi r3, 0
/* 802C41D0  41 82 00 10 */	beq lbl_802C41E0
/* 802C41D4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802C41D8  90 61 00 08 */	stw r3, 8(r1)
/* 802C41DC  48 00 00 08 */	b lbl_802C41E4
lbl_802C41E0:
/* 802C41E0  38 60 FF FF */	li r3, -1
lbl_802C41E4:
/* 802C41E4  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802C41E8  28 00 00 4B */	cmplwi r0, 0x4b
/* 802C41EC  41 82 00 10 */	beq lbl_802C41FC
/* 802C41F0  C3 E2 C2 A0 */	lfs f31, lit_3723(r2)
/* 802C41F4  3B C0 00 00 */	li r30, 0
/* 802C41F8  48 00 00 54 */	b lbl_802C424C
lbl_802C41FC:
/* 802C41FC  88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 802C4200  28 00 00 00 */	cmplwi r0, 0
/* 802C4204  40 82 00 10 */	bne lbl_802C4214
/* 802C4208  C3 E2 C2 A0 */	lfs f31, lit_3723(r2)
/* 802C420C  3B C0 00 0A */	li r30, 0xa
/* 802C4210  48 00 00 3C */	b lbl_802C424C
lbl_802C4214:
/* 802C4214  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C4218  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C421C  3C 00 43 30 */	lis r0, 0x4330
/* 802C4220  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C4224  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C4228  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C422C  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C4230  C0 62 C3 00 */	lfs f3, lit_3947(r2)
/* 802C4234  C0 82 C3 08 */	lfs f4, lit_3949(r2)
/* 802C4238  C0 A2 C2 CC */	lfs f5, lit_3836(r2)
/* 802C423C  C0 C2 C2 98 */	lfs f6, lit_3721(r2)
/* 802C4240  38 60 00 00 */	li r3, 0
/* 802C4244  4B FE 54 B1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C4248  FF E0 08 90 */	fmr f31, f1
lbl_802C424C:
/* 802C424C  88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 802C4250  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C4254  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C4258  3C 00 43 30 */	lis r0, 0x4330
/* 802C425C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C4260  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C4264  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C4268  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C426C  C0 62 C3 00 */	lfs f3, lit_3947(r2)
/* 802C4270  C0 82 C2 EC */	lfs f4, lit_3942(r2)
/* 802C4274  C0 A2 C2 D8 */	lfs f5, lit_3839(r2)
/* 802C4278  C0 C2 C3 0C */	lfs f6, lit_3950(r2)
/* 802C427C  38 60 00 00 */	li r3, 0
/* 802C4280  4B FE 54 75 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C4284  FF C0 08 90 */	fmr f30, f1
/* 802C4288  48 00 00 44 */	b lbl_802C42CC
lbl_802C428C:
/* 802C428C  C0 25 00 60 */	lfs f1, 0x60(r5)
/* 802C4290  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802C4294  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802C4298  28 00 00 02 */	cmplwi r0, 2
/* 802C429C  40 82 00 1C */	bne lbl_802C42B8
/* 802C42A0  C0 02 C2 EC */	lfs f0, lit_3942(r2)
/* 802C42A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C42A8  41 82 00 10 */	beq lbl_802C42B8
/* 802C42AC  FF E0 00 90 */	fmr f31, f0
/* 802C42B0  3B C0 00 2D */	li r30, 0x2d
/* 802C42B4  48 00 00 18 */	b lbl_802C42CC
lbl_802C42B8:
/* 802C42B8  C0 02 C2 98 */	lfs f0, lit_3721(r2)
/* 802C42BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C42C0  41 82 00 0C */	beq lbl_802C42CC
/* 802C42C4  FF E0 00 90 */	fmr f31, f0
/* 802C42C8  3B C0 00 2D */	li r30, 0x2d
lbl_802C42CC:
/* 802C42CC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C42D0  38 63 00 48 */	addi r3, r3, 0x48
/* 802C42D4  FC 20 F8 90 */	fmr f1, f31
/* 802C42D8  7F C4 F3 78 */	mr r4, r30
/* 802C42DC  4B FD EA D9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C42E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C42E4  38 63 00 48 */	addi r3, r3, 0x48
/* 802C42E8  FC 20 F0 90 */	fmr f1, f30
/* 802C42EC  38 80 00 00 */	li r4, 0
/* 802C42F0  4B FD EB 1D */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C42F4:
/* 802C42F4  7F E3 FB 78 */	mr r3, r31
lbl_802C42F8:
/* 802C42F8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802C42FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802C4300  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802C4304  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802C4308  39 61 00 30 */	addi r11, r1, 0x30
/* 802C430C  48 09 DF 19 */	bl _restgpr_28
/* 802C4310  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C4314  7C 08 03 A6 */	mtlr r0
/* 802C4318  38 21 00 50 */	addi r1, r1, 0x50
/* 802C431C  4E 80 00 20 */	blr 
