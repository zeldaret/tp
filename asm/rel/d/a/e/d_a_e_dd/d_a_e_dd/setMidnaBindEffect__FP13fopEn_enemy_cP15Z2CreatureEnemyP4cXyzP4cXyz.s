lbl_806A6D9C:
/* 806A6D9C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806A6DA0  7C 08 02 A6 */	mflr r0
/* 806A6DA4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806A6DA8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806A6DAC  4B CB B4 09 */	bl _savegpr_19
/* 806A6DB0  7C 7E 1B 78 */	mr r30, r3
/* 806A6DB4  7C 9A 23 78 */	mr r26, r4
/* 806A6DB8  7C BB 2B 78 */	mr r27, r5
/* 806A6DBC  7C DC 33 78 */	mr r28, r6
/* 806A6DC0  3C 60 80 6A */	lis r3, cNullVec__6Z2Calc@ha /* 0x806A72C0@ha */
/* 806A6DC4  3A E3 72 C0 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806A72C0@l */
/* 806A6DC8  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A6DCC  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A6DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A6DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A6DD8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806A6DDC  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806A6DE0  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806A6DE4  28 00 00 00 */	cmplwi r0, 0
/* 806A6DE8  41 82 03 A4 */	beq lbl_806A718C
/* 806A6DEC  7F C4 F3 78 */	mr r4, r30
/* 806A6DF0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806A6DF4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806A6DF8  7D 89 03 A6 */	mtctr r12
/* 806A6DFC  4E 80 04 21 */	bctrl 
/* 806A6E00  2C 03 00 00 */	cmpwi r3, 0
/* 806A6E04  41 82 03 88 */	beq lbl_806A718C
/* 806A6E08  4B B0 57 75 */	bl dKy_darkworld_check__Fv
/* 806A6E0C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806A6E10  30 03 FF FF */	addic r0, r3, -1
/* 806A6E14  7F A0 19 10 */	subfe r29, r0, r3
/* 806A6E18  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806A6E1C  28 00 00 00 */	cmplwi r0, 0
/* 806A6E20  40 82 02 A0 */	bne lbl_806A70C0
/* 806A6E24  38 00 00 01 */	li r0, 1
/* 806A6E28  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806A6E2C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806A6E30  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 806A6E34  80 63 00 00 */	lwz r3, 0(r3)
/* 806A6E38  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806A6E3C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806A6E40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A6E44  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806A6E48  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A6E4C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A6E50  4B C9 F6 61 */	bl PSMTXCopy
/* 806A6E54  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A6E58  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806A6E5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A6E60  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806A6E64  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806A6E68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A6E6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A6E70  38 81 00 4C */	addi r4, r1, 0x4c
/* 806A6E74  38 A1 00 58 */	addi r5, r1, 0x58
/* 806A6E78  4B C9 FE F5 */	bl PSMTXMultVec
/* 806A6E7C  38 61 00 34 */	addi r3, r1, 0x34
/* 806A6E80  38 81 00 58 */	addi r4, r1, 0x58
/* 806A6E84  7F 65 DB 78 */	mr r5, r27
/* 806A6E88  4B BB FC AD */	bl __mi__4cXyzCFRC3Vec
/* 806A6E8C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806A6E90  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806A6E94  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806A6E98  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806A6E9C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806A6EA0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806A6EA4  4B BC 07 D1 */	bl cM_atan2s__Fff
/* 806A6EA8  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806A6EAC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806A6EB0  EC 20 00 32 */	fmuls f1, f0, f0
/* 806A6EB4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806A6EB8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806A6EBC  EC 41 00 2A */	fadds f2, f1, f0
/* 806A6EC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A6EC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806A6EC8  40 81 00 0C */	ble lbl_806A6ED4
/* 806A6ECC  FC 00 10 34 */	frsqrte f0, f2
/* 806A6ED0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806A6ED4:
/* 806A6ED4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806A6ED8  4B BC 07 9D */	bl cM_atan2s__Fff
/* 806A6EDC  7C 03 00 D0 */	neg r0, r3
/* 806A6EE0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806A6EE4  38 80 00 00 */	li r4, 0
/* 806A6EE8  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806A6EEC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A6EF0  7C 00 07 74 */	extsb r0, r0
/* 806A6EF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A6EF8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A6EFC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A6F00  57 A5 10 3A */	slwi r5, r29, 2
/* 806A6F04  90 81 00 08 */	stw r4, 8(r1)
/* 806A6F08  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A6F0C  3A B7 00 20 */	addi r21, r23, 0x20
/* 806A6F10  7E B5 2A 14 */	add r21, r21, r5
/* 806A6F14  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806A6F18  3A D7 00 28 */	addi r22, r23, 0x28
/* 806A6F1C  7E D6 2A 14 */	add r22, r22, r5
/* 806A6F20  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806A6F24  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A6F28  38 80 00 00 */	li r4, 0
/* 806A6F2C  38 A0 02 9B */	li r5, 0x29b
/* 806A6F30  7F 66 DB 78 */	mr r6, r27
/* 806A6F34  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A6F38  39 01 00 2C */	addi r8, r1, 0x2c
/* 806A6F3C  7F 89 E3 78 */	mr r9, r28
/* 806A6F40  39 40 00 FF */	li r10, 0xff
/* 806A6F44  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A6F48  4B 9A 5B 49 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A6F4C  7C 79 1B 79 */	or. r25, r3, r3
/* 806A6F50  41 82 00 FC */	beq lbl_806A704C
/* 806A6F54  38 61 00 40 */	addi r3, r1, 0x40
/* 806A6F58  4B CA 01 E1 */	bl PSVECSquareMag
/* 806A6F5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A6F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A6F64  40 81 00 58 */	ble lbl_806A6FBC
/* 806A6F68  FC 00 08 34 */	frsqrte f0, f1
/* 806A6F6C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806A6F70  FC 44 00 32 */	fmul f2, f4, f0
/* 806A6F74  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806A6F78  FC 00 00 32 */	fmul f0, f0, f0
/* 806A6F7C  FC 01 00 32 */	fmul f0, f1, f0
/* 806A6F80  FC 03 00 28 */	fsub f0, f3, f0
/* 806A6F84  FC 02 00 32 */	fmul f0, f2, f0
/* 806A6F88  FC 44 00 32 */	fmul f2, f4, f0
/* 806A6F8C  FC 00 00 32 */	fmul f0, f0, f0
/* 806A6F90  FC 01 00 32 */	fmul f0, f1, f0
/* 806A6F94  FC 03 00 28 */	fsub f0, f3, f0
/* 806A6F98  FC 02 00 32 */	fmul f0, f2, f0
/* 806A6F9C  FC 44 00 32 */	fmul f2, f4, f0
/* 806A6FA0  FC 00 00 32 */	fmul f0, f0, f0
/* 806A6FA4  FC 01 00 32 */	fmul f0, f1, f0
/* 806A6FA8  FC 03 00 28 */	fsub f0, f3, f0
/* 806A6FAC  FC 02 00 32 */	fmul f0, f2, f0
/* 806A6FB0  FC 21 00 32 */	fmul f1, f1, f0
/* 806A6FB4  FC 20 08 18 */	frsp f1, f1
/* 806A6FB8  48 00 00 88 */	b lbl_806A7040
lbl_806A6FBC:
/* 806A6FBC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806A6FC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A6FC4  40 80 00 10 */	bge lbl_806A6FD4
/* 806A6FC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A6FCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806A6FD0  48 00 00 70 */	b lbl_806A7040
lbl_806A6FD4:
/* 806A6FD4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806A6FD8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806A6FDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806A6FE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806A6FE4  7C 03 00 00 */	cmpw r3, r0
/* 806A6FE8  41 82 00 14 */	beq lbl_806A6FFC
/* 806A6FEC  40 80 00 40 */	bge lbl_806A702C
/* 806A6FF0  2C 03 00 00 */	cmpwi r3, 0
/* 806A6FF4  41 82 00 20 */	beq lbl_806A7014
/* 806A6FF8  48 00 00 34 */	b lbl_806A702C
lbl_806A6FFC:
/* 806A6FFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A7000  41 82 00 0C */	beq lbl_806A700C
/* 806A7004  38 00 00 01 */	li r0, 1
/* 806A7008  48 00 00 28 */	b lbl_806A7030
lbl_806A700C:
/* 806A700C  38 00 00 02 */	li r0, 2
/* 806A7010  48 00 00 20 */	b lbl_806A7030
lbl_806A7014:
/* 806A7014  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A7018  41 82 00 0C */	beq lbl_806A7024
/* 806A701C  38 00 00 05 */	li r0, 5
/* 806A7020  48 00 00 10 */	b lbl_806A7030
lbl_806A7024:
/* 806A7024  38 00 00 03 */	li r0, 3
/* 806A7028  48 00 00 08 */	b lbl_806A7030
lbl_806A702C:
/* 806A702C  38 00 00 04 */	li r0, 4
lbl_806A7030:
/* 806A7030  2C 00 00 01 */	cmpwi r0, 1
/* 806A7034  40 82 00 0C */	bne lbl_806A7040
/* 806A7038  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A703C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806A7040:
/* 806A7040  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806A7044  EC 00 00 72 */	fmuls f0, f0, f1
/* 806A7048  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806A704C:
/* 806A704C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A7050  7C 04 07 74 */	extsb r4, r0
/* 806A7054  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A7058  38 00 00 00 */	li r0, 0
/* 806A705C  90 01 00 08 */	stw r0, 8(r1)
/* 806A7060  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A7064  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806A7068  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806A706C  90 01 00 18 */	stw r0, 0x18(r1)
/* 806A7070  38 80 00 00 */	li r4, 0
/* 806A7074  38 A0 02 9C */	li r5, 0x29c
/* 806A7078  7F 66 DB 78 */	mr r6, r27
/* 806A707C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A7080  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A7084  7F 89 E3 78 */	mr r9, r28
/* 806A7088  39 40 00 FF */	li r10, 0xff
/* 806A708C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A7090  4B 9A 5A 01 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A7094  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806A7098  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806A709C  90 01 00 28 */	stw r0, 0x28(r1)
/* 806A70A0  7F 43 D3 78 */	mr r3, r26
/* 806A70A4  38 81 00 28 */	addi r4, r1, 0x28
/* 806A70A8  38 A0 00 00 */	li r5, 0
/* 806A70AC  38 C0 FF FF */	li r6, -1
/* 806A70B0  81 9A 00 00 */	lwz r12, 0(r26)
/* 806A70B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A70B8  7D 89 03 A6 */	mtctr r12
/* 806A70BC  4E 80 04 21 */	bctrl 
lbl_806A70C0:
/* 806A70C0  3A A0 00 00 */	li r21, 0
/* 806A70C4  3A C0 00 00 */	li r22, 0
/* 806A70C8  3A 80 00 00 */	li r20, 0
/* 806A70CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A70D0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A70D4  57 A0 10 3A */	slwi r0, r29, 2
/* 806A70D8  3B 17 00 28 */	addi r24, r23, 0x28
/* 806A70DC  7F 18 02 14 */	add r24, r24, r0
/* 806A70E0  3B B7 00 20 */	addi r29, r23, 0x20
/* 806A70E4  7F BD 02 14 */	add r29, r29, r0
/* 806A70E8  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806A70EC:
/* 806A70EC  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806A70F0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A70F4  7C 05 07 74 */	extsb r5, r0
/* 806A70F8  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806A70FC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806A7100  38 00 00 FF */	li r0, 0xff
/* 806A7104  90 01 00 08 */	stw r0, 8(r1)
/* 806A7108  38 00 00 00 */	li r0, 0
/* 806A710C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A7110  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806A7114  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806A7118  93 01 00 18 */	stw r24, 0x18(r1)
/* 806A711C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806A7120  38 A0 00 00 */	li r5, 0
/* 806A7124  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806A7128  7F 67 DB 78 */	mr r7, r27
/* 806A712C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806A7130  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806A7134  7F 8A E3 78 */	mr r10, r28
/* 806A7138  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A713C  4B 9A 63 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A7140  7C 7E B9 2E */	stwx r3, r30, r23
/* 806A7144  3A B5 00 01 */	addi r21, r21, 1
/* 806A7148  2C 15 00 03 */	cmpwi r21, 3
/* 806A714C  3A D6 00 02 */	addi r22, r22, 2
/* 806A7150  3A 94 00 04 */	addi r20, r20, 4
/* 806A7154  41 80 FF 98 */	blt lbl_806A70EC
/* 806A7158  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806A715C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806A7160  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A7164  7F 43 D3 78 */	mr r3, r26
/* 806A7168  38 81 00 24 */	addi r4, r1, 0x24
/* 806A716C  38 A0 00 00 */	li r5, 0
/* 806A7170  38 C0 FF FF */	li r6, -1
/* 806A7174  81 9A 00 00 */	lwz r12, 0(r26)
/* 806A7178  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806A717C  7D 89 03 A6 */	mtctr r12
/* 806A7180  4E 80 04 21 */	bctrl 
/* 806A7184  38 60 00 01 */	li r3, 1
/* 806A7188  48 00 00 10 */	b lbl_806A7198
lbl_806A718C:
/* 806A718C  38 00 00 00 */	li r0, 0
/* 806A7190  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806A7194  38 60 00 00 */	li r3, 0
lbl_806A7198:
/* 806A7198  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806A719C  4B CB B0 65 */	bl _restgpr_19
/* 806A71A0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806A71A4  7C 08 03 A6 */	mtlr r0
/* 806A71A8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806A71AC  4E 80 00 20 */	blr 
