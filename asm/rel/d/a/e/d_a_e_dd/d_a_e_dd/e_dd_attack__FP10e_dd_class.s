lbl_806A3F98:
/* 806A3F98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A3F9C  7C 08 02 A6 */	mflr r0
/* 806A3FA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A3FA4  39 61 00 30 */	addi r11, r1, 0x30
/* 806A3FA8  4B CB E2 31 */	bl _savegpr_28
/* 806A3FAC  7C 7D 1B 78 */	mr r29, r3
/* 806A3FB0  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A3FB4  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A3FB8  38 00 01 00 */	li r0, 0x100
/* 806A3FBC  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 806A3FC0  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806A3FC4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806A3FC8  FC 00 00 1E */	fctiwz f0, f0
/* 806A3FCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806A3FD0  83 81 00 14 */	lwz r28, 0x14(r1)
/* 806A3FD4  3B C0 00 00 */	li r30, 0
/* 806A3FD8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 806A3FDC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A3FE0  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806A3FE4  4B BC BA 9D */	bl cLib_addCalc0__FPfff
/* 806A3FE8  A8 1D 06 8C */	lha r0, 0x68c(r29)
/* 806A3FEC  2C 00 00 02 */	cmpwi r0, 2
/* 806A3FF0  41 82 01 34 */	beq lbl_806A4124
/* 806A3FF4  40 80 00 14 */	bge lbl_806A4008
/* 806A3FF8  2C 00 00 00 */	cmpwi r0, 0
/* 806A3FFC  41 82 00 1C */	beq lbl_806A4018
/* 806A4000  40 80 00 B4 */	bge lbl_806A40B4
/* 806A4004  48 00 02 A0 */	b lbl_806A42A4
lbl_806A4008:
/* 806A4008  2C 00 00 04 */	cmpwi r0, 4
/* 806A400C  41 82 02 48 */	beq lbl_806A4254
/* 806A4010  40 80 02 94 */	bge lbl_806A42A4
/* 806A4014  48 00 01 D0 */	b lbl_806A41E4
lbl_806A4018:
/* 806A4018  38 7D 04 DE */	addi r3, r29, 0x4de
/* 806A401C  A8 9D 06 A0 */	lha r4, 0x6a0(r29)
/* 806A4020  38 A0 00 02 */	li r5, 2
/* 806A4024  38 C0 03 E8 */	li r6, 0x3e8
/* 806A4028  4B BC C5 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 806A402C  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 806A4030  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 806A4034  7C 03 00 50 */	subf r0, r3, r0
/* 806A4038  7C 06 07 34 */	extsh r6, r0
/* 806A403C  A8 1D 06 AA */	lha r0, 0x6aa(r29)
/* 806A4040  2C 00 00 00 */	cmpwi r0, 0
/* 806A4044  41 82 00 3C */	beq lbl_806A4080
/* 806A4048  38 00 02 00 */	li r0, 0x200
/* 806A404C  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 806A4050  54 C3 0F FE */	srwi r3, r6, 0x1f
/* 806A4054  7C 06 00 10 */	subfc r0, r6, r0
/* 806A4058  7C 04 19 14 */	adde r0, r4, r3
/* 806A405C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 806A4060  38 00 FE 00 */	li r0, -512
/* 806A4064  7C C4 FE 70 */	srawi r4, r6, 0x1f
/* 806A4068  54 03 0F FE */	srwi r3, r0, 0x1f
/* 806A406C  7C 00 30 10 */	subfc r0, r0, r6
/* 806A4070  7C 04 19 14 */	adde r0, r4, r3
/* 806A4074  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806A4078  7C A0 00 39 */	and. r0, r5, r0
/* 806A407C  41 82 00 10 */	beq lbl_806A408C
lbl_806A4080:
/* 806A4080  38 00 00 01 */	li r0, 1
/* 806A4084  B0 1D 06 8C */	sth r0, 0x68c(r29)
/* 806A4088  48 00 02 1C */	b lbl_806A42A4
lbl_806A408C:
/* 806A408C  7C C0 07 35 */	extsh. r0, r6
/* 806A4090  40 81 00 10 */	ble lbl_806A40A0
/* 806A4094  38 00 0D 00 */	li r0, 0xd00
/* 806A4098  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 806A409C  48 00 00 0C */	b lbl_806A40A8
lbl_806A40A0:
/* 806A40A0  38 00 F3 00 */	li r0, -3328
/* 806A40A4  B0 1D 06 BE */	sth r0, 0x6be(r29)
lbl_806A40A8:
/* 806A40A8  38 00 02 00 */	li r0, 0x200
/* 806A40AC  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 806A40B0  48 00 01 F4 */	b lbl_806A42A4
lbl_806A40B4:
/* 806A40B4  7F A3 EB 78 */	mr r3, r29
/* 806A40B8  38 80 00 0E */	li r4, 0xe
/* 806A40BC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806A40C0  38 A0 00 00 */	li r5, 0
/* 806A40C4  3C C0 80 6A */	lis r6, l_HIO@ha /* 0x806A74C8@ha */
/* 806A40C8  38 C6 74 C8 */	addi r6, r6, l_HIO@l /* 0x806A74C8@l */
/* 806A40CC  C0 46 00 24 */	lfs f2, 0x24(r6)
/* 806A40D0  4B FF E1 FD */	bl anm_init__FP10e_dd_classifUcf
/* 806A40D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070277@ha */
/* 806A40D8  38 03 02 77 */	addi r0, r3, 0x0277 /* 0x00070277@l */
/* 806A40DC  90 01 00 08 */	stw r0, 8(r1)
/* 806A40E0  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 806A40E4  38 81 00 08 */	addi r4, r1, 8
/* 806A40E8  38 A0 FF FF */	li r5, -1
/* 806A40EC  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 806A40F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A40F4  7D 89 03 A6 */	mtctr r12
/* 806A40F8  4E 80 04 21 */	bctrl 
/* 806A40FC  38 00 00 01 */	li r0, 1
/* 806A4100  90 1D 06 7C */	stw r0, 0x67c(r29)
/* 806A4104  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A4108  80 7D 06 6C */	lwz r3, 0x66c(r29)
/* 806A410C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806A4110  38 00 00 02 */	li r0, 2
/* 806A4114  B0 1D 06 8C */	sth r0, 0x68c(r29)
/* 806A4118  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806A411C  D0 1D 06 C4 */	stfs f0, 0x6c4(r29)
/* 806A4120  48 00 01 84 */	b lbl_806A42A4
lbl_806A4124:
/* 806A4124  2C 1C 00 14 */	cmpwi r28, 0x14
/* 806A4128  40 81 00 44 */	ble lbl_806A416C
/* 806A412C  80 1D 0A A0 */	lwz r0, 0xaa0(r29)
/* 806A4130  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 806A4134  90 1D 0A A0 */	stw r0, 0xaa0(r29)
/* 806A4138  3C 60 80 6A */	lis r3, s_b_sub__FPvPv@ha /* 0x806A3D64@ha */
/* 806A413C  38 63 3D 64 */	addi r3, r3, s_b_sub__FPvPv@l /* 0x806A3D64@l */
/* 806A4140  7F A4 EB 78 */	mr r4, r29
/* 806A4144  4B 97 D1 F5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806A4148  28 03 00 00 */	cmplwi r3, 0
/* 806A414C  41 82 00 20 */	beq lbl_806A416C
/* 806A4150  38 00 00 06 */	li r0, 6
/* 806A4154  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 806A4158  38 00 00 00 */	li r0, 0
/* 806A415C  B0 1D 06 8C */	sth r0, 0x68c(r29)
/* 806A4160  38 00 00 14 */	li r0, 0x14
/* 806A4164  B0 1D 06 B2 */	sth r0, 0x6b2(r29)
/* 806A4168  48 00 01 70 */	b lbl_806A42D8
lbl_806A416C:
/* 806A416C  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806A4170  38 80 00 01 */	li r4, 1
/* 806A4174  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A4178  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A417C  40 82 00 18 */	bne lbl_806A4194
/* 806A4180  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A4184  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A4188  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A418C  41 82 00 08 */	beq lbl_806A4194
/* 806A4190  38 80 00 00 */	li r4, 0
lbl_806A4194:
/* 806A4194  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A4198  41 82 01 0C */	beq lbl_806A42A4
/* 806A419C  7F A3 EB 78 */	mr r3, r29
/* 806A41A0  38 80 00 0F */	li r4, 0xf
/* 806A41A4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806A41A8  38 A0 00 02 */	li r5, 2
/* 806A41AC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A41B0  4B FF E1 1D */	bl anm_init__FP10e_dd_classifUcf
/* 806A41B4  38 00 00 02 */	li r0, 2
/* 806A41B8  90 1D 06 7C */	stw r0, 0x67c(r29)
/* 806A41BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A41C0  80 7D 06 70 */	lwz r3, 0x670(r29)
/* 806A41C4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806A41C8  38 00 00 03 */	li r0, 3
/* 806A41CC  B0 1D 06 8C */	sth r0, 0x68c(r29)
/* 806A41D0  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A74C8@ha */
/* 806A41D4  38 63 74 C8 */	addi r3, r3, l_HIO@l /* 0x806A74C8@l */
/* 806A41D8  A8 03 00 20 */	lha r0, 0x20(r3)
/* 806A41DC  B0 1D 06 AA */	sth r0, 0x6aa(r29)
/* 806A41E0  48 00 00 C4 */	b lbl_806A42A4
lbl_806A41E4:
/* 806A41E4  3B C0 00 01 */	li r30, 1
/* 806A41E8  A8 1D 06 AA */	lha r0, 0x6aa(r29)
/* 806A41EC  2C 00 00 00 */	cmpwi r0, 0
/* 806A41F0  41 82 00 1C */	beq lbl_806A420C
/* 806A41F4  7F A3 EB 78 */	mr r3, r29
/* 806A41F8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806A41FC  38 80 20 00 */	li r4, 0x2000
/* 806A4200  4B FF E5 2D */	bl pl_check__FP10e_dd_classfs
/* 806A4204  2C 03 00 00 */	cmpwi r3, 0
/* 806A4208  40 82 00 9C */	bne lbl_806A42A4
lbl_806A420C:
/* 806A420C  7F A3 EB 78 */	mr r3, r29
/* 806A4210  38 80 00 10 */	li r4, 0x10
/* 806A4214  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806A4218  38 A0 00 00 */	li r5, 0
/* 806A421C  3C C0 80 6A */	lis r6, l_HIO@ha /* 0x806A74C8@ha */
/* 806A4220  38 C6 74 C8 */	addi r6, r6, l_HIO@l /* 0x806A74C8@l */
/* 806A4224  C0 46 00 24 */	lfs f2, 0x24(r6)
/* 806A4228  4B FF E0 A5 */	bl anm_init__FP10e_dd_classifUcf
/* 806A422C  38 00 00 00 */	li r0, 0
/* 806A4230  B0 1D 06 AA */	sth r0, 0x6aa(r29)
/* 806A4234  38 00 00 03 */	li r0, 3
/* 806A4238  90 1D 06 7C */	stw r0, 0x67c(r29)
/* 806A423C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A4240  80 7D 06 74 */	lwz r3, 0x674(r29)
/* 806A4244  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806A4248  38 00 00 04 */	li r0, 4
/* 806A424C  B0 1D 06 8C */	sth r0, 0x68c(r29)
/* 806A4250  48 00 00 54 */	b lbl_806A42A4
lbl_806A4254:
/* 806A4254  3B C0 00 01 */	li r30, 1
/* 806A4258  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806A425C  38 80 00 01 */	li r4, 1
/* 806A4260  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A4264  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A4268  40 82 00 18 */	bne lbl_806A4280
/* 806A426C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A4270  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A4274  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A4278  41 82 00 08 */	beq lbl_806A4280
/* 806A427C  38 80 00 00 */	li r4, 0
lbl_806A4280:
/* 806A4280  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A4284  41 82 00 20 */	beq lbl_806A42A4
/* 806A4288  38 00 00 00 */	li r0, 0
/* 806A428C  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 806A4290  B0 1D 06 8C */	sth r0, 0x68c(r29)
/* 806A4294  90 1D 06 7C */	stw r0, 0x67c(r29)
/* 806A4298  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A429C  80 7D 06 68 */	lwz r3, 0x668(r29)
/* 806A42A0  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_806A42A4:
/* 806A42A4  7F C0 07 75 */	extsb. r0, r30
/* 806A42A8  41 82 00 30 */	beq lbl_806A42D8
/* 806A42AC  7F A3 EB 78 */	mr r3, r29
/* 806A42B0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 806A42B4  38 80 38 00 */	li r4, 0x3800
/* 806A42B8  4B FF E4 75 */	bl pl_check__FP10e_dd_classfs
/* 806A42BC  2C 03 00 00 */	cmpwi r3, 0
/* 806A42C0  41 82 00 18 */	beq lbl_806A42D8
/* 806A42C4  A8 7D 06 A0 */	lha r3, 0x6a0(r29)
/* 806A42C8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806A42CC  7C 03 00 50 */	subf r0, r3, r0
/* 806A42D0  7C 00 00 D0 */	neg r0, r0
/* 806A42D4  B0 1D 06 BA */	sth r0, 0x6ba(r29)
lbl_806A42D8:
/* 806A42D8  39 61 00 30 */	addi r11, r1, 0x30
/* 806A42DC  4B CB DF 49 */	bl _restgpr_28
/* 806A42E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A42E4  7C 08 03 A6 */	mtlr r0
/* 806A42E8  38 21 00 30 */	addi r1, r1, 0x30
/* 806A42EC  4E 80 00 20 */	blr 
