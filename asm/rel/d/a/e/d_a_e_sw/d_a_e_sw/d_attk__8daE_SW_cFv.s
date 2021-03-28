lbl_807ADE50:
/* 807ADE50  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807ADE54  7C 08 02 A6 */	mflr r0
/* 807ADE58  90 01 00 84 */	stw r0, 0x84(r1)
/* 807ADE5C  39 61 00 80 */	addi r11, r1, 0x80
/* 807ADE60  4B BB 43 78 */	b _savegpr_28
/* 807ADE64  7C 7C 1B 78 */	mr r28, r3
/* 807ADE68  3C 80 80 7B */	lis r4, cNullVec__6Z2Calc@ha
/* 807ADE6C  3B C4 FE 7C */	addi r30, r4, cNullVec__6Z2Calc@l
/* 807ADE70  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807ADE74  3B E4 FD 2C */	addi r31, r4, lit_3909@l
/* 807ADE78  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807ADE7C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807ADE80  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 807ADE84  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807ADE88  2C 00 00 02 */	cmpwi r0, 2
/* 807ADE8C  41 82 03 A4 */	beq lbl_807AE230
/* 807ADE90  40 80 00 14 */	bge lbl_807ADEA4
/* 807ADE94  2C 00 00 00 */	cmpwi r0, 0
/* 807ADE98  41 82 00 1C */	beq lbl_807ADEB4
/* 807ADE9C  40 80 03 28 */	bge lbl_807AE1C4
/* 807ADEA0  48 00 05 FC */	b lbl_807AE49C
lbl_807ADEA4:
/* 807ADEA4  2C 00 00 04 */	cmpwi r0, 4
/* 807ADEA8  41 82 04 F8 */	beq lbl_807AE3A0
/* 807ADEAC  40 80 05 F0 */	bge lbl_807AE49C
/* 807ADEB0  48 00 04 6C */	b lbl_807AE31C
lbl_807ADEB4:
/* 807ADEB4  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807ADEB8  38 04 FD FF */	addi r0, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 807ADEBC  90 1C 09 B4 */	stw r0, 0x9b4(r28)
/* 807ADEC0  38 00 00 00 */	li r0, 0
/* 807ADEC4  98 1C 06 E4 */	stb r0, 0x6e4(r28)
/* 807ADEC8  98 1C 06 E5 */	stb r0, 0x6e5(r28)
/* 807ADECC  4B FF 9B 3D */	bl setDiveEffect__8daE_SW_cFv
/* 807ADED0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035A@ha */
/* 807ADED4  38 03 03 5A */	addi r0, r3, 0x035A /* 0x0007035A@l */
/* 807ADED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807ADEDC  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807ADEE0  38 81 00 14 */	addi r4, r1, 0x14
/* 807ADEE4  88 BC 06 E9 */	lbz r5, 0x6e9(r28)
/* 807ADEE8  38 C0 FF FF */	li r6, -1
/* 807ADEEC  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807ADEF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807ADEF4  7D 89 03 A6 */	mtctr r12
/* 807ADEF8  4E 80 04 21 */	bctrl 
/* 807ADEFC  7F 83 E3 78 */	mr r3, r28
/* 807ADF00  38 80 00 06 */	li r4, 6
/* 807ADF04  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807ADF08  38 A0 00 00 */	li r5, 0
/* 807ADF0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807ADF10  4B FF 95 51 */	bl bckSet__8daE_SW_cFifUcf
/* 807ADF14  38 00 C0 00 */	li r0, -16384
/* 807ADF18  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 807ADF1C  38 00 00 01 */	li r0, 1
/* 807ADF20  98 1C 0B 14 */	stb r0, 0xb14(r28)
/* 807ADF24  A8 1C 06 9E */	lha r0, 0x69e(r28)
/* 807ADF28  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 807ADF2C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807ADF30  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807ADF34  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 807ADF38  80 7E 02 38 */	lwz r3, 0x238(r30)
/* 807ADF3C  80 1E 02 3C */	lwz r0, 0x23c(r30)
/* 807ADF40  90 61 00 54 */	stw r3, 0x54(r1)
/* 807ADF44  90 01 00 58 */	stw r0, 0x58(r1)
/* 807ADF48  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 807ADF4C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807ADF50  38 7C 0B 08 */	addi r3, r28, 0xb08
/* 807ADF54  38 81 00 54 */	addi r4, r1, 0x54
/* 807ADF58  4B BB 40 F0 */	b __ptmf_cmpr
/* 807ADF5C  2C 03 00 00 */	cmpwi r3, 0
/* 807ADF60  40 82 01 14 */	bne lbl_807AE074
/* 807ADF64  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807ADF68  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 807ADF6C  4B AC 2C 98 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807ADF70  B0 7C 06 9E */	sth r3, 0x69e(r28)
/* 807ADF74  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807ADF78  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 807ADF7C  4B B9 94 20 */	b PSVECSquareDistance
/* 807ADF80  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807ADF84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADF88  40 81 00 58 */	ble lbl_807ADFE0
/* 807ADF8C  FC 00 08 34 */	frsqrte f0, f1
/* 807ADF90  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807ADF94  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADF98  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807ADF9C  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADFA0  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADFA4  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADFA8  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADFAC  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADFB0  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADFB4  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADFB8  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADFBC  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADFC0  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADFC4  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADFC8  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADFCC  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADFD0  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADFD4  FC 21 00 32 */	fmul f1, f1, f0
/* 807ADFD8  FC 20 08 18 */	frsp f1, f1
/* 807ADFDC  48 00 00 88 */	b lbl_807AE064
lbl_807ADFE0:
/* 807ADFE0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807ADFE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADFE8  40 80 00 10 */	bge lbl_807ADFF8
/* 807ADFEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ADFF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807ADFF4  48 00 00 70 */	b lbl_807AE064
lbl_807ADFF8:
/* 807ADFF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807ADFFC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807AE000  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AE004  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AE008  7C 03 00 00 */	cmpw r3, r0
/* 807AE00C  41 82 00 14 */	beq lbl_807AE020
/* 807AE010  40 80 00 40 */	bge lbl_807AE050
/* 807AE014  2C 03 00 00 */	cmpwi r3, 0
/* 807AE018  41 82 00 20 */	beq lbl_807AE038
/* 807AE01C  48 00 00 34 */	b lbl_807AE050
lbl_807AE020:
/* 807AE020  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AE024  41 82 00 0C */	beq lbl_807AE030
/* 807AE028  38 00 00 01 */	li r0, 1
/* 807AE02C  48 00 00 28 */	b lbl_807AE054
lbl_807AE030:
/* 807AE030  38 00 00 02 */	li r0, 2
/* 807AE034  48 00 00 20 */	b lbl_807AE054
lbl_807AE038:
/* 807AE038  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AE03C  41 82 00 0C */	beq lbl_807AE048
/* 807AE040  38 00 00 05 */	li r0, 5
/* 807AE044  48 00 00 10 */	b lbl_807AE054
lbl_807AE048:
/* 807AE048  38 00 00 03 */	li r0, 3
/* 807AE04C  48 00 00 08 */	b lbl_807AE054
lbl_807AE050:
/* 807AE050  38 00 00 04 */	li r0, 4
lbl_807AE054:
/* 807AE054  2C 00 00 01 */	cmpwi r0, 1
/* 807AE058  40 82 00 0C */	bne lbl_807AE064
/* 807AE05C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AE060  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807AE064:
/* 807AE064  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807AE068  EC 01 00 24 */	fdivs f0, f1, f0
/* 807AE06C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 807AE070  48 00 01 3C */	b lbl_807AE1AC
lbl_807AE074:
/* 807AE074  A8 1C 06 CC */	lha r0, 0x6cc(r28)
/* 807AE078  B0 1C 06 9E */	sth r0, 0x69e(r28)
/* 807AE07C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807AE080  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807AE084  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807AE088  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AE08C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807AE090  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807AE094  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 807AE098  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807AE09C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807AE0A0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807AE0A4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 807AE0A8  38 61 00 18 */	addi r3, r1, 0x18
/* 807AE0AC  38 81 00 24 */	addi r4, r1, 0x24
/* 807AE0B0  4B B9 92 EC */	b PSVECSquareDistance
/* 807AE0B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AE0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AE0BC  40 81 00 58 */	ble lbl_807AE114
/* 807AE0C0  FC 00 08 34 */	frsqrte f0, f1
/* 807AE0C4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AE0C8  FC 44 00 32 */	fmul f2, f4, f0
/* 807AE0CC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AE0D0  FC 00 00 32 */	fmul f0, f0, f0
/* 807AE0D4  FC 01 00 32 */	fmul f0, f1, f0
/* 807AE0D8  FC 03 00 28 */	fsub f0, f3, f0
/* 807AE0DC  FC 02 00 32 */	fmul f0, f2, f0
/* 807AE0E0  FC 44 00 32 */	fmul f2, f4, f0
/* 807AE0E4  FC 00 00 32 */	fmul f0, f0, f0
/* 807AE0E8  FC 01 00 32 */	fmul f0, f1, f0
/* 807AE0EC  FC 03 00 28 */	fsub f0, f3, f0
/* 807AE0F0  FC 02 00 32 */	fmul f0, f2, f0
/* 807AE0F4  FC 44 00 32 */	fmul f2, f4, f0
/* 807AE0F8  FC 00 00 32 */	fmul f0, f0, f0
/* 807AE0FC  FC 01 00 32 */	fmul f0, f1, f0
/* 807AE100  FC 03 00 28 */	fsub f0, f3, f0
/* 807AE104  FC 02 00 32 */	fmul f0, f2, f0
/* 807AE108  FC 21 00 32 */	fmul f1, f1, f0
/* 807AE10C  FC 20 08 18 */	frsp f1, f1
/* 807AE110  48 00 00 88 */	b lbl_807AE198
lbl_807AE114:
/* 807AE114  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AE118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AE11C  40 80 00 10 */	bge lbl_807AE12C
/* 807AE120  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AE124  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807AE128  48 00 00 70 */	b lbl_807AE198
lbl_807AE12C:
/* 807AE12C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AE130  80 81 00 08 */	lwz r4, 8(r1)
/* 807AE134  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AE138  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AE13C  7C 03 00 00 */	cmpw r3, r0
/* 807AE140  41 82 00 14 */	beq lbl_807AE154
/* 807AE144  40 80 00 40 */	bge lbl_807AE184
/* 807AE148  2C 03 00 00 */	cmpwi r3, 0
/* 807AE14C  41 82 00 20 */	beq lbl_807AE16C
/* 807AE150  48 00 00 34 */	b lbl_807AE184
lbl_807AE154:
/* 807AE154  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AE158  41 82 00 0C */	beq lbl_807AE164
/* 807AE15C  38 00 00 01 */	li r0, 1
/* 807AE160  48 00 00 28 */	b lbl_807AE188
lbl_807AE164:
/* 807AE164  38 00 00 02 */	li r0, 2
/* 807AE168  48 00 00 20 */	b lbl_807AE188
lbl_807AE16C:
/* 807AE16C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AE170  41 82 00 0C */	beq lbl_807AE17C
/* 807AE174  38 00 00 05 */	li r0, 5
/* 807AE178  48 00 00 10 */	b lbl_807AE188
lbl_807AE17C:
/* 807AE17C  38 00 00 03 */	li r0, 3
/* 807AE180  48 00 00 08 */	b lbl_807AE188
lbl_807AE184:
/* 807AE184  38 00 00 04 */	li r0, 4
lbl_807AE188:
/* 807AE188  2C 00 00 01 */	cmpwi r0, 1
/* 807AE18C  40 82 00 0C */	bne lbl_807AE198
/* 807AE190  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AE194  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807AE198:
/* 807AE198  D0 3C 06 C8 */	stfs f1, 0x6c8(r28)
/* 807AE19C  C0 3C 06 C8 */	lfs f1, 0x6c8(r28)
/* 807AE1A0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807AE1A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 807AE1A8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_807AE1AC:
/* 807AE1AC  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 807AE1B0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807AE1B4  A8 7C 06 80 */	lha r3, 0x680(r28)
/* 807AE1B8  38 03 00 01 */	addi r0, r3, 1
/* 807AE1BC  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 807AE1C0  48 00 02 DC */	b lbl_807AE49C
lbl_807AE1C4:
/* 807AE1C4  4B FF 96 09 */	bl setJumpEffect__8daE_SW_cFv
/* 807AE1C8  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 807AE1CC  38 80 00 00 */	li r4, 0
/* 807AE1D0  38 A0 04 00 */	li r5, 0x400
/* 807AE1D4  4B AC 29 BC */	b cLib_chaseAngleS__FPsss
/* 807AE1D8  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 807AE1DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AE1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AE1E4  4C 40 13 82 */	cror 2, 0, 2
/* 807AE1E8  40 82 02 98 */	bne lbl_807AE480
/* 807AE1EC  D0 1C 06 D8 */	stfs f0, 0x6d8(r28)
/* 807AE1F0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807AE1F4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807AE1F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807AE1FC  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807AE200  7F 83 E3 78 */	mr r3, r28
/* 807AE204  38 80 00 05 */	li r4, 5
/* 807AE208  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AE20C  38 A0 00 00 */	li r5, 0
/* 807AE210  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AE214  4B FF 92 4D */	bl bckSet__8daE_SW_cFifUcf
/* 807AE218  38 00 00 3C */	li r0, 0x3c
/* 807AE21C  B0 1C 06 EA */	sth r0, 0x6ea(r28)
/* 807AE220  A8 7C 06 80 */	lha r3, 0x680(r28)
/* 807AE224  38 03 00 01 */	addi r0, r3, 1
/* 807AE228  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 807AE22C  48 00 02 54 */	b lbl_807AE480
lbl_807AE230:
/* 807AE230  4B FF 95 9D */	bl setJumpEffect__8daE_SW_cFv
/* 807AE234  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 807AE238  38 80 40 00 */	li r4, 0x4000
/* 807AE23C  38 A0 04 00 */	li r5, 0x400
/* 807AE240  4B AC 29 50 */	b cLib_chaseAngleS__FPsss
/* 807AE244  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807AE248  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AE24C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AE250  4B AC 24 F0 */	b cLib_chaseF__FPfff
/* 807AE254  80 1C 07 A4 */	lwz r0, 0x7a4(r28)
/* 807AE258  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AE25C  41 82 00 9C */	beq lbl_807AE2F8
/* 807AE260  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807AE264  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 807AE268  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 807AE26C  D0 1C 06 D8 */	stfs f0, 0x6d8(r28)
/* 807AE270  A8 1C 06 BC */	lha r0, 0x6bc(r28)
/* 807AE274  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807AE278  40 82 00 2C */	bne lbl_807AE2A4
/* 807AE27C  80 7E 02 44 */	lwz r3, 0x244(r30)
/* 807AE280  80 1E 02 48 */	lwz r0, 0x248(r30)
/* 807AE284  90 61 00 48 */	stw r3, 0x48(r1)
/* 807AE288  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807AE28C  80 1E 02 4C */	lwz r0, 0x24c(r30)
/* 807AE290  90 01 00 50 */	stw r0, 0x50(r1)
/* 807AE294  7F 83 E3 78 */	mr r3, r28
/* 807AE298  38 81 00 48 */	addi r4, r1, 0x48
/* 807AE29C  4B FF E7 A5 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AE2A0  48 00 00 4C */	b lbl_807AE2EC
lbl_807AE2A4:
/* 807AE2A4  38 00 00 01 */	li r0, 1
/* 807AE2A8  98 1C 06 E4 */	stb r0, 0x6e4(r28)
/* 807AE2AC  7F 83 E3 78 */	mr r3, r28
/* 807AE2B0  4B FF 97 59 */	bl setDiveEffect__8daE_SW_cFv
/* 807AE2B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035B@ha */
/* 807AE2B8  38 03 03 5B */	addi r0, r3, 0x035B /* 0x0007035B@l */
/* 807AE2BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AE2C0  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807AE2C4  38 81 00 10 */	addi r4, r1, 0x10
/* 807AE2C8  88 BC 06 E9 */	lbz r5, 0x6e9(r28)
/* 807AE2CC  38 C0 FF FF */	li r6, -1
/* 807AE2D0  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807AE2D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AE2D8  7D 89 03 A6 */	mtctr r12
/* 807AE2DC  4E 80 04 21 */	bctrl 
/* 807AE2E0  A8 7C 06 80 */	lha r3, 0x680(r28)
/* 807AE2E4  38 03 00 01 */	addi r0, r3, 1
/* 807AE2E8  B0 1C 06 80 */	sth r0, 0x680(r28)
lbl_807AE2EC:
/* 807AE2EC  38 00 00 00 */	li r0, 0
/* 807AE2F0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807AE2F4  48 00 00 18 */	b lbl_807AE30C
lbl_807AE2F8:
/* 807AE2F8  A8 1C 06 EA */	lha r0, 0x6ea(r28)
/* 807AE2FC  2C 00 00 00 */	cmpwi r0, 0
/* 807AE300  40 82 00 0C */	bne lbl_807AE30C
/* 807AE304  7F 83 E3 78 */	mr r3, r28
/* 807AE308  4B 86 B9 74 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807AE30C:
/* 807AE30C  80 1C 09 8C */	lwz r0, 0x98c(r28)
/* 807AE310  60 00 00 01 */	ori r0, r0, 1
/* 807AE314  90 1C 09 8C */	stw r0, 0x98c(r28)
/* 807AE318  48 00 01 68 */	b lbl_807AE480
lbl_807AE31C:
/* 807AE31C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807AE320  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AE324  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AE328  4B AC 24 18 */	b cLib_chaseF__FPfff
/* 807AE32C  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 807AE330  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807AE334  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807AE338  4B AC 24 08 */	b cLib_chaseF__FPfff
/* 807AE33C  2C 03 00 00 */	cmpwi r3, 0
/* 807AE340  41 82 01 40 */	beq lbl_807AE480
/* 807AE344  38 00 00 01 */	li r0, 1
/* 807AE348  98 1C 06 E5 */	stb r0, 0x6e5(r28)
/* 807AE34C  38 00 00 00 */	li r0, 0
/* 807AE350  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 807AE354  7F A3 EB 78 */	mr r3, r29
/* 807AE358  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807AE35C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807AE360  7D 89 03 A6 */	mtctr r12
/* 807AE364  4E 80 04 21 */	bctrl 
/* 807AE368  28 03 00 00 */	cmplwi r3, 0
/* 807AE36C  40 82 00 0C */	bne lbl_807AE378
/* 807AE370  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807AE374  48 00 00 08 */	b lbl_807AE37C
lbl_807AE378:
/* 807AE378  C0 3F 00 64 */	lfs f1, 0x64(r31)
lbl_807AE37C:
/* 807AE37C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807AE380  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807AE384  40 80 00 0C */	bge lbl_807AE390
/* 807AE388  38 00 00 0F */	li r0, 0xf
/* 807AE38C  B0 1C 06 EA */	sth r0, 0x6ea(r28)
lbl_807AE390:
/* 807AE390  A8 7C 06 80 */	lha r3, 0x680(r28)
/* 807AE394  38 03 00 01 */	addi r0, r3, 1
/* 807AE398  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 807AE39C  48 00 00 E4 */	b lbl_807AE480
lbl_807AE3A0:
/* 807AE3A0  A8 1C 06 BC */	lha r0, 0x6bc(r28)
/* 807AE3A4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807AE3A8  40 82 00 40 */	bne lbl_807AE3E8
/* 807AE3AC  80 9E 02 50 */	lwz r4, 0x250(r30)
/* 807AE3B0  80 1E 02 54 */	lwz r0, 0x254(r30)
/* 807AE3B4  90 81 00 3C */	stw r4, 0x3c(r1)
/* 807AE3B8  90 01 00 40 */	stw r0, 0x40(r1)
/* 807AE3BC  80 1E 02 58 */	lwz r0, 0x258(r30)
/* 807AE3C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 807AE3C4  38 81 00 3C */	addi r4, r1, 0x3c
/* 807AE3C8  4B FF E6 79 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AE3CC  C0 1C 04 BC */	lfs f0, 0x4bc(r28)
/* 807AE3D0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 807AE3D4  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 807AE3D8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807AE3DC  C0 1C 04 C4 */	lfs f0, 0x4c4(r28)
/* 807AE3E0  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 807AE3E4  48 00 00 9C */	b lbl_807AE480
lbl_807AE3E8:
/* 807AE3E8  A8 1C 06 EA */	lha r0, 0x6ea(r28)
/* 807AE3EC  2C 00 00 00 */	cmpwi r0, 0
/* 807AE3F0  41 82 00 18 */	beq lbl_807AE408
/* 807AE3F4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807AE3F8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807AE3FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AE400  4B AC 23 40 */	b cLib_chaseF__FPfff
/* 807AE404  48 00 00 98 */	b lbl_807AE49C
lbl_807AE408:
/* 807AE408  80 9E 02 5C */	lwz r4, 0x25c(r30)
/* 807AE40C  80 1E 02 60 */	lwz r0, 0x260(r30)
/* 807AE410  90 81 00 30 */	stw r4, 0x30(r1)
/* 807AE414  90 01 00 34 */	stw r0, 0x34(r1)
/* 807AE418  80 1E 02 64 */	lwz r0, 0x264(r30)
/* 807AE41C  90 01 00 38 */	stw r0, 0x38(r1)
/* 807AE420  38 81 00 30 */	addi r4, r1, 0x30
/* 807AE424  4B FF E6 1D */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AE428  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 807AE42C  D0 1C 06 D8 */	stfs f0, 0x6d8(r28)
/* 807AE430  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807AE434  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807AE438  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807AE43C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 807AE440  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807AE444  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807AE448  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807AE44C  EC 01 00 2A */	fadds f0, f1, f0
/* 807AE450  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807AE454  38 61 00 60 */	addi r3, r1, 0x60
/* 807AE458  4B 86 F8 64 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807AE45C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807AE460  40 82 00 10 */	bne lbl_807AE470
/* 807AE464  7F 83 E3 78 */	mr r3, r28
/* 807AE468  4B 86 B8 14 */	b fopAcM_delete__FP10fopAc_ac_c
/* 807AE46C  48 00 00 30 */	b lbl_807AE49C
lbl_807AE470:
/* 807AE470  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 807AE474  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 807AE478  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807AE47C  48 00 00 20 */	b lbl_807AE49C
lbl_807AE480:
/* 807AE480  38 7C 04 DE */	addi r3, r28, 0x4de
/* 807AE484  A8 9C 06 9E */	lha r4, 0x69e(r28)
/* 807AE488  38 A0 00 04 */	li r5, 4
/* 807AE48C  38 C0 08 00 */	li r6, 0x800
/* 807AE490  4B AC 21 78 */	b cLib_addCalcAngleS2__FPssss
/* 807AE494  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 807AE498  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
lbl_807AE49C:
/* 807AE49C  39 61 00 80 */	addi r11, r1, 0x80
/* 807AE4A0  4B BB 3D 84 */	b _restgpr_28
/* 807AE4A4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807AE4A8  7C 08 03 A6 */	mtlr r0
/* 807AE4AC  38 21 00 80 */	addi r1, r1, 0x80
/* 807AE4B0  4E 80 00 20 */	blr 
