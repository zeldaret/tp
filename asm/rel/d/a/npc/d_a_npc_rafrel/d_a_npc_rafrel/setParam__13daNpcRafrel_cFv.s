lbl_80ABDE9C:
/* 80ABDE9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ABDEA0  7C 08 02 A6 */	mflr r0
/* 80ABDEA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ABDEA8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80ABDEAC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80ABDEB0  7C 7E 1B 78 */	mr r30, r3
/* 80ABDEB4  3C 60 80 AC */	lis r3, m__19daNpcRafrel_Param_c@ha
/* 80ABDEB8  3B E3 F9 E0 */	addi r31, r3, m__19daNpcRafrel_Param_c@l
/* 80ABDEBC  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80ABDEC0  4B 69 28 2C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABDEC4  28 03 00 00 */	cmplwi r3, 0
/* 80ABDEC8  40 82 00 28 */	bne lbl_80ABDEF0
/* 80ABDECC  38 00 02 98 */	li r0, 0x298
/* 80ABDED0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80ABDED4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80ABDED8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80ABDEDC  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABDEE0  4B 55 B9 18 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80ABDEE4  7C 64 1B 78 */	mr r4, r3
/* 80ABDEE8  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80ABDEEC  4B 69 27 D0 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80ABDEF0:
/* 80ABDEF0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80ABDEF4  4B 69 27 F8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABDEF8  28 03 00 00 */	cmplwi r3, 0
/* 80ABDEFC  40 82 00 28 */	bne lbl_80ABDF24
/* 80ABDF00  38 00 02 9A */	li r0, 0x29a
/* 80ABDF04  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80ABDF08  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80ABDF0C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80ABDF10  38 81 00 0A */	addi r4, r1, 0xa
/* 80ABDF14  4B 55 B8 E4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80ABDF18  7C 64 1B 78 */	mr r4, r3
/* 80ABDF1C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80ABDF20  4B 69 27 9C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80ABDF24:
/* 80ABDF24  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80ABDF28  4B 69 27 C4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABDF2C  28 03 00 00 */	cmplwi r3, 0
/* 80ABDF30  40 82 00 28 */	bne lbl_80ABDF58
/* 80ABDF34  38 00 02 9C */	li r0, 0x29c
/* 80ABDF38  B0 01 00 08 */	sth r0, 8(r1)
/* 80ABDF3C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80ABDF40  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80ABDF44  38 81 00 08 */	addi r4, r1, 8
/* 80ABDF48  4B 55 B8 B0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80ABDF4C  7C 64 1B 78 */	mr r4, r3
/* 80ABDF50  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80ABDF54  4B 69 27 68 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80ABDF58:
/* 80ABDF58  38 00 00 0A */	li r0, 0xa
/* 80ABDF5C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80ABDF60  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80ABDF64  28 00 00 00 */	cmplwi r0, 0
/* 80ABDF68  40 82 00 30 */	bne lbl_80ABDF98
/* 80ABDF6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABDF70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABDF74  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80ABDF78  2C 00 00 05 */	cmpwi r0, 5
/* 80ABDF7C  40 82 00 1C */	bne lbl_80ABDF98
/* 80ABDF80  38 60 00 00 */	li r3, 0
/* 80ABDF84  4B 56 E9 F8 */	b getLayerNo__14dComIfG_play_cFi
/* 80ABDF88  2C 03 00 02 */	cmpwi r3, 2
/* 80ABDF8C  40 82 00 0C */	bne lbl_80ABDF98
/* 80ABDF90  38 00 00 01 */	li r0, 1
/* 80ABDF94  48 00 00 08 */	b lbl_80ABDF9C
lbl_80ABDF98:
/* 80ABDF98  38 00 00 00 */	li r0, 0
lbl_80ABDF9C:
/* 80ABDF9C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ABDFA0  41 82 00 2C */	beq lbl_80ABDFCC
/* 80ABDFA4  38 00 00 4E */	li r0, 0x4e
/* 80ABDFA8  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80ABDFAC  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80ABDFB0  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80ABDFB4  38 00 00 4D */	li r0, 0x4d
/* 80ABDFB8  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80ABDFBC  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80ABDFC0  64 00 00 80 */	oris r0, r0, 0x80
/* 80ABDFC4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80ABDFC8  48 00 01 F0 */	b lbl_80ABE1B8
lbl_80ABDFCC:
/* 80ABDFCC  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80ABDFD0  28 00 00 00 */	cmplwi r0, 0
/* 80ABDFD4  40 82 00 38 */	bne lbl_80ABE00C
/* 80ABDFD8  7F C3 F3 78 */	mr r3, r30
/* 80ABDFDC  38 80 00 03 */	li r4, 3
/* 80ABDFE0  38 A0 00 05 */	li r5, 5
/* 80ABDFE4  4B 69 62 94 */	b getDistTableIdx__8daNpcF_cFii
/* 80ABDFE8  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80ABDFEC  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80ABDFF0  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80ABDFF4  7F C3 F3 78 */	mr r3, r30
/* 80ABDFF8  38 80 00 02 */	li r4, 2
/* 80ABDFFC  38 A0 00 05 */	li r5, 5
/* 80ABE000  4B 69 62 78 */	b getDistTableIdx__8daNpcF_cFii
/* 80ABE004  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80ABE008  48 00 01 B0 */	b lbl_80ABE1B8
lbl_80ABE00C:
/* 80ABE00C  7F C3 F3 78 */	mr r3, r30
/* 80ABE010  38 BF 00 00 */	addi r5, r31, 0
/* 80ABE014  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80ABE018  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80ABE01C  4B 69 62 5C */	b getDistTableIdx__8daNpcF_cFii
/* 80ABE020  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80ABE024  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80ABE028  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80ABE02C  7F C3 F3 78 */	mr r3, r30
/* 80ABE030  38 BF 00 00 */	addi r5, r31, 0
/* 80ABE034  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80ABE038  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80ABE03C  4B 69 62 3C */	b getDistTableIdx__8daNpcF_cFii
/* 80ABE040  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80ABE044  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80ABE048  28 00 00 01 */	cmplwi r0, 1
/* 80ABE04C  40 82 01 6C */	bne lbl_80ABE1B8
/* 80ABE050  88 1E 0E 15 */	lbz r0, 0xe15(r30)
/* 80ABE054  28 00 00 00 */	cmplwi r0, 0
/* 80ABE058  41 82 01 60 */	beq lbl_80ABE1B8
/* 80ABE05C  88 1E 0E 16 */	lbz r0, 0xe16(r30)
/* 80ABE060  28 00 00 00 */	cmplwi r0, 0
/* 80ABE064  40 82 01 54 */	bne lbl_80ABE1B8
/* 80ABE068  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80ABE06C  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80ABE070  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ABE074  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABE078  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80ABE07C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABE080  C0 3F 03 BC */	lfs f1, 0x3bc(r31)
/* 80ABE084  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80ABE088  EC 01 00 2A */	fadds f0, f1, f0
/* 80ABE08C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80ABE090  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80ABE094  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80ABE098  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80ABE09C  C0 1F 03 C0 */	lfs f0, 0x3c0(r31)
/* 80ABE0A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80ABE0A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80ABE0A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABE0AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABE0B0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80ABE0B4  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80ABE0B8  38 81 00 14 */	addi r4, r1, 0x14
/* 80ABE0BC  4B 88 92 E0 */	b PSVECSquareDistance
/* 80ABE0C0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80ABE0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABE0C8  40 81 00 58 */	ble lbl_80ABE120
/* 80ABE0CC  FC 00 08 34 */	frsqrte f0, f1
/* 80ABE0D0  C8 9F 03 90 */	lfd f4, 0x390(r31)
/* 80ABE0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABE0D8  C8 7F 03 98 */	lfd f3, 0x398(r31)
/* 80ABE0DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABE0E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABE0E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABE0E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABE0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABE0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABE0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABE0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABE0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABE100  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABE104  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABE108  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABE10C  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABE110  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABE114  FC 21 00 32 */	fmul f1, f1, f0
/* 80ABE118  FC 20 08 18 */	frsp f1, f1
/* 80ABE11C  48 00 00 88 */	b lbl_80ABE1A4
lbl_80ABE120:
/* 80ABE120  C8 1F 03 A0 */	lfd f0, 0x3a0(r31)
/* 80ABE124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABE128  40 80 00 10 */	bge lbl_80ABE138
/* 80ABE12C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80ABE130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80ABE134  48 00 00 70 */	b lbl_80ABE1A4
lbl_80ABE138:
/* 80ABE138  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80ABE13C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80ABE140  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80ABE144  3C 00 7F 80 */	lis r0, 0x7f80
/* 80ABE148  7C 03 00 00 */	cmpw r3, r0
/* 80ABE14C  41 82 00 14 */	beq lbl_80ABE160
/* 80ABE150  40 80 00 40 */	bge lbl_80ABE190
/* 80ABE154  2C 03 00 00 */	cmpwi r3, 0
/* 80ABE158  41 82 00 20 */	beq lbl_80ABE178
/* 80ABE15C  48 00 00 34 */	b lbl_80ABE190
lbl_80ABE160:
/* 80ABE160  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ABE164  41 82 00 0C */	beq lbl_80ABE170
/* 80ABE168  38 00 00 01 */	li r0, 1
/* 80ABE16C  48 00 00 28 */	b lbl_80ABE194
lbl_80ABE170:
/* 80ABE170  38 00 00 02 */	li r0, 2
/* 80ABE174  48 00 00 20 */	b lbl_80ABE194
lbl_80ABE178:
/* 80ABE178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ABE17C  41 82 00 0C */	beq lbl_80ABE188
/* 80ABE180  38 00 00 05 */	li r0, 5
/* 80ABE184  48 00 00 10 */	b lbl_80ABE194
lbl_80ABE188:
/* 80ABE188  38 00 00 03 */	li r0, 3
/* 80ABE18C  48 00 00 08 */	b lbl_80ABE194
lbl_80ABE190:
/* 80ABE190  38 00 00 04 */	li r0, 4
lbl_80ABE194:
/* 80ABE194  2C 00 00 01 */	cmpwi r0, 1
/* 80ABE198  40 82 00 0C */	bne lbl_80ABE1A4
/* 80ABE19C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80ABE1A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80ABE1A4:
/* 80ABE1A4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80ABE1A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABE1AC  40 81 00 0C */	ble lbl_80ABE1B8
/* 80ABE1B0  38 00 00 00 */	li r0, 0
/* 80ABE1B4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80ABE1B8:
/* 80ABE1B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80ABE1BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80ABE1C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABE1C4  7C 08 03 A6 */	mtlr r0
/* 80ABE1C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80ABE1CC  4E 80 00 20 */	blr 
