lbl_80B02B5C:
/* 80B02B5C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B02B60  7C 08 02 A6 */	mflr r0
/* 80B02B64  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B02B68  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B02B6C  4B 85 F6 70 */	b _savegpr_29
/* 80B02B70  7C 7E 1B 78 */	mr r30, r3
/* 80B02B74  7C 9D 23 78 */	mr r29, r4
/* 80B02B78  3C 80 80 B1 */	lis r4, lit_3999@ha
/* 80B02B7C  3B E4 C1 C4 */	addi r31, r4, lit_3999@l
/* 80B02B80  4B FF F2 05 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B02B84  80 7E 06 98 */	lwz r3, 0x698(r30)
/* 80B02B88  38 03 00 01 */	addi r0, r3, 1
/* 80B02B8C  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B02B90  2C 1D 00 02 */	cmpwi r29, 2
/* 80B02B94  41 82 07 24 */	beq lbl_80B032B8
/* 80B02B98  40 80 00 14 */	bge lbl_80B02BAC
/* 80B02B9C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B02BA0  41 82 00 18 */	beq lbl_80B02BB8
/* 80B02BA4  40 80 00 1C */	bge lbl_80B02BC0
/* 80B02BA8  48 00 0A 94 */	b lbl_80B0363C
lbl_80B02BAC:
/* 80B02BAC  2C 1D 00 04 */	cmpwi r29, 4
/* 80B02BB0  40 80 0A 8C */	bge lbl_80B0363C
/* 80B02BB4  48 00 08 58 */	b lbl_80B0340C
lbl_80B02BB8:
/* 80B02BB8  38 60 00 01 */	li r3, 1
/* 80B02BBC  48 00 0A 84 */	b lbl_80B03640
lbl_80B02BC0:
/* 80B02BC0  38 00 00 01 */	li r0, 1
/* 80B02BC4  98 1E 06 C0 */	stb r0, 0x6c0(r30)
/* 80B02BC8  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80B02BCC  2C 00 00 96 */	cmpwi r0, 0x96
/* 80B02BD0  40 82 00 50 */	bne lbl_80B02C20
/* 80B02BD4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B02BD8  7C 03 07 74 */	extsb r3, r0
/* 80B02BDC  4B 52 A4 90 */	b dComIfGp_getReverb__Fi
/* 80B02BE0  7C 67 1B 78 */	mr r7, r3
/* 80B02BE4  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002001F@ha */
/* 80B02BE8  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0002001F@l */
/* 80B02BEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B02BF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B02BF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B02BF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B02BFC  38 81 00 18 */	addi r4, r1, 0x18
/* 80B02C00  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B02C04  38 C0 00 00 */	li r6, 0
/* 80B02C08  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B02C0C  FC 40 08 90 */	fmr f2, f1
/* 80B02C10  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80B02C14  FC 80 18 90 */	fmr f4, f3
/* 80B02C18  39 00 00 00 */	li r8, 0
/* 80B02C1C  4B 7A 8D 68 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B02C20:
/* 80B02C20  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80B02C24  28 00 00 00 */	cmplwi r0, 0
/* 80B02C28  40 82 02 34 */	bne lbl_80B02E5C
/* 80B02C2C  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80B02C30  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B02C34  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80B02C38  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B02C3C  C0 1E 06 0C */	lfs f0, 0x60c(r30)
/* 80B02C40  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B02C44  38 61 00 64 */	addi r3, r1, 0x64
/* 80B02C48  7F C4 F3 78 */	mr r4, r30
/* 80B02C4C  38 A1 00 70 */	addi r5, r1, 0x70
/* 80B02C50  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B02C54  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80B02C58  38 C0 00 80 */	li r6, 0x80
/* 80B02C5C  4B FF F0 29 */	bl chaseTargetPos__10daNPC_TK_cF4cXyzffs
/* 80B02C60  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B02C64  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B02C68  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B02C6C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B02C70  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B02C74  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B02C78  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80B02C7C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B02C80  41 82 00 18 */	beq lbl_80B02C98
/* 80B02C84  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80B02C88  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B02C8C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B02C90  4B 76 DA B0 */	b cLib_chaseF__FPfff
/* 80B02C94  48 00 00 14 */	b lbl_80B02CA8
lbl_80B02C98:
/* 80B02C98  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80B02C9C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B02CA0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B02CA4  4B 76 DA 9C */	b cLib_chaseF__FPfff
lbl_80B02CA8:
/* 80B02CA8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B02CAC  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 80B02CB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B02CB4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B02CB8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B02CBC  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B02CC0  4B 76 DF 44 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B02CC4  7C 63 07 34 */	extsh r3, r3
/* 80B02CC8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B02CCC  7C 60 18 50 */	subf r3, r0, r3
/* 80B02CD0  4B 86 24 00 */	b abs
/* 80B02CD4  2C 03 08 00 */	cmpwi r3, 0x800
/* 80B02CD8  41 81 00 84 */	bgt lbl_80B02D5C
/* 80B02CDC  88 1E 06 C2 */	lbz r0, 0x6c2(r30)
/* 80B02CE0  28 00 00 00 */	cmplwi r0, 0
/* 80B02CE4  40 82 00 34 */	bne lbl_80B02D18
/* 80B02CE8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050025@ha */
/* 80B02CEC  38 03 00 25 */	addi r0, r3, 0x0025 /* 0x00050025@l */
/* 80B02CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B02CF4  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B02CF8  38 81 00 24 */	addi r4, r1, 0x24
/* 80B02CFC  38 A0 FF FF */	li r5, -1
/* 80B02D00  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 80B02D04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B02D08  7D 89 03 A6 */	mtctr r12
/* 80B02D0C  4E 80 04 21 */	bctrl 
/* 80B02D10  38 00 00 01 */	li r0, 1
/* 80B02D14  98 1E 06 C2 */	stb r0, 0x6c2(r30)
lbl_80B02D18:
/* 80B02D18  7F C3 F3 78 */	mr r3, r30
/* 80B02D1C  4B FF F0 69 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B02D20  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B02D24  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B02D28  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B02D2C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B02D30  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B02D34  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B02D38  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B02D3C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B02D40  4B 76 DF 34 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B02D44  7C 64 1B 78 */	mr r4, r3
/* 80B02D48  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B02D4C  38 A0 00 04 */	li r5, 4
/* 80B02D50  38 C0 03 00 */	li r6, 0x300
/* 80B02D54  38 E0 00 80 */	li r7, 0x80
/* 80B02D58  4B 76 D7 E8 */	b cLib_addCalcAngleS__FPsssss
lbl_80B02D5C:
/* 80B02D5C  38 61 00 94 */	addi r3, r1, 0x94
/* 80B02D60  4B 84 43 D8 */	b PSVECSquareMag
/* 80B02D64  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B02D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02D6C  40 81 00 58 */	ble lbl_80B02DC4
/* 80B02D70  FC 00 08 34 */	frsqrte f0, f1
/* 80B02D74  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B02D78  FC 44 00 32 */	fmul f2, f4, f0
/* 80B02D7C  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B02D80  FC 00 00 32 */	fmul f0, f0, f0
/* 80B02D84  FC 01 00 32 */	fmul f0, f1, f0
/* 80B02D88  FC 03 00 28 */	fsub f0, f3, f0
/* 80B02D8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B02D90  FC 44 00 32 */	fmul f2, f4, f0
/* 80B02D94  FC 00 00 32 */	fmul f0, f0, f0
/* 80B02D98  FC 01 00 32 */	fmul f0, f1, f0
/* 80B02D9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B02DA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B02DA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B02DA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B02DAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B02DB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B02DB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B02DB8  FC 21 00 32 */	fmul f1, f1, f0
/* 80B02DBC  FC 20 08 18 */	frsp f1, f1
/* 80B02DC0  48 00 00 88 */	b lbl_80B02E48
lbl_80B02DC4:
/* 80B02DC4  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B02DC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02DCC  40 80 00 10 */	bge lbl_80B02DDC
/* 80B02DD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B02DD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B02DD8  48 00 00 70 */	b lbl_80B02E48
lbl_80B02DDC:
/* 80B02DDC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B02DE0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B02DE4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B02DE8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B02DEC  7C 03 00 00 */	cmpw r3, r0
/* 80B02DF0  41 82 00 14 */	beq lbl_80B02E04
/* 80B02DF4  40 80 00 40 */	bge lbl_80B02E34
/* 80B02DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80B02DFC  41 82 00 20 */	beq lbl_80B02E1C
/* 80B02E00  48 00 00 34 */	b lbl_80B02E34
lbl_80B02E04:
/* 80B02E04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B02E08  41 82 00 0C */	beq lbl_80B02E14
/* 80B02E0C  38 00 00 01 */	li r0, 1
/* 80B02E10  48 00 00 28 */	b lbl_80B02E38
lbl_80B02E14:
/* 80B02E14  38 00 00 02 */	li r0, 2
/* 80B02E18  48 00 00 20 */	b lbl_80B02E38
lbl_80B02E1C:
/* 80B02E1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B02E20  41 82 00 0C */	beq lbl_80B02E2C
/* 80B02E24  38 00 00 05 */	li r0, 5
/* 80B02E28  48 00 00 10 */	b lbl_80B02E38
lbl_80B02E2C:
/* 80B02E2C  38 00 00 03 */	li r0, 3
/* 80B02E30  48 00 00 08 */	b lbl_80B02E38
lbl_80B02E34:
/* 80B02E34  38 00 00 04 */	li r0, 4
lbl_80B02E38:
/* 80B02E38  2C 00 00 01 */	cmpwi r0, 1
/* 80B02E3C  40 82 00 0C */	bne lbl_80B02E48
/* 80B02E40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B02E44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B02E48:
/* 80B02E48  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80B02E4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02E50  40 80 07 EC */	bge lbl_80B0363C
/* 80B02E54  38 60 00 01 */	li r3, 1
/* 80B02E58  48 00 07 E8 */	b lbl_80B03640
lbl_80B02E5C:
/* 80B02E5C  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B02E60  2C 00 00 00 */	cmpwi r0, 0
/* 80B02E64  40 82 02 B4 */	bne lbl_80B03118
/* 80B02E68  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80B02E6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B02E70  41 82 00 18 */	beq lbl_80B02E88
/* 80B02E74  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80B02E78  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B02E7C  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80B02E80  4B 76 D8 C0 */	b cLib_chaseF__FPfff
/* 80B02E84  48 00 00 14 */	b lbl_80B02E98
lbl_80B02E88:
/* 80B02E88  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80B02E8C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B02E90  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80B02E94  4B 76 D8 AC */	b cLib_chaseF__FPfff
lbl_80B02E98:
/* 80B02E98  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B02E9C  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 80B02EA0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B02EA4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B02EA8  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B02EAC  88 9E 06 CC */	lbz r4, 0x6cc(r30)
/* 80B02EB0  7C 84 07 74 */	extsb r4, r4
/* 80B02EB4  4B 54 E8 FC */	b dPath_GetPnt__FPC5dPathi
/* 80B02EB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B02EBC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B02EC0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B02EC4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B02EC8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B02ECC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B02ED0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B02ED4  38 81 00 88 */	addi r4, r1, 0x88
/* 80B02ED8  4B 76 DD 2C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B02EDC  7C 64 1B 78 */	mr r4, r3
/* 80B02EE0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80B02EE4  38 A0 00 20 */	li r5, 0x20
/* 80B02EE8  38 C0 01 00 */	li r6, 0x100
/* 80B02EEC  38 E0 00 40 */	li r7, 0x40
/* 80B02EF0  4B 76 D6 50 */	b cLib_addCalcAngleS__FPsssss
/* 80B02EF4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B02EF8  38 81 00 88 */	addi r4, r1, 0x88
/* 80B02EFC  4B 84 44 A0 */	b PSVECSquareDistance
/* 80B02F00  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B02F04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02F08  40 81 00 58 */	ble lbl_80B02F60
/* 80B02F0C  FC 00 08 34 */	frsqrte f0, f1
/* 80B02F10  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B02F14  FC 44 00 32 */	fmul f2, f4, f0
/* 80B02F18  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B02F1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B02F20  FC 01 00 32 */	fmul f0, f1, f0
/* 80B02F24  FC 03 00 28 */	fsub f0, f3, f0
/* 80B02F28  FC 02 00 32 */	fmul f0, f2, f0
/* 80B02F2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B02F30  FC 00 00 32 */	fmul f0, f0, f0
/* 80B02F34  FC 01 00 32 */	fmul f0, f1, f0
/* 80B02F38  FC 03 00 28 */	fsub f0, f3, f0
/* 80B02F3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B02F40  FC 44 00 32 */	fmul f2, f4, f0
/* 80B02F44  FC 00 00 32 */	fmul f0, f0, f0
/* 80B02F48  FC 01 00 32 */	fmul f0, f1, f0
/* 80B02F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B02F50  FC 02 00 32 */	fmul f0, f2, f0
/* 80B02F54  FC 21 00 32 */	fmul f1, f1, f0
/* 80B02F58  FC 20 08 18 */	frsp f1, f1
/* 80B02F5C  48 00 00 88 */	b lbl_80B02FE4
lbl_80B02F60:
/* 80B02F60  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B02F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02F68  40 80 00 10 */	bge lbl_80B02F78
/* 80B02F6C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B02F70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B02F74  48 00 00 70 */	b lbl_80B02FE4
lbl_80B02F78:
/* 80B02F78  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B02F7C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B02F80  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B02F84  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B02F88  7C 03 00 00 */	cmpw r3, r0
/* 80B02F8C  41 82 00 14 */	beq lbl_80B02FA0
/* 80B02F90  40 80 00 40 */	bge lbl_80B02FD0
/* 80B02F94  2C 03 00 00 */	cmpwi r3, 0
/* 80B02F98  41 82 00 20 */	beq lbl_80B02FB8
/* 80B02F9C  48 00 00 34 */	b lbl_80B02FD0
lbl_80B02FA0:
/* 80B02FA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B02FA4  41 82 00 0C */	beq lbl_80B02FB0
/* 80B02FA8  38 00 00 01 */	li r0, 1
/* 80B02FAC  48 00 00 28 */	b lbl_80B02FD4
lbl_80B02FB0:
/* 80B02FB0  38 00 00 02 */	li r0, 2
/* 80B02FB4  48 00 00 20 */	b lbl_80B02FD4
lbl_80B02FB8:
/* 80B02FB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B02FBC  41 82 00 0C */	beq lbl_80B02FC8
/* 80B02FC0  38 00 00 05 */	li r0, 5
/* 80B02FC4  48 00 00 10 */	b lbl_80B02FD4
lbl_80B02FC8:
/* 80B02FC8  38 00 00 03 */	li r0, 3
/* 80B02FCC  48 00 00 08 */	b lbl_80B02FD4
lbl_80B02FD0:
/* 80B02FD0  38 00 00 04 */	li r0, 4
lbl_80B02FD4:
/* 80B02FD4  2C 00 00 01 */	cmpwi r0, 1
/* 80B02FD8  40 82 00 0C */	bne lbl_80B02FE4
/* 80B02FDC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B02FE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B02FE4:
/* 80B02FE4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80B02FE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02FEC  40 80 00 30 */	bge lbl_80B0301C
/* 80B02FF0  88 7E 06 CC */	lbz r3, 0x6cc(r30)
/* 80B02FF4  38 03 00 01 */	addi r0, r3, 1
/* 80B02FF8  98 1E 06 CC */	stb r0, 0x6cc(r30)
/* 80B02FFC  88 1E 06 CC */	lbz r0, 0x6cc(r30)
/* 80B03000  7C 04 07 74 */	extsb r4, r0
/* 80B03004  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B03008  A0 03 00 00 */	lhz r0, 0(r3)
/* 80B0300C  7C 04 00 00 */	cmpw r4, r0
/* 80B03010  41 80 00 0C */	blt lbl_80B0301C
/* 80B03014  38 00 00 00 */	li r0, 0
/* 80B03018  98 1E 06 CC */	stb r0, 0x6cc(r30)
lbl_80B0301C:
/* 80B0301C  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80B03020  2C 00 00 00 */	cmpwi r0, 0
/* 80B03024  41 82 00 10 */	beq lbl_80B03034
/* 80B03028  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B0302C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B03030  48 00 00 A8 */	b lbl_80B030D8
lbl_80B03034:
/* 80B03034  88 1E 06 C2 */	lbz r0, 0x6c2(r30)
/* 80B03038  28 00 00 00 */	cmplwi r0, 0
/* 80B0303C  40 82 00 34 */	bne lbl_80B03070
/* 80B03040  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050025@ha */
/* 80B03044  38 03 00 25 */	addi r0, r3, 0x0025 /* 0x00050025@l */
/* 80B03048  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B0304C  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B03050  38 81 00 20 */	addi r4, r1, 0x20
/* 80B03054  38 A0 FF FF */	li r5, -1
/* 80B03058  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 80B0305C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B03060  7D 89 03 A6 */	mtctr r12
/* 80B03064  4E 80 04 21 */	bctrl 
/* 80B03068  38 00 00 01 */	li r0, 1
/* 80B0306C  98 1E 06 C2 */	stb r0, 0x6c2(r30)
lbl_80B03070:
/* 80B03070  7F C3 F3 78 */	mr r3, r30
/* 80B03074  4B FF ED 11 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B03078  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B0307C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B03080  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B03084  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B03088  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B0308C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B03090  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B03094  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B03098  4B 76 DB 6C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B0309C  7C 64 1B 78 */	mr r4, r3
/* 80B030A0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B030A4  38 A0 00 08 */	li r5, 8
/* 80B030A8  38 C0 01 00 */	li r6, 0x100
/* 80B030AC  38 E0 00 80 */	li r7, 0x80
/* 80B030B0  4B 76 D4 90 */	b cLib_addCalcAngleS__FPsssss
/* 80B030B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B030B8  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B030BC  4B 76 DB B8 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B030C0  7C 64 1B 78 */	mr r4, r3
/* 80B030C4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B030C8  38 A0 00 04 */	li r5, 4
/* 80B030CC  38 C0 02 00 */	li r6, 0x200
/* 80B030D0  38 E0 00 80 */	li r7, 0x80
/* 80B030D4  4B 76 D4 6C */	b cLib_addCalcAngleS__FPsssss
lbl_80B030D8:
/* 80B030D8  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B030DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B030E0  40 82 05 5C */	bne lbl_80B0363C
/* 80B030E4  38 00 00 01 */	li r0, 1
/* 80B030E8  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B030EC  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B030F0  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B030F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B030F8  FC 00 00 1E */	fctiwz f0, f0
/* 80B030FC  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80B03100  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B03104  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B03108  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80B0310C  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80B03110  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80B03114  48 00 05 28 */	b lbl_80B0363C
lbl_80B03118:
/* 80B03118  7F C3 F3 78 */	mr r3, r30
/* 80B0311C  4B FF EC 69 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B03120  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B03124  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B03128  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B0312C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B03130  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B03134  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B03138  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B0313C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B03140  4B 76 DB 34 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B03144  7C 64 1B 78 */	mr r4, r3
/* 80B03148  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B0314C  38 A0 00 04 */	li r5, 4
/* 80B03150  38 C0 02 00 */	li r6, 0x200
/* 80B03154  38 E0 00 40 */	li r7, 0x40
/* 80B03158  4B 76 D3 E8 */	b cLib_addCalcAngleS__FPsssss
/* 80B0315C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80B03160  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B03164  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80B03168  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B0316C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B03170  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B03174  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B03178  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B0317C  7F C4 F3 78 */	mr r4, r30
/* 80B03180  38 A1 00 58 */	addi r5, r1, 0x58
/* 80B03184  FC 40 08 90 */	fmr f2, f1
/* 80B03188  38 C0 08 00 */	li r6, 0x800
/* 80B0318C  4B FF EA F9 */	bl chaseTargetPos__10daNPC_TK_cF4cXyzffs
/* 80B03190  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B03194  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B03198  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B0319C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B031A0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B031A4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B031A8  38 7E 06 78 */	addi r3, r30, 0x678
/* 80B031AC  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80B031B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B031B4  4B 76 D5 8C */	b cLib_chaseF__FPfff
/* 80B031B8  38 61 00 94 */	addi r3, r1, 0x94
/* 80B031BC  4B 84 3F 7C */	b PSVECSquareMag
/* 80B031C0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B031C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B031C8  40 81 00 58 */	ble lbl_80B03220
/* 80B031CC  FC 00 08 34 */	frsqrte f0, f1
/* 80B031D0  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B031D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B031D8  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B031DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B031E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B031E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B031E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B031EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B031F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B031F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B031F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B031FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03200  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03204  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03208  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0320C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03210  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03214  FC 21 00 32 */	fmul f1, f1, f0
/* 80B03218  FC 20 08 18 */	frsp f1, f1
/* 80B0321C  48 00 00 88 */	b lbl_80B032A4
lbl_80B03220:
/* 80B03220  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B03224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03228  40 80 00 10 */	bge lbl_80B03238
/* 80B0322C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B03230  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B03234  48 00 00 70 */	b lbl_80B032A4
lbl_80B03238:
/* 80B03238  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B0323C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B03240  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B03244  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B03248  7C 03 00 00 */	cmpw r3, r0
/* 80B0324C  41 82 00 14 */	beq lbl_80B03260
/* 80B03250  40 80 00 40 */	bge lbl_80B03290
/* 80B03254  2C 03 00 00 */	cmpwi r3, 0
/* 80B03258  41 82 00 20 */	beq lbl_80B03278
/* 80B0325C  48 00 00 34 */	b lbl_80B03290
lbl_80B03260:
/* 80B03260  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B03264  41 82 00 0C */	beq lbl_80B03270
/* 80B03268  38 00 00 01 */	li r0, 1
/* 80B0326C  48 00 00 28 */	b lbl_80B03294
lbl_80B03270:
/* 80B03270  38 00 00 02 */	li r0, 2
/* 80B03274  48 00 00 20 */	b lbl_80B03294
lbl_80B03278:
/* 80B03278  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0327C  41 82 00 0C */	beq lbl_80B03288
/* 80B03280  38 00 00 05 */	li r0, 5
/* 80B03284  48 00 00 10 */	b lbl_80B03294
lbl_80B03288:
/* 80B03288  38 00 00 03 */	li r0, 3
/* 80B0328C  48 00 00 08 */	b lbl_80B03294
lbl_80B03290:
/* 80B03290  38 00 00 04 */	li r0, 4
lbl_80B03294:
/* 80B03294  2C 00 00 01 */	cmpwi r0, 1
/* 80B03298  40 82 00 0C */	bne lbl_80B032A4
/* 80B0329C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B032A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B032A4:
/* 80B032A4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80B032A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B032AC  40 80 03 90 */	bge lbl_80B0363C
/* 80B032B0  38 60 00 01 */	li r3, 1
/* 80B032B4  48 00 03 8C */	b lbl_80B03640
lbl_80B032B8:
/* 80B032B8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B032BC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B032C0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B032C4  4B 76 D4 7C */	b cLib_chaseF__FPfff
/* 80B032C8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80B032CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B032D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B032D4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B032D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B032DC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80B032E0  C0 5E 06 0C */	lfs f2, 0x60c(r30)
/* 80B032E4  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80B032E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B032EC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B032F0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80B032F4  38 61 00 28 */	addi r3, r1, 0x28
/* 80B032F8  38 81 00 34 */	addi r4, r1, 0x34
/* 80B032FC  4B 84 40 A0 */	b PSVECSquareDistance
/* 80B03300  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B03304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03308  40 81 00 58 */	ble lbl_80B03360
/* 80B0330C  FC 00 08 34 */	frsqrte f0, f1
/* 80B03310  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B03314  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03318  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B0331C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03320  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03324  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03328  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0332C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03330  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03334  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03338  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0333C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03340  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03344  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03348  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0334C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03350  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03354  FC 21 00 32 */	fmul f1, f1, f0
/* 80B03358  FC 20 08 18 */	frsp f1, f1
/* 80B0335C  48 00 00 88 */	b lbl_80B033E4
lbl_80B03360:
/* 80B03360  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B03364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03368  40 80 00 10 */	bge lbl_80B03378
/* 80B0336C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B03370  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B03374  48 00 00 70 */	b lbl_80B033E4
lbl_80B03378:
/* 80B03378  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B0337C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B03380  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B03384  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B03388  7C 03 00 00 */	cmpw r3, r0
/* 80B0338C  41 82 00 14 */	beq lbl_80B033A0
/* 80B03390  40 80 00 40 */	bge lbl_80B033D0
/* 80B03394  2C 03 00 00 */	cmpwi r3, 0
/* 80B03398  41 82 00 20 */	beq lbl_80B033B8
/* 80B0339C  48 00 00 34 */	b lbl_80B033D0
lbl_80B033A0:
/* 80B033A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B033A4  41 82 00 0C */	beq lbl_80B033B0
/* 80B033A8  38 00 00 01 */	li r0, 1
/* 80B033AC  48 00 00 28 */	b lbl_80B033D4
lbl_80B033B0:
/* 80B033B0  38 00 00 02 */	li r0, 2
/* 80B033B4  48 00 00 20 */	b lbl_80B033D4
lbl_80B033B8:
/* 80B033B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B033BC  41 82 00 0C */	beq lbl_80B033C8
/* 80B033C0  38 00 00 05 */	li r0, 5
/* 80B033C4  48 00 00 10 */	b lbl_80B033D4
lbl_80B033C8:
/* 80B033C8  38 00 00 03 */	li r0, 3
/* 80B033CC  48 00 00 08 */	b lbl_80B033D4
lbl_80B033D0:
/* 80B033D0  38 00 00 04 */	li r0, 4
lbl_80B033D4:
/* 80B033D4  2C 00 00 01 */	cmpwi r0, 1
/* 80B033D8  40 82 00 0C */	bne lbl_80B033E4
/* 80B033DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B033E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B033E4:
/* 80B033E4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B033E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B033EC  40 80 02 50 */	bge lbl_80B0363C
/* 80B033F0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B033F4  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B033F8  4B 76 D8 0C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B033FC  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80B03400  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80B03404  38 60 00 01 */	li r3, 1
/* 80B03408  48 00 02 38 */	b lbl_80B03640
lbl_80B0340C:
/* 80B0340C  7F C3 F3 78 */	mr r3, r30
/* 80B03410  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B03414  4B FF E9 8D */	bl setMasterShoulder__10daNPC_TK_cFP4cXyz
/* 80B03418  7F C3 F3 78 */	mr r3, r30
/* 80B0341C  4B FF E9 69 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B03420  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80B03424  38 03 D8 00 */	addi r0, r3, -10240
/* 80B03428  7C 04 07 34 */	extsh r4, r0
/* 80B0342C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B03430  38 A0 00 08 */	li r5, 8
/* 80B03434  38 C0 08 00 */	li r6, 0x800
/* 80B03438  38 E0 01 00 */	li r7, 0x100
/* 80B0343C  4B 76 D1 04 */	b cLib_addCalcAngleS__FPsssss
/* 80B03440  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B03444  2C 00 00 02 */	cmpwi r0, 2
/* 80B03448  41 82 00 AC */	beq lbl_80B034F4
/* 80B0344C  40 80 00 14 */	bge lbl_80B03460
/* 80B03450  2C 00 00 00 */	cmpwi r0, 0
/* 80B03454  41 82 00 18 */	beq lbl_80B0346C
/* 80B03458  40 80 00 48 */	bge lbl_80B034A0
/* 80B0345C  48 00 01 E0 */	b lbl_80B0363C
lbl_80B03460:
/* 80B03460  2C 00 00 04 */	cmpwi r0, 4
/* 80B03464  40 80 01 D8 */	bge lbl_80B0363C
/* 80B03468  48 00 01 7C */	b lbl_80B035E4
lbl_80B0346C:
/* 80B0346C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B03470  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B03474  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80B03478  4B 76 D2 C8 */	b cLib_chaseF__FPfff
/* 80B0347C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B03480  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B03484  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B03488  4B 76 D2 B8 */	b cLib_chaseF__FPfff
/* 80B0348C  2C 03 00 00 */	cmpwi r3, 0
/* 80B03490  41 82 01 AC */	beq lbl_80B0363C
/* 80B03494  38 00 00 01 */	li r0, 1
/* 80B03498  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B0349C  48 00 01 A0 */	b lbl_80B0363C
lbl_80B034A0:
/* 80B034A0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B034A4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B034A8  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80B034AC  4B 76 D2 94 */	b cLib_chaseF__FPfff
/* 80B034B0  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B034B4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B034B8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B034BC  4B 76 D2 84 */	b cLib_chaseF__FPfff
/* 80B034C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B034C4  41 82 01 78 */	beq lbl_80B0363C
/* 80B034C8  38 00 00 02 */	li r0, 2
/* 80B034CC  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B034D0  7F C3 F3 78 */	mr r3, r30
/* 80B034D4  38 80 00 09 */	li r4, 9
/* 80B034D8  38 A0 00 00 */	li r5, 0
/* 80B034DC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B034E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B034E4  4B FF DF B5 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B034E8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B034EC  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80B034F0  48 00 01 4C */	b lbl_80B0363C
lbl_80B034F4:
/* 80B034F4  7F C3 F3 78 */	mr r3, r30
/* 80B034F8  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B034FC  4B FF E8 A5 */	bl setMasterShoulder__10daNPC_TK_cFP4cXyz
/* 80B03500  7F C3 F3 78 */	mr r3, r30
/* 80B03504  4B FF E8 81 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B03508  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80B0350C  38 03 D8 00 */	addi r0, r3, -10240
/* 80B03510  7C 04 07 34 */	extsh r4, r0
/* 80B03514  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B03518  38 A0 00 08 */	li r5, 8
/* 80B0351C  38 C0 08 00 */	li r6, 0x800
/* 80B03520  38 E0 01 00 */	li r7, 0x100
/* 80B03524  4B 76 D0 1C */	b cLib_addCalcAngleS__FPsssss
/* 80B03528  38 7E 06 78 */	addi r3, r30, 0x678
/* 80B0352C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80B03530  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B03534  4B 76 D2 0C */	b cLib_chaseF__FPfff
/* 80B03538  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B0353C  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B03540  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B03544  4B 76 D2 68 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B03548  2C 03 00 00 */	cmpwi r3, 0
/* 80B0354C  41 82 00 F0 */	beq lbl_80B0363C
/* 80B03550  38 00 00 03 */	li r0, 3
/* 80B03554  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B03558  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0355C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B03560  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B03564  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80B03568  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B0356C  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80B03570  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B03574  C0 1E 06 0C */	lfs f0, 0x60c(r30)
/* 80B03578  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B0357C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050026@ha */
/* 80B03580  38 03 00 26 */	addi r0, r3, 0x0026 /* 0x00050026@l */
/* 80B03584  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B03588  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B0358C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B03590  38 A0 FF FF */	li r5, -1
/* 80B03594  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 80B03598  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B0359C  7D 89 03 A6 */	mtctr r12
/* 80B035A0  4E 80 04 21 */	bctrl 
/* 80B035A4  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 80B035A8  28 00 00 00 */	cmplwi r0, 0
/* 80B035AC  40 82 00 90 */	bne lbl_80B0363C
/* 80B035B0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B035B4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B035B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B035BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B035C0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80B035C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B035C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B035CC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B035D0  38 80 00 03 */	li r4, 3
/* 80B035D4  38 A0 00 01 */	li r5, 1
/* 80B035D8  38 C1 00 40 */	addi r6, r1, 0x40
/* 80B035DC  4B 56 C4 48 */	b StartShock__12dVibration_cFii4cXyz
/* 80B035E0  48 00 00 5C */	b lbl_80B0363C
lbl_80B035E4:
/* 80B035E4  7F C3 F3 78 */	mr r3, r30
/* 80B035E8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B035EC  4B FF E7 B5 */	bl setMasterShoulder__10daNPC_TK_cFP4cXyz
/* 80B035F0  38 60 00 00 */	li r3, 0
/* 80B035F4  90 7E 06 98 */	stw r3, 0x698(r30)
/* 80B035F8  38 00 00 01 */	li r0, 1
/* 80B035FC  98 1E 06 C1 */	stb r0, 0x6c1(r30)
/* 80B03600  B0 7E 06 A2 */	sth r3, 0x6a2(r30)
/* 80B03604  B0 7E 06 A0 */	sth r3, 0x6a0(r30)
/* 80B03608  B0 7E 06 A4 */	sth r3, 0x6a4(r30)
/* 80B0360C  38 7E 06 80 */	addi r3, r30, 0x680
/* 80B03610  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B03614  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B03618  4B 76 D1 28 */	b cLib_chaseF__FPfff
/* 80B0361C  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 80B03620  28 00 00 00 */	cmplwi r0, 0
/* 80B03624  41 82 00 10 */	beq lbl_80B03634
/* 80B03628  7F C3 F3 78 */	mr r3, r30
/* 80B0362C  38 80 00 06 */	li r4, 6
/* 80B03630  4B FF E2 49 */	bl setActionMode__10daNPC_TK_cFi
lbl_80B03634:
/* 80B03634  38 60 00 01 */	li r3, 1
/* 80B03638  48 00 00 08 */	b lbl_80B03640
lbl_80B0363C:
/* 80B0363C  38 60 00 00 */	li r3, 0
lbl_80B03640:
/* 80B03640  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B03644  4B 85 EB E4 */	b _restgpr_29
/* 80B03648  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B0364C  7C 08 03 A6 */	mtlr r0
/* 80B03650  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B03654  4E 80 00 20 */	blr 
