lbl_804D3F8C:
/* 804D3F8C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804D3F90  7C 08 02 A6 */	mflr r0
/* 804D3F94  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804D3F98  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 804D3F9C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 804D3FA0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 804D3FA4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 804D3FA8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 804D3FAC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 804D3FB0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804D3FB4  4B E8 E2 18 */	b _savegpr_25
/* 804D3FB8  7C 7F 1B 78 */	mr r31, r3
/* 804D3FBC  3C 80 80 4D */	lis r4, lit_3768@ha
/* 804D3FC0  3B C4 4D 90 */	addi r30, r4, lit_3768@l
/* 804D3FC4  88 03 0A 71 */	lbz r0, 0xa71(r3)
/* 804D3FC8  28 00 00 00 */	cmplwi r0, 0
/* 804D3FCC  41 82 00 18 */	beq lbl_804D3FE4
/* 804D3FD0  4B FF FF 45 */	bl clearSpreadEffect__11daSpinner_cFv
/* 804D3FD4  7F E3 FB 78 */	mr r3, r31
/* 804D3FD8  4B B4 5C A4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 804D3FDC  38 60 00 01 */	li r3, 1
/* 804D3FE0  48 00 0B 84 */	b lbl_804D4B64
lbl_804D3FE4:
/* 804D3FE4  38 80 00 00 */	li r4, 0
/* 804D3FE8  98 9F 0A 70 */	stb r4, 0xa70(r31)
/* 804D3FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D3FF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D3FF4  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804D3FF8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 804D3FFC  28 00 01 50 */	cmplwi r0, 0x150
/* 804D4000  40 82 00 18 */	bne lbl_804D4018
/* 804D4004  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 804D4008  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 804D400C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D4010  40 80 00 08 */	bge lbl_804D4018
/* 804D4014  38 80 00 01 */	li r4, 1
lbl_804D4018:
/* 804D4018  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804D401C  40 82 00 18 */	bne lbl_804D4034
/* 804D4020  88 7F 0A 78 */	lbz r3, 0xa78(r31)
/* 804D4024  28 03 00 00 */	cmplwi r3, 0
/* 804D4028  41 82 00 0C */	beq lbl_804D4034
/* 804D402C  38 03 FF FF */	addi r0, r3, -1
/* 804D4030  98 1F 0A 78 */	stb r0, 0xa78(r31)
lbl_804D4034:
/* 804D4034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D4038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D403C  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 804D4040  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804D4044  28 00 00 00 */	cmplwi r0, 0
/* 804D4048  41 82 00 18 */	beq lbl_804D4060
/* 804D404C  C3 BE 00 28 */	lfs f29, 0x28(r30)
/* 804D4050  3B 40 00 00 */	li r26, 0
/* 804D4054  38 00 00 00 */	li r0, 0
/* 804D4058  98 1F 0A 75 */	stb r0, 0xa75(r31)
/* 804D405C  48 00 01 10 */	b lbl_804D416C
lbl_804D4060:
/* 804D4060  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D4064  28 00 00 00 */	cmplwi r0, 0
/* 804D4068  40 82 00 70 */	bne lbl_804D40D8
/* 804D406C  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 804D4070  28 00 00 00 */	cmplwi r0, 0
/* 804D4074  40 82 00 64 */	bne lbl_804D40D8
/* 804D4078  88 1F 0A 6D */	lbz r0, 0xa6d(r31)
/* 804D407C  28 00 00 00 */	cmplwi r0, 0
/* 804D4080  41 82 00 60 */	beq lbl_804D40E0
/* 804D4084  3C 60 80 4D */	lis r3, stringBase0@ha
/* 804D4088  38 63 4E A0 */	addi r3, r3, stringBase0@l
/* 804D408C  4B BC 99 D4 */	b checkStageName__9daAlink_cFPCc
/* 804D4090  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D4094  41 82 00 4C */	beq lbl_804D40E0
/* 804D4098  38 60 00 06 */	li r3, 6
/* 804D409C  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha
/* 804D40A0  38 84 0D 64 */	addi r4, r4, struct_80450D64+0x0@l
/* 804D40A4  88 84 00 00 */	lbz r4, 0(r4)
/* 804D40A8  7C 84 07 74 */	extsb r4, r4
/* 804D40AC  4B B5 99 84 */	b dComIfGs_isZoneSwitch__Fii
/* 804D40B0  2C 03 00 00 */	cmpwi r3, 0
/* 804D40B4  41 82 00 2C */	beq lbl_804D40E0
/* 804D40B8  38 60 00 07 */	li r3, 7
/* 804D40BC  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha
/* 804D40C0  38 84 0D 64 */	addi r4, r4, struct_80450D64+0x0@l
/* 804D40C4  88 84 00 00 */	lbz r4, 0(r4)
/* 804D40C8  7C 84 07 74 */	extsb r4, r4
/* 804D40CC  4B B5 99 64 */	b dComIfGs_isZoneSwitch__Fii
/* 804D40D0  2C 03 00 00 */	cmpwi r3, 0
/* 804D40D4  41 82 00 0C */	beq lbl_804D40E0
lbl_804D40D8:
/* 804D40D8  C3 BE 00 28 */	lfs f29, 0x28(r30)
/* 804D40DC  48 00 00 10 */	b lbl_804D40EC
lbl_804D40E0:
/* 804D40E0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804D40E4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 804D40E8  C3 A3 00 08 */	lfs f29, 8(r3)
lbl_804D40EC:
/* 804D40EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D40F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D40F4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804D40F8  7C 00 07 74 */	extsb r0, r0
/* 804D40FC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804D4100  7C 63 02 14 */	add r3, r3, r0
/* 804D4104  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804D4108  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha
/* 804D410C  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l
/* 804D4110  AB 44 00 0C */	lha r26, 0xc(r4)
/* 804D4114  4B CA D5 00 */	b dCam_getControledAngleY__FP12camera_class
/* 804D4118  3C 1A 00 01 */	addis r0, r26, 1
/* 804D411C  7C 60 1A 14 */	add r3, r0, r3
/* 804D4120  38 03 80 00 */	addi r0, r3, -32768
/* 804D4124  7C 1A 07 34 */	extsh r26, r0
/* 804D4128  38 60 00 00 */	li r3, 0
/* 804D412C  4B B5 A8 A8 */	b dComIfG_getTrigA__FUl
/* 804D4130  28 03 00 00 */	cmplwi r3, 0
/* 804D4134  41 82 00 10 */	beq lbl_804D4144
/* 804D4138  38 00 00 01 */	li r0, 1
/* 804D413C  98 1F 0A 75 */	stb r0, 0xa75(r31)
/* 804D4140  48 00 00 0C */	b lbl_804D414C
lbl_804D4144:
/* 804D4144  38 00 00 00 */	li r0, 0
/* 804D4148  98 1F 0A 75 */	stb r0, 0xa75(r31)
lbl_804D414C:
/* 804D414C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804D4150  28 00 00 00 */	cmplwi r0, 0
/* 804D4154  41 82 00 18 */	beq lbl_804D416C
/* 804D4158  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D415C  28 00 00 00 */	cmplwi r0, 0
/* 804D4160  40 82 00 0C */	bne lbl_804D416C
/* 804D4164  7F E3 FB 78 */	mr r3, r31
/* 804D4168  4B FF F3 49 */	bl setAnm__11daSpinner_cFv
lbl_804D416C:
/* 804D416C  88 1F 0A 77 */	lbz r0, 0xa77(r31)
/* 804D4170  28 00 00 00 */	cmplwi r0, 0
/* 804D4174  41 82 00 2C */	beq lbl_804D41A0
/* 804D4178  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 804D417C  28 00 00 00 */	cmplwi r0, 0
/* 804D4180  41 82 00 18 */	beq lbl_804D4198
/* 804D4184  38 00 00 00 */	li r0, 0
/* 804D4188  90 1F 0A 64 */	stw r0, 0xa64(r31)
/* 804D418C  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 804D4190  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804D4194  90 1F 06 78 */	stw r0, 0x678(r31)
lbl_804D4198:
/* 804D4198  38 00 00 00 */	li r0, 0
/* 804D419C  98 1F 0A 77 */	stb r0, 0xa77(r31)
lbl_804D41A0:
/* 804D41A0  3B 80 00 00 */	li r28, 0
/* 804D41A4  7F A3 EB 78 */	mr r3, r29
/* 804D41A8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804D41AC  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 804D41B0  7D 89 03 A6 */	mtctr r12
/* 804D41B4  4E 80 04 21 */	bctrl 
/* 804D41B8  28 03 00 00 */	cmplwi r3, 0
/* 804D41BC  41 82 00 14 */	beq lbl_804D41D0
/* 804D41C0  80 1D 28 18 */	lwz r0, 0x2818(r29)
/* 804D41C4  7C 00 F8 40 */	cmplw r0, r31
/* 804D41C8  40 82 00 08 */	bne lbl_804D41D0
/* 804D41CC  3B 80 00 01 */	li r28, 1
lbl_804D41D0:
/* 804D41D0  A8 9F 0A 7E */	lha r4, 0xa7e(r31)
/* 804D41D4  A8 7F 0A 82 */	lha r3, 0xa82(r31)
/* 804D41D8  88 1F 0A 76 */	lbz r0, 0xa76(r31)
/* 804D41DC  7C 00 07 74 */	extsb r0, r0
/* 804D41E0  7C 03 01 D6 */	mullw r0, r3, r0
/* 804D41E4  7C 04 02 14 */	add r0, r4, r0
/* 804D41E8  B0 1F 0A 7E */	sth r0, 0xa7e(r31)
/* 804D41EC  38 60 00 00 */	li r3, 0
/* 804D41F0  38 80 00 01 */	li r4, 1
/* 804D41F4  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 804D41F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D41FC  40 82 00 18 */	bne lbl_804D4214
/* 804D4200  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D4204  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 804D4208  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D420C  41 82 00 08 */	beq lbl_804D4214
/* 804D4210  7C 64 1B 78 */	mr r4, r3
lbl_804D4214:
/* 804D4214  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804D4218  40 82 00 14 */	bne lbl_804D422C
/* 804D421C  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D4220  28 00 00 00 */	cmplwi r0, 0
/* 804D4224  40 82 00 08 */	bne lbl_804D422C
/* 804D4228  38 60 00 01 */	li r3, 1
lbl_804D422C:
/* 804D422C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D4230  41 82 00 1C */	beq lbl_804D424C
/* 804D4234  A8 7F 0A 7E */	lha r3, 0xa7e(r31)
/* 804D4238  88 1F 0A 76 */	lbz r0, 0xa76(r31)
/* 804D423C  7C 00 07 74 */	extsb r0, r0
/* 804D4240  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 804D4244  7C 03 02 14 */	add r0, r3, r0
/* 804D4248  B0 1F 0A 7E */	sth r0, 0xa7e(r31)
lbl_804D424C:
/* 804D424C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804D4250  4B B3 91 D8 */	b play__14mDoExt_baseAnmFv
/* 804D4254  38 7F 08 CC */	addi r3, r31, 0x8cc
/* 804D4258  38 80 00 00 */	li r4, 0
/* 804D425C  88 BF 0A 6E */	lbz r5, 0xa6e(r31)
/* 804D4260  81 9F 08 DC */	lwz r12, 0x8dc(r31)
/* 804D4264  81 8C 00 08 */	lwz r12, 8(r12)
/* 804D4268  7D 89 03 A6 */	mtctr r12
/* 804D426C  4E 80 04 21 */	bctrl 
/* 804D4270  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804D4274  28 00 00 00 */	cmplwi r0, 0
/* 804D4278  40 82 00 A4 */	bne lbl_804D431C
/* 804D427C  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 804D4280  4B D9 36 D4 */	b cM_rndF__Ff
/* 804D4284  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 804D4288  EC 20 08 2A */	fadds f1, f0, f1
/* 804D428C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 804D4290  EC 00 00 72 */	fmuls f0, f0, f1
/* 804D4294  FC 00 00 1E */	fctiwz f0, f0
/* 804D4298  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D429C  80 61 00 84 */	lwz r3, 0x84(r1)
/* 804D42A0  A8 1F 0A 7C */	lha r0, 0xa7c(r31)
/* 804D42A4  7C 00 1A 14 */	add r0, r0, r3
/* 804D42A8  B0 1F 0A 7C */	sth r0, 0xa7c(r31)
/* 804D42AC  A8 1F 0A 7C */	lha r0, 0xa7c(r31)
/* 804D42B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804D42B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804D42B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804D42BC  7C 23 04 2E */	lfsx f1, r3, r0
/* 804D42C0  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 804D42C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804D42C8  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 804D42CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D42D0  D0 1F 0A 98 */	stfs f0, 0xa98(r31)
/* 804D42D4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D42D8  D0 1F 0A 9C */	stfs f0, 0xa9c(r31)
/* 804D42DC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804D42E0  D0 1F 0A A0 */	stfs f0, 0xaa0(r31)
/* 804D42E4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804D42E8  41 82 00 10 */	beq lbl_804D42F8
/* 804D42EC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 804D42F0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804D42F4  48 00 04 F8 */	b lbl_804D47EC
lbl_804D42F8:
/* 804D42F8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 804D42FC  28 00 00 A4 */	cmplwi r0, 0xa4
/* 804D4300  41 82 04 EC */	beq lbl_804D47EC
/* 804D4304  7F E3 FB 78 */	mr r3, r31
/* 804D4308  4B FF FC 0D */	bl clearSpreadEffect__11daSpinner_cFv
/* 804D430C  7F E3 FB 78 */	mr r3, r31
/* 804D4310  4B B4 59 6C */	b fopAcM_delete__FP10fopAc_ac_c
/* 804D4314  38 60 00 01 */	li r3, 1
/* 804D4318  48 00 08 4C */	b lbl_804D4B64
lbl_804D431C:
/* 804D431C  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D4320  28 00 00 00 */	cmplwi r0, 0
/* 804D4324  41 82 01 D0 */	beq lbl_804D44F4
/* 804D4328  7F A3 EB 78 */	mr r3, r29
/* 804D432C  4B C3 96 40 */	b getSpinnerRideMoveTime__9daAlink_cFv
/* 804D4330  B0 7F 0A 7A */	sth r3, 0xa7a(r31)
/* 804D4334  7F A3 EB 78 */	mr r3, r29
/* 804D4338  4B C3 96 78 */	b getSpinnerRideSpeedF__9daAlink_cFv
/* 804D433C  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 804D4340  38 60 00 00 */	li r3, 0
/* 804D4344  98 7F 0A 6D */	stb r3, 0xa6d(r31)
/* 804D4348  38 00 00 01 */	li r0, 1
/* 804D434C  98 1F 0A 76 */	stb r0, 0xa76(r31)
/* 804D4350  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D4354  28 00 00 01 */	cmplwi r0, 1
/* 804D4358  40 82 00 40 */	bne lbl_804D4398
/* 804D435C  90 7F 0A 64 */	stw r3, 0xa64(r31)
/* 804D4360  C3 BF 04 D4 */	lfs f29, 0x4d4(r31)
/* 804D4364  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804D4368  38 9F 0A A4 */	addi r4, r31, 0xaa4
/* 804D436C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 804D4370  4B D9 C6 20 */	b cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 804D4374  2C 03 00 00 */	cmpwi r3, 0
/* 804D4378  41 82 04 74 */	beq lbl_804D47EC
/* 804D437C  38 00 00 02 */	li r0, 2
/* 804D4380  98 1F 0A 6F */	stb r0, 0xa6f(r31)
/* 804D4384  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804D4388  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804D438C  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 804D4390  D3 BF 04 D4 */	stfs f29, 0x4d4(r31)
/* 804D4394  48 00 04 58 */	b lbl_804D47EC
lbl_804D4398:
/* 804D4398  28 00 00 02 */	cmplwi r0, 2
/* 804D439C  40 82 00 C4 */	bne lbl_804D4460
/* 804D43A0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804D43A4  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 804D43A8  EC 01 00 2A */	fadds f0, f1, f0
/* 804D43AC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804D43B0  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804D43B4  C0 3F 05 34 */	lfs f1, 0x534(r31)
/* 804D43B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D43BC  40 80 00 08 */	bge lbl_804D43C4
/* 804D43C0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
lbl_804D43C4:
/* 804D43C4  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804D43C8  FC 00 02 10 */	fabs f0, f0
/* 804D43CC  FC 40 00 18 */	frsp f2, f0
/* 804D43D0  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 804D43D4  C0 3F 0A A8 */	lfs f1, 0xaa8(r31)
/* 804D43D8  4B D9 C3 68 */	b cLib_chaseF__FPfff
/* 804D43DC  2C 03 00 00 */	cmpwi r3, 0
/* 804D43E0  41 82 04 0C */	beq lbl_804D47EC
/* 804D43E4  38 00 00 03 */	li r0, 3
/* 804D43E8  98 1F 0A 6F */	stb r0, 0xa6f(r31)
/* 804D43EC  38 00 08 00 */	li r0, 0x800
/* 804D43F0  B0 1F 0A 82 */	sth r0, 0xa82(r31)
/* 804D43F4  38 60 00 00 */	li r3, 0
/* 804D43F8  90 61 00 08 */	stw r3, 8(r1)
/* 804D43FC  38 00 FF FF */	li r0, -1
/* 804D4400  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D4404  90 61 00 10 */	stw r3, 0x10(r1)
/* 804D4408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D440C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D4410  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804D4414  38 80 00 E7 */	li r4, 0xe7
/* 804D4418  38 BF 07 3C */	addi r5, r31, 0x73c
/* 804D441C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 804D4420  38 FF 01 0C */	addi r7, r31, 0x10c
/* 804D4424  39 00 00 00 */	li r8, 0
/* 804D4428  39 20 00 00 */	li r9, 0
/* 804D442C  39 40 00 00 */	li r10, 0
/* 804D4430  4B B7 8C 38 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 804D4434  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D4438  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804D443C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804D4440  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804D4444  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 804D4448  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 804D444C  38 80 00 04 */	li r4, 4
/* 804D4450  38 A0 00 01 */	li r5, 1
/* 804D4454  38 C1 00 48 */	addi r6, r1, 0x48
/* 804D4458  4B B9 B5 CC */	b StartShock__12dVibration_cFii4cXyz
/* 804D445C  48 00 03 90 */	b lbl_804D47EC
lbl_804D4460:
/* 804D4460  C0 1F 0A A4 */	lfs f0, 0xaa4(r31)
/* 804D4464  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804D4468  C0 1F 0A A8 */	lfs f0, 0xaa8(r31)
/* 804D446C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804D4470  C0 1F 0A AC */	lfs f0, 0xaac(r31)
/* 804D4474  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804D4478  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D447C  28 00 00 05 */	cmplwi r0, 5
/* 804D4480  41 82 03 6C */	beq lbl_804D47EC
/* 804D4484  88 1B 40 75 */	lbz r0, 0x4075(r27)
/* 804D4488  28 00 00 00 */	cmplwi r0, 0
/* 804D448C  40 82 00 3C */	bne lbl_804D44C8
/* 804D4490  88 1F 0A 75 */	lbz r0, 0xa75(r31)
/* 804D4494  28 00 00 00 */	cmplwi r0, 0
/* 804D4498  41 82 00 30 */	beq lbl_804D44C8
/* 804D449C  A8 7F 0A 82 */	lha r3, 0xa82(r31)
/* 804D44A0  38 03 02 00 */	addi r0, r3, 0x200
/* 804D44A4  B0 1F 0A 82 */	sth r0, 0xa82(r31)
/* 804D44A8  A8 1F 0A 82 */	lha r0, 0xa82(r31)
/* 804D44AC  2C 00 13 88 */	cmpwi r0, 0x1388
/* 804D44B0  40 81 00 0C */	ble lbl_804D44BC
/* 804D44B4  38 00 13 88 */	li r0, 0x1388
/* 804D44B8  B0 1F 0A 82 */	sth r0, 0xa82(r31)
lbl_804D44BC:
/* 804D44BC  38 00 00 04 */	li r0, 4
/* 804D44C0  98 1F 0A 6F */	stb r0, 0xa6f(r31)
/* 804D44C4  48 00 03 28 */	b lbl_804D47EC
lbl_804D44C8:
/* 804D44C8  A8 7F 0A 82 */	lha r3, 0xa82(r31)
/* 804D44CC  38 03 FF C0 */	addi r0, r3, -64
/* 804D44D0  B0 1F 0A 82 */	sth r0, 0xa82(r31)
/* 804D44D4  A8 1F 0A 82 */	lha r0, 0xa82(r31)
/* 804D44D8  2C 00 00 00 */	cmpwi r0, 0
/* 804D44DC  40 80 00 0C */	bge lbl_804D44E8
/* 804D44E0  38 00 00 00 */	li r0, 0
/* 804D44E4  B0 1F 0A 82 */	sth r0, 0xa82(r31)
lbl_804D44E8:
/* 804D44E8  38 00 00 03 */	li r0, 3
/* 804D44EC  98 1F 0A 6F */	stb r0, 0xa6f(r31)
/* 804D44F0  48 00 02 FC */	b lbl_804D47EC
lbl_804D44F4:
/* 804D44F4  38 00 08 2F */	li r0, 0x82f
/* 804D44F8  B0 1F 0A 82 */	sth r0, 0xa82(r31)
/* 804D44FC  38 7F 0A 84 */	addi r3, r31, 0xa84
/* 804D4500  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D4504  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 804D4508  4B D9 C2 38 */	b cLib_chaseF__FPfff
/* 804D450C  A8 1F 0A 7A */	lha r0, 0xa7a(r31)
/* 804D4510  2C 00 00 00 */	cmpwi r0, 0
/* 804D4514  40 82 00 58 */	bne lbl_804D456C
/* 804D4518  7F A3 EB 78 */	mr r3, r29
/* 804D451C  4B C3 94 E8 */	b getSpinnerRideDecSpeedMin__9daAlink_cCFv
/* 804D4520  FF C0 08 90 */	fmr f30, f1
/* 804D4524  7F A3 EB 78 */	mr r3, r29
/* 804D4528  4B C3 94 CC */	b getSpinnerRideDecSpeedMax__9daAlink_cCFv
/* 804D452C  FF E0 08 90 */	fmr f31, f1
/* 804D4530  7F A3 EB 78 */	mr r3, r29
/* 804D4534  4B C3 94 E0 */	b getSpinnerRideDecSpeedRate__9daAlink_cCFv
/* 804D4538  FC 40 08 90 */	fmr f2, f1
/* 804D453C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 804D4540  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D4544  FC 60 F8 90 */	fmr f3, f31
/* 804D4548  FC 80 F0 90 */	fmr f4, f30
/* 804D454C  4B D9 B4 30 */	b cLib_addCalc__FPfffff
/* 804D4550  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804D4554  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D4558  40 80 00 54 */	bge lbl_804D45AC
/* 804D455C  38 00 00 01 */	li r0, 1
/* 804D4560  98 1F 0A 71 */	stb r0, 0xa71(r31)
/* 804D4564  38 60 00 01 */	li r3, 1
/* 804D4568  48 00 05 FC */	b lbl_804D4B64
lbl_804D456C:
/* 804D456C  38 60 00 00 */	li r3, 0
/* 804D4570  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 804D4574  28 00 00 0E */	cmplwi r0, 0xe
/* 804D4578  40 82 00 14 */	bne lbl_804D458C
/* 804D457C  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 804D4580  2C 00 00 01 */	cmpwi r0, 1
/* 804D4584  40 82 00 08 */	bne lbl_804D458C
/* 804D4588  38 60 00 01 */	li r3, 1
lbl_804D458C:
/* 804D458C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D4590  40 82 00 1C */	bne lbl_804D45AC
/* 804D4594  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 804D4598  28 00 00 00 */	cmplwi r0, 0
/* 804D459C  40 82 00 10 */	bne lbl_804D45AC
/* 804D45A0  A8 7F 0A 7A */	lha r3, 0xa7a(r31)
/* 804D45A4  38 03 FF FF */	addi r0, r3, -1
/* 804D45A8  B0 1F 0A 7A */	sth r0, 0xa7a(r31)
lbl_804D45AC:
/* 804D45AC  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804D45B0  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGPla@l
/* 804D45B4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 804D45B8  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 804D45BC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804D45C0  41 82 00 20 */	beq lbl_804D45E0
/* 804D45C4  7F 63 DB 78 */	mr r3, r27
/* 804D45C8  38 9F 07 3C */	addi r4, r31, 0x73c
/* 804D45CC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 804D45D0  4B BA 01 74 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804D45D4  38 61 00 6C */	addi r3, r1, 0x6c
/* 804D45D8  4B D9 2B 50 */	b atan2sX_Z__4cXyzCFv
/* 804D45DC  7C 79 1B 78 */	mr r25, r3
lbl_804D45E0:
/* 804D45E0  7F E3 FB 78 */	mr r3, r31
/* 804D45E4  4B FF F1 91 */	bl checkPathMove__11daSpinner_cFv
/* 804D45E8  2C 03 00 00 */	cmpwi r3, 0
/* 804D45EC  40 82 01 C8 */	bne lbl_804D47B4
/* 804D45F0  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 804D45F4  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804D45F8  41 82 00 50 */	beq lbl_804D4648
/* 804D45FC  88 1F 0A 74 */	lbz r0, 0xa74(r31)
/* 804D4600  28 00 00 00 */	cmplwi r0, 0
/* 804D4604  40 82 00 44 */	bne lbl_804D4648
/* 804D4608  38 7F 05 8C */	addi r3, r31, 0x58c
/* 804D460C  38 00 00 03 */	li r0, 3
/* 804D4610  7C 09 03 A6 */	mtctr r0
lbl_804D4614:
/* 804D4614  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804D4618  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804D461C  41 82 00 20 */	beq lbl_804D463C
/* 804D4620  AB 23 00 3C */	lha r25, 0x3c(r3)
/* 804D4624  4B CD 6E 9C */	b dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 804D4628  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 804D462C  7F E3 FB 78 */	mr r3, r31
/* 804D4630  7F 24 CB 78 */	mr r4, r25
/* 804D4634  4B FF EB 41 */	bl setWallHit__11daSpinner_cFsUl
/* 804D4638  48 00 01 7C */	b lbl_804D47B4
lbl_804D463C:
/* 804D463C  38 63 00 40 */	addi r3, r3, 0x40
/* 804D4640  42 00 FF D4 */	bdnz lbl_804D4614
/* 804D4644  48 00 01 70 */	b lbl_804D47B4
lbl_804D4648:
/* 804D4648  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804D464C  41 82 00 5C */	beq lbl_804D46A8
/* 804D4650  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 804D4654  C0 1D 34 70 */	lfs f0, 0x3470(r29)
/* 804D4658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D465C  40 80 00 4C */	bge lbl_804D46A8
/* 804D4660  7F 63 DB 78 */	mr r3, r27
/* 804D4664  38 9F 07 3C */	addi r4, r31, 0x73c
/* 804D4668  4B BA 06 54 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 804D466C  2C 03 00 02 */	cmpwi r3, 2
/* 804D4670  41 82 00 38 */	beq lbl_804D46A8
/* 804D4674  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804D4678  7C 00 C8 50 */	subf r0, r0, r25
/* 804D467C  7C 03 07 34 */	extsh r3, r0
/* 804D4680  4B E9 0A 50 */	b abs
/* 804D4684  2C 03 40 00 */	cmpwi r3, 0x4000
/* 804D4688  40 81 00 20 */	ble lbl_804D46A8
/* 804D468C  38 7F 07 3C */	addi r3, r31, 0x73c
/* 804D4690  4B CD 6E 30 */	b dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 804D4694  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 804D4698  7F E3 FB 78 */	mr r3, r31
/* 804D469C  7F 24 CB 78 */	mr r4, r25
/* 804D46A0  4B FF EA D5 */	bl setWallHit__11daSpinner_cFsUl
/* 804D46A4  48 00 01 10 */	b lbl_804D47B4
lbl_804D46A8:
/* 804D46A8  38 7F 09 28 */	addi r3, r31, 0x928
/* 804D46AC  4B BA FC 14 */	b ChkAtHit__12dCcD_GObjInfFv
/* 804D46B0  28 03 00 00 */	cmplwi r3, 0
/* 804D46B4  41 82 00 C0 */	beq lbl_804D4774
/* 804D46B8  80 1F 09 84 */	lwz r0, 0x984(r31)
/* 804D46BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D46C0  40 82 00 28 */	bne lbl_804D46E8
/* 804D46C4  38 7F 09 28 */	addi r3, r31, 0x928
/* 804D46C8  4B BA FC E0 */	b GetAtHitGObj__12dCcD_GObjInfFv
/* 804D46CC  28 03 00 00 */	cmplwi r3, 0
/* 804D46D0  41 82 00 A4 */	beq lbl_804D4774
/* 804D46D4  38 7F 09 28 */	addi r3, r31, 0x928
/* 804D46D8  4B BA FC D0 */	b GetAtHitGObj__12dCcD_GObjInfFv
/* 804D46DC  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 804D46E0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804D46E4  41 82 00 90 */	beq lbl_804D4774
lbl_804D46E8:
/* 804D46E8  3B 3F 09 80 */	addi r25, r31, 0x980
/* 804D46EC  7F 23 CB 78 */	mr r3, r25
/* 804D46F0  4B BA EF 98 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 804D46F4  28 03 00 00 */	cmplwi r3, 0
/* 804D46F8  41 82 00 3C */	beq lbl_804D4734
/* 804D46FC  7F 23 CB 78 */	mr r3, r25
/* 804D4700  4B BA EF 88 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 804D4704  7C 65 1B 78 */	mr r5, r3
/* 804D4708  38 61 00 3C */	addi r3, r1, 0x3c
/* 804D470C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D4710  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 804D4714  4B D9 24 20 */	b __mi__4cXyzCFRC3Vec
/* 804D4718  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804D471C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804D4720  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804D4724  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804D4728  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804D472C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804D4730  48 00 00 2C */	b lbl_804D475C
lbl_804D4734:
/* 804D4734  38 61 00 30 */	addi r3, r1, 0x30
/* 804D4738  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D473C  38 B9 00 20 */	addi r5, r25, 0x20
/* 804D4740  4B D9 23 F4 */	b __mi__4cXyzCFRC3Vec
/* 804D4744  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804D4748  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804D474C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804D4750  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804D4754  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804D4758  D0 01 00 68 */	stfs f0, 0x68(r1)
lbl_804D475C:
/* 804D475C  38 61 00 60 */	addi r3, r1, 0x60
/* 804D4760  4B D9 29 C8 */	b atan2sX_Z__4cXyzCFv
/* 804D4764  B0 7F 0A 80 */	sth r3, 0xa80(r31)
/* 804D4768  7F E3 FB 78 */	mr r3, r31
/* 804D476C  4B FF E9 25 */	bl setReflectAngle__11daSpinner_cFv
/* 804D4770  48 00 00 44 */	b lbl_804D47B4
lbl_804D4774:
/* 804D4774  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804D4778  41 82 00 3C */	beq lbl_804D47B4
/* 804D477C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 804D4780  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804D4784  40 81 00 30 */	ble lbl_804D47B4
/* 804D4788  7F A3 EB 78 */	mr r3, r29
/* 804D478C  4B C3 92 A8 */	b getSpinnerRideRotAngleMin__9daAlink_cCFv
/* 804D4790  7C 79 1B 78 */	mr r25, r3
/* 804D4794  7F A3 EB 78 */	mr r3, r29
/* 804D4798  4B C3 92 8C */	b getSpinnerRideRotAngleMax__9daAlink_cCFv
/* 804D479C  7C 66 1B 78 */	mr r6, r3
/* 804D47A0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 804D47A4  7F 44 D3 78 */	mr r4, r26
/* 804D47A8  38 A0 00 04 */	li r5, 4
/* 804D47AC  7F 27 CB 78 */	mr r7, r25
/* 804D47B0  4B D9 BD 90 */	b cLib_addCalcAngleS__FPsssss
lbl_804D47B4:
/* 804D47B4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804D47B8  41 82 00 14 */	beq lbl_804D47CC
/* 804D47BC  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 804D47C0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804D47C4  90 1F 09 54 */	stw r0, 0x954(r31)
/* 804D47C8  48 00 00 10 */	b lbl_804D47D8
lbl_804D47CC:
/* 804D47CC  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 804D47D0  60 00 00 10 */	ori r0, r0, 0x10
/* 804D47D4  90 1F 09 54 */	stw r0, 0x954(r31)
lbl_804D47D8:
/* 804D47D8  38 00 00 00 */	li r0, 0
/* 804D47DC  98 1F 0A 74 */	stb r0, 0xa74(r31)
/* 804D47E0  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804D47E4  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGPla@l
/* 804D47E8  90 01 00 7C */	stw r0, 0x7c(r1)
lbl_804D47EC:
/* 804D47EC  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D47F0  28 00 00 00 */	cmplwi r0, 0
/* 804D47F4  40 82 00 10 */	bne lbl_804D4804
/* 804D47F8  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 804D47FC  28 00 00 00 */	cmplwi r0, 0
/* 804D4800  41 82 00 0C */	beq lbl_804D480C
lbl_804D4804:
/* 804D4804  38 80 00 00 */	li r4, 0
/* 804D4808  48 00 00 28 */	b lbl_804D4830
lbl_804D480C:
/* 804D480C  7F A3 EB 78 */	mr r3, r29
/* 804D4810  4B C3 92 14 */	b getSpinnerRideRotAngleMax__9daAlink_cCFv
/* 804D4814  7C 64 07 34 */	extsh r4, r3
/* 804D4818  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 804D481C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804D4820  7C 03 00 50 */	subf r0, r3, r0
/* 804D4824  7C 00 23 D6 */	divw r0, r0, r4
/* 804D4828  1C 00 05 DC */	mulli r0, r0, 0x5dc
/* 804D482C  7C 04 07 34 */	extsh r4, r0
lbl_804D4830:
/* 804D4830  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 804D4834  38 A0 00 03 */	li r5, 3
/* 804D4838  38 C0 01 2C */	li r6, 0x12c
/* 804D483C  38 E0 00 32 */	li r7, 0x32
/* 804D4840  4B D9 BD 00 */	b cLib_addCalcAngleS__FPsssss
/* 804D4844  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D4848  28 00 00 00 */	cmplwi r0, 0
/* 804D484C  40 82 00 10 */	bne lbl_804D485C
/* 804D4850  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 804D4854  28 00 00 00 */	cmplwi r0, 0
/* 804D4858  41 82 00 0C */	beq lbl_804D4864
lbl_804D485C:
/* 804D485C  38 80 00 00 */	li r4, 0
/* 804D4860  48 00 00 38 */	b lbl_804D4898
lbl_804D4864:
/* 804D4864  7F A3 EB 78 */	mr r3, r29
/* 804D4868  4B C3 91 48 */	b getSpinnerRideSpeedF__9daAlink_cFv
/* 804D486C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804D4870  EC 20 08 24 */	fdivs f1, f0, f1
/* 804D4874  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 804D4878  EC 00 00 72 */	fmuls f0, f0, f1
/* 804D487C  FC 00 00 1E */	fctiwz f0, f0
/* 804D4880  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D4884  80 81 00 84 */	lwz r4, 0x84(r1)
/* 804D4888  7C 80 07 34 */	extsh r0, r4
/* 804D488C  2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 804D4890  40 81 00 08 */	ble lbl_804D4898
/* 804D4894  38 80 07 D0 */	li r4, 0x7d0
lbl_804D4898:
/* 804D4898  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804D489C  38 A0 00 03 */	li r5, 3
/* 804D48A0  38 C0 01 2C */	li r6, 0x12c
/* 804D48A4  38 E0 00 32 */	li r7, 0x32
/* 804D48A8  4B D9 BC 98 */	b cLib_addCalcAngleS__FPsssss
/* 804D48AC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804D48B0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804D48B4  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D48B8  28 00 00 00 */	cmplwi r0, 0
/* 804D48BC  40 82 00 F0 */	bne lbl_804D49AC
/* 804D48C0  38 60 00 00 */	li r3, 0
/* 804D48C4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 804D48C8  28 00 01 50 */	cmplwi r0, 0x150
/* 804D48CC  40 82 00 18 */	bne lbl_804D48E4
/* 804D48D0  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 804D48D4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 804D48D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D48DC  40 80 00 08 */	bge lbl_804D48E4
/* 804D48E0  38 60 00 01 */	li r3, 1
lbl_804D48E4:
/* 804D48E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D48E8  40 82 00 1C */	bne lbl_804D4904
/* 804D48EC  7F E3 FB 78 */	mr r3, r31
/* 804D48F0  4B FF DD 05 */	bl posMove__11daSpinner_cFv
/* 804D48F4  2C 03 00 00 */	cmpwi r3, 0
/* 804D48F8  40 82 00 0C */	bne lbl_804D4904
/* 804D48FC  38 60 00 01 */	li r3, 1
/* 804D4900  48 00 02 64 */	b lbl_804D4B64
lbl_804D4904:
/* 804D4904  88 1B 40 75 */	lbz r0, 0x4075(r27)
/* 804D4908  28 00 00 00 */	cmplwi r0, 0
/* 804D490C  40 82 00 7C */	bne lbl_804D4988
/* 804D4910  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 804D4914  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804D4918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D491C  40 81 00 6C */	ble lbl_804D4988
/* 804D4920  C0 5F 0A A0 */	lfs f2, 0xaa0(r31)
/* 804D4924  C0 1F 0A 98 */	lfs f0, 0xa98(r31)
/* 804D4928  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D492C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D4930  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804D4934  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804D4938  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804D493C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D4940  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804D4944  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804D4948  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 804D494C  38 61 00 18 */	addi r3, r1, 0x18
/* 804D4950  38 81 00 24 */	addi r4, r1, 0x24
/* 804D4954  4B E7 2A 48 */	b PSVECSquareDistance
/* 804D4958  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 804D495C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D4960  40 80 00 28 */	bge lbl_804D4988
/* 804D4964  88 7F 0A 79 */	lbz r3, 0xa79(r31)
/* 804D4968  38 03 00 01 */	addi r0, r3, 1
/* 804D496C  98 1F 0A 79 */	stb r0, 0xa79(r31)
/* 804D4970  88 1F 0A 79 */	lbz r0, 0xa79(r31)
/* 804D4974  28 00 00 1E */	cmplwi r0, 0x1e
/* 804D4978  40 81 00 A8 */	ble lbl_804D4A20
/* 804D497C  38 00 00 01 */	li r0, 1
/* 804D4980  98 1F 0A 71 */	stb r0, 0xa71(r31)
/* 804D4984  48 00 00 9C */	b lbl_804D4A20
lbl_804D4988:
/* 804D4988  38 00 00 00 */	li r0, 0
/* 804D498C  98 1F 0A 79 */	stb r0, 0xa79(r31)
/* 804D4990  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D4994  D0 1F 0A 98 */	stfs f0, 0xa98(r31)
/* 804D4998  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D499C  D0 1F 0A 9C */	stfs f0, 0xa9c(r31)
/* 804D49A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804D49A4  D0 1F 0A A0 */	stfs f0, 0xaa0(r31)
/* 804D49A8  48 00 00 78 */	b lbl_804D4A20
lbl_804D49AC:
/* 804D49AC  38 00 00 00 */	li r0, 0
/* 804D49B0  98 1F 0A 79 */	stb r0, 0xa79(r31)
/* 804D49B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D49B8  D0 1F 0A 98 */	stfs f0, 0xa98(r31)
/* 804D49BC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D49C0  D0 1F 0A 9C */	stfs f0, 0xa9c(r31)
/* 804D49C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804D49C8  D0 1F 0A A0 */	stfs f0, 0xaa0(r31)
/* 804D49CC  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 804D49D0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804D49D4  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804D49D8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804D49DC  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 804D49E0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804D49E4  38 7F 06 4C */	addi r3, r31, 0x64c
/* 804D49E8  7F 64 DB 78 */	mr r4, r27
/* 804D49EC  4B BA 20 C0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804D49F0  C0 1F 0A 98 */	lfs f0, 0xa98(r31)
/* 804D49F4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804D49F8  C0 1F 0A 9C */	lfs f0, 0xa9c(r31)
/* 804D49FC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804D4A00  C0 1F 0A A0 */	lfs f0, 0xaa0(r31)
/* 804D4A04  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804D4A08  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804D4A0C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 804D4A10  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804D4A14  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804D4A18  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804D4A1C  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_804D4A20:
/* 804D4A20  7F E3 FB 78 */	mr r3, r31
/* 804D4A24  4B FF D7 BD */	bl setRoomInfo__11daSpinner_cFv
/* 804D4A28  7F E3 FB 78 */	mr r3, r31
/* 804D4A2C  4B FF D8 4D */	bl setMatrix__11daSpinner_cFv
/* 804D4A30  7F E3 FB 78 */	mr r3, r31
/* 804D4A34  4B FF D8 ED */	bl setEffect__11daSpinner_cFv
/* 804D4A38  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 804D4A3C  28 00 00 00 */	cmplwi r0, 0
/* 804D4A40  40 82 00 2C */	bne lbl_804D4A6C
/* 804D4A44  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 804D4A48  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804D4A4C  41 82 00 18 */	beq lbl_804D4A64
/* 804D4A50  38 7F 07 3C */	addi r3, r31, 0x73c
/* 804D4A54  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804D4A58  4B B4 90 8C */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 804D4A5C  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 804D4A60  48 00 00 0C */	b lbl_804D4A6C
lbl_804D4A64:
/* 804D4A64  38 00 00 00 */	li r0, 0
/* 804D4A68  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_804D4A6C:
/* 804D4A6C  38 7F 09 28 */	addi r3, r31, 0x928
/* 804D4A70  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D4A74  4B BA FE E0 */	b MoveCAt__8dCcD_CylFR4cXyz
/* 804D4A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D4A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D4A80  38 63 23 3C */	addi r3, r3, 0x233c
/* 804D4A84  38 9F 09 28 */	addi r4, r31, 0x928
/* 804D4A88  4B D9 01 20 */	b Set__4cCcSFP8cCcD_Obj
/* 804D4A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D4A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D4A94  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 804D4A98  38 9F 09 28 */	addi r4, r31, 0x928
/* 804D4A9C  38 A0 00 01 */	li r5, 1
/* 804D4AA0  4B BB 12 F8 */	b Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 804D4AA4  38 60 00 00 */	li r3, 0
/* 804D4AA8  38 80 00 01 */	li r4, 1
/* 804D4AAC  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 804D4AB0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D4AB4  40 82 00 18 */	bne lbl_804D4ACC
/* 804D4AB8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D4ABC  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 804D4AC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D4AC4  41 82 00 08 */	beq lbl_804D4ACC
/* 804D4AC8  7C 64 1B 78 */	mr r4, r3
lbl_804D4ACC:
/* 804D4ACC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804D4AD0  40 82 00 14 */	bne lbl_804D4AE4
/* 804D4AD4  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 804D4AD8  28 00 00 00 */	cmplwi r0, 0
/* 804D4ADC  40 82 00 08 */	bne lbl_804D4AE4
/* 804D4AE0  38 60 00 01 */	li r3, 1
lbl_804D4AE4:
/* 804D4AE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D4AE8  41 82 00 50 */	beq lbl_804D4B38
/* 804D4AEC  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 804D4AF0  28 00 00 00 */	cmplwi r0, 0
/* 804D4AF4  41 82 00 20 */	beq lbl_804D4B14
/* 804D4AF8  38 7F 05 8C */	addi r3, r31, 0x58c
/* 804D4AFC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804D4B00  4B BA 14 40 */	b SetWallR__12dBgS_AcchCirFf
/* 804D4B04  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 804D4B08  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804D4B0C  4B D9 A6 F4 */	b SetR__8cM3dGCylFf
/* 804D4B10  48 00 00 1C */	b lbl_804D4B2C
lbl_804D4B14:
/* 804D4B14  38 7F 05 8C */	addi r3, r31, 0x58c
/* 804D4B18  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 804D4B1C  4B BA 14 24 */	b SetWallR__12dBgS_AcchCirFf
/* 804D4B20  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 804D4B24  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 804D4B28  4B D9 A6 D8 */	b SetR__8cM3dGCylFf
lbl_804D4B2C:
/* 804D4B2C  38 00 00 02 */	li r0, 2
/* 804D4B30  98 1F 09 3C */	stb r0, 0x93c(r31)
/* 804D4B34  48 00 00 24 */	b lbl_804D4B58
lbl_804D4B38:
/* 804D4B38  38 7F 05 8C */	addi r3, r31, 0x58c
/* 804D4B3C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804D4B40  4B BA 14 00 */	b SetWallR__12dBgS_AcchCirFf
/* 804D4B44  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 804D4B48  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804D4B4C  4B D9 A6 B4 */	b SetR__8cM3dGCylFf
/* 804D4B50  38 00 00 01 */	li r0, 1
/* 804D4B54  98 1F 09 3C */	stb r0, 0x93c(r31)
lbl_804D4B58:
/* 804D4B58  7F E3 FB 78 */	mr r3, r31
/* 804D4B5C  4B FF F2 05 */	bl setSpreadEffect__11daSpinner_cFv
/* 804D4B60  38 60 00 01 */	li r3, 1
lbl_804D4B64:
/* 804D4B64  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 804D4B68  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 804D4B6C  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 804D4B70  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 804D4B74  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 804D4B78  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 804D4B7C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804D4B80  4B E8 D6 98 */	b _restgpr_25
/* 804D4B84  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804D4B88  7C 08 03 A6 */	mtlr r0
/* 804D4B8C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804D4B90  4E 80 00 20 */	blr 
