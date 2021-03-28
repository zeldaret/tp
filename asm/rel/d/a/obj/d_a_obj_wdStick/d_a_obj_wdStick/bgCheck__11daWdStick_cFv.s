lbl_80D32DB4:
/* 80D32DB4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D32DB8  7C 08 02 A6 */	mflr r0
/* 80D32DBC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D32DC0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80D32DC4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80D32DC8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80D32DCC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80D32DD0  39 61 00 60 */	addi r11, r1, 0x60
/* 80D32DD4  4B 62 F3 FC */	b _savegpr_26
/* 80D32DD8  7C 7A 1B 78 */	mr r26, r3
/* 80D32DDC  3C 60 80 D3 */	lis r3, mCcDObjInfo__11daWdStick_c@ha
/* 80D32DE0  3B E3 41 38 */	addi r31, r3, mCcDObjInfo__11daWdStick_c@l
/* 80D32DE4  80 1A 05 CC */	lwz r0, 0x5cc(r26)
/* 80D32DE8  54 1E BF FE */	rlwinm r30, r0, 0x17, 0x1f, 0x1f
/* 80D32DEC  54 1D CF FE */	rlwinm r29, r0, 0x19, 0x1f, 0x1f
/* 80D32DF0  54 1C AF FE */	rlwinm r28, r0, 0x15, 0x1f, 0x1f
/* 80D32DF4  54 1B A7 FE */	rlwinm r27, r0, 0x14, 0x1f, 0x1f
/* 80D32DF8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80D32DFC  41 82 02 88 */	beq lbl_80D33084
/* 80D32E00  38 7A 04 F8 */	addi r3, r26, 0x4f8
/* 80D32E04  4B 61 43 34 */	b PSVECSquareMag
/* 80D32E08  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D32E0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32E10  40 81 00 58 */	ble lbl_80D32E68
/* 80D32E14  FC 00 08 34 */	frsqrte f0, f1
/* 80D32E18  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80D32E1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32E20  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80D32E24  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32E28  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32E2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32E30  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32E34  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32E38  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32E3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32E40  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32E44  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32E48  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32E4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32E50  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32E54  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32E58  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32E5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D32E60  FC 20 08 18 */	frsp f1, f1
/* 80D32E64  48 00 00 88 */	b lbl_80D32EEC
lbl_80D32E68:
/* 80D32E68  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80D32E6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32E70  40 80 00 10 */	bge lbl_80D32E80
/* 80D32E74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D32E78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D32E7C  48 00 00 70 */	b lbl_80D32EEC
lbl_80D32E80:
/* 80D32E80  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D32E84  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80D32E88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D32E8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D32E90  7C 03 00 00 */	cmpw r3, r0
/* 80D32E94  41 82 00 14 */	beq lbl_80D32EA8
/* 80D32E98  40 80 00 40 */	bge lbl_80D32ED8
/* 80D32E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80D32EA0  41 82 00 20 */	beq lbl_80D32EC0
/* 80D32EA4  48 00 00 34 */	b lbl_80D32ED8
lbl_80D32EA8:
/* 80D32EA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D32EAC  41 82 00 0C */	beq lbl_80D32EB8
/* 80D32EB0  38 00 00 01 */	li r0, 1
/* 80D32EB4  48 00 00 28 */	b lbl_80D32EDC
lbl_80D32EB8:
/* 80D32EB8  38 00 00 02 */	li r0, 2
/* 80D32EBC  48 00 00 20 */	b lbl_80D32EDC
lbl_80D32EC0:
/* 80D32EC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D32EC4  41 82 00 0C */	beq lbl_80D32ED0
/* 80D32EC8  38 00 00 05 */	li r0, 5
/* 80D32ECC  48 00 00 10 */	b lbl_80D32EDC
lbl_80D32ED0:
/* 80D32ED0  38 00 00 03 */	li r0, 3
/* 80D32ED4  48 00 00 08 */	b lbl_80D32EDC
lbl_80D32ED8:
/* 80D32ED8  38 00 00 04 */	li r0, 4
lbl_80D32EDC:
/* 80D32EDC  2C 00 00 01 */	cmpwi r0, 1
/* 80D32EE0  40 82 00 0C */	bne lbl_80D32EEC
/* 80D32EE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D32EE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D32EEC:
/* 80D32EEC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80D32EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32EF4  40 81 01 90 */	ble lbl_80D33084
/* 80D32EF8  C0 5A 04 F8 */	lfs f2, 0x4f8(r26)
/* 80D32EFC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80D32F00  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 80D32F04  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D32F08  C0 1A 05 00 */	lfs f0, 0x500(r26)
/* 80D32F0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D32F10  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80D32F14  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D32F18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D32F1C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80D32F20  38 9A 07 78 */	addi r4, r26, 0x778
/* 80D32F24  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80D32F28  4B FF FB 49 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80D32F2C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80D32F30  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80D32F34  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80D32F38  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80D32F3C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80D32F40  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80D32F44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D32F48  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80D32F4C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80D32F50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D32F54  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D32F58  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D32F5C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80D32F60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D32F64  38 61 00 18 */	addi r3, r1, 0x18
/* 80D32F68  4B 61 41 D0 */	b PSVECSquareMag
/* 80D32F6C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D32F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32F74  40 81 00 58 */	ble lbl_80D32FCC
/* 80D32F78  FC 00 08 34 */	frsqrte f0, f1
/* 80D32F7C  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80D32F80  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32F84  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80D32F88  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32F8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32F90  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32F94  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32F98  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32F9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32FA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32FA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32FA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32FAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32FB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32FB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32FB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32FBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32FC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D32FC4  FC 20 08 18 */	frsp f1, f1
/* 80D32FC8  48 00 00 88 */	b lbl_80D33050
lbl_80D32FCC:
/* 80D32FCC  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80D32FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32FD4  40 80 00 10 */	bge lbl_80D32FE4
/* 80D32FD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D32FDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D32FE0  48 00 00 70 */	b lbl_80D33050
lbl_80D32FE4:
/* 80D32FE4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D32FE8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D32FEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D32FF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D32FF4  7C 03 00 00 */	cmpw r3, r0
/* 80D32FF8  41 82 00 14 */	beq lbl_80D3300C
/* 80D32FFC  40 80 00 40 */	bge lbl_80D3303C
/* 80D33000  2C 03 00 00 */	cmpwi r3, 0
/* 80D33004  41 82 00 20 */	beq lbl_80D33024
/* 80D33008  48 00 00 34 */	b lbl_80D3303C
lbl_80D3300C:
/* 80D3300C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D33010  41 82 00 0C */	beq lbl_80D3301C
/* 80D33014  38 00 00 01 */	li r0, 1
/* 80D33018  48 00 00 28 */	b lbl_80D33040
lbl_80D3301C:
/* 80D3301C  38 00 00 02 */	li r0, 2
/* 80D33020  48 00 00 20 */	b lbl_80D33040
lbl_80D33024:
/* 80D33024  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D33028  41 82 00 0C */	beq lbl_80D33034
/* 80D3302C  38 00 00 05 */	li r0, 5
/* 80D33030  48 00 00 10 */	b lbl_80D33040
lbl_80D33034:
/* 80D33034  38 00 00 03 */	li r0, 3
/* 80D33038  48 00 00 08 */	b lbl_80D33040
lbl_80D3303C:
/* 80D3303C  38 00 00 04 */	li r0, 4
lbl_80D33040:
/* 80D33040  2C 00 00 01 */	cmpwi r0, 1
/* 80D33044  40 82 00 0C */	bne lbl_80D33050
/* 80D33048  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D3304C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D33050:
/* 80D33050  D0 3A 05 2C */	stfs f1, 0x52c(r26)
/* 80D33054  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80D33058  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80D3305C  4B 53 46 18 */	b cM_atan2s__Fff
/* 80D33060  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 80D33064  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D33068  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80D3306C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D33070  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D33074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D33078  40 81 00 0C */	ble lbl_80D33084
/* 80D3307C  7F 43 D3 78 */	mr r3, r26
/* 80D33080  48 00 02 C9 */	bl setBoundSe__11daWdStick_cFv
lbl_80D33084:
/* 80D33084  88 1A 05 78 */	lbz r0, 0x578(r26)
/* 80D33088  28 00 00 00 */	cmplwi r0, 0
/* 80D3308C  41 82 00 14 */	beq lbl_80D330A0
/* 80D33090  28 00 00 02 */	cmplwi r0, 2
/* 80D33094  41 82 00 0C */	beq lbl_80D330A0
/* 80D33098  28 00 00 01 */	cmplwi r0, 1
/* 80D3309C  40 82 00 D0 */	bne lbl_80D3316C
lbl_80D330A0:
/* 80D330A0  C3 FA 07 6C */	lfs f31, 0x76c(r26)
/* 80D330A4  28 1C 00 00 */	cmplwi r28, 0
/* 80D330A8  41 82 00 C4 */	beq lbl_80D3316C
/* 80D330AC  C3 DA 04 FC */	lfs f30, 0x4fc(r26)
/* 80D330B0  7F 43 D3 78 */	mr r3, r26
/* 80D330B4  48 00 0C 91 */	bl chkWaterLineIn__11daWdStick_cFv
/* 80D330B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D330BC  41 82 00 18 */	beq lbl_80D330D4
/* 80D330C0  88 1A 05 78 */	lbz r0, 0x578(r26)
/* 80D330C4  28 00 00 01 */	cmplwi r0, 1
/* 80D330C8  41 82 00 0C */	beq lbl_80D330D4
/* 80D330CC  7F 43 D3 78 */	mr r3, r26
/* 80D330D0  48 00 0C 99 */	bl mode_init_sink__11daWdStick_cFv
lbl_80D330D4:
/* 80D330D4  28 1B 00 00 */	cmplwi r27, 0
/* 80D330D8  41 82 00 94 */	beq lbl_80D3316C
/* 80D330DC  88 1A 0A F4 */	lbz r0, 0xaf4(r26)
/* 80D330E0  28 00 00 00 */	cmplwi r0, 0
/* 80D330E4  40 82 00 88 */	bne lbl_80D3316C
/* 80D330E8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80D330EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D330F0  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80D330F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D330F8  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80D330FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D33100  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80D33104  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80D33108  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80D3310C  40 80 00 60 */	bge lbl_80D3316C
/* 80D33110  38 61 00 24 */	addi r3, r1, 0x24
/* 80D33114  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80D33118  38 80 00 00 */	li r4, 0
/* 80D3311C  4B 2E C7 60 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80D33120  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D33124  7C 03 07 74 */	extsb r3, r0
/* 80D33128  4B 2F 9F 44 */	b dComIfGp_getReverb__Fi
/* 80D3312C  7C 67 1B 78 */	mr r7, r3
/* 80D33130  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008002A@ha */
/* 80D33134  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0008002A@l */
/* 80D33138  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3313C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D33140  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D33144  80 63 00 00 */	lwz r3, 0(r3)
/* 80D33148  38 81 00 14 */	addi r4, r1, 0x14
/* 80D3314C  38 BA 05 38 */	addi r5, r26, 0x538
/* 80D33150  38 C0 00 00 */	li r6, 0
/* 80D33154  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D33158  FC 40 08 90 */	fmr f2, f1
/* 80D3315C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D33160  FC 80 18 90 */	fmr f4, f3
/* 80D33164  39 00 00 00 */	li r8, 0
/* 80D33168  4B 57 88 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D3316C:
/* 80D3316C  28 1D 00 00 */	cmplwi r29, 0
/* 80D33170  41 82 01 60 */	beq lbl_80D332D0
/* 80D33174  38 7A 04 F8 */	addi r3, r26, 0x4f8
/* 80D33178  4B 61 3F C0 */	b PSVECSquareMag
/* 80D3317C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D33180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D33184  40 81 00 58 */	ble lbl_80D331DC
/* 80D33188  FC 00 08 34 */	frsqrte f0, f1
/* 80D3318C  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80D33190  FC 44 00 32 */	fmul f2, f4, f0
/* 80D33194  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80D33198  FC 00 00 32 */	fmul f0, f0, f0
/* 80D3319C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D331A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D331A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D331A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D331AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D331B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D331B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D331B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D331BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D331C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D331C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D331C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D331CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D331D0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D331D4  FC 20 08 18 */	frsp f1, f1
/* 80D331D8  48 00 00 88 */	b lbl_80D33260
lbl_80D331DC:
/* 80D331DC  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80D331E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D331E4  40 80 00 10 */	bge lbl_80D331F4
/* 80D331E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D331EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D331F0  48 00 00 70 */	b lbl_80D33260
lbl_80D331F4:
/* 80D331F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D331F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80D331FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D33200  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D33204  7C 03 00 00 */	cmpw r3, r0
/* 80D33208  41 82 00 14 */	beq lbl_80D3321C
/* 80D3320C  40 80 00 40 */	bge lbl_80D3324C
/* 80D33210  2C 03 00 00 */	cmpwi r3, 0
/* 80D33214  41 82 00 20 */	beq lbl_80D33234
/* 80D33218  48 00 00 34 */	b lbl_80D3324C
lbl_80D3321C:
/* 80D3321C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D33220  41 82 00 0C */	beq lbl_80D3322C
/* 80D33224  38 00 00 01 */	li r0, 1
/* 80D33228  48 00 00 28 */	b lbl_80D33250
lbl_80D3322C:
/* 80D3322C  38 00 00 02 */	li r0, 2
/* 80D33230  48 00 00 20 */	b lbl_80D33250
lbl_80D33234:
/* 80D33234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D33238  41 82 00 0C */	beq lbl_80D33244
/* 80D3323C  38 00 00 05 */	li r0, 5
/* 80D33240  48 00 00 10 */	b lbl_80D33250
lbl_80D33244:
/* 80D33244  38 00 00 03 */	li r0, 3
/* 80D33248  48 00 00 08 */	b lbl_80D33250
lbl_80D3324C:
/* 80D3324C  38 00 00 04 */	li r0, 4
lbl_80D33250:
/* 80D33250  2C 00 00 01 */	cmpwi r0, 1
/* 80D33254  40 82 00 0C */	bne lbl_80D33260
/* 80D33258  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D3325C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D33260:
/* 80D33260  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80D33264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D33268  40 81 00 68 */	ble lbl_80D332D0
/* 80D3326C  C3 DA 05 98 */	lfs f30, 0x598(r26)
/* 80D33270  38 7A 04 F8 */	addi r3, r26, 0x4f8
/* 80D33274  38 9A 06 90 */	addi r4, r26, 0x690
/* 80D33278  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80D3327C  4B FF F7 F5 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80D33280  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80D33284  FC 00 F0 50 */	fneg f0, f30
/* 80D33288  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3328C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80D33290  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 80D33294  FC 00 02 10 */	fabs f0, f0
/* 80D33298  FC 20 00 18 */	frsp f1, f0
/* 80D3329C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80D332A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D332A4  40 80 00 0C */	bge lbl_80D332B0
/* 80D332A8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D332AC  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
lbl_80D332B0:
/* 80D332B0  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D332B4  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80D332B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D332BC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D332C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D332C4  40 81 00 0C */	ble lbl_80D332D0
/* 80D332C8  7F 43 D3 78 */	mr r3, r26
/* 80D332CC  48 00 00 7D */	bl setBoundSe__11daWdStick_cFv
lbl_80D332D0:
/* 80D332D0  28 1E 00 00 */	cmplwi r30, 0
/* 80D332D4  41 82 00 30 */	beq lbl_80D33304
/* 80D332D8  C3 DA 05 98 */	lfs f30, 0x598(r26)
/* 80D332DC  38 7A 04 F8 */	addi r3, r26, 0x4f8
/* 80D332E0  38 9A 06 90 */	addi r4, r26, 0x690
/* 80D332E4  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80D332E8  4B FF F7 89 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80D332EC  C0 5A 04 FC */	lfs f2, 0x4fc(r26)
/* 80D332F0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80D332F4  FC 00 F0 50 */	fneg f0, f30
/* 80D332F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D332FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D33300  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
lbl_80D33304:
/* 80D33304  28 1D 00 00 */	cmplwi r29, 0
/* 80D33308  41 82 00 18 */	beq lbl_80D33320
/* 80D3330C  88 1A 05 78 */	lbz r0, 0x578(r26)
/* 80D33310  28 00 00 02 */	cmplwi r0, 2
/* 80D33314  40 82 00 0C */	bne lbl_80D33320
/* 80D33318  7F 43 D3 78 */	mr r3, r26
/* 80D3331C  48 00 05 C1 */	bl mode_init_roll__11daWdStick_cFv
lbl_80D33320:
/* 80D33320  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80D33324  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80D33328  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80D3332C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80D33330  39 61 00 60 */	addi r11, r1, 0x60
/* 80D33334  4B 62 EE E8 */	b _restgpr_26
/* 80D33338  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D3333C  7C 08 03 A6 */	mtlr r0
/* 80D33340  38 21 00 80 */	addi r1, r1, 0x80
/* 80D33344  4E 80 00 20 */	blr 
