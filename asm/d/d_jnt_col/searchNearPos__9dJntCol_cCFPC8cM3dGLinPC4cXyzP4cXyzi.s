lbl_80035DC8:
/* 80035DC8  94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 80035DCC  7C 08 02 A6 */	mflr r0
/* 80035DD0  90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 80035DD4  DB E1 02 A0 */	stfd f31, 0x2a0(r1)
/* 80035DD8  F3 E1 02 A8 */	psq_st f31, 680(r1), 0, 0 /* qr0 */
/* 80035DDC  DB C1 02 90 */	stfd f30, 0x290(r1)
/* 80035DE0  F3 C1 02 98 */	psq_st f30, 664(r1), 0, 0 /* qr0 */
/* 80035DE4  DB A1 02 80 */	stfd f29, 0x280(r1)
/* 80035DE8  F3 A1 02 88 */	psq_st f29, 648(r1), 0, 0 /* qr0 */
/* 80035DEC  DB 81 02 70 */	stfd f28, 0x270(r1)
/* 80035DF0  F3 81 02 78 */	psq_st f28, 632(r1), 0, 0 /* qr0 */
/* 80035DF4  39 61 02 70 */	addi r11, r1, 0x270
/* 80035DF8  48 32 C3 BD */	bl _savegpr_19
/* 80035DFC  7C 7A 1B 78 */	mr r26, r3
/* 80035E00  7C 9E 23 78 */	mr r30, r4
/* 80035E04  7C BD 2B 78 */	mr r29, r5
/* 80035E08  7C DC 33 78 */	mr r28, r6
/* 80035E0C  7C F7 3B 78 */	mr r23, r7
/* 80035E10  83 E3 00 00 */	lwz r31, 0(r3)
/* 80035E14  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 80035E18  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80035E1C  90 01 02 28 */	stw r0, 0x228(r1)
/* 80035E20  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha
/* 80035E24  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80035E28  90 01 02 14 */	stw r0, 0x214(r1)
/* 80035E2C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80035E30  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80035E34  90 01 01 FC */	stw r0, 0x1fc(r1)
/* 80035E38  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80035E3C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80035E40  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 80035E44  3C 60 80 45 */	lis r3, __float_max@ha
/* 80035E48  C3 C3 0A E8 */	lfs f30, __float_max@l(r3)
/* 80035E4C  3B 00 00 00 */	li r24, 0
/* 80035E50  3B 20 FF FF */	li r25, -1
/* 80035E54  C3 E2 83 64 */	lfs f31, lit_4141(r2)
/* 80035E58  3B 60 00 00 */	li r27, 0
/* 80035E5C  3A 81 01 DC */	addi r20, r1, 0x1dc
/* 80035E60  82 DA 00 0C */	lwz r22, 0xc(r26)
/* 80035E64  82 BA 00 08 */	lwz r21, 8(r26)
/* 80035E68  48 00 0B 80 */	b lbl_800369E8
lbl_80035E6C:
/* 80035E6C  38 00 00 01 */	li r0, 1
/* 80035E70  7C 00 D8 30 */	slw r0, r0, r27
/* 80035E74  7E C0 00 39 */	and. r0, r22, r0
/* 80035E78  40 82 0B 68 */	bne lbl_800369E0
/* 80035E7C  2C 17 00 00 */	cmpwi r23, 0
/* 80035E80  41 82 00 10 */	beq lbl_80035E90
/* 80035E84  88 1F 00 01 */	lbz r0, 1(r31)
/* 80035E88  28 00 00 03 */	cmplwi r0, 3
/* 80035E8C  40 82 0B 54 */	bne lbl_800369E0
lbl_80035E90:
/* 80035E90  80 7A 00 04 */	lwz r3, 4(r26)
/* 80035E94  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80035E98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80035E9C  A8 1F 00 02 */	lha r0, 2(r31)
/* 80035EA0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80035EA4  7C 63 02 14 */	add r3, r3, r0
/* 80035EA8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80035EAC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80035EB0  48 31 06 01 */	bl PSMTXCopy
/* 80035EB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80035EB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80035EBC  80 9F 00 08 */	lwz r4, 8(r31)
/* 80035EC0  38 A1 01 94 */	addi r5, r1, 0x194
/* 80035EC4  48 31 0E A9 */	bl PSMTXMultVec
/* 80035EC8  88 1F 00 00 */	lbz r0, 0(r31)
/* 80035ECC  28 00 00 00 */	cmplwi r0, 0
/* 80035ED0  40 82 01 20 */	bne lbl_80035FF0
/* 80035ED4  38 61 02 18 */	addi r3, r1, 0x218
/* 80035ED8  38 81 01 94 */	addi r4, r1, 0x194
/* 80035EDC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80035EE0  48 23 97 85 */	bl Set__8cM3dGSphFRC4cXyzf
/* 80035EE4  38 61 02 18 */	addi r3, r1, 0x218
/* 80035EE8  7F C4 F3 78 */	mr r4, r30
/* 80035EEC  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 80035EF0  38 C1 01 A0 */	addi r6, r1, 0x1a0
/* 80035EF4  48 23 55 F5 */	bl cM3d_Cross_LinSph_CrossPos__FRC8cM3dGSphRC8cM3dGLinP3VecP3Vec
/* 80035EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80035EFC  41 82 00 84 */	beq lbl_80035F80
/* 80035F00  2C 03 00 01 */	cmpwi r3, 1
/* 80035F04  40 82 00 20 */	bne lbl_80035F24
/* 80035F08  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 80035F0C  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80035F10  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 80035F14  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80035F18  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 80035F1C  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80035F20  48 00 0A 28 */	b lbl_80036948
lbl_80035F24:
/* 80035F24  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80035F28  7F C4 F3 78 */	mr r4, r30
/* 80035F2C  48 31 14 71 */	bl PSVECSquareDistance
/* 80035F30  FF 80 08 90 */	fmr f28, f1
/* 80035F34  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80035F38  7F C4 F3 78 */	mr r4, r30
/* 80035F3C  48 31 14 61 */	bl PSVECSquareDistance
/* 80035F40  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 80035F44  40 80 00 20 */	bge lbl_80035F64
/* 80035F48  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 80035F4C  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80035F50  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 80035F54  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80035F58  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 80035F5C  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80035F60  48 00 09 E8 */	b lbl_80036948
lbl_80035F64:
/* 80035F64  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 80035F68  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80035F6C  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 80035F70  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80035F74  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 80035F78  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80035F7C  48 00 09 CC */	b lbl_80036948
lbl_80035F80:
/* 80035F80  38 61 01 64 */	addi r3, r1, 0x164
/* 80035F84  7F A4 EB 78 */	mr r4, r29
/* 80035F88  38 A1 01 94 */	addi r5, r1, 0x194
/* 80035F8C  48 23 0B A9 */	bl __mi__4cXyzCFRC3Vec
/* 80035F90  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80035F94  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80035F98  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 80035F9C  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80035FA0  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 80035FA4  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80035FA8  38 61 01 58 */	addi r3, r1, 0x158
/* 80035FAC  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80035FB0  48 23 0F 99 */	bl normalizeZP__4cXyzFv
/* 80035FB4  38 61 01 4C */	addi r3, r1, 0x14c
/* 80035FB8  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80035FBC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80035FC0  48 23 0B C5 */	bl __ml__4cXyzCFf
/* 80035FC4  38 61 01 40 */	addi r3, r1, 0x140
/* 80035FC8  38 81 01 94 */	addi r4, r1, 0x194
/* 80035FCC  38 A1 01 4C */	addi r5, r1, 0x14c
/* 80035FD0  48 23 0B 15 */	bl __pl__4cXyzCFRC3Vec
/* 80035FD4  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 80035FD8  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80035FDC  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 80035FE0  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80035FE4  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 80035FE8  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80035FEC  48 00 09 5C */	b lbl_80036948
lbl_80035FF0:
/* 80035FF0  28 00 00 01 */	cmplwi r0, 1
/* 80035FF4  40 82 06 C0 */	bne lbl_800366B4
/* 80035FF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80035FFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80036000  80 9F 00 08 */	lwz r4, 8(r31)
/* 80036004  38 84 00 0C */	addi r4, r4, 0xc
/* 80036008  38 A1 01 88 */	addi r5, r1, 0x188
/* 8003600C  48 31 0D 61 */	bl PSMTXMultVec
/* 80036010  38 61 01 34 */	addi r3, r1, 0x134
/* 80036014  38 81 01 88 */	addi r4, r1, 0x188
/* 80036018  38 A1 01 94 */	addi r5, r1, 0x194
/* 8003601C  48 23 0B 19 */	bl __mi__4cXyzCFRC3Vec
/* 80036020  C0 41 01 34 */	lfs f2, 0x134(r1)
/* 80036024  D0 41 01 B8 */	stfs f2, 0x1b8(r1)
/* 80036028  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 8003602C  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80036030  C0 21 01 3C */	lfs f1, 0x13c(r1)
/* 80036034  D0 21 01 C0 */	stfs f1, 0x1c0(r1)
/* 80036038  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8003603C  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 80036040  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80036044  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80036048  38 61 00 20 */	addi r3, r1, 0x20
/* 8003604C  48 31 10 ED */	bl PSVECSquareMag
/* 80036050  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 80036054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036058  40 81 00 58 */	ble lbl_800360B0
/* 8003605C  FC 00 08 34 */	frsqrte f0, f1
/* 80036060  C8 82 83 70 */	lfd f4, lit_4143(r2)
/* 80036064  FC 44 00 32 */	fmul f2, f4, f0
/* 80036068  C8 62 83 78 */	lfd f3, lit_4144(r2)
/* 8003606C  FC 00 00 32 */	fmul f0, f0, f0
/* 80036070  FC 01 00 32 */	fmul f0, f1, f0
/* 80036074  FC 03 00 28 */	fsub f0, f3, f0
/* 80036078  FC 02 00 32 */	fmul f0, f2, f0
/* 8003607C  FC 44 00 32 */	fmul f2, f4, f0
/* 80036080  FC 00 00 32 */	fmul f0, f0, f0
/* 80036084  FC 01 00 32 */	fmul f0, f1, f0
/* 80036088  FC 03 00 28 */	fsub f0, f3, f0
/* 8003608C  FC 02 00 32 */	fmul f0, f2, f0
/* 80036090  FC 44 00 32 */	fmul f2, f4, f0
/* 80036094  FC 00 00 32 */	fmul f0, f0, f0
/* 80036098  FC 01 00 32 */	fmul f0, f1, f0
/* 8003609C  FC 03 00 28 */	fsub f0, f3, f0
/* 800360A0  FC 02 00 32 */	fmul f0, f2, f0
/* 800360A4  FC 21 00 32 */	fmul f1, f1, f0
/* 800360A8  FC 20 08 18 */	frsp f1, f1
/* 800360AC  48 00 00 88 */	b lbl_80036134
lbl_800360B0:
/* 800360B0  C8 02 83 80 */	lfd f0, lit_4145(r2)
/* 800360B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800360B8  40 80 00 10 */	bge lbl_800360C8
/* 800360BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800360C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800360C4  48 00 00 70 */	b lbl_80036134
lbl_800360C8:
/* 800360C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800360CC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800360D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800360D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 800360D8  7C 03 00 00 */	cmpw r3, r0
/* 800360DC  41 82 00 14 */	beq lbl_800360F0
/* 800360E0  40 80 00 40 */	bge lbl_80036120
/* 800360E4  2C 03 00 00 */	cmpwi r3, 0
/* 800360E8  41 82 00 20 */	beq lbl_80036108
/* 800360EC  48 00 00 34 */	b lbl_80036120
lbl_800360F0:
/* 800360F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800360F4  41 82 00 0C */	beq lbl_80036100
/* 800360F8  38 00 00 01 */	li r0, 1
/* 800360FC  48 00 00 28 */	b lbl_80036124
lbl_80036100:
/* 80036100  38 00 00 02 */	li r0, 2
/* 80036104  48 00 00 20 */	b lbl_80036124
lbl_80036108:
/* 80036108  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8003610C  41 82 00 0C */	beq lbl_80036118
/* 80036110  38 00 00 05 */	li r0, 5
/* 80036114  48 00 00 10 */	b lbl_80036124
lbl_80036118:
/* 80036118  38 00 00 03 */	li r0, 3
/* 8003611C  48 00 00 08 */	b lbl_80036124
lbl_80036120:
/* 80036120  38 00 00 04 */	li r0, 4
lbl_80036124:
/* 80036124  2C 00 00 01 */	cmpwi r0, 1
/* 80036128  40 82 00 0C */	bne lbl_80036134
/* 8003612C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80036130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80036134:
/* 80036134  C0 02 83 88 */	lfs f0, lit_4146(r2)
/* 80036138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8003613C  40 81 01 BC */	ble lbl_800362F8
/* 80036140  38 61 01 94 */	addi r3, r1, 0x194
/* 80036144  4B FD 6C 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80036148  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8003614C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80036150  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 80036154  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80036158  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 8003615C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80036160  38 61 00 14 */	addi r3, r1, 0x14
/* 80036164  48 31 0F D5 */	bl PSVECSquareMag
/* 80036168  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 8003616C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036170  40 81 00 58 */	ble lbl_800361C8
/* 80036174  FC 00 08 34 */	frsqrte f0, f1
/* 80036178  C8 82 83 70 */	lfd f4, lit_4143(r2)
/* 8003617C  FC 44 00 32 */	fmul f2, f4, f0
/* 80036180  C8 62 83 78 */	lfd f3, lit_4144(r2)
/* 80036184  FC 00 00 32 */	fmul f0, f0, f0
/* 80036188  FC 01 00 32 */	fmul f0, f1, f0
/* 8003618C  FC 03 00 28 */	fsub f0, f3, f0
/* 80036190  FC 02 00 32 */	fmul f0, f2, f0
/* 80036194  FC 44 00 32 */	fmul f2, f4, f0
/* 80036198  FC 00 00 32 */	fmul f0, f0, f0
/* 8003619C  FC 01 00 32 */	fmul f0, f1, f0
/* 800361A0  FC 03 00 28 */	fsub f0, f3, f0
/* 800361A4  FC 02 00 32 */	fmul f0, f2, f0
/* 800361A8  FC 44 00 32 */	fmul f2, f4, f0
/* 800361AC  FC 00 00 32 */	fmul f0, f0, f0
/* 800361B0  FC 01 00 32 */	fmul f0, f1, f0
/* 800361B4  FC 03 00 28 */	fsub f0, f3, f0
/* 800361B8  FC 02 00 32 */	fmul f0, f2, f0
/* 800361BC  FC 21 00 32 */	fmul f1, f1, f0
/* 800361C0  FC 20 08 18 */	frsp f1, f1
/* 800361C4  48 00 00 88 */	b lbl_8003624C
lbl_800361C8:
/* 800361C8  C8 02 83 80 */	lfd f0, lit_4145(r2)
/* 800361CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800361D0  40 80 00 10 */	bge lbl_800361E0
/* 800361D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800361D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800361DC  48 00 00 70 */	b lbl_8003624C
lbl_800361E0:
/* 800361E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800361E4  80 81 00 08 */	lwz r4, 8(r1)
/* 800361E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800361EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800361F0  7C 03 00 00 */	cmpw r3, r0
/* 800361F4  41 82 00 14 */	beq lbl_80036208
/* 800361F8  40 80 00 40 */	bge lbl_80036238
/* 800361FC  2C 03 00 00 */	cmpwi r3, 0
/* 80036200  41 82 00 20 */	beq lbl_80036220
/* 80036204  48 00 00 34 */	b lbl_80036238
lbl_80036208:
/* 80036208  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8003620C  41 82 00 0C */	beq lbl_80036218
/* 80036210  38 00 00 01 */	li r0, 1
/* 80036214  48 00 00 28 */	b lbl_8003623C
lbl_80036218:
/* 80036218  38 00 00 02 */	li r0, 2
/* 8003621C  48 00 00 20 */	b lbl_8003623C
lbl_80036220:
/* 80036220  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80036224  41 82 00 0C */	beq lbl_80036230
/* 80036228  38 00 00 05 */	li r0, 5
/* 8003622C  48 00 00 10 */	b lbl_8003623C
lbl_80036230:
/* 80036230  38 00 00 03 */	li r0, 3
/* 80036234  48 00 00 08 */	b lbl_8003623C
lbl_80036238:
/* 80036238  38 00 00 04 */	li r0, 4
lbl_8003623C:
/* 8003623C  2C 00 00 01 */	cmpwi r0, 1
/* 80036240  40 82 00 0C */	bne lbl_8003624C
/* 80036244  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80036248  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8003624C:
/* 8003624C  FC 20 08 50 */	fneg f1, f1
/* 80036250  C0 41 01 BC */	lfs f2, 0x1bc(r1)
/* 80036254  48 23 14 21 */	bl cM_atan2s__Fff
/* 80036258  7C 64 1B 78 */	mr r4, r3
/* 8003625C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80036260  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80036264  4B FD 61 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 80036268  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8003626C  FC 20 00 50 */	fneg f1, f0
/* 80036270  C0 41 01 C0 */	lfs f2, 0x1c0(r1)
/* 80036274  48 23 14 01 */	bl cM_atan2s__Fff
/* 80036278  7C 64 1B 78 */	mr r4, r3
/* 8003627C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80036280  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80036284  4B FD 61 B1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80036288  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 8003628C  FC 20 00 50 */	fneg f1, f0
/* 80036290  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 80036294  FC 40 00 50 */	fneg f2, f0
/* 80036298  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 8003629C  FC 60 00 50 */	fneg f3, f0
/* 800362A0  4B FD 6A FD */	bl transM__14mDoMtx_stack_cFfff
/* 800362A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800362A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800362AC  38 81 01 88 */	addi r4, r1, 0x188
/* 800362B0  38 A1 01 A0 */	addi r5, r1, 0x1a0
/* 800362B4  48 31 0A B9 */	bl PSMTXMultVec
/* 800362B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800362BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800362C0  7F C4 F3 78 */	mr r4, r30
/* 800362C4  38 A1 01 7C */	addi r5, r1, 0x17c
/* 800362C8  48 31 0A A5 */	bl PSMTXMultVec
/* 800362CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800362D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800362D4  38 9E 00 0C */	addi r4, r30, 0xc
/* 800362D8  38 A1 01 70 */	addi r5, r1, 0x170
/* 800362DC  48 31 0A 91 */	bl PSMTXMultVec
/* 800362E0  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 800362E4  38 81 01 7C */	addi r4, r1, 0x17c
/* 800362E8  38 A1 01 70 */	addi r5, r1, 0x170
/* 800362EC  48 23 8F FD */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800362F0  3A 60 00 01 */	li r19, 1
/* 800362F4  48 00 00 30 */	b lbl_80036324
lbl_800362F8:
/* 800362F8  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 800362FC  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80036300  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 80036304  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80036308  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 8003630C  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80036310  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 80036314  7F C4 F3 78 */	mr r4, r30
/* 80036318  38 BE 00 0C */	addi r5, r30, 0xc
/* 8003631C  48 23 8F CD */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80036320  3A 60 00 00 */	li r19, 0
lbl_80036324:
/* 80036324  38 61 02 00 */	addi r3, r1, 0x200
/* 80036328  38 81 01 94 */	addi r4, r1, 0x194
/* 8003632C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80036330  C0 41 01 A4 */	lfs f2, 0x1a4(r1)
/* 80036334  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 80036338  EC 42 00 28 */	fsubs f2, f2, f0
/* 8003633C  48 23 8E 45 */	bl Set__8cM3dGCylFRC4cXyzff
/* 80036340  38 61 02 00 */	addi r3, r1, 0x200
/* 80036344  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 80036348  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 8003634C  38 C1 01 A0 */	addi r6, r1, 0x1a0
/* 80036350  48 23 65 F5 */	bl cM3d_Cross_CylLin__FPC8cM3dGCylPC8cM3dGLinP3VecP3Vec
/* 80036354  2C 03 00 00 */	cmpwi r3, 0
/* 80036358  41 82 00 50 */	beq lbl_800363A8
/* 8003635C  2C 13 00 00 */	cmpwi r19, 0
/* 80036360  41 82 00 2C */	beq lbl_8003638C
/* 80036364  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80036368  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8003636C  7C 64 1B 78 */	mr r4, r3
/* 80036370  48 31 02 41 */	bl PSMTXInverse
/* 80036374  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80036378  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8003637C  38 81 01 AC */	addi r4, r1, 0x1ac
/* 80036380  38 A1 01 C4 */	addi r5, r1, 0x1c4
/* 80036384  48 31 09 E9 */	bl PSMTXMultVec
/* 80036388  48 00 05 C0 */	b lbl_80036948
lbl_8003638C:
/* 8003638C  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 80036390  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80036394  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 80036398  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 8003639C  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 800363A0  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 800363A4  48 00 05 A4 */	b lbl_80036948
lbl_800363A8:
/* 800363A8  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 800363AC  38 81 01 94 */	addi r4, r1, 0x194
/* 800363B0  38 A1 01 88 */	addi r5, r1, 0x188
/* 800363B4  48 23 8F 35 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800363B8  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 800363BC  7F A4 EB 78 */	mr r4, r29
/* 800363C0  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 800363C4  48 23 85 BD */	bl cM3d_lineVsPosSuisenCross__FPC8cM3dGLinPC3VecP3Vec
/* 800363C8  FF A0 08 90 */	fmr f29, f1
/* 800363CC  38 61 01 28 */	addi r3, r1, 0x128
/* 800363D0  7F A4 EB 78 */	mr r4, r29
/* 800363D4  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 800363D8  48 23 07 5D */	bl __mi__4cXyzCFRC3Vec
/* 800363DC  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 800363E0  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 800363E4  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 800363E8  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 800363EC  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 800363F0  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 800363F4  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 800363F8  48 31 0D 41 */	bl PSVECSquareMag
/* 800363FC  FF 80 08 90 */	fmr f28, f1
/* 80036400  C0 02 83 8C */	lfs f0, lit_4147(r2)
/* 80036404  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80036408  40 80 00 EC */	bge lbl_800364F4
/* 8003640C  38 61 01 1C */	addi r3, r1, 0x11c
/* 80036410  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 80036414  7E 85 A3 78 */	mr r5, r20
/* 80036418  48 23 07 1D */	bl __mi__4cXyzCFRC3Vec
/* 8003641C  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 80036420  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80036424  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 80036428  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 8003642C  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 80036430  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80036434  38 61 01 10 */	addi r3, r1, 0x110
/* 80036438  7F C4 F3 78 */	mr r4, r30
/* 8003643C  38 BE 00 0C */	addi r5, r30, 0xc
/* 80036440  48 23 06 F5 */	bl __mi__4cXyzCFRC3Vec
/* 80036444  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80036448  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 8003644C  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80036450  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80036454  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80036458  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 8003645C  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80036460  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 80036464  48 31 0D 31 */	bl PSVECDotProduct
/* 80036468  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 8003646C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036470  40 81 00 20 */	ble lbl_80036490
/* 80036474  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 80036478  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 8003647C  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 80036480  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80036484  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 80036488  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 8003648C  48 00 04 BC */	b lbl_80036948
lbl_80036490:
/* 80036490  40 80 00 20 */	bge lbl_800364B0
/* 80036494  C0 01 01 D0 */	lfs f0, 0x1d0(r1)
/* 80036498  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 8003649C  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 800364A0  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 800364A4  C0 01 01 D8 */	lfs f0, 0x1d8(r1)
/* 800364A8  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 800364AC  48 00 04 9C */	b lbl_80036948
lbl_800364B0:
/* 800364B0  C0 02 83 90 */	lfs f0, lit_4148(r2)
/* 800364B4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 800364B8  40 80 00 20 */	bge lbl_800364D8
/* 800364BC  C0 01 01 D0 */	lfs f0, 0x1d0(r1)
/* 800364C0  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 800364C4  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 800364C8  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 800364CC  C0 01 01 D8 */	lfs f0, 0x1d8(r1)
/* 800364D0  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 800364D4  48 00 04 74 */	b lbl_80036948
lbl_800364D8:
/* 800364D8  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 800364DC  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 800364E0  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 800364E4  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 800364E8  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 800364EC  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 800364F0  48 00 04 58 */	b lbl_80036948
lbl_800364F4:
/* 800364F4  C0 22 83 68 */	lfs f1, lit_4142(r2)
/* 800364F8  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 800364FC  4C 41 13 82 */	cror 2, 1, 2
/* 80036500  40 82 00 70 */	bne lbl_80036570
/* 80036504  C0 02 83 94 */	lfs f0, lit_4149(r2)
/* 80036508  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8003650C  4C 40 13 82 */	cror 2, 0, 2
/* 80036510  40 82 00 60 */	bne lbl_80036570
/* 80036514  FC 1C 08 40 */	fcmpo cr0, f28, f1
/* 80036518  40 81 00 0C */	ble lbl_80036524
/* 8003651C  FC 00 E0 34 */	frsqrte f0, f28
/* 80036520  EF 80 07 32 */	fmuls f28, f0, f28
lbl_80036524:
/* 80036524  38 61 01 04 */	addi r3, r1, 0x104
/* 80036528  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 8003652C  FC 20 E0 90 */	fmr f1, f28
/* 80036530  48 23 06 E9 */	bl __dv__4cXyzCFf
/* 80036534  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80036538  38 81 01 04 */	addi r4, r1, 0x104
/* 8003653C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80036540  48 23 06 45 */	bl __ml__4cXyzCFf
/* 80036544  38 61 00 EC */	addi r3, r1, 0xec
/* 80036548  38 81 01 AC */	addi r4, r1, 0x1ac
/* 8003654C  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80036550  48 23 05 95 */	bl __pl__4cXyzCFRC3Vec
/* 80036554  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80036558  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 8003655C  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80036560  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80036564  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80036568  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 8003656C  48 00 03 DC */	b lbl_80036948
lbl_80036570:
/* 80036570  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80036574  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 80036578  7E 85 A3 78 */	mr r5, r20
/* 8003657C  48 23 05 B9 */	bl __mi__4cXyzCFRC3Vec
/* 80036580  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80036584  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80036588  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8003658C  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80036590  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80036594  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80036598  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8003659C  7F C4 F3 78 */	mr r4, r30
/* 800365A0  38 BE 00 0C */	addi r5, r30, 0xc
/* 800365A4  48 23 05 91 */	bl __mi__4cXyzCFRC3Vec
/* 800365A8  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 800365AC  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 800365B0  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 800365B4  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 800365B8  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 800365BC  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 800365C0  38 61 01 AC */	addi r3, r1, 0x1ac
/* 800365C4  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 800365C8  48 31 0B CD */	bl PSVECDotProduct
/* 800365CC  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 800365D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800365D4  40 81 00 20 */	ble lbl_800365F4
/* 800365D8  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 800365DC  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 800365E0  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 800365E4  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 800365E8  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 800365EC  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 800365F0  48 00 00 64 */	b lbl_80036654
lbl_800365F4:
/* 800365F4  40 80 00 20 */	bge lbl_80036614
/* 800365F8  C0 01 01 D0 */	lfs f0, 0x1d0(r1)
/* 800365FC  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80036600  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 80036604  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80036608  C0 01 01 D8 */	lfs f0, 0x1d8(r1)
/* 8003660C  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80036610  48 00 00 44 */	b lbl_80036654
lbl_80036614:
/* 80036614  C0 02 83 90 */	lfs f0, lit_4148(r2)
/* 80036618  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8003661C  40 80 00 20 */	bge lbl_8003663C
/* 80036620  C0 01 01 D0 */	lfs f0, 0x1d0(r1)
/* 80036624  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80036628  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 8003662C  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80036630  C0 01 01 D8 */	lfs f0, 0x1d8(r1)
/* 80036634  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80036638  48 00 00 1C */	b lbl_80036654
lbl_8003663C:
/* 8003663C  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 80036640  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80036644  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 80036648  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 8003664C  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 80036650  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
lbl_80036654:
/* 80036654  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 80036658  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8003665C  40 81 00 0C */	ble lbl_80036668
/* 80036660  FC 00 E0 34 */	frsqrte f0, f28
/* 80036664  EF 80 07 32 */	fmuls f28, f0, f28
lbl_80036668:
/* 80036668  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8003666C  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80036670  FC 20 E0 90 */	fmr f1, f28
/* 80036674  48 23 05 A5 */	bl __dv__4cXyzCFf
/* 80036678  38 61 00 BC */	addi r3, r1, 0xbc
/* 8003667C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80036680  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80036684  48 23 05 01 */	bl __ml__4cXyzCFf
/* 80036688  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8003668C  38 81 01 AC */	addi r4, r1, 0x1ac
/* 80036690  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80036694  48 23 04 51 */	bl __pl__4cXyzCFRC3Vec
/* 80036698  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8003669C  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 800366A0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 800366A4  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 800366A8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800366AC  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 800366B0  48 00 02 98 */	b lbl_80036948
lbl_800366B4:
/* 800366B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800366B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800366BC  80 9F 00 08 */	lwz r4, 8(r31)
/* 800366C0  38 84 00 0C */	addi r4, r4, 0xc
/* 800366C4  38 A1 01 B8 */	addi r5, r1, 0x1b8
/* 800366C8  48 31 07 85 */	bl PSMTXMultVecSR
/* 800366CC  38 61 01 EC */	addi r3, r1, 0x1ec
/* 800366D0  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 800366D4  38 A1 01 94 */	addi r5, r1, 0x194
/* 800366D8  48 23 8D ED */	bl SetupNP0__8cM3dGPlaFRC3VecRC3Vec
/* 800366DC  7F C3 F3 78 */	mr r3, r30
/* 800366E0  38 81 01 EC */	addi r4, r1, 0x1ec
/* 800366E4  38 A1 01 C4 */	addi r5, r1, 0x1c4
/* 800366E8  38 C0 00 01 */	li r6, 1
/* 800366EC  38 E0 00 01 */	li r7, 1
/* 800366F0  48 23 28 45 */	bl cM3d_Cross_LinPla__FPC8cM3dGLinPC8cM3dGPlaP3Vecbb
/* 800366F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800366F8  41 82 01 70 */	beq lbl_80036868
/* 800366FC  38 61 01 94 */	addi r3, r1, 0x194
/* 80036700  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80036704  48 31 0C 99 */	bl PSVECSquareDistance
/* 80036708  C0 02 83 68 */	lfs f0, lit_4142(r2)
/* 8003670C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036710  40 81 00 58 */	ble lbl_80036768
/* 80036714  FC 00 08 34 */	frsqrte f0, f1
/* 80036718  C8 82 83 70 */	lfd f4, lit_4143(r2)
/* 8003671C  FC 44 00 32 */	fmul f2, f4, f0
/* 80036720  C8 62 83 78 */	lfd f3, lit_4144(r2)
/* 80036724  FC 00 00 32 */	fmul f0, f0, f0
/* 80036728  FC 01 00 32 */	fmul f0, f1, f0
/* 8003672C  FC 03 00 28 */	fsub f0, f3, f0
/* 80036730  FC 02 00 32 */	fmul f0, f2, f0
/* 80036734  FC 44 00 32 */	fmul f2, f4, f0
/* 80036738  FC 00 00 32 */	fmul f0, f0, f0
/* 8003673C  FC 01 00 32 */	fmul f0, f1, f0
/* 80036740  FC 03 00 28 */	fsub f0, f3, f0
/* 80036744  FC 02 00 32 */	fmul f0, f2, f0
/* 80036748  FC 44 00 32 */	fmul f2, f4, f0
/* 8003674C  FC 00 00 32 */	fmul f0, f0, f0
/* 80036750  FC 01 00 32 */	fmul f0, f1, f0
/* 80036754  FC 03 00 28 */	fsub f0, f3, f0
/* 80036758  FC 02 00 32 */	fmul f0, f2, f0
/* 8003675C  FC 21 00 32 */	fmul f1, f1, f0
/* 80036760  FC 20 08 18 */	frsp f1, f1
/* 80036764  48 00 00 88 */	b lbl_800367EC
lbl_80036768:
/* 80036768  C8 02 83 80 */	lfd f0, lit_4145(r2)
/* 8003676C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036770  40 80 00 10 */	bge lbl_80036780
/* 80036774  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80036778  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8003677C  48 00 00 70 */	b lbl_800367EC
lbl_80036780:
/* 80036780  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80036784  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80036788  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8003678C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80036790  7C 03 00 00 */	cmpw r3, r0
/* 80036794  41 82 00 14 */	beq lbl_800367A8
/* 80036798  40 80 00 40 */	bge lbl_800367D8
/* 8003679C  2C 03 00 00 */	cmpwi r3, 0
/* 800367A0  41 82 00 20 */	beq lbl_800367C0
/* 800367A4  48 00 00 34 */	b lbl_800367D8
lbl_800367A8:
/* 800367A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800367AC  41 82 00 0C */	beq lbl_800367B8
/* 800367B0  38 00 00 01 */	li r0, 1
/* 800367B4  48 00 00 28 */	b lbl_800367DC
lbl_800367B8:
/* 800367B8  38 00 00 02 */	li r0, 2
/* 800367BC  48 00 00 20 */	b lbl_800367DC
lbl_800367C0:
/* 800367C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800367C4  41 82 00 0C */	beq lbl_800367D0
/* 800367C8  38 00 00 05 */	li r0, 5
/* 800367CC  48 00 00 10 */	b lbl_800367DC
lbl_800367D0:
/* 800367D0  38 00 00 03 */	li r0, 3
/* 800367D4  48 00 00 08 */	b lbl_800367DC
lbl_800367D8:
/* 800367D8  38 00 00 04 */	li r0, 4
lbl_800367DC:
/* 800367DC  2C 00 00 01 */	cmpwi r0, 1
/* 800367E0  40 82 00 0C */	bne lbl_800367EC
/* 800367E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800367E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800367EC:
/* 800367EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800367F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800367F4  41 80 01 54 */	blt lbl_80036948
/* 800367F8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 800367FC  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80036800  38 A1 01 94 */	addi r5, r1, 0x194
/* 80036804  48 23 03 31 */	bl __mi__4cXyzCFRC3Vec
/* 80036808  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8003680C  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80036810  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80036814  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80036818  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8003681C  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80036820  38 61 00 98 */	addi r3, r1, 0x98
/* 80036824  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80036828  48 23 07 21 */	bl normalizeZP__4cXyzFv
/* 8003682C  38 61 00 8C */	addi r3, r1, 0x8c
/* 80036830  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80036834  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80036838  48 23 03 4D */	bl __ml__4cXyzCFf
/* 8003683C  38 61 00 80 */	addi r3, r1, 0x80
/* 80036840  38 81 01 94 */	addi r4, r1, 0x194
/* 80036844  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80036848  48 23 02 9D */	bl __pl__4cXyzCFRC3Vec
/* 8003684C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80036850  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80036854  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80036858  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 8003685C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80036860  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80036864  48 00 00 E4 */	b lbl_80036948
lbl_80036868:
/* 80036868  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8003686C  7F A4 EB 78 */	mr r4, r29
/* 80036870  38 BE 00 0C */	addi r5, r30, 0xc
/* 80036874  38 C1 01 C4 */	addi r6, r1, 0x1c4
/* 80036878  48 23 8B 91 */	bl crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz
/* 8003687C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80036880  41 82 00 74 */	beq lbl_800368F4
/* 80036884  38 61 00 74 */	addi r3, r1, 0x74
/* 80036888  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 8003688C  38 A1 01 94 */	addi r5, r1, 0x194
/* 80036890  48 23 02 A5 */	bl __mi__4cXyzCFRC3Vec
/* 80036894  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80036898  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 8003689C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 800368A0  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 800368A4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 800368A8  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 800368AC  38 61 00 68 */	addi r3, r1, 0x68
/* 800368B0  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 800368B4  48 23 06 95 */	bl normalizeZP__4cXyzFv
/* 800368B8  38 61 00 5C */	addi r3, r1, 0x5c
/* 800368BC  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 800368C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 800368C4  48 23 02 C1 */	bl __ml__4cXyzCFf
/* 800368C8  38 61 00 50 */	addi r3, r1, 0x50
/* 800368CC  38 81 01 94 */	addi r4, r1, 0x194
/* 800368D0  38 A1 00 5C */	addi r5, r1, 0x5c
/* 800368D4  48 23 02 11 */	bl __pl__4cXyzCFRC3Vec
/* 800368D8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800368DC  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 800368E0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800368E4  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 800368E8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800368EC  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 800368F0  48 00 00 58 */	b lbl_80036948
lbl_800368F4:
/* 800368F4  38 61 01 EC */	addi r3, r1, 0x1ec
/* 800368F8  7F A4 EB 78 */	mr r4, r29
/* 800368FC  48 23 1F 19 */	bl cM3d_SignedLenPlaAndPos__FPC8cM3dGPlaPC3Vec
/* 80036900  FF 80 08 90 */	fmr f28, f1
/* 80036904  38 61 00 44 */	addi r3, r1, 0x44
/* 80036908  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 8003690C  48 23 06 3D */	bl normalizeZP__4cXyzFv
/* 80036910  38 61 00 38 */	addi r3, r1, 0x38
/* 80036914  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80036918  FC 20 E0 90 */	fmr f1, f28
/* 8003691C  48 23 02 69 */	bl __ml__4cXyzCFf
/* 80036920  38 61 00 2C */	addi r3, r1, 0x2c
/* 80036924  7F A4 EB 78 */	mr r4, r29
/* 80036928  38 A1 00 38 */	addi r5, r1, 0x38
/* 8003692C  48 23 02 09 */	bl __mi__4cXyzCFRC3Vec
/* 80036930  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80036934  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80036938  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8003693C  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80036940  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80036944  D0 01 01 CC */	stfs f0, 0x1cc(r1)
lbl_80036948:
/* 80036948  7F C3 F3 78 */	mr r3, r30
/* 8003694C  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80036950  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 80036954  48 23 80 2D */	bl cM3d_lineVsPosSuisenCross__FPC8cM3dGLinPC3VecP3Vec
/* 80036958  FF 80 08 90 */	fmr f28, f1
/* 8003695C  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80036960  38 81 01 AC */	addi r4, r1, 0x1ac
/* 80036964  48 31 0A 39 */	bl PSVECSquareDistance
/* 80036968  C0 02 83 8C */	lfs f0, lit_4147(r2)
/* 8003696C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80036970  40 80 00 3C */	bge lbl_800369AC
/* 80036974  2C 18 00 00 */	cmpwi r24, 0
/* 80036978  41 82 00 0C */	beq lbl_80036984
/* 8003697C  FC 1F E0 40 */	fcmpo cr0, f31, f28
/* 80036980  40 80 00 60 */	bge lbl_800369E0
lbl_80036984:
/* 80036984  FF E0 E0 90 */	fmr f31, f28
/* 80036988  C0 01 01 C4 */	lfs f0, 0x1c4(r1)
/* 8003698C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80036990  C0 01 01 C8 */	lfs f0, 0x1c8(r1)
/* 80036994  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80036998  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 8003699C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 800369A0  7F 79 DB 78 */	mr r25, r27
/* 800369A4  3B 00 00 01 */	li r24, 1
/* 800369A8  48 00 00 38 */	b lbl_800369E0
lbl_800369AC:
/* 800369AC  2C 18 00 00 */	cmpwi r24, 0
/* 800369B0  40 82 00 30 */	bne lbl_800369E0
/* 800369B4  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 800369B8  4C 41 13 82 */	cror 2, 1, 2
/* 800369BC  40 82 00 24 */	bne lbl_800369E0
/* 800369C0  FF C0 08 90 */	fmr f30, f1
/* 800369C4  C0 01 01 C4 */	lfs f0, 0x1c4(r1)
/* 800369C8  D0 1C 00 00 */	stfs f0, 0(r28)
/* 800369CC  C0 01 01 C8 */	lfs f0, 0x1c8(r1)
/* 800369D0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 800369D4  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 800369D8  D0 1C 00 08 */	stfs f0, 8(r28)
/* 800369DC  7F 79 DB 78 */	mr r25, r27
lbl_800369E0:
/* 800369E0  3B 7B 00 01 */	addi r27, r27, 1
/* 800369E4  3B FF 00 0C */	addi r31, r31, 0xc
lbl_800369E8:
/* 800369E8  7C 1B A8 00 */	cmpw r27, r21
/* 800369EC  41 80 F4 80 */	blt lbl_80035E6C
/* 800369F0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 800369F4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 800369F8  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 800369FC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80036A00  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80036A04  90 01 01 FC */	stw r0, 0x1fc(r1)
/* 80036A08  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha
/* 80036A0C  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80036A10  90 01 02 14 */	stw r0, 0x214(r1)
/* 80036A14  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 80036A18  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80036A1C  90 01 02 28 */	stw r0, 0x228(r1)
/* 80036A20  7F 23 CB 78 */	mr r3, r25
/* 80036A24  E3 E1 02 A8 */	psq_l f31, 680(r1), 0, 0 /* qr0 */
/* 80036A28  CB E1 02 A0 */	lfd f31, 0x2a0(r1)
/* 80036A2C  E3 C1 02 98 */	psq_l f30, 664(r1), 0, 0 /* qr0 */
/* 80036A30  CB C1 02 90 */	lfd f30, 0x290(r1)
/* 80036A34  E3 A1 02 88 */	psq_l f29, 648(r1), 0, 0 /* qr0 */
/* 80036A38  CB A1 02 80 */	lfd f29, 0x280(r1)
/* 80036A3C  E3 81 02 78 */	psq_l f28, 632(r1), 0, 0 /* qr0 */
/* 80036A40  CB 81 02 70 */	lfd f28, 0x270(r1)
/* 80036A44  39 61 02 70 */	addi r11, r1, 0x270
/* 80036A48  48 32 B7 B9 */	bl _restgpr_19
/* 80036A4C  80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 80036A50  7C 08 03 A6 */	mtlr r0
/* 80036A54  38 21 02 B0 */	addi r1, r1, 0x2b0
/* 80036A58  4E 80 00 20 */	blr 
