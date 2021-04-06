lbl_807E8EEC:
/* 807E8EEC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807E8EF0  7C 08 02 A6 */	mflr r0
/* 807E8EF4  90 01 00 64 */	stw r0, 0x64(r1)
/* 807E8EF8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807E8EFC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807E8F00  39 61 00 50 */	addi r11, r1, 0x50
/* 807E8F04  4B B7 92 D9 */	bl _savegpr_29
/* 807E8F08  7C 7E 1B 78 */	mr r30, r3
/* 807E8F0C  7C 9F 23 78 */	mr r31, r4
/* 807E8F10  7C BD 2B 78 */	mr r29, r5
/* 807E8F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E8F18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E8F1C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E8F20  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807E8F24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E8F28  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807E8F2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E8F30  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807E8F34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E8F38  3C 60 80 7F */	lis r3, lit_4621@ha /* 0x807EF7E4@ha */
/* 807E8F3C  C0 23 F7 E4 */	lfs f1, lit_4621@l(r3)  /* 0x807EF7E4@l */
/* 807E8F40  4B A7 EA 4D */	bl cM_rndFX__Ff
/* 807E8F44  FF E0 08 90 */	fmr f31, f1
/* 807E8F48  7F E3 FB 78 */	mr r3, r31
/* 807E8F4C  38 81 00 18 */	addi r4, r1, 0x18
/* 807E8F50  4B A8 7C B5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807E8F54  7C 60 07 34 */	extsh r0, r3
/* 807E8F58  3C 60 80 7F */	lis r3, lit_4170@ha /* 0x807EF7D0@ha */
/* 807E8F5C  C8 23 F7 D0 */	lfd f1, lit_4170@l(r3)  /* 0x807EF7D0@l */
/* 807E8F60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807E8F64  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807E8F68  3C 00 43 30 */	lis r0, 0x4330
/* 807E8F6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 807E8F70  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 807E8F74  EC 00 08 28 */	fsubs f0, f0, f1
/* 807E8F78  EC 00 F8 2A */	fadds f0, f0, f31
/* 807E8F7C  FC 00 00 1E */	fctiwz f0, f0
/* 807E8F80  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807E8F84  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 807E8F88  38 61 00 10 */	addi r3, r1, 0x10
/* 807E8F8C  38 80 00 00 */	li r4, 0
/* 807E8F90  38 C0 00 00 */	li r6, 0
/* 807E8F94  4B A7 E4 61 */	bl __ct__5csXyzFsss
/* 807E8F98  C0 3E 06 A8 */	lfs f1, 0x6a8(r30)
/* 807E8F9C  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807E8FA0  C0 03 F7 70 */	lfs f0, lit_3905@l(r3)  /* 0x807EF770@l */
/* 807E8FA4  EC 01 00 24 */	fdivs f0, f1, f0
/* 807E8FA8  FC 00 00 1E */	fctiwz f0, f0
/* 807E8FAC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807E8FB0  80 E1 00 3C */	lwz r7, 0x3c(r1)
/* 807E8FB4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 807E8FB8  40 82 00 14 */	bne lbl_807E8FCC
/* 807E8FBC  80 9E 04 A4 */	lwz r4, 0x4a4(r30)
/* 807E8FC0  3B A0 00 00 */	li r29, 0
/* 807E8FC4  38 A0 00 02 */	li r5, 2
/* 807E8FC8  48 00 00 24 */	b lbl_807E8FEC
lbl_807E8FCC:
/* 807E8FCC  28 1E 00 00 */	cmplwi r30, 0
/* 807E8FD0  41 82 00 0C */	beq lbl_807E8FDC
/* 807E8FD4  80 9E 00 04 */	lwz r4, 4(r30)
/* 807E8FD8  48 00 00 08 */	b lbl_807E8FE0
lbl_807E8FDC:
/* 807E8FDC  38 80 FF FF */	li r4, -1
lbl_807E8FE0:
/* 807E8FE0  80 1E 06 C0 */	lwz r0, 0x6c0(r30)
/* 807E8FE4  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 807E8FE8  38 A0 00 01 */	li r5, 1
lbl_807E8FEC:
/* 807E8FEC  38 00 00 00 */	li r0, 0
/* 807E8FF0  90 01 00 08 */	stw r0, 8(r1)
/* 807E8FF4  38 60 02 09 */	li r3, 0x209
/* 807E8FF8  54 A6 C0 0E */	slwi r6, r5, 0x18
/* 807E8FFC  88 1E 06 B4 */	lbz r0, 0x6b4(r30)
/* 807E9000  64 05 F0 FF */	oris r5, r0, 0xf0ff
/* 807E9004  60 A5 F0 00 */	ori r5, r5, 0xf000
/* 807E9008  54 E0 25 36 */	rlwinm r0, r7, 4, 0x14, 0x1b
/* 807E900C  7C A0 03 78 */	or r0, r5, r0
/* 807E9010  7C C5 03 78 */	or r5, r6, r0
/* 807E9014  7F E6 FB 78 */	mr r6, r31
/* 807E9018  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E901C  7C 07 07 74 */	extsb r7, r0
/* 807E9020  39 01 00 10 */	addi r8, r1, 0x10
/* 807E9024  39 20 00 00 */	li r9, 0
/* 807E9028  39 40 FF FF */	li r10, -1
/* 807E902C  4B 83 0E C5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807E9030  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 807E9034  7C 9E 02 14 */	add r4, r30, r0
/* 807E9038  90 64 06 80 */	stw r3, 0x680(r4)
/* 807E903C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807E9040  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807E9044  39 61 00 50 */	addi r11, r1, 0x50
/* 807E9048  4B B7 91 E1 */	bl _restgpr_29
/* 807E904C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807E9050  7C 08 03 A6 */	mtlr r0
/* 807E9054  38 21 00 60 */	addi r1, r1, 0x60
/* 807E9058  4E 80 00 20 */	blr 
