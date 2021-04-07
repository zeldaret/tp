lbl_80036C44:
/* 80036C44  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80036C48  7C 08 02 A6 */	mflr r0
/* 80036C4C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80036C50  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80036C54  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80036C58  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80036C5C  48 32 B5 79 */	bl _savegpr_27
/* 80036C60  7C 7B 1B 78 */	mr r27, r3
/* 80036C64  7C 9F 23 78 */	mr r31, r4
/* 80036C68  7C DC 33 78 */	mr r28, r6
/* 80036C6C  7C FD 3B 78 */	mr r29, r7
/* 80036C70  7D 1E 43 78 */	mr r30, r8
/* 80036C74  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036C78  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036C7C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80036C80  38 61 00 84 */	addi r3, r1, 0x84
/* 80036C84  38 C1 00 78 */	addi r6, r1, 0x78
/* 80036C88  4B FF F0 41 */	bl setNowLine__9dJntCol_cFP8cM3dGLinPC4cXyzPC5csXyzP4cXyz
/* 80036C8C  7F 63 DB 78 */	mr r3, r27
/* 80036C90  38 81 00 84 */	addi r4, r1, 0x84
/* 80036C94  7F E5 FB 78 */	mr r5, r31
/* 80036C98  7F 86 E3 78 */	mr r6, r28
/* 80036C9C  7F C7 F3 78 */	mr r7, r30
/* 80036CA0  4B FF F1 29 */	bl searchNearPos__9dJntCol_cCFPC8cM3dGLinPC4cXyzP4cXyzi
/* 80036CA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80036CA8  40 80 00 18 */	bge lbl_80036CC0
/* 80036CAC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036CB0  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036CB4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80036CB8  38 60 FF FF */	li r3, -1
/* 80036CBC  48 00 02 CC */	b lbl_80036F88
lbl_80036CC0:
/* 80036CC0  80 7B 00 00 */	lwz r3, 0(r27)
/* 80036CC4  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80036CC8  7F C3 02 14 */	add r30, r3, r0
/* 80036CCC  80 7B 00 04 */	lwz r3, 4(r27)
/* 80036CD0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80036CD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80036CD8  A8 1E 00 02 */	lha r0, 2(r30)
/* 80036CDC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80036CE0  7C 63 02 14 */	add r3, r3, r0
/* 80036CE4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036CE8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036CEC  48 30 F7 C5 */	bl PSMTXCopy
/* 80036CF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036CF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036CF8  80 9E 00 08 */	lwz r4, 8(r30)
/* 80036CFC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80036D00  48 31 00 6D */	bl PSMTXMultVec
/* 80036D04  88 1E 00 00 */	lbz r0, 0(r30)
/* 80036D08  28 00 00 00 */	cmplwi r0, 0
/* 80036D0C  40 82 00 30 */	bne lbl_80036D3C
/* 80036D10  38 61 00 3C */	addi r3, r1, 0x3c
/* 80036D14  7F 84 E3 78 */	mr r4, r28
/* 80036D18  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80036D1C  48 22 FE 19 */	bl __mi__4cXyzCFRC3Vec
/* 80036D20  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80036D24  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80036D28  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80036D2C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80036D30  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80036D34  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80036D38  48 00 01 08 */	b lbl_80036E40
lbl_80036D3C:
/* 80036D3C  28 00 00 01 */	cmplwi r0, 1
/* 80036D40  40 82 00 E8 */	bne lbl_80036E28
/* 80036D44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036D48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036D4C  80 9E 00 08 */	lwz r4, 8(r30)
/* 80036D50  38 84 00 0C */	addi r4, r4, 0xc
/* 80036D54  38 A1 00 54 */	addi r5, r1, 0x54
/* 80036D58  48 31 00 15 */	bl PSMTXMultVec
/* 80036D5C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80036D60  38 81 00 54 */	addi r4, r1, 0x54
/* 80036D64  7F 85 E3 78 */	mr r5, r28
/* 80036D68  38 C1 00 48 */	addi r6, r1, 0x48
/* 80036D6C  48 23 7C F1 */	bl cM3d_lineVsPosSuisenCross__FRC3VecRC3VecRC3VecP3Vec
/* 80036D70  38 61 00 30 */	addi r3, r1, 0x30
/* 80036D74  7F 84 E3 78 */	mr r4, r28
/* 80036D78  38 A1 00 48 */	addi r5, r1, 0x48
/* 80036D7C  48 22 FD B9 */	bl __mi__4cXyzCFRC3Vec
/* 80036D80  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80036D84  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80036D88  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80036D8C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80036D90  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80036D94  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80036D98  38 61 00 60 */	addi r3, r1, 0x60
/* 80036D9C  48 31 03 9D */	bl PSVECSquareMag
/* 80036DA0  C0 02 83 8C */	lfs f0, lit_4147(r2)
/* 80036DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036DA8  40 80 00 98 */	bge lbl_80036E40
/* 80036DAC  7F 83 E3 78 */	mr r3, r28
/* 80036DB0  38 81 00 54 */	addi r4, r1, 0x54
/* 80036DB4  48 31 05 E9 */	bl PSVECSquareDistance
/* 80036DB8  FF E0 08 90 */	fmr f31, f1
/* 80036DBC  7F 83 E3 78 */	mr r3, r28
/* 80036DC0  38 81 00 6C */	addi r4, r1, 0x6c
/* 80036DC4  48 31 05 D9 */	bl PSVECSquareDistance
/* 80036DC8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80036DCC  40 80 00 30 */	bge lbl_80036DFC
/* 80036DD0  38 61 00 24 */	addi r3, r1, 0x24
/* 80036DD4  38 81 00 6C */	addi r4, r1, 0x6c
/* 80036DD8  38 A1 00 54 */	addi r5, r1, 0x54
/* 80036DDC  48 22 FD 59 */	bl __mi__4cXyzCFRC3Vec
/* 80036DE0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80036DE4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80036DE8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80036DEC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80036DF0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80036DF4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80036DF8  48 00 00 48 */	b lbl_80036E40
lbl_80036DFC:
/* 80036DFC  38 61 00 18 */	addi r3, r1, 0x18
/* 80036E00  38 81 00 54 */	addi r4, r1, 0x54
/* 80036E04  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80036E08  48 22 FD 2D */	bl __mi__4cXyzCFRC3Vec
/* 80036E0C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80036E10  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80036E14  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80036E18  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80036E1C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80036E20  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80036E24  48 00 00 1C */	b lbl_80036E40
lbl_80036E28:
/* 80036E28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036E2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036E30  80 9E 00 08 */	lwz r4, 8(r30)
/* 80036E34  38 84 00 0C */	addi r4, r4, 0xc
/* 80036E38  38 A1 00 60 */	addi r5, r1, 0x60
/* 80036E3C  48 31 00 11 */	bl PSMTXMultVecSR
lbl_80036E40:
/* 80036E40  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80036E44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80036E48  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 80036E4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80036E50  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80036E54  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80036E58  38 61 00 0C */	addi r3, r1, 0xc
/* 80036E5C  48 31 02 DD */	bl PSVECSquareMag
/* 80036E60  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 80036E64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036E68  40 81 00 58 */	ble lbl_80036EC0
/* 80036E6C  FC 00 08 34 */	frsqrte f0, f1
/* 80036E70  C8 82 83 70 */	lfd f4, lit_4143(r2)
/* 80036E74  FC 44 00 32 */	fmul f2, f4, f0
/* 80036E78  C8 62 83 78 */	lfd f3, lit_4144(r2)
/* 80036E7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80036E80  FC 01 00 32 */	fmul f0, f1, f0
/* 80036E84  FC 03 00 28 */	fsub f0, f3, f0
/* 80036E88  FC 02 00 32 */	fmul f0, f2, f0
/* 80036E8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80036E90  FC 00 00 32 */	fmul f0, f0, f0
/* 80036E94  FC 01 00 32 */	fmul f0, f1, f0
/* 80036E98  FC 03 00 28 */	fsub f0, f3, f0
/* 80036E9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80036EA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80036EA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80036EA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80036EAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80036EB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80036EB4  FC 41 00 32 */	fmul f2, f1, f0
/* 80036EB8  FC 40 10 18 */	frsp f2, f2
/* 80036EBC  48 00 00 90 */	b lbl_80036F4C
lbl_80036EC0:
/* 80036EC0  C8 02 83 80 */	lfd f0, lit_4145(r2)
/* 80036EC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036EC8  40 80 00 10 */	bge lbl_80036ED8
/* 80036ECC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80036ED0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80036ED4  48 00 00 78 */	b lbl_80036F4C
lbl_80036ED8:
/* 80036ED8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80036EDC  80 81 00 08 */	lwz r4, 8(r1)
/* 80036EE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80036EE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80036EE8  7C 03 00 00 */	cmpw r3, r0
/* 80036EEC  41 82 00 14 */	beq lbl_80036F00
/* 80036EF0  40 80 00 40 */	bge lbl_80036F30
/* 80036EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80036EF8  41 82 00 20 */	beq lbl_80036F18
/* 80036EFC  48 00 00 34 */	b lbl_80036F30
lbl_80036F00:
/* 80036F00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80036F04  41 82 00 0C */	beq lbl_80036F10
/* 80036F08  38 00 00 01 */	li r0, 1
/* 80036F0C  48 00 00 28 */	b lbl_80036F34
lbl_80036F10:
/* 80036F10  38 00 00 02 */	li r0, 2
/* 80036F14  48 00 00 20 */	b lbl_80036F34
lbl_80036F18:
/* 80036F18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80036F1C  41 82 00 0C */	beq lbl_80036F28
/* 80036F20  38 00 00 05 */	li r0, 5
/* 80036F24  48 00 00 10 */	b lbl_80036F34
lbl_80036F28:
/* 80036F28  38 00 00 03 */	li r0, 3
/* 80036F2C  48 00 00 08 */	b lbl_80036F34
lbl_80036F30:
/* 80036F30  38 00 00 04 */	li r0, 4
lbl_80036F34:
/* 80036F34  2C 00 00 01 */	cmpwi r0, 1
/* 80036F38  40 82 00 10 */	bne lbl_80036F48
/* 80036F3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80036F40  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80036F44  48 00 00 08 */	b lbl_80036F4C
lbl_80036F48:
/* 80036F48  FC 40 08 90 */	fmr f2, f1
lbl_80036F4C:
/* 80036F4C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80036F50  48 23 07 25 */	bl cM_atan2s__Fff
/* 80036F54  B0 7D 00 00 */	sth r3, 0(r29)
/* 80036F58  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80036F5C  FC 20 00 50 */	fneg f1, f0
/* 80036F60  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80036F64  FC 40 00 50 */	fneg f2, f0
/* 80036F68  48 23 07 0D */	bl cM_atan2s__Fff
/* 80036F6C  B0 7D 00 02 */	sth r3, 2(r29)
/* 80036F70  38 00 00 00 */	li r0, 0
/* 80036F74  B0 1D 00 04 */	sth r0, 4(r29)
/* 80036F78  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036F7C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036F80  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80036F84  7F E3 FB 78 */	mr r3, r31
lbl_80036F88:
/* 80036F88  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80036F8C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80036F90  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80036F94  48 32 B2 8D */	bl _restgpr_27
/* 80036F98  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80036F9C  7C 08 03 A6 */	mtlr r0
/* 80036FA0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80036FA4  4E 80 00 20 */	blr 
