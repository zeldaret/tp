lbl_80CF8ED0:
/* 80CF8ED0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80CF8ED4  7C 08 02 A6 */	mflr r0
/* 80CF8ED8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80CF8EDC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80CF8EE0  4B 66 92 FC */	b _savegpr_29
/* 80CF8EE4  7C 7E 1B 78 */	mr r30, r3
/* 80CF8EE8  3C 60 80 D0 */	lis r3, lit_3734@ha
/* 80CF8EEC  3B E3 B6 EC */	addi r31, r3, lit_3734@l
/* 80CF8EF0  38 00 00 00 */	li r0, 0
/* 80CF8EF4  98 1E 0A 9C */	stb r0, 0xa9c(r30)
/* 80CF8EF8  A0 1E 0A 5C */	lhz r0, 0xa5c(r30)
/* 80CF8EFC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CF8F00  28 04 00 FF */	cmplwi r4, 0xff
/* 80CF8F04  41 82 00 2C */	beq lbl_80CF8F30
/* 80CF8F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF8F0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF8F10  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CF8F14  7C 05 07 74 */	extsb r5, r0
/* 80CF8F18  4B 33 C4 48 */	b isSwitch__10dSv_info_cCFii
/* 80CF8F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF8F20  40 82 00 10 */	bne lbl_80CF8F30
/* 80CF8F24  38 00 00 01 */	li r0, 1
/* 80CF8F28  98 1E 0A 6C */	stb r0, 0xa6c(r30)
/* 80CF8F2C  48 00 00 0C */	b lbl_80CF8F38
lbl_80CF8F30:
/* 80CF8F30  38 00 00 00 */	li r0, 0
/* 80CF8F34  98 1E 0A 6C */	stb r0, 0xa6c(r30)
lbl_80CF8F38:
/* 80CF8F38  7F C3 F3 78 */	mr r3, r30
/* 80CF8F3C  48 00 15 6D */	bl chain_count_control__14daObjSwChain_cFv
/* 80CF8F40  7F C3 F3 78 */	mr r3, r30
/* 80CF8F44  48 00 05 BD */	bl chain_control__14daObjSwChain_cFv
/* 80CF8F48  80 7E 0A 74 */	lwz r3, 0xa74(r30)
/* 80CF8F4C  88 1E 0A 65 */	lbz r0, 0xa65(r30)
/* 80CF8F50  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80CF8F54  7F A3 02 14 */	add r29, r3, r0
/* 80CF8F58  88 1E 0A 6C */	lbz r0, 0xa6c(r30)
/* 80CF8F5C  28 00 00 00 */	cmplwi r0, 0
/* 80CF8F60  40 82 00 40 */	bne lbl_80CF8FA0
/* 80CF8F64  7F C3 F3 78 */	mr r3, r30
/* 80CF8F68  38 9D 00 34 */	addi r4, r29, 0x34
/* 80CF8F6C  88 BE 0A 63 */	lbz r5, 0xa63(r30)
/* 80CF8F70  4B 46 65 08 */	b setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi
/* 80CF8F74  2C 03 00 00 */	cmpwi r3, 0
/* 80CF8F78  41 82 00 28 */	beq lbl_80CF8FA0
/* 80CF8F7C  38 00 00 01 */	li r0, 1
/* 80CF8F80  98 1E 0A 62 */	stb r0, 0xa62(r30)
/* 80CF8F84  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80CF8F88  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CF8F8C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80CF8F90  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CF8F94  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80CF8F98  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80CF8F9C  48 00 00 24 */	b lbl_80CF8FC0
lbl_80CF8FA0:
/* 80CF8FA0  38 00 00 00 */	li r0, 0
/* 80CF8FA4  98 1E 0A 62 */	stb r0, 0xa62(r30)
/* 80CF8FA8  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80CF8FAC  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CF8FB0  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80CF8FB4  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CF8FB8  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80CF8FBC  D0 1E 05 40 */	stfs f0, 0x540(r30)
lbl_80CF8FC0:
/* 80CF8FC0  88 7E 0A 9D */	lbz r3, 0xa9d(r30)
/* 80CF8FC4  28 03 00 00 */	cmplwi r3, 0
/* 80CF8FC8  40 82 00 10 */	bne lbl_80CF8FD8
/* 80CF8FCC  88 1E 0A 62 */	lbz r0, 0xa62(r30)
/* 80CF8FD0  28 00 00 00 */	cmplwi r0, 0
/* 80CF8FD4  40 82 00 18 */	bne lbl_80CF8FEC
lbl_80CF8FD8:
/* 80CF8FD8  28 03 00 00 */	cmplwi r3, 0
/* 80CF8FDC  41 82 00 1C */	beq lbl_80CF8FF8
/* 80CF8FE0  88 1E 0A 62 */	lbz r0, 0xa62(r30)
/* 80CF8FE4  28 00 00 00 */	cmplwi r0, 0
/* 80CF8FE8  40 82 00 10 */	bne lbl_80CF8FF8
lbl_80CF8FEC:
/* 80CF8FEC  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020013@ha */
/* 80CF8FF0  38 63 00 13 */	addi r3, r3, 0x0013 /* 0x00020013@l */
/* 80CF8FF4  4B 46 65 2C */	b setPlayerSe__9daPy_py_cFUl
lbl_80CF8FF8:
/* 80CF8FF8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CF8FFC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CF9000  41 82 00 38 */	beq lbl_80CF9038
/* 80CF9004  38 00 00 01 */	li r0, 1
/* 80CF9008  98 1E 0A 61 */	stb r0, 0xa61(r30)
/* 80CF900C  88 7E 0A 64 */	lbz r3, 0xa64(r30)
/* 80CF9010  88 1E 0A 66 */	lbz r0, 0xa66(r30)
/* 80CF9014  7C 03 00 40 */	cmplw r3, r0
/* 80CF9018  41 80 00 40 */	blt lbl_80CF9058
/* 80CF901C  88 1E 0A 9E */	lbz r0, 0xa9e(r30)
/* 80CF9020  28 00 00 00 */	cmplwi r0, 0
/* 80CF9024  40 82 00 34 */	bne lbl_80CF9058
/* 80CF9028  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CF902C  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80CF9030  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80CF9034  48 00 00 24 */	b lbl_80CF9058
lbl_80CF9038:
/* 80CF9038  38 00 00 00 */	li r0, 0
/* 80CF903C  98 1E 0A 61 */	stb r0, 0xa61(r30)
/* 80CF9040  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80CF9044  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CF9048  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80CF904C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CF9050  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80CF9054  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80CF9058:
/* 80CF9058  7F C3 F3 78 */	mr r3, r30
/* 80CF905C  48 00 09 65 */	bl chain_control2__14daObjSwChain_cFv
/* 80CF9060  7F C3 F3 78 */	mr r3, r30
/* 80CF9064  48 00 1C ED */	bl setTension__14daObjSwChain_cFv
/* 80CF9068  7F C3 F3 78 */	mr r3, r30
/* 80CF906C  48 00 10 B9 */	bl setChainMtx__14daObjSwChain_cFv
/* 80CF9070  38 00 00 00 */	li r0, 0
/* 80CF9074  98 1E 0A 6B */	stb r0, 0xa6b(r30)
/* 80CF9078  7F C3 F3 78 */	mr r3, r30
/* 80CF907C  48 00 23 D5 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF9080  1C 63 00 50 */	mulli r3, r3, 0x50
/* 80CF9084  80 9E 0A 74 */	lwz r4, 0xa74(r30)
/* 80CF9088  38 63 00 34 */	addi r3, r3, 0x34
/* 80CF908C  7C 64 1A 14 */	add r3, r4, r3
/* 80CF9090  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CF9094  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80CF9098  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CF909C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80CF90A0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CF90A4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80CF90A8  88 1E 0A 65 */	lbz r0, 0xa65(r30)
/* 80CF90AC  1C 60 00 50 */	mulli r3, r0, 0x50
/* 80CF90B0  38 63 00 34 */	addi r3, r3, 0x34
/* 80CF90B4  7C 64 1A 14 */	add r3, r4, r3
/* 80CF90B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CF90BC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80CF90C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CF90C4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80CF90C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CF90CC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80CF90D0  38 61 00 9C */	addi r3, r1, 0x9c
/* 80CF90D4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80CF90D8  4B 64 E2 C4 */	b PSVECSquareDistance
/* 80CF90DC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF90E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF90E4  40 81 00 58 */	ble lbl_80CF913C
/* 80CF90E8  FC 00 08 34 */	frsqrte f0, f1
/* 80CF90EC  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80CF90F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF90F4  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80CF90F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF90FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF9100  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF9104  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF9108  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF910C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF9110  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF9114  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF9118  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF911C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF9120  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF9124  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF9128  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF912C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF9130  FC 21 00 32 */	fmul f1, f1, f0
/* 80CF9134  FC 20 08 18 */	frsp f1, f1
/* 80CF9138  48 00 00 88 */	b lbl_80CF91C0
lbl_80CF913C:
/* 80CF913C  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80CF9140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF9144  40 80 00 10 */	bge lbl_80CF9154
/* 80CF9148  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF914C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CF9150  48 00 00 70 */	b lbl_80CF91C0
lbl_80CF9154:
/* 80CF9154  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CF9158  80 81 00 08 */	lwz r4, 8(r1)
/* 80CF915C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CF9160  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CF9164  7C 03 00 00 */	cmpw r3, r0
/* 80CF9168  41 82 00 14 */	beq lbl_80CF917C
/* 80CF916C  40 80 00 40 */	bge lbl_80CF91AC
/* 80CF9170  2C 03 00 00 */	cmpwi r3, 0
/* 80CF9174  41 82 00 20 */	beq lbl_80CF9194
/* 80CF9178  48 00 00 34 */	b lbl_80CF91AC
lbl_80CF917C:
/* 80CF917C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF9180  41 82 00 0C */	beq lbl_80CF918C
/* 80CF9184  38 00 00 01 */	li r0, 1
/* 80CF9188  48 00 00 28 */	b lbl_80CF91B0
lbl_80CF918C:
/* 80CF918C  38 00 00 02 */	li r0, 2
/* 80CF9190  48 00 00 20 */	b lbl_80CF91B0
lbl_80CF9194:
/* 80CF9194  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF9198  41 82 00 0C */	beq lbl_80CF91A4
/* 80CF919C  38 00 00 05 */	li r0, 5
/* 80CF91A0  48 00 00 10 */	b lbl_80CF91B0
lbl_80CF91A4:
/* 80CF91A4  38 00 00 03 */	li r0, 3
/* 80CF91A8  48 00 00 08 */	b lbl_80CF91B0
lbl_80CF91AC:
/* 80CF91AC  38 00 00 04 */	li r0, 4
lbl_80CF91B0:
/* 80CF91B0  2C 00 00 01 */	cmpwi r0, 1
/* 80CF91B4  40 82 00 0C */	bne lbl_80CF91C0
/* 80CF91B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF91BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CF91C0:
/* 80CF91C0  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80CF91C4  88 7E 0A 64 */	lbz r3, 0xa64(r30)
/* 80CF91C8  38 03 FF FE */	addi r0, r3, -2
/* 80CF91CC  C8 5F 00 10 */	lfd f2, 0x10(r31)
/* 80CF91D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF91D4  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80CF91D8  3C 00 43 30 */	lis r0, 0x4330
/* 80CF91DC  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80CF91E0  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80CF91E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CF91E8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CF91EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF91F0  41 80 00 10 */	blt lbl_80CF9200
/* 80CF91F4  88 1E 0A 62 */	lbz r0, 0xa62(r30)
/* 80CF91F8  28 00 00 00 */	cmplwi r0, 0
/* 80CF91FC  40 82 01 34 */	bne lbl_80CF9330
lbl_80CF9200:
/* 80CF9200  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CF9204  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CF9208  7C 03 00 40 */	cmplw r3, r0
/* 80CF920C  40 81 01 24 */	ble lbl_80CF9330
/* 80CF9210  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CF9214  C0 1E 0A 98 */	lfs f0, 0xa98(r30)
/* 80CF9218  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CF921C  41 82 01 14 */	beq lbl_80CF9330
/* 80CF9220  80 7E 0A 74 */	lwz r3, 0xa74(r30)
/* 80CF9224  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80CF9228  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CF922C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80CF9230  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80CF9234  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80CF9238  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80CF923C  7F C3 F3 78 */	mr r3, r30
/* 80CF9240  48 00 22 11 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF9244  1C 63 00 50 */	mulli r3, r3, 0x50
/* 80CF9248  80 1E 0A 74 */	lwz r0, 0xa74(r30)
/* 80CF924C  7F A0 1A 14 */	add r29, r0, r3
/* 80CF9250  38 61 00 54 */	addi r3, r1, 0x54
/* 80CF9254  38 81 00 90 */	addi r4, r1, 0x90
/* 80CF9258  38 BD 00 34 */	addi r5, r29, 0x34
/* 80CF925C  4B 56 D8 D8 */	b __mi__4cXyzCFRC3Vec
/* 80CF9260  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CF9264  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80CF9268  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CF926C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CF9270  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CF9274  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CF9278  38 61 00 48 */	addi r3, r1, 0x48
/* 80CF927C  38 81 00 84 */	addi r4, r1, 0x84
/* 80CF9280  4B 56 DC C8 */	b normalizeZP__4cXyzFv
/* 80CF9284  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CF9288  7C 00 07 74 */	extsb r0, r0
/* 80CF928C  2C 00 00 05 */	cmpwi r0, 5
/* 80CF9290  41 82 00 80 */	beq lbl_80CF9310
/* 80CF9294  40 80 00 10 */	bge lbl_80CF92A4
/* 80CF9298  2C 00 00 04 */	cmpwi r0, 4
/* 80CF929C  40 80 00 10 */	bge lbl_80CF92AC
/* 80CF92A0  48 00 00 70 */	b lbl_80CF9310
lbl_80CF92A4:
/* 80CF92A4  2C 00 00 07 */	cmpwi r0, 7
/* 80CF92A8  40 80 00 68 */	bge lbl_80CF9310
lbl_80CF92AC:
/* 80CF92AC  88 7E 0A 64 */	lbz r3, 0xa64(r30)
/* 80CF92B0  88 1E 0A 69 */	lbz r0, 0xa69(r30)
/* 80CF92B4  7C 03 00 40 */	cmplw r3, r0
/* 80CF92B8  40 81 00 34 */	ble lbl_80CF92EC
/* 80CF92BC  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CF92C0  38 81 00 84 */	addi r4, r1, 0x84
/* 80CF92C4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80CF92C8  4B 56 D8 BC */	b __ml__4cXyzCFf
/* 80CF92CC  38 7D 00 34 */	addi r3, r29, 0x34
/* 80CF92D0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CF92D4  7C 65 1B 78 */	mr r5, r3
/* 80CF92D8  4B 64 DD B8 */	b PSVECAdd
/* 80CF92DC  38 00 00 01 */	li r0, 1
/* 80CF92E0  98 1E 0A 6B */	stb r0, 0xa6b(r30)
/* 80CF92E4  98 1E 0A 6B */	stb r0, 0xa6b(r30)
/* 80CF92E8  48 00 00 48 */	b lbl_80CF9330
lbl_80CF92EC:
/* 80CF92EC  38 61 00 30 */	addi r3, r1, 0x30
/* 80CF92F0  38 81 00 84 */	addi r4, r1, 0x84
/* 80CF92F4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CF92F8  4B 56 D8 8C */	b __ml__4cXyzCFf
/* 80CF92FC  38 7D 00 34 */	addi r3, r29, 0x34
/* 80CF9300  38 81 00 30 */	addi r4, r1, 0x30
/* 80CF9304  7C 65 1B 78 */	mr r5, r3
/* 80CF9308  4B 64 DD 88 */	b PSVECAdd
/* 80CF930C  48 00 00 24 */	b lbl_80CF9330
lbl_80CF9310:
/* 80CF9310  38 61 00 24 */	addi r3, r1, 0x24
/* 80CF9314  38 81 00 84 */	addi r4, r1, 0x84
/* 80CF9318  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CF931C  4B 56 D8 68 */	b __ml__4cXyzCFf
/* 80CF9320  38 7D 00 34 */	addi r3, r29, 0x34
/* 80CF9324  38 81 00 24 */	addi r4, r1, 0x24
/* 80CF9328  7C 65 1B 78 */	mr r5, r3
/* 80CF932C  4B 64 DD 64 */	b PSVECAdd
lbl_80CF9330:
/* 80CF9330  88 1E 0A 6C */	lbz r0, 0xa6c(r30)
/* 80CF9334  28 00 00 00 */	cmplwi r0, 0
/* 80CF9338  40 82 00 88 */	bne lbl_80CF93C0
/* 80CF933C  38 61 00 18 */	addi r3, r1, 0x18
/* 80CF9340  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CF9344  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CF9348  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CF934C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80CF9350  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 80CF9354  4B 56 D7 E0 */	b __mi__4cXyzCFRC3Vec
/* 80CF9358  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CF935C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80CF9360  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CF9364  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80CF9368  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CF936C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80CF9370  38 61 00 78 */	addi r3, r1, 0x78
/* 80CF9374  4B 56 DD B4 */	b atan2sX_Z__4cXyzCFv
/* 80CF9378  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CF937C  7C 00 18 50 */	subf r0, r0, r3
/* 80CF9380  7C 03 07 34 */	extsh r3, r0
/* 80CF9384  4B 66 BD 4C */	b abs
/* 80CF9388  2C 03 0E 74 */	cmpwi r3, 0xe74
/* 80CF938C  40 80 00 34 */	bge lbl_80CF93C0
/* 80CF9390  80 7E 0A 74 */	lwz r3, 0xa74(r30)
/* 80CF9394  88 1E 0A 65 */	lbz r0, 0xa65(r30)
/* 80CF9398  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80CF939C  7C 83 02 14 */	add r4, r3, r0
/* 80CF93A0  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80CF93A4  38 84 00 34 */	addi r4, r4, 0x34
/* 80CF93A8  4B 57 62 A0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80CF93AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF93B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF93B4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CF93B8  38 9E 05 D4 */	addi r4, r30, 0x5d4
/* 80CF93BC  4B 56 B7 EC */	b Set__4cCcSFP8cCcD_Obj
lbl_80CF93C0:
/* 80CF93C0  88 1E 0A 62 */	lbz r0, 0xa62(r30)
/* 80CF93C4  28 00 00 00 */	cmplwi r0, 0
/* 80CF93C8  41 82 00 F8 */	beq lbl_80CF94C0
/* 80CF93CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CF93D0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF93D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CF93D8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CF93DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CF93E0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CF93E4  38 7E 08 44 */	addi r3, r30, 0x844
/* 80CF93E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CF93EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CF93F0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CF93F4  4B 37 D6 B8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CF93F8  38 61 00 0C */	addi r3, r1, 0xc
/* 80CF93FC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CF9400  38 A1 00 60 */	addi r5, r1, 0x60
/* 80CF9404  4B 56 D7 30 */	b __mi__4cXyzCFRC3Vec
/* 80CF9408  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CF940C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CF9410  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CF9414  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CF9418  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF941C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CF9420  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80CF9424  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CF9428  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80CF942C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CF9430  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80CF9434  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80CF9438  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80CF943C  4B 38 B2 1C */	b ChkCoHit__12dCcD_GObjInfFv
/* 80CF9440  28 03 00 00 */	cmplwi r3, 0
/* 80CF9444  41 82 00 18 */	beq lbl_80CF945C
/* 80CF9448  34 9E 05 98 */	addic. r4, r30, 0x598
/* 80CF944C  41 82 00 10 */	beq lbl_80CF945C
/* 80CF9450  38 61 00 6C */	addi r3, r1, 0x6c
/* 80CF9454  7C 65 1B 78 */	mr r5, r3
/* 80CF9458  4B 64 DC 38 */	b PSVECAdd
lbl_80CF945C:
/* 80CF945C  38 7E 05 98 */	addi r3, r30, 0x598
/* 80CF9460  4B 56 A4 FC */	b ClrCcMove__9cCcD_SttsFv
/* 80CF9464  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80CF9468  81 9E 07 48 */	lwz r12, 0x748(r30)
/* 80CF946C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80CF9470  7D 89 03 A6 */	mtctr r12
/* 80CF9474  4E 80 04 21 */	bctrl 
/* 80CF9478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF947C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF9480  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CF9484  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80CF9488  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80CF948C  38 80 00 00 */	li r4, 0
/* 80CF9490  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CF9494  81 8C 01 24 */	lwz r12, 0x124(r12)
/* 80CF9498  7D 89 03 A6 */	mtctr r12
/* 80CF949C  4E 80 04 21 */	bctrl 
/* 80CF94A0  38 7E 08 30 */	addi r3, r30, 0x830
/* 80CF94A4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CF94A8  4B 57 61 A0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80CF94AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF94B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF94B4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CF94B8  38 9E 07 0C */	addi r4, r30, 0x70c
/* 80CF94BC  4B 56 B6 EC */	b Set__4cCcSFP8cCcD_Obj
lbl_80CF94C0:
/* 80CF94C0  88 1E 0A 62 */	lbz r0, 0xa62(r30)
/* 80CF94C4  98 1E 0A 9D */	stb r0, 0xa9d(r30)
/* 80CF94C8  38 60 00 01 */	li r3, 1
/* 80CF94CC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80CF94D0  4B 66 8D 58 */	b _restgpr_29
/* 80CF94D4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80CF94D8  7C 08 03 A6 */	mtlr r0
/* 80CF94DC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80CF94E0  4E 80 00 20 */	blr 
