lbl_80B60F08:
/* 80B60F08  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80B60F0C  7C 08 02 A6 */	mflr r0
/* 80B60F10  90 01 01 04 */	stw r0, 0x104(r1)
/* 80B60F14  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80B60F18  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80B60F1C  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80B60F20  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 80B60F24  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 80B60F28  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 80B60F2C  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 80B60F30  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 80B60F34  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 80B60F38  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 80B60F3C  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 80B60F40  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 80B60F44  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 80B60F48  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 80B60F4C  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 80B60F50  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 80B60F54  DA E1 00 70 */	stfd f23, 0x70(r1)
/* 80B60F58  F2 E1 00 78 */	psq_st f23, 120(r1), 0, 0 /* qr0 */
/* 80B60F5C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B60F60  4B 80 12 68 */	b _savegpr_24
/* 80B60F64  7C 7C 1B 78 */	mr r28, r3
/* 80B60F68  3C 60 80 B7 */	lis r3, lit_1109@ha
/* 80B60F6C  3B A3 8D 68 */	addi r29, r3, lit_1109@l
/* 80B60F70  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha
/* 80B60F74  3B C3 7C 38 */	addi r30, r3, m__17daNpc_ykW_Param_c@l
/* 80B60F78  3C 60 80 B6 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B60F7C  3B E3 7F 40 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B60F80  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80B60F84  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B60F88  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80B60F8C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B60F90  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B60F94  88 1C 10 6A */	lbz r0, 0x106a(r28)
/* 80B60F98  28 00 00 00 */	cmplwi r0, 0
/* 80B60F9C  41 82 00 38 */	beq lbl_80B60FD4
/* 80B60FA0  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B60FA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B60FA8  41 82 00 38 */	beq lbl_80B60FE0
/* 80B60FAC  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B60FB0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B60FB4  40 82 00 14 */	bne lbl_80B60FC8
/* 80B60FB8  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B60FBC  4B 5E 4A 68 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B60FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B60FC4  41 82 00 1C */	beq lbl_80B60FE0
lbl_80B60FC8:
/* 80B60FC8  38 00 00 01 */	li r0, 1
/* 80B60FCC  98 1C 0D 20 */	stb r0, 0xd20(r28)
/* 80B60FD0  48 00 00 10 */	b lbl_80B60FE0
lbl_80B60FD4:
/* 80B60FD4  38 7C 0D 08 */	addi r3, r28, 0xd08
/* 80B60FD8  38 80 00 00 */	li r4, 0
/* 80B60FDC  4B 5E 6E 60 */	b calc__19daNpcT_DmgStagger_cFi
lbl_80B60FE0:
/* 80B60FE0  C0 5E 01 44 */	lfs f2, 0x144(r30)
/* 80B60FE4  A8 7C 0D 80 */	lha r3, 0xd80(r28)
/* 80B60FE8  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80B60FEC  7C 03 00 50 */	subf r0, r3, r0
/* 80B60FF0  7C 00 07 34 */	extsh r0, r0
/* 80B60FF4  C8 3E 01 58 */	lfd f1, 0x158(r30)
/* 80B60FF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B60FFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B61000  3C 00 43 30 */	lis r0, 0x4330
/* 80B61004  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B61008  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B6100C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B61010  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B61014  38 7F 0A 38 */	addi r3, r31, 0xa38
/* 80B61018  38 9C 0F D8 */	addi r4, r28, 0xfd8
/* 80B6101C  4B 80 10 2C */	b __ptmf_cmpr
/* 80B61020  2C 03 00 00 */	cmpwi r3, 0
/* 80B61024  40 82 00 A8 */	bne lbl_80B610CC
/* 80B61028  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80B6102C  83 23 00 04 */	lwz r25, 4(r3)
/* 80B61030  7F 83 E3 78 */	mr r3, r28
/* 80B61034  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B61038  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B6103C  7D 89 03 A6 */	mtctr r12
/* 80B61040  4E 80 04 21 */	bctrl 
/* 80B61044  7C 7B 1B 78 */	mr r27, r3
/* 80B61048  7F 83 E3 78 */	mr r3, r28
/* 80B6104C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B61050  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B61054  7D 89 03 A6 */	mtctr r12
/* 80B61058  4E 80 04 21 */	bctrl 
/* 80B6105C  7C 7A 1B 78 */	mr r26, r3
/* 80B61060  7F 83 E3 78 */	mr r3, r28
/* 80B61064  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B61068  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B6106C  7D 89 03 A6 */	mtctr r12
/* 80B61070  4E 80 04 21 */	bctrl 
/* 80B61074  7C 67 1B 78 */	mr r7, r3
/* 80B61078  39 5E 00 00 */	addi r10, r30, 0
/* 80B6107C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B61080  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B61084  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B61088  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B6108C  7F 84 E3 78 */	mr r4, r28
/* 80B61090  7F 25 CB 78 */	mr r5, r25
/* 80B61094  38 C1 00 34 */	addi r6, r1, 0x34
/* 80B61098  7F 48 D3 78 */	mr r8, r26
/* 80B6109C  7F 69 DB 78 */	mr r9, r27
/* 80B610A0  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80B610A4  FC 40 08 90 */	fmr f2, f1
/* 80B610A8  FC 60 08 90 */	fmr f3, f1
/* 80B610AC  FC 80 08 90 */	fmr f4, f1
/* 80B610B0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B610B4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B610B8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B610BC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B610C0  39 40 00 00 */	li r10, 0
/* 80B610C4  4B 5E 5C 14 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B610C8  48 00 01 68 */	b lbl_80B61230
lbl_80B610CC:
/* 80B610CC  3B 3E 00 00 */	addi r25, r30, 0
/* 80B610D0  88 1C 10 60 */	lbz r0, 0x1060(r28)
/* 80B610D4  28 00 00 00 */	cmplwi r0, 0
/* 80B610D8  41 82 00 0C */	beq lbl_80B610E4
/* 80B610DC  C3 DE 00 E0 */	lfs f30, 0xe0(r30)
/* 80B610E0  48 00 00 08 */	b lbl_80B610E8
lbl_80B610E4:
/* 80B610E4  C3 D9 00 38 */	lfs f30, 0x38(r25)
lbl_80B610E8:
/* 80B610E8  28 00 00 00 */	cmplwi r0, 0
/* 80B610EC  41 82 00 0C */	beq lbl_80B610F8
/* 80B610F0  C3 BE 00 E0 */	lfs f29, 0xe0(r30)
/* 80B610F4  48 00 00 0C */	b lbl_80B61100
lbl_80B610F8:
/* 80B610F8  38 7E 00 00 */	addi r3, r30, 0
/* 80B610FC  C3 A3 00 3C */	lfs f29, 0x3c(r3)
lbl_80B61100:
/* 80B61100  28 00 00 00 */	cmplwi r0, 0
/* 80B61104  41 82 00 0C */	beq lbl_80B61110
/* 80B61108  C3 9E 00 E0 */	lfs f28, 0xe0(r30)
/* 80B6110C  48 00 00 0C */	b lbl_80B61118
lbl_80B61110:
/* 80B61110  38 7E 00 00 */	addi r3, r30, 0
/* 80B61114  C3 83 00 30 */	lfs f28, 0x30(r3)
lbl_80B61118:
/* 80B61118  28 00 00 00 */	cmplwi r0, 0
/* 80B6111C  41 82 00 0C */	beq lbl_80B61128
/* 80B61120  C3 7E 00 E0 */	lfs f27, 0xe0(r30)
/* 80B61124  48 00 00 0C */	b lbl_80B61130
lbl_80B61128:
/* 80B61128  38 7E 00 00 */	addi r3, r30, 0
/* 80B6112C  C3 63 00 34 */	lfs f27, 0x34(r3)
lbl_80B61130:
/* 80B61130  88 1C 10 61 */	lbz r0, 0x1061(r28)
/* 80B61134  28 00 00 00 */	cmplwi r0, 0
/* 80B61138  41 82 00 0C */	beq lbl_80B61144
/* 80B6113C  C3 5E 00 E0 */	lfs f26, 0xe0(r30)
/* 80B61140  48 00 00 0C */	b lbl_80B6114C
lbl_80B61144:
/* 80B61144  38 7E 00 00 */	addi r3, r30, 0
/* 80B61148  C3 43 00 28 */	lfs f26, 0x28(r3)
lbl_80B6114C:
/* 80B6114C  28 00 00 00 */	cmplwi r0, 0
/* 80B61150  41 82 00 0C */	beq lbl_80B6115C
/* 80B61154  C3 3E 00 E0 */	lfs f25, 0xe0(r30)
/* 80B61158  48 00 00 0C */	b lbl_80B61164
lbl_80B6115C:
/* 80B6115C  38 7E 00 00 */	addi r3, r30, 0
/* 80B61160  C3 23 00 2C */	lfs f25, 0x2c(r3)
lbl_80B61164:
/* 80B61164  28 00 00 00 */	cmplwi r0, 0
/* 80B61168  41 82 00 0C */	beq lbl_80B61174
/* 80B6116C  C3 1E 00 E0 */	lfs f24, 0xe0(r30)
/* 80B61170  48 00 00 0C */	b lbl_80B6117C
lbl_80B61174:
/* 80B61174  38 7E 00 00 */	addi r3, r30, 0
/* 80B61178  C3 03 00 20 */	lfs f24, 0x20(r3)
lbl_80B6117C:
/* 80B6117C  28 00 00 00 */	cmplwi r0, 0
/* 80B61180  41 82 00 0C */	beq lbl_80B6118C
/* 80B61184  C2 FE 00 E0 */	lfs f23, 0xe0(r30)
/* 80B61188  48 00 00 0C */	b lbl_80B61194
lbl_80B6118C:
/* 80B6118C  38 7E 00 00 */	addi r3, r30, 0
/* 80B61190  C2 E3 00 24 */	lfs f23, 0x24(r3)
lbl_80B61194:
/* 80B61194  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80B61198  83 03 00 04 */	lwz r24, 4(r3)
/* 80B6119C  7F 83 E3 78 */	mr r3, r28
/* 80B611A0  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B611A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B611A8  7D 89 03 A6 */	mtctr r12
/* 80B611AC  4E 80 04 21 */	bctrl 
/* 80B611B0  7C 7A 1B 78 */	mr r26, r3
/* 80B611B4  7F 83 E3 78 */	mr r3, r28
/* 80B611B8  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B611BC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B611C0  7D 89 03 A6 */	mtctr r12
/* 80B611C4  4E 80 04 21 */	bctrl 
/* 80B611C8  7C 7B 1B 78 */	mr r27, r3
/* 80B611CC  7F 83 E3 78 */	mr r3, r28
/* 80B611D0  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B611D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B611D8  7D 89 03 A6 */	mtctr r12
/* 80B611DC  4E 80 04 21 */	bctrl 
/* 80B611E0  7C 67 1B 78 */	mr r7, r3
/* 80B611E4  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80B611E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B611EC  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B611F0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B611F4  7F 84 E3 78 */	mr r4, r28
/* 80B611F8  7F 05 C3 78 */	mr r5, r24
/* 80B611FC  38 C1 00 34 */	addi r6, r1, 0x34
/* 80B61200  7F 68 DB 78 */	mr r8, r27
/* 80B61204  7F 49 D3 78 */	mr r9, r26
/* 80B61208  FC 20 B8 90 */	fmr f1, f23
/* 80B6120C  FC 40 C0 90 */	fmr f2, f24
/* 80B61210  FC 60 C8 90 */	fmr f3, f25
/* 80B61214  FC 80 D0 90 */	fmr f4, f26
/* 80B61218  FC A0 D8 90 */	fmr f5, f27
/* 80B6121C  FC C0 E0 90 */	fmr f6, f28
/* 80B61220  FC E0 E8 90 */	fmr f7, f29
/* 80B61224  FD 00 F0 90 */	fmr f8, f30
/* 80B61228  39 40 00 00 */	li r10, 0
/* 80B6122C  4B 5E 5A AC */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80B61230:
/* 80B61230  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B61234  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80B61238  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80B6123C  FC 60 F8 90 */	fmr f3, f31
/* 80B61240  4B 5E 69 F8 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B61244  7F 83 E3 78 */	mr r3, r28
/* 80B61248  4B 5E 7F 48 */	b setMtx__8daNpcT_cFv
/* 80B6124C  7F 83 E3 78 */	mr r3, r28
/* 80B61250  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B61254  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B61258  7D 89 03 A6 */	mtctr r12
/* 80B6125C  4E 80 04 21 */	bctrl 
/* 80B61260  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80B61264  80 84 00 04 */	lwz r4, 4(r4)
/* 80B61268  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B6126C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B61270  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B61274  7C 64 02 14 */	add r3, r4, r0
/* 80B61278  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B6127C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B61280  4B 7E 52 30 */	b PSMTXCopy
/* 80B61284  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B61288  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B6128C  38 81 00 34 */	addi r4, r1, 0x34
/* 80B61290  38 BC 05 38 */	addi r5, r28, 0x538
/* 80B61294  4B 7E 5A D8 */	b PSMTXMultVec
/* 80B61298  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80B6129C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B612A0  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80B612A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B612A8  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80B612AC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B612B0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B612B4  38 81 00 28 */	addi r4, r1, 0x28
/* 80B612B8  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80B612BC  38 A0 00 00 */	li r5, 0
/* 80B612C0  48 00 63 01 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B612C4  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80B612C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B612CC  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80B612D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B612D4  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80B612D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B612DC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B612E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B612E4  A8 BC 0D 7A */	lha r5, 0xd7a(r28)
/* 80B612E8  38 C0 00 01 */	li r6, 1
/* 80B612EC  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80B612F0  38 E0 00 00 */	li r7, 0
/* 80B612F4  48 00 61 B1 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B612F8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B612FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B61300  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B61304  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B61308  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80B6130C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B61310  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80B61314  38 9C 0F D8 */	addi r4, r28, 0xfd8
/* 80B61318  4B 80 0D 30 */	b __ptmf_cmpr
/* 80B6131C  2C 03 00 00 */	cmpwi r3, 0
/* 80B61320  40 82 00 14 */	bne lbl_80B61334
/* 80B61324  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80B61328  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80B6132C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B61330  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_80B61334:
/* 80B61334  88 1C 10 69 */	lbz r0, 0x1069(r28)
/* 80B61338  28 00 00 00 */	cmplwi r0, 0
/* 80B6133C  41 82 00 18 */	beq lbl_80B61354
/* 80B61340  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 80B61344  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B61348  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80B6134C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B61350  D0 21 00 3C */	stfs f1, 0x3c(r1)
lbl_80B61354:
/* 80B61354  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B61358  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B6135C  A8 9C 0D 7A */	lha r4, 0xd7a(r28)
/* 80B61360  4B 4A B0 7C */	b mDoMtx_YrotS__FPA4_fs
/* 80B61364  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B61368  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B6136C  38 81 00 34 */	addi r4, r1, 0x34
/* 80B61370  7C 85 23 78 */	mr r5, r4
/* 80B61374  4B 7E 59 F8 */	b PSMTXMultVec
/* 80B61378  38 61 00 10 */	addi r3, r1, 0x10
/* 80B6137C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B61380  38 A1 00 34 */	addi r5, r1, 0x34
/* 80B61384  4B 70 57 60 */	b __pl__4cXyzCFRC3Vec
/* 80B61388  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B6138C  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80B61390  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B61394  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80B61398  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B6139C  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80B613A0  38 00 00 00 */	li r0, 0
/* 80B613A4  B0 1C 0D CE */	sth r0, 0xdce(r28)
/* 80B613A8  B0 1C 0D D2 */	sth r0, 0xdd2(r28)
/* 80B613AC  38 7F 0A 50 */	addi r3, r31, 0xa50
/* 80B613B0  38 9C 0F D8 */	addi r4, r28, 0xfd8
/* 80B613B4  4B 80 0C 94 */	b __ptmf_cmpr
/* 80B613B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B613BC  41 82 00 8C */	beq lbl_80B61448
/* 80B613C0  88 1C 10 6A */	lbz r0, 0x106a(r28)
/* 80B613C4  28 00 00 00 */	cmplwi r0, 0
/* 80B613C8  40 82 00 80 */	bne lbl_80B61448
/* 80B613CC  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 80B613D0  7C 00 07 75 */	extsb. r0, r0
/* 80B613D4  40 82 00 30 */	bne lbl_80B61404
/* 80B613D8  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B613DC  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 80B613E0  38 7D 00 60 */	addi r3, r29, 0x60
/* 80B613E4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B613E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B613EC  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B613F0  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B613F4  38 BD 00 50 */	addi r5, r29, 0x50
/* 80B613F8  4B FF DA A1 */	bl __register_global_object
/* 80B613FC  38 00 00 01 */	li r0, 1
/* 80B61400  98 1D 00 5C */	stb r0, 0x5c(r29)
lbl_80B61404:
/* 80B61404  7F 83 E3 78 */	mr r3, r28
/* 80B61408  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B6140C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80B61410  7D 89 03 A6 */	mtctr r12
/* 80B61414  4E 80 04 21 */	bctrl 
/* 80B61418  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80B6141C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80B61420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B61424  40 80 00 24 */	bge lbl_80B61448
/* 80B61428  7F 83 E3 78 */	mr r3, r28
/* 80B6142C  38 9D 00 60 */	addi r4, r29, 0x60
/* 80B61430  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80B61434  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 80B61438  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B6143C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80B61440  7D 89 03 A6 */	mtctr r12
/* 80B61444  4E 80 04 21 */	bctrl 
lbl_80B61448:
/* 80B61448  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B6144C  A8 9C 0D CE */	lha r4, 0xdce(r28)
/* 80B61450  38 A0 00 05 */	li r5, 5
/* 80B61454  38 C0 10 00 */	li r6, 0x1000
/* 80B61458  4B 70 F1 B0 */	b cLib_addCalcAngleS2__FPssss
/* 80B6145C  38 7C 0D D0 */	addi r3, r28, 0xdd0
/* 80B61460  A8 9C 0D D2 */	lha r4, 0xdd2(r28)
/* 80B61464  38 A0 00 05 */	li r5, 5
/* 80B61468  38 C0 10 00 */	li r6, 0x1000
/* 80B6146C  4B 70 F1 9C */	b cLib_addCalcAngleS2__FPssss
/* 80B61470  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80B61474  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80B61478  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 80B6147C  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80B61480  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 80B61484  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 80B61488  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 80B6148C  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 80B61490  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 80B61494  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 80B61498  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 80B6149C  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 80B614A0  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 80B614A4  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 80B614A8  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 80B614AC  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 80B614B0  E2 E1 00 78 */	psq_l f23, 120(r1), 0, 0 /* qr0 */
/* 80B614B4  CA E1 00 70 */	lfd f23, 0x70(r1)
/* 80B614B8  39 61 00 70 */	addi r11, r1, 0x70
/* 80B614BC  4B 80 0D 58 */	b _restgpr_24
/* 80B614C0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80B614C4  7C 08 03 A6 */	mtlr r0
/* 80B614C8  38 21 01 00 */	addi r1, r1, 0x100
/* 80B614CC  4E 80 00 20 */	blr 
