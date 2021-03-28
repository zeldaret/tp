lbl_805A3E70:
/* 805A3E70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A3E74  7C 08 02 A6 */	mflr r0
/* 805A3E78  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A3E7C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A3E80  4B DB E3 54 */	b _savegpr_27
/* 805A3E84  7C 7D 1B 78 */	mr r29, r3
/* 805A3E88  3C 60 80 5A */	lis r3, l_arcName@ha
/* 805A3E8C  3B E3 42 38 */	addi r31, r3, l_arcName@l
/* 805A3E90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A3E94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A3E98  83 C3 5D B8 */	lwz r30, 0x5db8(r3)
/* 805A3E9C  28 1E 00 00 */	cmplwi r30, 0
/* 805A3EA0  41 82 02 78 */	beq lbl_805A4118
/* 805A3EA4  88 1D 05 AC */	lbz r0, 0x5ac(r29)
/* 805A3EA8  28 00 00 00 */	cmplwi r0, 0
/* 805A3EAC  40 82 00 64 */	bne lbl_805A3F10
/* 805A3EB0  A0 1D 05 B0 */	lhz r0, 0x5b0(r29)
/* 805A3EB4  28 00 0F FF */	cmplwi r0, 0xfff
/* 805A3EB8  41 82 00 24 */	beq lbl_805A3EDC
/* 805A3EBC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A3EC0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A3EC4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805A3EC8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805A3ECC  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A3ED0  4B A9 0A EC */	b isEventBit__11dSv_event_cCFUs
/* 805A3ED4  2C 03 00 00 */	cmpwi r3, 0
/* 805A3ED8  41 82 02 40 */	beq lbl_805A4118
lbl_805A3EDC:
/* 805A3EDC  A0 1D 05 B2 */	lhz r0, 0x5b2(r29)
/* 805A3EE0  28 00 0F FF */	cmplwi r0, 0xfff
/* 805A3EE4  41 82 00 2C */	beq lbl_805A3F10
/* 805A3EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A3EEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A3EF0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A3EF4  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A3EF8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805A3EFC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805A3F00  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A3F04  4B A9 0A B8 */	b isEventBit__11dSv_event_cCFUs
/* 805A3F08  2C 03 00 00 */	cmpwi r3, 0
/* 805A3F0C  40 82 02 0C */	bne lbl_805A4118
lbl_805A3F10:
/* 805A3F10  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805A3F14  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805A3F18  7C 03 00 50 */	subf r0, r3, r0
/* 805A3F1C  7C 1B 07 34 */	extsh r27, r0
/* 805A3F20  7F 63 DB 78 */	mr r3, r27
/* 805A3F24  4B DC 11 AC */	b abs
/* 805A3F28  7C 7C 1B 78 */	mr r28, r3
/* 805A3F2C  88 1D 05 AD */	lbz r0, 0x5ad(r29)
/* 805A3F30  28 00 00 00 */	cmplwi r0, 0
/* 805A3F34  41 82 00 0C */	beq lbl_805A3F40
/* 805A3F38  28 00 00 02 */	cmplwi r0, 2
/* 805A3F3C  40 82 00 14 */	bne lbl_805A3F50
lbl_805A3F40:
/* 805A3F40  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805A3F44  C0 1E 17 90 */	lfs f0, 0x1790(r30)
/* 805A3F48  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A3F4C  48 00 00 3C */	b lbl_805A3F88
lbl_805A3F50:
/* 805A3F50  28 00 00 01 */	cmplwi r0, 1
/* 805A3F54  41 82 00 0C */	beq lbl_805A3F60
/* 805A3F58  28 00 00 03 */	cmplwi r0, 3
/* 805A3F5C  40 82 00 14 */	bne lbl_805A3F70
lbl_805A3F60:
/* 805A3F60  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805A3F64  C0 1E 17 8C */	lfs f0, 0x178c(r30)
/* 805A3F68  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A3F6C  48 00 00 1C */	b lbl_805A3F88
lbl_805A3F70:
/* 805A3F70  C0 5E 17 8C */	lfs f2, 0x178c(r30)
/* 805A3F74  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805A3F78  C0 1E 17 90 */	lfs f0, 0x1790(r30)
/* 805A3F7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805A3F80  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A3F84  EC 22 00 2A */	fadds f1, f2, f0
lbl_805A3F88:
/* 805A3F88  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805A3F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A3F90  40 80 01 88 */	bge lbl_805A4118
/* 805A3F94  A8 9D 05 AE */	lha r4, 0x5ae(r29)
/* 805A3F98  7C 1C 20 00 */	cmpw r28, r4
/* 805A3F9C  41 80 00 18 */	blt lbl_805A3FB4
/* 805A3FA0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805A3FA4  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 805A3FA8  7C 04 00 50 */	subf r0, r4, r0
/* 805A3FAC  7C 1C 00 00 */	cmpw r28, r0
/* 805A3FB0  40 81 01 68 */	ble lbl_805A4118
lbl_805A3FB4:
/* 805A3FB4  7F A3 EB 78 */	mr r3, r29
/* 805A3FB8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805A3FBC  38 A1 00 08 */	addi r5, r1, 8
/* 805A3FC0  4B A7 99 40 */	b fpoAcM_relativePos__FPC10fopAc_ac_cPC4cXyzP4cXyz
/* 805A3FC4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805A3FC8  FC 00 12 10 */	fabs f0, f2
/* 805A3FCC  FC 60 00 18 */	frsp f3, f0
/* 805A3FD0  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 805A3FD4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805A3FD8  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 805A3FDC  4C 41 13 82 */	cror 2, 1, 2
/* 805A3FE0  40 82 01 38 */	bne lbl_805A4118
/* 805A3FE4  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 805A3FE8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 805A3FEC  4C 40 13 82 */	cror 2, 0, 2
/* 805A3FF0  40 82 01 28 */	bne lbl_805A4118
/* 805A3FF4  C0 01 00 08 */	lfs f0, 8(r1)
/* 805A3FF8  FC 00 02 10 */	fabs f0, f0
/* 805A3FFC  FC 80 00 18 */	frsp f4, f0
/* 805A4000  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 805A4004  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 805A4008  4C 40 13 82 */	cror 2, 0, 2
/* 805A400C  40 82 01 0C */	bne lbl_805A4118
/* 805A4010  C0 BD 04 F4 */	lfs f5, 0x4f4(r29)
/* 805A4014  C0 9D 05 B8 */	lfs f4, 0x5b8(r29)
/* 805A4018  EC 05 20 28 */	fsubs f0, f5, f4
/* 805A401C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805A4020  4C 41 13 82 */	cror 2, 1, 2
/* 805A4024  40 82 00 F4 */	bne lbl_805A4118
/* 805A4028  EC 05 20 2A */	fadds f0, f5, f4
/* 805A402C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805A4030  4C 40 13 82 */	cror 2, 0, 2
/* 805A4034  40 82 00 E4 */	bne lbl_805A4118
/* 805A4038  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805A403C  40 81 00 1C */	ble lbl_805A4058
/* 805A4040  A8 9D 05 AE */	lha r4, 0x5ae(r29)
/* 805A4044  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805A4048  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 805A404C  7C 04 00 50 */	subf r0, r4, r0
/* 805A4050  7C 1C 00 00 */	cmpw r28, r0
/* 805A4054  41 81 00 1C */	bgt lbl_805A4070
lbl_805A4058:
/* 805A4058  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805A405C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A4060  40 80 00 B8 */	bge lbl_805A4118
/* 805A4064  A8 1D 05 AE */	lha r0, 0x5ae(r29)
/* 805A4068  7C 1C 00 00 */	cmpw r28, r0
/* 805A406C  40 80 00 AC */	bge lbl_805A4118
lbl_805A4070:
/* 805A4070  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805A4074  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 805A4078  57 64 04 38 */	rlwinm r4, r27, 0, 0x10, 0x1c
/* 805A407C  7C 60 22 14 */	add r3, r0, r4
/* 805A4080  C0 03 00 04 */	lfs f0, 4(r3)
/* 805A4084  EC 02 00 24 */	fdivs f0, f2, f0
/* 805A4088  FC 00 02 10 */	fabs f0, f0
/* 805A408C  FC 60 00 18 */	frsp f3, f0
/* 805A4090  C0 1D 05 B8 */	lfs f0, 0x5b8(r29)
/* 805A4094  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805A4098  40 80 00 0C */	bge lbl_805A40A4
/* 805A409C  FC 80 00 90 */	fmr f4, f0
/* 805A40A0  48 00 00 08 */	b lbl_805A40A8
lbl_805A40A4:
/* 805A40A4  FC 80 18 90 */	fmr f4, f3
lbl_805A40A8:
/* 805A40A8  C0 41 00 08 */	lfs f2, 8(r1)
/* 805A40AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805A40B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805A40B4  7C 03 24 2E */	lfsx f0, r3, r4
/* 805A40B8  EC 23 00 32 */	fmuls f1, f3, f0
/* 805A40BC  EC 04 00 32 */	fmuls f0, f4, f0
/* 805A40C0  EC 01 00 2A */	fadds f0, f1, f0
/* 805A40C4  EC 02 00 2A */	fadds f0, f2, f0
/* 805A40C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805A40CC  FC 00 02 10 */	fabs f0, f0
/* 805A40D0  FC 20 00 18 */	frsp f1, f0
/* 805A40D4  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 805A40D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A40DC  4C 40 13 82 */	cror 2, 0, 2
/* 805A40E0  41 82 00 1C */	beq lbl_805A40FC
/* 805A40E4  88 1D 05 AC */	lbz r0, 0x5ac(r29)
/* 805A40E8  28 00 00 00 */	cmplwi r0, 0
/* 805A40EC  40 82 00 2C */	bne lbl_805A4118
/* 805A40F0  88 1D 05 AD */	lbz r0, 0x5ad(r29)
/* 805A40F4  28 00 00 04 */	cmplwi r0, 4
/* 805A40F8  40 82 00 20 */	bne lbl_805A4118
lbl_805A40FC:
/* 805A40FC  C0 1D 05 B4 */	lfs f0, 0x5b4(r29)
/* 805A4100  D0 7E 17 68 */	stfs f3, 0x1768(r30)
/* 805A4104  D0 1E 17 6C */	stfs f0, 0x176c(r30)
/* 805A4108  D0 9E 17 70 */	stfs f4, 0x1770(r30)
/* 805A410C  80 1E 17 4C */	lwz r0, 0x174c(r30)
/* 805A4110  60 00 00 01 */	ori r0, r0, 1
/* 805A4114  90 1E 17 4C */	stw r0, 0x174c(r30)
lbl_805A4118:
/* 805A4118  38 60 00 01 */	li r3, 1
/* 805A411C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A4120  4B DB E1 00 */	b _restgpr_27
/* 805A4124  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A4128  7C 08 03 A6 */	mtlr r0
/* 805A412C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A4130  4E 80 00 20 */	blr 
