lbl_80A12EA4:
/* 80A12EA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A12EA8  7C 08 02 A6 */	mflr r0
/* 80A12EAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A12EB0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80A12EB4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80A12EB8  7C 7E 1B 78 */	mr r30, r3
/* 80A12EBC  3C 60 80 A1 */	lis r3, l_insectParams@ha
/* 80A12EC0  3B E3 3D AC */	addi r31, r3, l_insectParams@l
/* 80A12EC4  A8 1E 0E 1A */	lha r0, 0xe1a(r30)
/* 80A12EC8  2C 00 00 01 */	cmpwi r0, 1
/* 80A12ECC  40 82 00 34 */	bne lbl_80A12F00
/* 80A12ED0  38 60 00 00 */	li r3, 0
/* 80A12ED4  7C 66 1B 78 */	mr r6, r3
/* 80A12ED8  7C 65 1B 78 */	mr r5, r3
/* 80A12EDC  7C 64 1B 78 */	mr r4, r3
/* 80A12EE0  38 00 00 03 */	li r0, 3
/* 80A12EE4  7C 09 03 A6 */	mtctr r0
lbl_80A12EE8:
/* 80A12EE8  7C FE 1A 14 */	add r7, r30, r3
/* 80A12EEC  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80A12EF0  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80A12EF4  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80A12EF8  38 63 00 06 */	addi r3, r3, 6
/* 80A12EFC  42 00 FF EC */	bdnz lbl_80A12EE8
lbl_80A12F00:
/* 80A12F00  7F C3 F3 78 */	mr r3, r30
/* 80A12F04  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A12F08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A12F0C  7D 89 03 A6 */	mtctr r12
/* 80A12F10  4E 80 04 21 */	bctrl 
/* 80A12F14  7F C3 F3 78 */	mr r3, r30
/* 80A12F18  48 00 02 95 */	bl lookat__10daNpcIns_cFv
/* 80A12F1C  C0 1F 03 A0 */	lfs f0, 0x3a0(r31)
/* 80A12F20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A12F24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A12F28  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A12F2C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A12F30  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A12F34  80 63 00 04 */	lwz r3, 4(r3)
/* 80A12F38  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A12F3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A12F40  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A12F44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A12F48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A12F4C  4B 93 35 64 */	b PSMTXCopy
/* 80A12F50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A12F54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A12F58  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A12F5C  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80A12F60  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A12F64  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80A12F68  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A12F6C  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80A12F70  38 81 00 24 */	addi r4, r1, 0x24
/* 80A12F74  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A12F78  4B 93 3D F4 */	b PSMTXMultVec
/* 80A12F7C  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A12F80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A12F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A12F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A12F8C  38 81 00 24 */	addi r4, r1, 0x24
/* 80A12F90  7C 85 23 78 */	mr r5, r4
/* 80A12F94  4B 93 3D D8 */	b PSMTXMultVec
/* 80A12F98  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A12F9C  38 81 00 24 */	addi r4, r1, 0x24
/* 80A12FA0  4B 85 DC D4 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80A12FA4  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80A12FA8  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A12FAC  38 81 00 24 */	addi r4, r1, 0x24
/* 80A12FB0  4B 85 DC 54 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A12FB4  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80A12FB8  80 7E 0C 14 */	lwz r3, 0xc14(r30)
/* 80A12FBC  28 03 00 00 */	cmplwi r3, 0
/* 80A12FC0  41 82 01 88 */	beq lbl_80A13148
/* 80A12FC4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A12FC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A12FCC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80A12FD0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A12FD4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A12FD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A12FDC  C0 1F 03 A8 */	lfs f0, 0x3a8(r31)
/* 80A12FE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A12FE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A12FE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80A12FEC  38 9E 05 38 */	addi r4, r30, 0x538
/* 80A12FF0  7C 65 1B 78 */	mr r5, r3
/* 80A12FF4  4B 93 40 C0 */	b PSVECSubtract
/* 80A12FF8  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 80A12FFC  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A13000  7C 03 02 14 */	add r0, r3, r0
/* 80A13004  7C 00 00 D0 */	neg r0, r0
/* 80A13008  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A1300C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A13010  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A13014  4B 85 46 60 */	b cM_atan2s__Fff
/* 80A13018  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 80A1301C  7C 00 1A 14 */	add r0, r0, r3
/* 80A13020  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A13024  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A13028  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A1302C  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A13030  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A13034  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A13038  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1303C  38 61 00 0C */	addi r3, r1, 0xc
/* 80A13040  4B 93 40 F8 */	b PSVECSquareMag
/* 80A13044  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A13048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1304C  40 81 00 58 */	ble lbl_80A130A4
/* 80A13050  FC 00 08 34 */	frsqrte f0, f1
/* 80A13054  C8 9F 03 88 */	lfd f4, 0x388(r31)
/* 80A13058  FC 44 00 32 */	fmul f2, f4, f0
/* 80A1305C  C8 7F 03 90 */	lfd f3, 0x390(r31)
/* 80A13060  FC 00 00 32 */	fmul f0, f0, f0
/* 80A13064  FC 01 00 32 */	fmul f0, f1, f0
/* 80A13068  FC 03 00 28 */	fsub f0, f3, f0
/* 80A1306C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A13070  FC 44 00 32 */	fmul f2, f4, f0
/* 80A13074  FC 00 00 32 */	fmul f0, f0, f0
/* 80A13078  FC 01 00 32 */	fmul f0, f1, f0
/* 80A1307C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A13080  FC 02 00 32 */	fmul f0, f2, f0
/* 80A13084  FC 44 00 32 */	fmul f2, f4, f0
/* 80A13088  FC 00 00 32 */	fmul f0, f0, f0
/* 80A1308C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A13090  FC 03 00 28 */	fsub f0, f3, f0
/* 80A13094  FC 02 00 32 */	fmul f0, f2, f0
/* 80A13098  FC 41 00 32 */	fmul f2, f1, f0
/* 80A1309C  FC 40 10 18 */	frsp f2, f2
/* 80A130A0  48 00 00 90 */	b lbl_80A13130
lbl_80A130A4:
/* 80A130A4  C8 1F 03 98 */	lfd f0, 0x398(r31)
/* 80A130A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A130AC  40 80 00 10 */	bge lbl_80A130BC
/* 80A130B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A130B4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A130B8  48 00 00 78 */	b lbl_80A13130
lbl_80A130BC:
/* 80A130BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A130C0  80 81 00 08 */	lwz r4, 8(r1)
/* 80A130C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A130C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A130CC  7C 03 00 00 */	cmpw r3, r0
/* 80A130D0  41 82 00 14 */	beq lbl_80A130E4
/* 80A130D4  40 80 00 40 */	bge lbl_80A13114
/* 80A130D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A130DC  41 82 00 20 */	beq lbl_80A130FC
/* 80A130E0  48 00 00 34 */	b lbl_80A13114
lbl_80A130E4:
/* 80A130E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A130E8  41 82 00 0C */	beq lbl_80A130F4
/* 80A130EC  38 00 00 01 */	li r0, 1
/* 80A130F0  48 00 00 28 */	b lbl_80A13118
lbl_80A130F4:
/* 80A130F4  38 00 00 02 */	li r0, 2
/* 80A130F8  48 00 00 20 */	b lbl_80A13118
lbl_80A130FC:
/* 80A130FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A13100  41 82 00 0C */	beq lbl_80A1310C
/* 80A13104  38 00 00 05 */	li r0, 5
/* 80A13108  48 00 00 10 */	b lbl_80A13118
lbl_80A1310C:
/* 80A1310C  38 00 00 03 */	li r0, 3
/* 80A13110  48 00 00 08 */	b lbl_80A13118
lbl_80A13114:
/* 80A13114  38 00 00 04 */	li r0, 4
lbl_80A13118:
/* 80A13118  2C 00 00 01 */	cmpwi r0, 1
/* 80A1311C  40 82 00 10 */	bne lbl_80A1312C
/* 80A13120  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A13124  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A13128  48 00 00 08 */	b lbl_80A13130
lbl_80A1312C:
/* 80A1312C  FC 40 08 90 */	fmr f2, f1
lbl_80A13130:
/* 80A13130  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80A13134  4B 85 45 40 */	b cM_atan2s__Fff
/* 80A13138  A8 1E 09 02 */	lha r0, 0x902(r30)
/* 80A1313C  7C 03 00 50 */	subf r0, r3, r0
/* 80A13140  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80A13144  48 00 00 10 */	b lbl_80A13154
lbl_80A13148:
/* 80A13148  38 00 00 00 */	li r0, 0
/* 80A1314C  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A13150  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_80A13154:
/* 80A13154  C0 5E 08 EC */	lfs f2, 0x8ec(r30)
/* 80A13158  C0 3E 08 E8 */	lfs f1, 0x8e8(r30)
/* 80A1315C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A13160  EC 21 00 2A */	fadds f1, f1, f0
/* 80A13164  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 80A13168  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A1316C  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80A13170  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80A13174  38 7E 0D B0 */	addi r3, r30, 0xdb0
/* 80A13178  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A1317C  4B 85 C0 60 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A13180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A13184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A13188  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A1318C  38 9E 0C 8C */	addi r4, r30, 0xc8c
/* 80A13190  4B 85 1A 18 */	b Set__4cCcSFP8cCcD_Obj
/* 80A13194  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80A13198  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80A1319C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A131A0  7C 08 03 A6 */	mtlr r0
/* 80A131A4  38 21 00 40 */	addi r1, r1, 0x40
/* 80A131A8  4E 80 00 20 */	blr 
