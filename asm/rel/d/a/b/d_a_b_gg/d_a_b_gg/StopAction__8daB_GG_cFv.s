lbl_805E8EE8:
/* 805E8EE8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E8EEC  7C 08 02 A6 */	mflr r0
/* 805E8EF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E8EF4  39 61 00 50 */	addi r11, r1, 0x50
/* 805E8EF8  4B D7 92 E0 */	b _savegpr_28
/* 805E8EFC  7C 7C 1B 78 */	mr r28, r3
/* 805E8F00  3C 80 80 5F */	lis r4, lit_1109@ha
/* 805E8F04  3B C4 D6 C0 */	addi r30, r4, lit_1109@l
/* 805E8F08  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E8F0C  3B E4 D0 60 */	addi r31, r4, lit_3911@l
/* 805E8F10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E8F14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805E8F18  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805E8F1C  4B FF 62 5D */	bl other_bg_check__FP8daB_GG_cP10fopAc_ac_c
/* 805E8F20  2C 03 00 00 */	cmpwi r3, 0
/* 805E8F24  40 82 00 10 */	bne lbl_805E8F34
/* 805E8F28  38 00 00 04 */	li r0, 4
/* 805E8F2C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 805E8F30  48 00 00 0C */	b lbl_805E8F3C
lbl_805E8F34:
/* 805E8F34  38 00 00 00 */	li r0, 0
/* 805E8F38  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_805E8F3C:
/* 805E8F3C  88 1C 05 C7 */	lbz r0, 0x5c7(r28)
/* 805E8F40  2C 00 00 05 */	cmpwi r0, 5
/* 805E8F44  41 82 00 A4 */	beq lbl_805E8FE8
/* 805E8F48  40 80 00 BC */	bge lbl_805E9004
/* 805E8F4C  2C 00 00 00 */	cmpwi r0, 0
/* 805E8F50  41 82 00 08 */	beq lbl_805E8F58
/* 805E8F54  48 00 00 B0 */	b lbl_805E9004
lbl_805E8F58:
/* 805E8F58  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E8F5C  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E8F60  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 805E8F64  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805E8F68  EC 01 00 2A */	fadds f0, f1, f0
/* 805E8F6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E8F70  40 80 00 18 */	bge lbl_805E8F88
/* 805E8F74  38 00 00 01 */	li r0, 1
/* 805E8F78  98 1C 05 C5 */	stb r0, 0x5c5(r28)
/* 805E8F7C  98 1C 05 C6 */	stb r0, 0x5c6(r28)
/* 805E8F80  38 00 00 04 */	li r0, 4
/* 805E8F84  98 1C 05 C7 */	stb r0, 0x5c7(r28)
lbl_805E8F88:
/* 805E8F88  80 7C 0E 30 */	lwz r3, 0xe30(r28)
/* 805E8F8C  38 80 00 01 */	li r4, 1
/* 805E8F90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E8F94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E8F98  40 82 00 18 */	bne lbl_805E8FB0
/* 805E8F9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E8FA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E8FA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E8FA8  41 82 00 08 */	beq lbl_805E8FB0
/* 805E8FAC  38 80 00 00 */	li r4, 0
lbl_805E8FB0:
/* 805E8FB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E8FB4  41 82 00 28 */	beq lbl_805E8FDC
/* 805E8FB8  80 1C 05 D4 */	lwz r0, 0x5d4(r28)
/* 805E8FBC  2C 00 00 1D */	cmpwi r0, 0x1d
/* 805E8FC0  41 82 00 1C */	beq lbl_805E8FDC
/* 805E8FC4  7F 83 E3 78 */	mr r3, r28
/* 805E8FC8  38 80 00 1D */	li r4, 0x1d
/* 805E8FCC  38 A0 00 02 */	li r5, 2
/* 805E8FD0  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E8FD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E8FD8  4B FF 5F 8D */	bl SetAnm__8daB_GG_cFiiff
lbl_805E8FDC:
/* 805E8FDC  7F 83 E3 78 */	mr r3, r28
/* 805E8FE0  4B FF CE 99 */	bl FookChk__8daB_GG_cFv
/* 805E8FE4  48 00 00 20 */	b lbl_805E9004
lbl_805E8FE8:
/* 805E8FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E8FF0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805E8FF4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 805E8FF8  40 82 00 0C */	bne lbl_805E9004
/* 805E8FFC  38 00 00 00 */	li r0, 0
/* 805E9000  98 1C 05 C7 */	stb r0, 0x5c7(r28)
lbl_805E9004:
/* 805E9004  A8 1C 05 CC */	lha r0, 0x5cc(r28)
/* 805E9008  2C 00 00 00 */	cmpwi r0, 0
/* 805E900C  40 81 00 44 */	ble lbl_805E9050
/* 805E9010  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 805E9014  81 9C 07 14 */	lwz r12, 0x714(r28)
/* 805E9018  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805E901C  7D 89 03 A6 */	mtctr r12
/* 805E9020  4E 80 04 21 */	bctrl 
/* 805E9024  38 7C 0C F8 */	addi r3, r28, 0xcf8
/* 805E9028  81 9C 0D 34 */	lwz r12, 0xd34(r28)
/* 805E902C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805E9030  7D 89 03 A6 */	mtctr r12
/* 805E9034  4E 80 04 21 */	bctrl 
/* 805E9038  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 805E903C  81 9C 0B F8 */	lwz r12, 0xbf8(r28)
/* 805E9040  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805E9044  7D 89 03 A6 */	mtctr r12
/* 805E9048  4E 80 04 21 */	bctrl 
/* 805E904C  48 00 02 3C */	b lbl_805E9288
lbl_805E9050:
/* 805E9050  80 1C 07 74 */	lwz r0, 0x774(r28)
/* 805E9054  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E9058  41 82 00 14 */	beq lbl_805E906C
/* 805E905C  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 805E9060  4B A9 B4 00 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805E9064  28 03 00 00 */	cmplwi r3, 0
/* 805E9068  40 82 00 14 */	bne lbl_805E907C
lbl_805E906C:
/* 805E906C  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 805E9070  4B A9 B3 F0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805E9074  28 03 00 00 */	cmplwi r3, 0
/* 805E9078  41 82 01 78 */	beq lbl_805E91F0
lbl_805E907C:
/* 805E907C  38 00 00 2A */	li r0, 0x2a
/* 805E9080  90 1C 11 5C */	stw r0, 0x115c(r28)
/* 805E9084  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 805E9088  4B A9 B3 D8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805E908C  28 03 00 00 */	cmplwi r3, 0
/* 805E9090  41 82 00 20 */	beq lbl_805E90B0
/* 805E9094  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 805E9098  4B A9 B4 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805E909C  90 7C 11 44 */	stw r3, 0x1144(r28)
/* 805E90A0  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 805E90A4  4B A9 B4 54 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805E90A8  7C 7D 1B 78 */	mr r29, r3
/* 805E90AC  48 00 00 2C */	b lbl_805E90D8
lbl_805E90B0:
/* 805E90B0  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 805E90B4  4B A9 B3 AC */	b ChkTgHit__12dCcD_GObjInfFv
/* 805E90B8  28 03 00 00 */	cmplwi r3, 0
/* 805E90BC  41 82 00 1C */	beq lbl_805E90D8
/* 805E90C0  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 805E90C4  4B A9 B4 34 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805E90C8  90 7C 11 44 */	stw r3, 0x1144(r28)
/* 805E90CC  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 805E90D0  4B A9 B4 28 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805E90D4  7C 7D 1B 78 */	mr r29, r3
lbl_805E90D8:
/* 805E90D8  7F 83 E3 78 */	mr r3, r28
/* 805E90DC  48 00 16 71 */	bl At_Check__8daB_GG_cFv
/* 805E90E0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 805E90E4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 805E90E8  41 82 00 34 */	beq lbl_805E911C
/* 805E90EC  38 00 00 01 */	li r0, 1
/* 805E90F0  98 1C 05 C5 */	stb r0, 0x5c5(r28)
/* 805E90F4  38 00 00 0A */	li r0, 0xa
/* 805E90F8  98 1C 05 C7 */	stb r0, 0x5c7(r28)
/* 805E90FC  38 00 00 03 */	li r0, 3
/* 805E9100  98 1C 05 C6 */	stb r0, 0x5c6(r28)
/* 805E9104  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E9108  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805E910C  B0 1C 05 DC */	sth r0, 0x5dc(r28)
/* 805E9110  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 805E9114  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 805E9118  48 00 00 94 */	b lbl_805E91AC
lbl_805E911C:
/* 805E911C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E9120  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E9124  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E9128  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E912C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E9130  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E9134  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E9138  80 7C 0E 30 */	lwz r3, 0xe30(r28)
/* 805E913C  80 63 00 04 */	lwz r3, 4(r3)
/* 805E9140  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805E9144  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805E9148  38 63 02 10 */	addi r3, r3, 0x210
/* 805E914C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805E9150  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805E9154  4B D5 D3 5C */	b PSMTXCopy
/* 805E9158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E915C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E9160  38 81 00 20 */	addi r4, r1, 0x20
/* 805E9164  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805E9168  4B D5 DC 04 */	b PSMTXMultVec
/* 805E916C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E9170  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E9174  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805E9178  38 80 00 02 */	li r4, 2
/* 805E917C  7F 85 E3 78 */	mr r5, r28
/* 805E9180  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805E9184  38 E0 00 00 */	li r7, 0
/* 805E9188  39 00 00 00 */	li r8, 0
/* 805E918C  39 20 00 00 */	li r9, 0
/* 805E9190  4B A6 30 88 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805E9194  7F 83 E3 78 */	mr r3, r28
/* 805E9198  38 80 00 18 */	li r4, 0x18
/* 805E919C  38 A0 00 00 */	li r5, 0
/* 805E91A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E91A4  FC 40 08 90 */	fmr f2, f1
/* 805E91A8  4B FF 5D BD */	bl SetAnm__8daB_GG_cFiiff
lbl_805E91AC:
/* 805E91AC  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 805E91B0  81 9C 0B F8 */	lwz r12, 0xbf8(r28)
/* 805E91B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805E91B8  7D 89 03 A6 */	mtctr r12
/* 805E91BC  4E 80 04 21 */	bctrl 
/* 805E91C0  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 805E91C4  81 9C 07 14 */	lwz r12, 0x714(r28)
/* 805E91C8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805E91CC  7D 89 03 A6 */	mtctr r12
/* 805E91D0  4E 80 04 21 */	bctrl 
/* 805E91D4  38 7C 0C F8 */	addi r3, r28, 0xcf8
/* 805E91D8  81 9C 0D 34 */	lwz r12, 0xd34(r28)
/* 805E91DC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805E91E0  7D 89 03 A6 */	mtctr r12
/* 805E91E4  4E 80 04 21 */	bctrl 
/* 805E91E8  38 00 00 0F */	li r0, 0xf
/* 805E91EC  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_805E91F0:
/* 805E91F0  38 61 00 08 */	addi r3, r1, 8
/* 805E91F4  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 805E91F8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805E91FC  4B C7 D9 38 */	b __mi__4cXyzCFRC3Vec
/* 805E9200  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E9204  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E9208  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E920C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E9210  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805E9214  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E9218  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E921C  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E9220  EC 41 00 2A */	fadds f2, f1, f0
/* 805E9224  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E9228  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E922C  40 81 00 0C */	ble lbl_805E9238
/* 805E9230  FC 00 10 34 */	frsqrte f0, f2
/* 805E9234  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E9238:
/* 805E9238  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805E923C  4B C7 E4 38 */	b cM_atan2s__Fff
/* 805E9240  7C 03 00 D0 */	neg r0, r3
/* 805E9244  7C 04 07 34 */	extsh r4, r0
/* 805E9248  38 7C 06 C4 */	addi r3, r28, 0x6c4
/* 805E924C  38 A0 00 02 */	li r5, 2
/* 805E9250  38 C0 06 00 */	li r6, 0x600
/* 805E9254  4B C8 73 B4 */	b cLib_addCalcAngleS2__FPssss
/* 805E9258  38 7C 06 BE */	addi r3, r28, 0x6be
/* 805E925C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 805E9260  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 805E9264  7C 04 00 50 */	subf r0, r4, r0
/* 805E9268  7C 04 07 34 */	extsh r4, r0
/* 805E926C  38 A0 00 02 */	li r5, 2
/* 805E9270  38 C0 01 00 */	li r6, 0x100
/* 805E9274  4B C8 73 94 */	b cLib_addCalcAngleS2__FPssss
/* 805E9278  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 805E927C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 805E9280  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 805E9284  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
lbl_805E9288:
/* 805E9288  39 61 00 50 */	addi r11, r1, 0x50
/* 805E928C  4B D7 8F 98 */	b _restgpr_28
/* 805E9290  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E9294  7C 08 03 A6 */	mtlr r0
/* 805E9298  38 21 00 50 */	addi r1, r1, 0x50
/* 805E929C  4E 80 00 20 */	blr 
