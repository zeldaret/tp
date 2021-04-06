lbl_80B05EC8:
/* 80B05EC8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B05ECC  7C 08 02 A6 */	mflr r0
/* 80B05ED0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B05ED4  39 61 00 90 */	addi r11, r1, 0x90
/* 80B05ED8  4B 85 C3 01 */	bl _savegpr_28
/* 80B05EDC  7C 7D 1B 78 */	mr r29, r3
/* 80B05EE0  3C 80 80 B1 */	lis r4, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B05EE4  3B C4 C1 C4 */	addi r30, r4, lit_3999@l /* 0x80B0C1C4@l */
/* 80B05EE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B05EEC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B05EF0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B05EF4  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80B05EF8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B05EFC  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80B05F00  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B05F04  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80B05F08  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B05F0C  38 00 00 01 */	li r0, 1
/* 80B05F10  98 03 06 BD */	stb r0, 0x6bd(r3)
/* 80B05F14  98 03 07 1A */	stb r0, 0x71a(r3)
/* 80B05F18  48 00 11 FD */	bl checkAttackDemo__10daNPC_TK_cFv
/* 80B05F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B05F20  40 82 09 34 */	bne lbl_80B06854
/* 80B05F24  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 80B05F28  2C 00 00 03 */	cmpwi r0, 3
/* 80B05F2C  41 82 05 78 */	beq lbl_80B064A4
/* 80B05F30  40 80 00 1C */	bge lbl_80B05F4C
/* 80B05F34  2C 00 00 01 */	cmpwi r0, 1
/* 80B05F38  41 82 00 A0 */	beq lbl_80B05FD8
/* 80B05F3C  40 80 04 8C */	bge lbl_80B063C8
/* 80B05F40  2C 00 00 00 */	cmpwi r0, 0
/* 80B05F44  40 80 00 18 */	bge lbl_80B05F5C
/* 80B05F48  48 00 09 0C */	b lbl_80B06854
lbl_80B05F4C:
/* 80B05F4C  2C 00 00 05 */	cmpwi r0, 5
/* 80B05F50  41 82 07 38 */	beq lbl_80B06688
/* 80B05F54  40 80 09 00 */	bge lbl_80B06854
/* 80B05F58  48 00 05 E0 */	b lbl_80B06538
lbl_80B05F5C:
/* 80B05F5C  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B05F60  81 9D 0A 00 */	lwz r12, 0xa00(r29)
/* 80B05F64  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B05F68  7D 89 03 A6 */	mtctr r12
/* 80B05F6C  4E 80 04 21 */	bctrl 
/* 80B05F70  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B05F74  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B05F78  38 00 00 01 */	li r0, 1
/* 80B05F7C  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B05F80  7F A3 EB 78 */	mr r3, r29
/* 80B05F84  38 80 00 08 */	li r4, 8
/* 80B05F88  38 A0 00 02 */	li r5, 2
/* 80B05F8C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80B05F90  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B05F94  4B FF B5 05 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B05F98  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050027@ha */
/* 80B05F9C  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00050027@l */
/* 80B05FA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B05FA4  38 7D 05 74 */	addi r3, r29, 0x574
/* 80B05FA8  38 81 00 18 */	addi r4, r1, 0x18
/* 80B05FAC  38 A0 FF FF */	li r5, -1
/* 80B05FB0  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80B05FB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B05FB8  7D 89 03 A6 */	mtctr r12
/* 80B05FBC  4E 80 04 21 */	bctrl 
/* 80B05FC0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B05FC4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80B05FC8  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B05FCC  38 00 00 1E */	li r0, 0x1e
/* 80B05FD0  90 1D 06 B4 */	stw r0, 0x6b4(r29)
/* 80B05FD4  48 00 08 80 */	b lbl_80B06854
lbl_80B05FD8:
/* 80B05FD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B05FDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B05FE0  80 63 5F 18 */	lwz r3, 0x5f18(r3)
/* 80B05FE4  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 80B05FE8  40 82 00 1C */	bne lbl_80B06004
/* 80B05FEC  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80B05FF0  40 82 00 14 */	bne lbl_80B06004
/* 80B05FF4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B05FF8  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80B05FFC  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 80B06000  41 82 00 30 */	beq lbl_80B06030
lbl_80B06004:
/* 80B06004  38 00 00 03 */	li r0, 3
/* 80B06008  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B0600C  38 00 00 96 */	li r0, 0x96
/* 80B06010  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B06014  7F A3 EB 78 */	mr r3, r29
/* 80B06018  38 80 00 06 */	li r4, 6
/* 80B0601C  38 A0 00 02 */	li r5, 2
/* 80B06020  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B06024  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B06028  4B FF B4 71 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B0602C  48 00 08 28 */	b lbl_80B06854
lbl_80B06030:
/* 80B06030  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 80B06034  60 00 00 01 */	ori r0, r0, 1
/* 80B06038  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 80B0603C  38 60 00 01 */	li r3, 1
/* 80B06040  98 7D 0A 3B */	stb r3, 0xa3b(r29)
/* 80B06044  38 00 00 05 */	li r0, 5
/* 80B06048  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 80B0604C  98 7D 06 AE */	stb r3, 0x6ae(r29)
/* 80B06050  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B06054  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B06058  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B0605C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80B06060  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B06064  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B06068  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80B0606C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B06070  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B06074  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B06078  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80B0607C  38 61 00 40 */	addi r3, r1, 0x40
/* 80B06080  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B06084  4B 84 13 19 */	bl PSVECSquareDistance
/* 80B06088  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B0608C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06090  40 81 00 58 */	ble lbl_80B060E8
/* 80B06094  FC 00 08 34 */	frsqrte f0, f1
/* 80B06098  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B0609C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B060A0  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B060A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B060A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B060AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B060B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B060B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B060B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B060BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B060C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B060C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B060C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B060CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B060D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B060D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B060D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B060DC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B060E0  FC 20 08 18 */	frsp f1, f1
/* 80B060E4  48 00 00 88 */	b lbl_80B0616C
lbl_80B060E8:
/* 80B060E8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B060EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B060F0  40 80 00 10 */	bge lbl_80B06100
/* 80B060F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B060F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B060FC  48 00 00 70 */	b lbl_80B0616C
lbl_80B06100:
/* 80B06100  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B06104  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B06108  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0610C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B06110  7C 03 00 00 */	cmpw r3, r0
/* 80B06114  41 82 00 14 */	beq lbl_80B06128
/* 80B06118  40 80 00 40 */	bge lbl_80B06158
/* 80B0611C  2C 03 00 00 */	cmpwi r3, 0
/* 80B06120  41 82 00 20 */	beq lbl_80B06140
/* 80B06124  48 00 00 34 */	b lbl_80B06158
lbl_80B06128:
/* 80B06128  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0612C  41 82 00 0C */	beq lbl_80B06138
/* 80B06130  38 00 00 01 */	li r0, 1
/* 80B06134  48 00 00 28 */	b lbl_80B0615C
lbl_80B06138:
/* 80B06138  38 00 00 02 */	li r0, 2
/* 80B0613C  48 00 00 20 */	b lbl_80B0615C
lbl_80B06140:
/* 80B06140  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06144  41 82 00 0C */	beq lbl_80B06150
/* 80B06148  38 00 00 05 */	li r0, 5
/* 80B0614C  48 00 00 10 */	b lbl_80B0615C
lbl_80B06150:
/* 80B06150  38 00 00 03 */	li r0, 3
/* 80B06154  48 00 00 08 */	b lbl_80B0615C
lbl_80B06158:
/* 80B06158  38 00 00 04 */	li r0, 4
lbl_80B0615C:
/* 80B0615C  2C 00 00 01 */	cmpwi r0, 1
/* 80B06160  40 82 00 0C */	bne lbl_80B0616C
/* 80B06164  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06168  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B0616C:
/* 80B0616C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B06170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06174  40 80 00 2C */	bge lbl_80B061A0
/* 80B06178  7F A3 EB 78 */	mr r3, r29
/* 80B0617C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B06180  4B 51 45 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B06184  7C 64 1B 78 */	mr r4, r3
/* 80B06188  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B0618C  38 A0 00 04 */	li r5, 4
/* 80B06190  38 C0 10 00 */	li r6, 0x1000
/* 80B06194  38 E0 01 00 */	li r7, 0x100
/* 80B06198  4B 76 A3 A9 */	bl cLib_addCalcAngleS__FPsssss
/* 80B0619C  48 00 00 28 */	b lbl_80B061C4
lbl_80B061A0:
/* 80B061A0  7F A3 EB 78 */	mr r3, r29
/* 80B061A4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B061A8  4B 51 45 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B061AC  7C 64 1B 78 */	mr r4, r3
/* 80B061B0  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B061B4  38 A0 00 08 */	li r5, 8
/* 80B061B8  38 C0 08 00 */	li r6, 0x800
/* 80B061BC  38 E0 01 00 */	li r7, 0x100
/* 80B061C0  4B 76 A3 81 */	bl cLib_addCalcAngleS__FPsssss
lbl_80B061C4:
/* 80B061C4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B061C8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B061CC  38 61 00 58 */	addi r3, r1, 0x58
/* 80B061D0  38 81 00 70 */	addi r4, r1, 0x70
/* 80B061D4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B061D8  4B 76 09 5D */	bl __mi__4cXyzCFRC3Vec
/* 80B061DC  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80B061E0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80B061E4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B061E8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B061EC  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80B061F0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80B061F4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80B061F8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B061FC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B06200  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B06204  38 61 00 34 */	addi r3, r1, 0x34
/* 80B06208  4B 84 0F 31 */	bl PSVECSquareMag
/* 80B0620C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B06210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06214  40 81 00 58 */	ble lbl_80B0626C
/* 80B06218  FC 00 08 34 */	frsqrte f0, f1
/* 80B0621C  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B06220  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06224  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B06228  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0622C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06230  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06234  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06238  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0623C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06240  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06244  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06248  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0624C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06250  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06254  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06258  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0625C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06260  FC 21 00 32 */	fmul f1, f1, f0
/* 80B06264  FC 20 08 18 */	frsp f1, f1
/* 80B06268  48 00 00 88 */	b lbl_80B062F0
lbl_80B0626C:
/* 80B0626C  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B06270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06274  40 80 00 10 */	bge lbl_80B06284
/* 80B06278  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0627C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B06280  48 00 00 70 */	b lbl_80B062F0
lbl_80B06284:
/* 80B06284  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B06288  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B0628C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B06290  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B06294  7C 03 00 00 */	cmpw r3, r0
/* 80B06298  41 82 00 14 */	beq lbl_80B062AC
/* 80B0629C  40 80 00 40 */	bge lbl_80B062DC
/* 80B062A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B062A4  41 82 00 20 */	beq lbl_80B062C4
/* 80B062A8  48 00 00 34 */	b lbl_80B062DC
lbl_80B062AC:
/* 80B062AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B062B0  41 82 00 0C */	beq lbl_80B062BC
/* 80B062B4  38 00 00 01 */	li r0, 1
/* 80B062B8  48 00 00 28 */	b lbl_80B062E0
lbl_80B062BC:
/* 80B062BC  38 00 00 02 */	li r0, 2
/* 80B062C0  48 00 00 20 */	b lbl_80B062E0
lbl_80B062C4:
/* 80B062C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B062C8  41 82 00 0C */	beq lbl_80B062D4
/* 80B062CC  38 00 00 05 */	li r0, 5
/* 80B062D0  48 00 00 10 */	b lbl_80B062E0
lbl_80B062D4:
/* 80B062D4  38 00 00 03 */	li r0, 3
/* 80B062D8  48 00 00 08 */	b lbl_80B062E0
lbl_80B062DC:
/* 80B062DC  38 00 00 04 */	li r0, 4
lbl_80B062E0:
/* 80B062E0  2C 00 00 01 */	cmpwi r0, 1
/* 80B062E4  40 82 00 0C */	bne lbl_80B062F0
/* 80B062E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B062EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B062F0:
/* 80B062F0  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80B062F4  4B 76 13 81 */	bl cM_atan2s__Fff
/* 80B062F8  7C 65 07 34 */	extsh r5, r3
/* 80B062FC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B06300  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80B06304  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B06308  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0630C  54 BC 04 38 */	rlwinm r28, r5, 0, 0x10, 0x1c
/* 80B06310  7C 80 E2 14 */	add r4, r0, r28
/* 80B06314  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B06318  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B0631C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80B06320  4B 76 A4 21 */	bl cLib_chaseF__FPfff
/* 80B06324  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B06328  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80B0632C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B06330  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B06334  7C 04 E4 2E */	lfsx f0, r4, r28
/* 80B06338  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B0633C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80B06340  4B 76 A4 01 */	bl cLib_chaseF__FPfff
/* 80B06344  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B06348  4B 57 DF 79 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80B0634C  28 03 00 00 */	cmplwi r3, 0
/* 80B06350  41 82 05 04 */	beq lbl_80B06854
/* 80B06354  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B06358  4B 57 E0 01 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80B0635C  4B 75 D6 ED */	bl GetAc__8cCcD_ObjFv
/* 80B06360  A8 03 00 08 */	lha r0, 8(r3)
/* 80B06364  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B06368  41 82 00 14 */	beq lbl_80B0637C
/* 80B0636C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B06370  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 80B06374  7C 00 07 35 */	extsh. r0, r0
/* 80B06378  41 82 04 DC */	beq lbl_80B06854
lbl_80B0637C:
/* 80B0637C  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B06380  4B 57 DF D9 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80B06384  4B 75 D6 C5 */	bl GetAc__8cCcD_ObjFv
/* 80B06388  A8 03 00 08 */	lha r0, 8(r3)
/* 80B0638C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B06390  40 82 00 24 */	bne lbl_80B063B4
/* 80B06394  88 7D 06 C7 */	lbz r3, 0x6c7(r29)
/* 80B06398  38 03 00 01 */	addi r0, r3, 1
/* 80B0639C  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 80B063A0  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B063A4  81 9D 0A 00 */	lwz r12, 0xa00(r29)
/* 80B063A8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B063AC  7D 89 03 A6 */	mtctr r12
/* 80B063B0  4E 80 04 21 */	bctrl 
lbl_80B063B4:
/* 80B063B4  38 00 00 02 */	li r0, 2
/* 80B063B8  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B063BC  38 00 00 0F */	li r0, 0xf
/* 80B063C0  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B063C4  48 00 04 90 */	b lbl_80B06854
lbl_80B063C8:
/* 80B063C8  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80B063CC  38 80 E0 00 */	li r4, -8192
/* 80B063D0  38 A0 04 00 */	li r5, 0x400
/* 80B063D4  4B 76 A7 BD */	bl cLib_chaseAngleS__FPsss
/* 80B063D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B063DC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B063E0  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80B063E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B063E8  7C 63 02 14 */	add r3, r3, r0
/* 80B063EC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B063F0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B063F4  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80B063F8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B063FC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80B06400  4B 76 A3 41 */	bl cLib_chaseF__FPfff
/* 80B06404  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80B06408  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0640C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B06410  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B06414  7C 23 04 2E */	lfsx f1, r3, r0
/* 80B06418  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B0641C  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80B06420  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B06424  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80B06428  4B 76 A3 19 */	bl cLib_chaseF__FPfff
/* 80B0642C  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80B06430  2C 00 00 00 */	cmpwi r0, 0
/* 80B06434  40 82 04 20 */	bne lbl_80B06854
/* 80B06438  38 00 00 04 */	li r0, 4
/* 80B0643C  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B06440  38 00 00 96 */	li r0, 0x96
/* 80B06444  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B06448  7F A3 EB 78 */	mr r3, r29
/* 80B0644C  38 80 00 06 */	li r4, 6
/* 80B06450  38 A0 00 02 */	li r5, 2
/* 80B06454  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B06458  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B0645C  4B FF B0 3D */	bl setBck__10daNPC_TK_cFiUcff
/* 80B06460  88 1D 06 C7 */	lbz r0, 0x6c7(r29)
/* 80B06464  28 00 00 03 */	cmplwi r0, 3
/* 80B06468  41 80 03 EC */	blt lbl_80B06854
/* 80B0646C  38 00 00 03 */	li r0, 3
/* 80B06470  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 80B06474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B06478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0647C  3B 83 09 58 */	addi r28, r3, 0x958
/* 80B06480  7F 83 E3 78 */	mr r3, r28
/* 80B06484  38 80 00 0F */	li r4, 0xf
/* 80B06488  4B 52 E3 D9 */	bl isSwitch__12dSv_memBit_cCFi
/* 80B0648C  2C 03 00 00 */	cmpwi r3, 0
/* 80B06490  40 82 03 C4 */	bne lbl_80B06854
/* 80B06494  7F 83 E3 78 */	mr r3, r28
/* 80B06498  38 80 00 0F */	li r4, 0xf
/* 80B0649C  4B 52 E3 75 */	bl onSwitch__12dSv_memBit_cFi
/* 80B064A0  48 00 03 B4 */	b lbl_80B06854
lbl_80B064A4:
/* 80B064A4  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 80B064A8  60 00 00 01 */	ori r0, r0, 1
/* 80B064AC  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 80B064B0  38 00 00 01 */	li r0, 1
/* 80B064B4  98 1D 06 AE */	stb r0, 0x6ae(r29)
/* 80B064B8  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B064BC  4B 57 DE 05 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80B064C0  28 03 00 00 */	cmplwi r3, 0
/* 80B064C4  41 82 00 60 */	beq lbl_80B06524
/* 80B064C8  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B064CC  4B 57 DE 8D */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80B064D0  4B 75 D5 79 */	bl GetAc__8cCcD_ObjFv
/* 80B064D4  A8 03 00 08 */	lha r0, 8(r3)
/* 80B064D8  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B064DC  40 82 00 30 */	bne lbl_80B0650C
/* 80B064E0  88 7D 06 C7 */	lbz r3, 0x6c7(r29)
/* 80B064E4  38 03 00 01 */	addi r0, r3, 1
/* 80B064E8  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 80B064EC  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B064F0  81 9D 0A 00 */	lwz r12, 0xa00(r29)
/* 80B064F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B064F8  7D 89 03 A6 */	mtctr r12
/* 80B064FC  4E 80 04 21 */	bctrl 
/* 80B06500  38 00 00 04 */	li r0, 4
/* 80B06504  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B06508  48 00 00 1C */	b lbl_80B06524
lbl_80B0650C:
/* 80B0650C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B06510  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 80B06514  7C 00 07 35 */	extsh. r0, r0
/* 80B06518  41 82 00 0C */	beq lbl_80B06524
/* 80B0651C  38 00 00 04 */	li r0, 4
/* 80B06520  90 1D 06 94 */	stw r0, 0x694(r29)
lbl_80B06524:
/* 80B06524  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80B06528  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80B0652C  40 80 00 0C */	bge lbl_80B06538
/* 80B06530  38 00 00 04 */	li r0, 4
/* 80B06534  90 1D 06 94 */	stw r0, 0x694(r29)
lbl_80B06538:
/* 80B06538  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B0653C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80B06540  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 80B06544  41 82 00 50 */	beq lbl_80B06594
/* 80B06548  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B0654C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B06550  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80B06554  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80B06558  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B0655C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B06560  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B06564  EC 01 00 2A */	fadds f0, f1, f0
/* 80B06568  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B0656C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B06570  38 81 00 70 */	addi r4, r1, 0x70
/* 80B06574  4B 76 A6 91 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B06578  7C 64 1B 78 */	mr r4, r3
/* 80B0657C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B06580  38 A0 00 08 */	li r5, 8
/* 80B06584  38 C0 04 00 */	li r6, 0x400
/* 80B06588  38 E0 01 00 */	li r7, 0x100
/* 80B0658C  4B 76 9F B5 */	bl cLib_addCalcAngleS__FPsssss
/* 80B06590  48 00 00 40 */	b lbl_80B065D0
lbl_80B06594:
/* 80B06594  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80B06598  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B0659C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B065A0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B065A4  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80B065A8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B065AC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B065B0  38 81 00 70 */	addi r4, r1, 0x70
/* 80B065B4  4B 76 A6 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B065B8  7C 64 1B 78 */	mr r4, r3
/* 80B065BC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B065C0  38 A0 00 10 */	li r5, 0x10
/* 80B065C4  38 C0 03 00 */	li r6, 0x300
/* 80B065C8  38 E0 01 00 */	li r7, 0x100
/* 80B065CC  4B 76 9F 75 */	bl cLib_addCalcAngleS__FPsssss
lbl_80B065D0:
/* 80B065D0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B065D4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B065D8  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80B065DC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B065E0  EC 61 00 28 */	fsubs f3, f1, f0
/* 80B065E4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B065E8  FC 00 1A 10 */	fabs f0, f3
/* 80B065EC  FC 40 00 18 */	frsp f2, f0
/* 80B065F0  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80B065F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B065F8  4C 41 13 82 */	cror 2, 1, 2
/* 80B065FC  40 82 00 18 */	bne lbl_80B06614
/* 80B06600  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80B06604  40 80 00 0C */	bge lbl_80B06610
/* 80B06608  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80B0660C  48 00 00 08 */	b lbl_80B06614
lbl_80B06610:
/* 80B06610  FC 20 00 90 */	fmr f1, f0
lbl_80B06614:
/* 80B06614  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B06618  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B0661C  4B 76 A1 25 */	bl cLib_chaseF__FPfff
/* 80B06620  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B06624  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80B06628  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80B0662C  4B 76 A1 15 */	bl cLib_chaseF__FPfff
/* 80B06630  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80B06634  2C 00 00 00 */	cmpwi r0, 0
/* 80B06638  40 82 02 1C */	bne lbl_80B06854
/* 80B0663C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B06640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B06644  80 63 5F 18 */	lwz r3, 0x5f18(r3)
/* 80B06648  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 80B0664C  40 82 00 1C */	bne lbl_80B06668
/* 80B06650  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80B06654  40 82 00 14 */	bne lbl_80B06668
/* 80B06658  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B0665C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80B06660  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 80B06664  41 82 00 10 */	beq lbl_80B06674
lbl_80B06668:
/* 80B06668  38 00 00 0A */	li r0, 0xa
/* 80B0666C  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B06670  48 00 01 E4 */	b lbl_80B06854
lbl_80B06674:
/* 80B06674  38 00 00 05 */	li r0, 5
/* 80B06678  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B0667C  38 00 00 0A */	li r0, 0xa
/* 80B06680  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B06684  48 00 01 D0 */	b lbl_80B06854
lbl_80B06688:
/* 80B06688  7F A3 EB 78 */	mr r3, r29
/* 80B0668C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B06690  4B 51 40 81 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B06694  7C 64 1B 78 */	mr r4, r3
/* 80B06698  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B0669C  3C 84 00 01 */	addis r4, r4, 1
/* 80B066A0  38 04 80 00 */	addi r0, r4, -32768
/* 80B066A4  7C 04 07 34 */	extsh r4, r0
/* 80B066A8  38 A0 00 10 */	li r5, 0x10
/* 80B066AC  38 C0 03 00 */	li r6, 0x300
/* 80B066B0  38 E0 01 00 */	li r7, 0x100
/* 80B066B4  4B 76 9E 8D */	bl cLib_addCalcAngleS__FPsssss
/* 80B066B8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B066BC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B066C0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B066C4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B066C8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B066CC  4B 76 A0 75 */	bl cLib_chaseF__FPfff
/* 80B066D0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B066D4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80B066D8  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80B066DC  4B 76 A0 65 */	bl cLib_chaseF__FPfff
/* 80B066E0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B066E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B066E8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B066EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B066F0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B066F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B066F8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80B066FC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B06700  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B06704  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B06708  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80B0670C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B06710  38 81 00 28 */	addi r4, r1, 0x28
/* 80B06714  4B 84 0C 89 */	bl PSVECSquareDistance
/* 80B06718  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B0671C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06720  40 81 00 58 */	ble lbl_80B06778
/* 80B06724  FC 00 08 34 */	frsqrte f0, f1
/* 80B06728  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B0672C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06730  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B06734  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06738  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0673C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06740  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06744  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06748  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0674C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06750  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06754  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06758  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0675C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06760  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06764  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06768  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0676C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B06770  FC 20 08 18 */	frsp f1, f1
/* 80B06774  48 00 00 88 */	b lbl_80B067FC
lbl_80B06778:
/* 80B06778  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B0677C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06780  40 80 00 10 */	bge lbl_80B06790
/* 80B06784  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06788  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B0678C  48 00 00 70 */	b lbl_80B067FC
lbl_80B06790:
/* 80B06790  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B06794  80 81 00 08 */	lwz r4, 8(r1)
/* 80B06798  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0679C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B067A0  7C 03 00 00 */	cmpw r3, r0
/* 80B067A4  41 82 00 14 */	beq lbl_80B067B8
/* 80B067A8  40 80 00 40 */	bge lbl_80B067E8
/* 80B067AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B067B0  41 82 00 20 */	beq lbl_80B067D0
/* 80B067B4  48 00 00 34 */	b lbl_80B067E8
lbl_80B067B8:
/* 80B067B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B067BC  41 82 00 0C */	beq lbl_80B067C8
/* 80B067C0  38 00 00 01 */	li r0, 1
/* 80B067C4  48 00 00 28 */	b lbl_80B067EC
lbl_80B067C8:
/* 80B067C8  38 00 00 02 */	li r0, 2
/* 80B067CC  48 00 00 20 */	b lbl_80B067EC
lbl_80B067D0:
/* 80B067D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B067D4  41 82 00 0C */	beq lbl_80B067E0
/* 80B067D8  38 00 00 05 */	li r0, 5
/* 80B067DC  48 00 00 10 */	b lbl_80B067EC
lbl_80B067E0:
/* 80B067E0  38 00 00 03 */	li r0, 3
/* 80B067E4  48 00 00 08 */	b lbl_80B067EC
lbl_80B067E8:
/* 80B067E8  38 00 00 04 */	li r0, 4
lbl_80B067EC:
/* 80B067EC  2C 00 00 01 */	cmpwi r0, 1
/* 80B067F0  40 82 00 0C */	bne lbl_80B067FC
/* 80B067F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B067F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B067FC:
/* 80B067FC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80B06800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06804  4C 41 13 82 */	cror 2, 1, 2
/* 80B06808  40 82 00 4C */	bne lbl_80B06854
/* 80B0680C  7F A3 EB 78 */	mr r3, r29
/* 80B06810  38 80 00 08 */	li r4, 8
/* 80B06814  38 A0 00 02 */	li r5, 2
/* 80B06818  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80B0681C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B06820  4B FF AC 79 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B06824  38 00 00 01 */	li r0, 1
/* 80B06828  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B0682C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050027@ha */
/* 80B06830  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00050027@l */
/* 80B06834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B06838  38 7D 05 74 */	addi r3, r29, 0x574
/* 80B0683C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B06840  38 A0 FF FF */	li r5, -1
/* 80B06844  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80B06848  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B0684C  7D 89 03 A6 */	mtctr r12
/* 80B06850  4E 80 04 21 */	bctrl 
lbl_80B06854:
/* 80B06854  39 61 00 90 */	addi r11, r1, 0x90
/* 80B06858  4B 85 B9 CD */	bl _restgpr_28
/* 80B0685C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B06860  7C 08 03 A6 */	mtlr r0
/* 80B06864  38 21 00 90 */	addi r1, r1, 0x90
/* 80B06868  4E 80 00 20 */	blr 
