lbl_807E6ED8:
/* 807E6ED8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807E6EDC  7C 08 02 A6 */	mflr r0
/* 807E6EE0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807E6EE4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807E6EE8  4B B7 B2 CC */	b _savegpr_19
/* 807E6EEC  7C 7E 1B 78 */	mr r30, r3
/* 807E6EF0  7C 9A 23 78 */	mr r26, r4
/* 807E6EF4  7C BB 2B 78 */	mr r27, r5
/* 807E6EF8  7C DC 33 78 */	mr r28, r6
/* 807E6EFC  3C 60 80 7E */	lis r3, cNullVec__6Z2Calc@ha
/* 807E6F00  3A E3 74 10 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 807E6F04  3C 60 80 7E */	lis r3, lit_3802@ha
/* 807E6F08  3B E3 73 00 */	addi r31, r3, lit_3802@l
/* 807E6F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E6F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E6F14  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E6F18  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 807E6F1C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 807E6F20  28 00 00 00 */	cmplwi r0, 0
/* 807E6F24  41 82 03 A4 */	beq lbl_807E72C8
/* 807E6F28  7F C4 F3 78 */	mr r4, r30
/* 807E6F2C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E6F30  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807E6F34  7D 89 03 A6 */	mtctr r12
/* 807E6F38  4E 80 04 21 */	bctrl 
/* 807E6F3C  2C 03 00 00 */	cmpwi r3, 0
/* 807E6F40  41 82 03 88 */	beq lbl_807E72C8
/* 807E6F44  4B 9C 56 38 */	b dKy_darkworld_check__Fv
/* 807E6F48  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807E6F4C  30 03 FF FF */	addic r0, r3, -1
/* 807E6F50  7F A0 19 10 */	subfe r29, r0, r3
/* 807E6F54  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807E6F58  28 00 00 00 */	cmplwi r0, 0
/* 807E6F5C  40 82 02 A0 */	bne lbl_807E71FC
/* 807E6F60  38 00 00 01 */	li r0, 1
/* 807E6F64  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807E6F68  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 807E6F6C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 807E6F70  80 63 00 00 */	lwz r3, 0(r3)
/* 807E6F74  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807E6F78  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807E6F7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807E6F80  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807E6F84  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807E6F88  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807E6F8C  4B B5 F5 24 */	b PSMTXCopy
/* 807E6F90  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807E6F94  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807E6F98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E6F9C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E6FA0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E6FA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E6FA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E6FAC  38 81 00 4C */	addi r4, r1, 0x4c
/* 807E6FB0  38 A1 00 58 */	addi r5, r1, 0x58
/* 807E6FB4  4B B5 FD B8 */	b PSMTXMultVec
/* 807E6FB8  38 61 00 34 */	addi r3, r1, 0x34
/* 807E6FBC  38 81 00 58 */	addi r4, r1, 0x58
/* 807E6FC0  7F 65 DB 78 */	mr r5, r27
/* 807E6FC4  4B A7 FB 70 */	b __mi__4cXyzCFRC3Vec
/* 807E6FC8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807E6FCC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807E6FD0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807E6FD4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E6FD8  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807E6FDC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807E6FE0  4B A8 06 94 */	b cM_atan2s__Fff
/* 807E6FE4  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807E6FE8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807E6FEC  EC 20 00 32 */	fmuls f1, f0, f0
/* 807E6FF0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807E6FF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 807E6FF8  EC 41 00 2A */	fadds f2, f1, f0
/* 807E6FFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E7000  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807E7004  40 81 00 0C */	ble lbl_807E7010
/* 807E7008  FC 00 10 34 */	frsqrte f0, f2
/* 807E700C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807E7010:
/* 807E7010  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807E7014  4B A8 06 60 */	b cM_atan2s__Fff
/* 807E7018  7C 03 00 D0 */	neg r0, r3
/* 807E701C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807E7020  38 80 00 00 */	li r4, 0
/* 807E7024  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807E7028  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E702C  7C 00 07 74 */	extsb r0, r0
/* 807E7030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E7034  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807E7038  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807E703C  57 A5 10 3A */	slwi r5, r29, 2
/* 807E7040  90 81 00 08 */	stw r4, 8(r1)
/* 807E7044  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E7048  3A B7 00 20 */	addi r21, r23, 0x20
/* 807E704C  7E B5 2A 14 */	add r21, r21, r5
/* 807E7050  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807E7054  3A D7 00 28 */	addi r22, r23, 0x28
/* 807E7058  7E D6 2A 14 */	add r22, r22, r5
/* 807E705C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807E7060  90 81 00 18 */	stw r4, 0x18(r1)
/* 807E7064  38 80 00 00 */	li r4, 0
/* 807E7068  38 A0 02 9B */	li r5, 0x29b
/* 807E706C  7F 66 DB 78 */	mr r6, r27
/* 807E7070  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807E7074  39 01 00 2C */	addi r8, r1, 0x2c
/* 807E7078  7F 89 E3 78 */	mr r9, r28
/* 807E707C  39 40 00 FF */	li r10, 0xff
/* 807E7080  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807E7084  4B 86 5A 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807E7088  7C 79 1B 79 */	or. r25, r3, r3
/* 807E708C  41 82 00 FC */	beq lbl_807E7188
/* 807E7090  38 61 00 40 */	addi r3, r1, 0x40
/* 807E7094  4B B6 00 A4 */	b PSVECSquareMag
/* 807E7098  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E709C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E70A0  40 81 00 58 */	ble lbl_807E70F8
/* 807E70A4  FC 00 08 34 */	frsqrte f0, f1
/* 807E70A8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807E70AC  FC 44 00 32 */	fmul f2, f4, f0
/* 807E70B0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807E70B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807E70B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807E70BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807E70C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807E70C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807E70C8  FC 00 00 32 */	fmul f0, f0, f0
/* 807E70CC  FC 01 00 32 */	fmul f0, f1, f0
/* 807E70D0  FC 03 00 28 */	fsub f0, f3, f0
/* 807E70D4  FC 02 00 32 */	fmul f0, f2, f0
/* 807E70D8  FC 44 00 32 */	fmul f2, f4, f0
/* 807E70DC  FC 00 00 32 */	fmul f0, f0, f0
/* 807E70E0  FC 01 00 32 */	fmul f0, f1, f0
/* 807E70E4  FC 03 00 28 */	fsub f0, f3, f0
/* 807E70E8  FC 02 00 32 */	fmul f0, f2, f0
/* 807E70EC  FC 21 00 32 */	fmul f1, f1, f0
/* 807E70F0  FC 20 08 18 */	frsp f1, f1
/* 807E70F4  48 00 00 88 */	b lbl_807E717C
lbl_807E70F8:
/* 807E70F8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807E70FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E7100  40 80 00 10 */	bge lbl_807E7110
/* 807E7104  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E7108  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807E710C  48 00 00 70 */	b lbl_807E717C
lbl_807E7110:
/* 807E7110  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807E7114  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807E7118  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E711C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E7120  7C 03 00 00 */	cmpw r3, r0
/* 807E7124  41 82 00 14 */	beq lbl_807E7138
/* 807E7128  40 80 00 40 */	bge lbl_807E7168
/* 807E712C  2C 03 00 00 */	cmpwi r3, 0
/* 807E7130  41 82 00 20 */	beq lbl_807E7150
/* 807E7134  48 00 00 34 */	b lbl_807E7168
lbl_807E7138:
/* 807E7138  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E713C  41 82 00 0C */	beq lbl_807E7148
/* 807E7140  38 00 00 01 */	li r0, 1
/* 807E7144  48 00 00 28 */	b lbl_807E716C
lbl_807E7148:
/* 807E7148  38 00 00 02 */	li r0, 2
/* 807E714C  48 00 00 20 */	b lbl_807E716C
lbl_807E7150:
/* 807E7150  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E7154  41 82 00 0C */	beq lbl_807E7160
/* 807E7158  38 00 00 05 */	li r0, 5
/* 807E715C  48 00 00 10 */	b lbl_807E716C
lbl_807E7160:
/* 807E7160  38 00 00 03 */	li r0, 3
/* 807E7164  48 00 00 08 */	b lbl_807E716C
lbl_807E7168:
/* 807E7168  38 00 00 04 */	li r0, 4
lbl_807E716C:
/* 807E716C  2C 00 00 01 */	cmpwi r0, 1
/* 807E7170  40 82 00 0C */	bne lbl_807E717C
/* 807E7174  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E7178  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807E717C:
/* 807E717C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807E7180  EC 00 00 72 */	fmuls f0, f0, f1
/* 807E7184  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807E7188:
/* 807E7188  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E718C  7C 04 07 74 */	extsb r4, r0
/* 807E7190  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807E7194  38 00 00 00 */	li r0, 0
/* 807E7198  90 01 00 08 */	stw r0, 8(r1)
/* 807E719C  90 81 00 0C */	stw r4, 0xc(r1)
/* 807E71A0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807E71A4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807E71A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 807E71AC  38 80 00 00 */	li r4, 0
/* 807E71B0  38 A0 02 9C */	li r5, 0x29c
/* 807E71B4  7F 66 DB 78 */	mr r6, r27
/* 807E71B8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807E71BC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807E71C0  7F 89 E3 78 */	mr r9, r28
/* 807E71C4  39 40 00 FF */	li r10, 0xff
/* 807E71C8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807E71CC  4B 86 58 C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807E71D0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807E71D4  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807E71D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 807E71DC  7F 43 D3 78 */	mr r3, r26
/* 807E71E0  38 81 00 28 */	addi r4, r1, 0x28
/* 807E71E4  38 A0 00 00 */	li r5, 0
/* 807E71E8  38 C0 FF FF */	li r6, -1
/* 807E71EC  81 9A 00 00 */	lwz r12, 0(r26)
/* 807E71F0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E71F4  7D 89 03 A6 */	mtctr r12
/* 807E71F8  4E 80 04 21 */	bctrl 
lbl_807E71FC:
/* 807E71FC  3A A0 00 00 */	li r21, 0
/* 807E7200  3A C0 00 00 */	li r22, 0
/* 807E7204  3A 80 00 00 */	li r20, 0
/* 807E7208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E720C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 807E7210  57 A0 10 3A */	slwi r0, r29, 2
/* 807E7214  3B 17 00 28 */	addi r24, r23, 0x28
/* 807E7218  7F 18 02 14 */	add r24, r24, r0
/* 807E721C  3B B7 00 20 */	addi r29, r23, 0x20
/* 807E7220  7F BD 02 14 */	add r29, r29, r0
/* 807E7224  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807E7228:
/* 807E7228  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807E722C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E7230  7C 05 07 74 */	extsb r5, r0
/* 807E7234  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807E7238  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807E723C  38 00 00 FF */	li r0, 0xff
/* 807E7240  90 01 00 08 */	stw r0, 8(r1)
/* 807E7244  38 00 00 00 */	li r0, 0
/* 807E7248  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E724C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807E7250  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807E7254  93 01 00 18 */	stw r24, 0x18(r1)
/* 807E7258  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807E725C  38 A0 00 00 */	li r5, 0
/* 807E7260  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807E7264  7F 67 DB 78 */	mr r7, r27
/* 807E7268  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807E726C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807E7270  7F 8A E3 78 */	mr r10, r28
/* 807E7274  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807E7278  4B 86 62 54 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807E727C  7C 7E B9 2E */	stwx r3, r30, r23
/* 807E7280  3A B5 00 01 */	addi r21, r21, 1
/* 807E7284  2C 15 00 03 */	cmpwi r21, 3
/* 807E7288  3A D6 00 02 */	addi r22, r22, 2
/* 807E728C  3A 94 00 04 */	addi r20, r20, 4
/* 807E7290  41 80 FF 98 */	blt lbl_807E7228
/* 807E7294  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807E7298  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807E729C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E72A0  7F 43 D3 78 */	mr r3, r26
/* 807E72A4  38 81 00 24 */	addi r4, r1, 0x24
/* 807E72A8  38 A0 00 00 */	li r5, 0
/* 807E72AC  38 C0 FF FF */	li r6, -1
/* 807E72B0  81 9A 00 00 */	lwz r12, 0(r26)
/* 807E72B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807E72B8  7D 89 03 A6 */	mtctr r12
/* 807E72BC  4E 80 04 21 */	bctrl 
/* 807E72C0  38 60 00 01 */	li r3, 1
/* 807E72C4  48 00 00 10 */	b lbl_807E72D4
lbl_807E72C8:
/* 807E72C8  38 00 00 00 */	li r0, 0
/* 807E72CC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807E72D0  38 60 00 00 */	li r3, 0
lbl_807E72D4:
/* 807E72D4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807E72D8  4B B7 AF 28 */	b _restgpr_19
/* 807E72DC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807E72E0  7C 08 03 A6 */	mtlr r0
/* 807E72E4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807E72E8  4E 80 00 20 */	blr 
