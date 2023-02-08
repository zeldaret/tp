lbl_80174ED4:
/* 80174ED4  94 21 FB 60 */	stwu r1, -0x4a0(r1)
/* 80174ED8  7C 08 02 A6 */	mflr r0
/* 80174EDC  90 01 04 A4 */	stw r0, 0x4a4(r1)
/* 80174EE0  DB E1 04 90 */	stfd f31, 0x490(r1)
/* 80174EE4  F3 E1 04 98 */	psq_st f31, 1176(r1), 0, 0 /* qr0 */
/* 80174EE8  DB C1 04 80 */	stfd f30, 0x480(r1)
/* 80174EEC  F3 C1 04 88 */	psq_st f30, 1160(r1), 0, 0 /* qr0 */
/* 80174EF0  DB A1 04 70 */	stfd f29, 0x470(r1)
/* 80174EF4  F3 A1 04 78 */	psq_st f29, 1144(r1), 0, 0 /* qr0 */
/* 80174EF8  DB 81 04 60 */	stfd f28, 0x460(r1)
/* 80174EFC  F3 81 04 68 */	psq_st f28, 1128(r1), 0, 0 /* qr0 */
/* 80174F00  DB 61 04 50 */	stfd f27, 0x450(r1)
/* 80174F04  F3 61 04 58 */	psq_st f27, 1112(r1), 0, 0 /* qr0 */
/* 80174F08  DB 41 04 40 */	stfd f26, 0x440(r1)
/* 80174F0C  F3 41 04 48 */	psq_st f26, 1096(r1), 0, 0 /* qr0 */
/* 80174F10  DB 21 04 30 */	stfd f25, 0x430(r1)
/* 80174F14  F3 21 04 38 */	psq_st f25, 1080(r1), 0, 0 /* qr0 */
/* 80174F18  DB 01 04 20 */	stfd f24, 0x420(r1)
/* 80174F1C  F3 01 04 28 */	psq_st f24, 1064(r1), 0, 0 /* qr0 */
/* 80174F20  DA E1 04 10 */	stfd f23, 0x410(r1)
/* 80174F24  F2 E1 04 18 */	psq_st f23, 1048(r1), 0, 0 /* qr0 */
/* 80174F28  DA C1 04 00 */	stfd f22, 0x400(r1)
/* 80174F2C  F2 C1 04 08 */	psq_st f22, 1032(r1), 0, 0 /* qr0 */
/* 80174F30  DA A1 03 F0 */	stfd f21, 0x3f0(r1)
/* 80174F34  F2 A1 03 F8 */	psq_st f21, 1016(r1), 0, 0 /* qr0 */
/* 80174F38  DA 81 03 E0 */	stfd f20, 0x3e0(r1)
/* 80174F3C  F2 81 03 E8 */	psq_st f20, 1000(r1), 0, 0 /* qr0 */
/* 80174F40  DA 61 03 D0 */	stfd f19, 0x3d0(r1)
/* 80174F44  F2 61 03 D8 */	psq_st f19, 984(r1), 0, 0 /* qr0 */
/* 80174F48  DA 41 03 C0 */	stfd f18, 0x3c0(r1)
/* 80174F4C  F2 41 03 C8 */	psq_st f18, 968(r1), 0, 0 /* qr0 */
/* 80174F50  DA 21 03 B0 */	stfd f17, 0x3b0(r1)
/* 80174F54  F2 21 03 B8 */	psq_st f17, 952(r1), 0, 0 /* qr0 */
/* 80174F58  39 61 03 B0 */	addi r11, r1, 0x3b0
/* 80174F5C  48 1E D2 61 */	bl _savegpr_21
/* 80174F60  7C 7F 1B 78 */	mr r31, r3
/* 80174F64  7C 96 23 78 */	mr r22, r4
/* 80174F68  80 03 0A F4 */	lwz r0, 0xaf4(r3)
/* 80174F6C  1F D6 00 78 */	mulli r30, r22, 0x78
/* 80174F70  7C 60 F2 14 */	add r3, r0, r30
/* 80174F74  C3 C3 00 08 */	lfs f30, 8(r3)
/* 80174F78  C3 A3 00 10 */	lfs f29, 0x10(r3)
/* 80174F7C  C3 83 00 0C */	lfs f28, 0xc(r3)
/* 80174F80  C3 63 00 6C */	lfs f27, 0x6c(r3)
/* 80174F84  C3 43 00 18 */	lfs f26, 0x18(r3)
/* 80174F88  C3 23 00 70 */	lfs f25, 0x70(r3)
/* 80174F8C  C2 43 00 58 */	lfs f18, 0x58(r3)
/* 80174F90  C3 03 00 54 */	lfs f24, 0x54(r3)
/* 80174F94  C2 E3 00 5C */	lfs f23, 0x5c(r3)
/* 80174F98  C2 C3 00 24 */	lfs f22, 0x24(r3)
/* 80174F9C  C2 A3 00 30 */	lfs f21, 0x30(r3)
/* 80174FA0  C3 E3 00 4C */	lfs f31, 0x4c(r3)
/* 80174FA4  C2 23 00 60 */	lfs f17, 0x60(r3)
/* 80174FA8  C2 83 00 48 */	lfs f20, 0x48(r3)
/* 80174FAC  C2 63 00 50 */	lfs f19, 0x50(r3)
/* 80174FB0  83 BF 01 80 */	lwz r29, 0x180(r31)
/* 80174FB4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80174FB8  38 80 10 40 */	li r4, 0x1040
/* 80174FBC  4B FF 73 AD */	bl func_8016C368
/* 80174FC0  30 03 FF FF */	addic r0, r3, -1
/* 80174FC4  7F 80 19 10 */	subfe r28, r0, r3
/* 80174FC8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80174FCC  38 80 40 00 */	li r4, 0x4000
/* 80174FD0  4B FF 73 99 */	bl func_8016C368
/* 80174FD4  30 03 FF FF */	addic r0, r3, -1
/* 80174FD8  7F 60 19 10 */	subfe r27, r0, r3
/* 80174FDC  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80174FE0  38 80 04 00 */	li r4, 0x400
/* 80174FE4  4B FF 73 85 */	bl func_8016C368
/* 80174FE8  30 03 FF FF */	addic r0, r3, -1
/* 80174FEC  7F 40 19 10 */	subfe r26, r0, r3
/* 80174FF0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80174FF4  54 19 A7 FE */	rlwinm r25, r0, 0x14, 0x1f, 0x1f
/* 80174FF8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80174FFC  3C 80 00 08 */	lis r4, 0x0008 /* 0x00080080@ha */
/* 80175000  38 84 00 80 */	addi r4, r4, 0x0080 /* 0x00080080@l */
/* 80175004  4B FF 73 65 */	bl func_8016C368
/* 80175008  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8017500C  38 80 00 40 */	li r4, 0x40
/* 80175010  4B FF 73 59 */	bl func_8016C368
/* 80175014  30 03 FF FF */	addic r0, r3, -1
/* 80175018  7F 00 19 10 */	subfe r24, r0, r3
/* 8017501C  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80175020  28 00 00 00 */	cmplwi r0, 0
/* 80175024  40 82 00 EC */	bne lbl_80175110
/* 80175028  3C 60 53 55 */	lis r3, 0x5355 /* 0x5355424E@ha */
/* 8017502C  38 03 42 4E */	addi r0, r3, 0x424E /* 0x5355424E@l */
/* 80175030  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 80175034  3A FF 00 62 */	addi r23, r31, 0x62
/* 80175038  7E E3 BB 78 */	mr r3, r23
/* 8017503C  48 0F C0 AD */	bl Inv__7cSAngleCFv
/* 80175040  7C 64 1B 78 */	mr r4, r3
/* 80175044  38 7F 04 12 */	addi r3, r31, 0x412
/* 80175048  48 0F BF BD */	bl Val__7cSAngleFs
/* 8017504C  38 7F 04 10 */	addi r3, r31, 0x410
/* 80175050  38 9F 00 60 */	addi r4, r31, 0x60
/* 80175054  48 0F BF A5 */	bl Val__7cSAngleFRC7cSAngle
/* 80175058  38 00 00 07 */	li r0, 7
/* 8017505C  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 80175060  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80175064  3C 80 02 00 */	lis r4, 0x200
/* 80175068  4B FF 72 C9 */	bl func_8016C330
/* 8017506C  28 03 00 00 */	cmplwi r3, 0
/* 80175070  41 82 00 0C */	beq lbl_8017507C
/* 80175074  38 00 00 02 */	li r0, 2
/* 80175078  90 1F 03 FC */	stw r0, 0x3fc(r31)
lbl_8017507C:
/* 8017507C  38 00 00 00 */	li r0, 0
/* 80175080  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 80175084  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 80175088  D0 1F 04 0C */	stfs f0, 0x40c(r31)
/* 8017508C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80175090  D0 1F 07 3C */	stfs f0, 0x73c(r31)
/* 80175094  92 DF 04 00 */	stw r22, 0x400(r31)
/* 80175098  98 1F 04 04 */	stb r0, 0x404(r31)
/* 8017509C  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 801750A0  98 1F 04 05 */	stb r0, 0x405(r31)
/* 801750A4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801750A8  40 82 00 0C */	bne lbl_801750B4
/* 801750AC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801750B0  41 82 00 48 */	beq lbl_801750F8
lbl_801750B4:
/* 801750B4  38 61 00 48 */	addi r3, r1, 0x48
/* 801750B8  7F E4 FB 78 */	mr r4, r31
/* 801750BC  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 801750C0  4B F2 26 79 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801750C4  38 61 00 44 */	addi r3, r1, 0x44
/* 801750C8  38 81 00 48 */	addi r4, r1, 0x48
/* 801750CC  7E E5 BB 78 */	mr r5, r23
/* 801750D0  48 0F C0 D5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801750D4  A8 81 00 44 */	lha r4, 0x44(r1)
/* 801750D8  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 801750DC  7C 80 02 78 */	xor r0, r4, r0
/* 801750E0  7C 03 0E 70 */	srawi r3, r0, 1
/* 801750E4  7C 00 20 38 */	and r0, r0, r4
/* 801750E8  7C 00 18 50 */	subf r0, r0, r3
/* 801750EC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801750F0  98 1F 04 05 */	stb r0, 0x405(r31)
/* 801750F4  48 00 00 1C */	b lbl_80175110
lbl_801750F8:
/* 801750F8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801750FC  41 82 00 14 */	beq lbl_80175110
/* 80175100  A8 1D 30 20 */	lha r0, 0x3020(r29)
/* 80175104  7C 00 00 34 */	cntlzw r0, r0
/* 80175108  54 00 D9 7E */	srwi r0, r0, 5
/* 8017510C  98 1F 04 05 */	stb r0, 0x405(r31)
lbl_80175110:
/* 80175110  88 1F 04 05 */	lbz r0, 0x405(r31)
/* 80175114  28 00 00 00 */	cmplwi r0, 0
/* 80175118  41 82 00 08 */	beq lbl_80175120
/* 8017511C  FF C0 F0 50 */	fneg f30, f30
lbl_80175120:
/* 80175120  28 19 00 00 */	cmplwi r25, 0
/* 80175124  41 82 00 44 */	beq lbl_80175168
/* 80175128  7F A3 EB 78 */	mr r3, r29
/* 8017512C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80175130  81 8C 01 C4 */	lwz r12, 0x1c4(r12)
/* 80175134  7D 89 03 A6 */	mtctr r12
/* 80175138  4E 80 04 21 */	bctrl 
/* 8017513C  7C 64 1B 78 */	mr r4, r3
/* 80175140  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 80175144  4B F2 26 95 */	bl __as__4cXyzFRC4cXyz
/* 80175148  3A FD 2C 48 */	addi r23, r29, 0x2c48
/* 8017514C  3A DD 2C 78 */	addi r22, r29, 0x2c78
/* 80175150  38 61 00 40 */	addi r3, r1, 0x40
/* 80175154  A8 9D 31 18 */	lha r4, 0x3118(r29)
/* 80175158  48 0F BE 41 */	bl __ct__7cSAngleFs
/* 8017515C  A8 01 00 40 */	lha r0, 0x40(r1)
/* 80175160  B0 01 00 58 */	sth r0, 0x58(r1)
/* 80175164  48 00 00 3C */	b lbl_801751A0
lbl_80175168:
/* 80175168  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8017516C  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 80175170  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 80175174  4B F2 26 65 */	bl __as__4cXyzFRC4cXyz
/* 80175178  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 8017517C  38 03 2F D8 */	addi r0, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 80175180  7C 17 03 78 */	mr r23, r0
/* 80175184  7C 16 03 78 */	mr r22, r0
/* 80175188  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017518C  7F E4 FB 78 */	mr r4, r31
/* 80175190  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80175194  4B F2 25 A5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80175198  A8 01 00 3C */	lha r0, 0x3c(r1)
/* 8017519C  B0 01 00 58 */	sth r0, 0x58(r1)
lbl_801751A0:
/* 801751A0  38 61 00 50 */	addi r3, r1, 0x50
/* 801751A4  A8 9D 31 0A */	lha r4, 0x310a(r29)
/* 801751A8  48 0F BD F1 */	bl __ct__7cSAngleFs
/* 801751AC  38 61 00 4C */	addi r3, r1, 0x4c
/* 801751B0  A8 9D 31 0C */	lha r4, 0x310c(r29)
/* 801751B4  48 0F BD E5 */	bl __ct__7cSAngleFs
/* 801751B8  7F A3 EB 78 */	mr r3, r29
/* 801751BC  38 81 00 56 */	addi r4, r1, 0x56
/* 801751C0  38 A1 00 54 */	addi r5, r1, 0x54
/* 801751C4  4B F6 96 C1 */	bl checkBowCameraArrowPosP__9daAlink_cFPsPs
/* 801751C8  7C 75 1B 78 */	mr r21, r3
/* 801751CC  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801751D0  3C 80 00 20 */	lis r4, 0x20
/* 801751D4  4B FF 71 95 */	bl func_8016C368
/* 801751D8  28 03 00 00 */	cmplwi r3, 0
/* 801751DC  41 82 00 34 */	beq lbl_80175210
/* 801751E0  28 15 00 00 */	cmplwi r21, 0
/* 801751E4  41 82 00 2C */	beq lbl_80175210
/* 801751E8  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 801751EC  7E A4 AB 78 */	mr r4, r21
/* 801751F0  4B F2 25 E9 */	bl __as__4cXyzFRC4cXyz
/* 801751F4  38 61 00 50 */	addi r3, r1, 0x50
/* 801751F8  A8 81 00 56 */	lha r4, 0x56(r1)
/* 801751FC  48 0F BE 09 */	bl Val__7cSAngleFs
/* 80175200  38 61 00 4C */	addi r3, r1, 0x4c
/* 80175204  A8 81 00 54 */	lha r4, 0x54(r1)
/* 80175208  48 0F BD FD */	bl Val__7cSAngleFs
/* 8017520C  48 00 01 9C */	b lbl_801753A8
lbl_80175210:
/* 80175210  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80175214  41 82 00 48 */	beq lbl_8017525C
/* 80175218  A8 1D 30 20 */	lha r0, 0x3020(r29)
/* 8017521C  2C 00 00 00 */	cmpwi r0, 0
/* 80175220  40 82 00 20 */	bne lbl_80175240
/* 80175224  38 61 02 48 */	addi r3, r1, 0x248
/* 80175228  7F A4 EB 78 */	mr r4, r29
/* 8017522C  4B FE 8D C9 */	bl getLeftHandPos__9daPy_py_cCFv
/* 80175230  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80175234  38 81 02 48 */	addi r4, r1, 0x248
/* 80175238  4B F2 25 A1 */	bl __as__4cXyzFRC4cXyz
/* 8017523C  48 00 01 6C */	b lbl_801753A8
lbl_80175240:
/* 80175240  38 61 02 3C */	addi r3, r1, 0x23c
/* 80175244  7F A4 EB 78 */	mr r4, r29
/* 80175248  48 00 D9 55 */	bl getRightHandPos__9daPy_py_cCFv
/* 8017524C  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80175250  38 81 02 3C */	addi r4, r1, 0x23c
/* 80175254  4B F2 25 85 */	bl __as__4cXyzFRC4cXyz
/* 80175258  48 00 01 50 */	b lbl_801753A8
lbl_8017525C:
/* 8017525C  7F A3 EB 78 */	mr r3, r29
/* 80175260  4B F9 D2 55 */	bl checkIronBallThrowReturnMode__9daAlink_cCFv
/* 80175264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80175268  41 82 00 E4 */	beq lbl_8017534C
/* 8017526C  38 61 02 30 */	addi r3, r1, 0x230
/* 80175270  7F E4 FB 78 */	mr r4, r31
/* 80175274  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80175278  4B F2 24 A5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017527C  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80175280  38 81 02 30 */	addi r4, r1, 0x230
/* 80175284  4B F2 25 55 */	bl __as__4cXyzFRC4cXyz
/* 80175288  7F A3 EB 78 */	mr r3, r29
/* 8017528C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80175290  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 80175294  7D 89 03 A6 */	mtctr r12
/* 80175298  4E 80 04 21 */	bctrl 
/* 8017529C  7C 75 1B 78 */	mr r21, r3
/* 801752A0  38 61 02 24 */	addi r3, r1, 0x224
/* 801752A4  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 801752A8  7E A5 AB 78 */	mr r5, r21
/* 801752AC  48 0F 18 89 */	bl __mi__4cXyzCFRC3Vec
/* 801752B0  38 61 00 6C */	addi r3, r1, 0x6c
/* 801752B4  38 81 02 24 */	addi r4, r1, 0x224
/* 801752B8  48 0F C5 C9 */	bl __ct__7cSGlobeFRC4cXyz
/* 801752BC  38 61 02 18 */	addi r3, r1, 0x218
/* 801752C0  7E A4 AB 78 */	mr r4, r21
/* 801752C4  38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 801752C8  48 0F 18 6D */	bl __mi__4cXyzCFRC3Vec
/* 801752CC  38 61 02 0C */	addi r3, r1, 0x20c
/* 801752D0  38 81 02 18 */	addi r4, r1, 0x218
/* 801752D4  4B F2 25 21 */	bl __ct__4cXyzFRC4cXyz
/* 801752D8  38 61 02 0C */	addi r3, r1, 0x20c
/* 801752DC  4B F1 94 B5 */	bl abs__4cXyzCFv
/* 801752E0  C0 02 9D 10 */	lfs f0, lit_8022(r2)
/* 801752E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801752E8  40 81 00 2C */	ble lbl_80175314
/* 801752EC  A8 01 00 70 */	lha r0, 0x70(r1)
/* 801752F0  B0 01 00 50 */	sth r0, 0x50(r1)
/* 801752F4  38 61 00 72 */	addi r3, r1, 0x72
/* 801752F8  48 0F BD F1 */	bl Inv__7cSAngleCFv
/* 801752FC  7C 64 1B 78 */	mr r4, r3
/* 80175300  38 61 00 38 */	addi r3, r1, 0x38
/* 80175304  48 0F BC 95 */	bl __ct__7cSAngleFs
/* 80175308  A8 01 00 38 */	lha r0, 0x38(r1)
/* 8017530C  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80175310  48 00 00 14 */	b lbl_80175324
lbl_80175314:
/* 80175314  A8 1F 04 10 */	lha r0, 0x410(r31)
/* 80175318  B0 01 00 50 */	sth r0, 0x50(r1)
/* 8017531C  A8 1F 04 12 */	lha r0, 0x412(r31)
/* 80175320  B0 01 00 4C */	sth r0, 0x4c(r1)
lbl_80175324:
/* 80175324  38 61 00 34 */	addi r3, r1, 0x34
/* 80175328  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 8017532C  48 0F BC 9D */	bl __ct__7cSAngleFf
/* 80175330  38 61 00 50 */	addi r3, r1, 0x50
/* 80175334  38 81 00 34 */	addi r4, r1, 0x34
/* 80175338  48 0F BE 9D */	bl __apl__7cSAngleFRC7cSAngle
/* 8017533C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80175340  38 80 FF FF */	li r4, -1
/* 80175344  4B EF C3 39 */	bl __dt__7cSGlobeFv
/* 80175348  48 00 00 60 */	b lbl_801753A8
lbl_8017534C:
/* 8017534C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80175350  41 82 00 4C */	beq lbl_8017539C
/* 80175354  38 61 02 00 */	addi r3, r1, 0x200
/* 80175358  7F E4 FB 78 */	mr r4, r31
/* 8017535C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80175360  4B F2 23 BD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80175364  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80175368  38 81 02 00 */	addi r4, r1, 0x200
/* 8017536C  4B F2 24 6D */	bl __as__4cXyzFRC4cXyz
/* 80175370  A8 01 00 50 */	lha r0, 0x50(r1)
/* 80175374  B0 1F 04 10 */	sth r0, 0x410(r31)
/* 80175378  A8 01 00 4C */	lha r0, 0x4c(r1)
/* 8017537C  B0 1F 04 12 */	sth r0, 0x412(r31)
/* 80175380  38 61 00 30 */	addi r3, r1, 0x30
/* 80175384  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 80175388  48 0F BC 41 */	bl __ct__7cSAngleFf
/* 8017538C  38 61 00 50 */	addi r3, r1, 0x50
/* 80175390  38 81 00 30 */	addi r4, r1, 0x30
/* 80175394  48 0F BE 41 */	bl __apl__7cSAngleFRC7cSAngle
/* 80175398  48 00 00 10 */	b lbl_801753A8
lbl_8017539C:
/* 8017539C  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 801753A0  38 9D 37 68 */	addi r4, r29, 0x3768
/* 801753A4  4B F2 24 35 */	bl __as__4cXyzFRC4cXyz
lbl_801753A8:
/* 801753A8  A8 01 00 50 */	lha r0, 0x50(r1)
/* 801753AC  B0 1F 04 16 */	sth r0, 0x416(r31)
/* 801753B0  A8 01 00 4C */	lha r0, 0x4c(r1)
/* 801753B4  B0 1F 04 14 */	sth r0, 0x414(r31)
/* 801753B8  28 19 00 00 */	cmplwi r25, 0
/* 801753BC  41 82 00 B4 */	beq lbl_80175470
/* 801753C0  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 801753C4  7F E4 FB 78 */	mr r4, r31
/* 801753C8  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 801753CC  4B F2 23 91 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 801753D0  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 801753D4  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 801753D8  4B F2 24 1D */	bl __ct__4cXyzFRC4cXyz
/* 801753DC  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 801753E0  38 9F 00 64 */	addi r4, r31, 0x64
/* 801753E4  38 A1 02 B4 */	addi r5, r1, 0x2b4
/* 801753E8  48 0F 17 4D */	bl __mi__4cXyzCFRC3Vec
/* 801753EC  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 801753F0  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 801753F4  4B F2 23 E5 */	bl __as__4cXyzFRC4cXyz
/* 801753F8  38 61 01 DC */	addi r3, r1, 0x1dc
/* 801753FC  38 9F 00 70 */	addi r4, r31, 0x70
/* 80175400  38 A1 02 B4 */	addi r5, r1, 0x2b4
/* 80175404  48 0F 17 31 */	bl __mi__4cXyzCFRC3Vec
/* 80175408  38 7F 04 18 */	addi r3, r31, 0x418
/* 8017540C  38 81 01 DC */	addi r4, r1, 0x1dc
/* 80175410  4B F2 23 C9 */	bl __as__4cXyzFRC4cXyz
/* 80175414  7E C3 B3 78 */	mr r3, r22
/* 80175418  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8017541C  7C 85 23 78 */	mr r5, r4
/* 80175420  48 1D 1A 2D */	bl PSMTXMultVecSR
/* 80175424  7E C3 B3 78 */	mr r3, r22
/* 80175428  38 9F 04 18 */	addi r4, r31, 0x418
/* 8017542C  7C 85 23 78 */	mr r5, r4
/* 80175430  48 1D 1A 1D */	bl PSMTXMultVecSR
/* 80175434  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 80175438  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8017543C  7C 65 1B 78 */	mr r5, r3
/* 80175440  48 1D 1C 51 */	bl PSVECAdd
/* 80175444  38 7F 04 18 */	addi r3, r31, 0x418
/* 80175448  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8017544C  7C 65 1B 78 */	mr r5, r3
/* 80175450  48 1D 1C 41 */	bl PSVECAdd
/* 80175454  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 80175458  38 9F 04 18 */	addi r4, r31, 0x418
/* 8017545C  38 BF 03 EC */	addi r5, r31, 0x3ec
/* 80175460  48 0F 16 D5 */	bl __mi__4cXyzCFRC3Vec
/* 80175464  38 7F 04 30 */	addi r3, r31, 0x430
/* 80175468  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 8017546C  48 0F C6 05 */	bl Val__7cSGlobeFRC4cXyz
lbl_80175470:
/* 80175470  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80175474  28 00 00 00 */	cmplwi r0, 0
/* 80175478  40 82 00 38 */	bne lbl_801754B0
/* 8017547C  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 80175480  38 9F 00 64 */	addi r4, r31, 0x64
/* 80175484  4B F2 23 55 */	bl __as__4cXyzFRC4cXyz
/* 80175488  38 7F 04 18 */	addi r3, r31, 0x418
/* 8017548C  38 9F 00 70 */	addi r4, r31, 0x70
/* 80175490  4B F2 23 49 */	bl __as__4cXyzFRC4cXyz
/* 80175494  38 7F 04 30 */	addi r3, r31, 0x430
/* 80175498  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017549C  4B F1 92 D9 */	bl __as__7cSGlobeFRC7cSGlobe
/* 801754A0  38 7F 04 24 */	addi r3, r31, 0x424
/* 801754A4  38 9F 00 48 */	addi r4, r31, 0x48
/* 801754A8  4B F2 23 31 */	bl __as__4cXyzFRC4cXyz
/* 801754AC  D2 9F 07 38 */	stfs f20, 0x738(r31)
lbl_801754B0:
/* 801754B0  3A C0 00 00 */	li r22, 0
/* 801754B4  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 801754B8  2C 00 FF FF */	cmpwi r0, -1
/* 801754BC  40 82 00 08 */	bne lbl_801754C4
/* 801754C0  3A C0 00 01 */	li r22, 1
lbl_801754C4:
/* 801754C4  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 801754C8  3C 60 80 43 */	lis r3, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801754CC  38 63 C8 F8 */	addi r3, r3, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801754D0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801754D4  7C 04 00 00 */	cmpw r4, r0
/* 801754D8  40 82 00 30 */	bne lbl_80175508
/* 801754DC  38 00 00 00 */	li r0, 0
/* 801754E0  90 1F 09 40 */	stw r0, 0x940(r31)
/* 801754E4  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 801754E8  A0 03 00 06 */	lhz r0, 6(r3)
/* 801754EC  60 00 00 10 */	ori r0, r0, 0x10
/* 801754F0  B0 03 00 06 */	sth r0, 6(r3)
/* 801754F4  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 801754F8  A0 03 00 06 */	lhz r0, 6(r3)
/* 801754FC  60 00 00 04 */	ori r0, r0, 4
/* 80175500  B0 03 00 06 */	sth r0, 6(r3)
/* 80175504  48 00 02 40 */	b lbl_80175744
lbl_80175508:
/* 80175508  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8017550C  2C 00 00 04 */	cmpwi r0, 4
/* 80175510  40 82 00 6C */	bne lbl_8017557C
/* 80175514  38 00 FF FF */	li r0, -1
/* 80175518  90 1F 09 40 */	stw r0, 0x940(r31)
/* 8017551C  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80175520  C0 1F 0A 74 */	lfs f0, 0xa74(r31)
/* 80175524  FC 00 00 50 */	fneg f0, f0
/* 80175528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017552C  40 80 00 44 */	bge lbl_80175570
/* 80175530  80 1F 01 F4 */	lwz r0, 0x1f4(r31)
/* 80175534  2C 00 FF FF */	cmpwi r0, -1
/* 80175538  41 82 00 2C */	beq lbl_80175564
/* 8017553C  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 80175540  2C 00 FF FF */	cmpwi r0, -1
/* 80175544  40 82 00 20 */	bne lbl_80175564
/* 80175548  38 00 00 00 */	li r0, 0
/* 8017554C  90 1F 09 40 */	stw r0, 0x940(r31)
/* 80175550  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80175554  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80175558  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 8017555C  60 00 20 00 */	ori r0, r0, 0x2000
/* 80175560  90 03 5D 7C */	stw r0, 0x5d7c(r3)
lbl_80175564:
/* 80175564  38 00 FF FF */	li r0, -1
/* 80175568  90 1F 01 F4 */	stw r0, 0x1f4(r31)
/* 8017556C  48 00 01 D8 */	b lbl_80175744
lbl_80175570:
/* 80175570  38 00 00 00 */	li r0, 0
/* 80175574  90 1F 01 F4 */	stw r0, 0x1f4(r31)
/* 80175578  48 00 01 CC */	b lbl_80175744
lbl_8017557C:
/* 8017557C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80175580  40 82 00 14 */	bne lbl_80175594
/* 80175584  7F A3 EB 78 */	mr r3, r29
/* 80175588  4B F9 CF 2D */	bl checkIronBallThrowReturnMode__9daAlink_cCFv
/* 8017558C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80175590  41 82 00 1C */	beq lbl_801755AC
lbl_80175594:
/* 80175594  C3 C2 9C A0 */	lfs f30, lit_5656(r2)
/* 80175598  C3 A2 9D 34 */	lfs f29, lit_9398(r2)
/* 8017559C  C3 82 9D 88 */	lfs f28, lit_10557(r2)
/* 801755A0  C2 C2 9E 8C */	lfs f22, lit_12864(r2)
/* 801755A4  C3 E2 9E 3C */	lfs f31, lit_12278(r2)
/* 801755A8  48 00 01 9C */	b lbl_80175744
lbl_801755AC:
/* 801755AC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801755B0  40 82 00 0C */	bne lbl_801755BC
/* 801755B4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801755B8  41 82 01 8C */	beq lbl_80175744
lbl_801755BC:
/* 801755BC  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 801755C0  2C 00 FF FF */	cmpwi r0, -1
/* 801755C4  40 82 00 08 */	bne lbl_801755CC
/* 801755C8  3A C0 00 01 */	li r22, 1
lbl_801755CC:
/* 801755CC  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 801755D0  41 82 00 24 */	beq lbl_801755F4
/* 801755D4  C0 5F 04 08 */	lfs f2, 0x408(r31)
/* 801755D8  C0 22 9D 28 */	lfs f1, lit_9395(r2)
/* 801755DC  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801755E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801755E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801755E8  EC 02 00 2A */	fadds f0, f2, f0
/* 801755EC  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 801755F0  48 00 00 1C */	b lbl_8017560C
lbl_801755F4:
/* 801755F4  C0 5F 04 08 */	lfs f2, 0x408(r31)
/* 801755F8  C0 22 9D 28 */	lfs f1, lit_9395(r2)
/* 801755FC  FC 00 10 50 */	fneg f0, f2
/* 80175600  EC 01 00 32 */	fmuls f0, f1, f0
/* 80175604  EC 02 00 2A */	fadds f0, f2, f0
/* 80175608  D0 1F 04 08 */	stfs f0, 0x408(r31)
lbl_8017560C:
/* 8017560C  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80175610  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 80175614  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 80175618  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017561C  60 00 00 10 */	ori r0, r0, 0x10
/* 80175620  B0 03 00 06 */	sth r0, 6(r3)
/* 80175624  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 80175628  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017562C  60 00 00 04 */	ori r0, r0, 4
/* 80175630  B0 03 00 06 */	sth r0, 6(r3)
/* 80175634  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80175638  41 82 00 50 */	beq lbl_80175688
/* 8017563C  A8 1D 30 20 */	lha r0, 0x3020(r29)
/* 80175640  2C 00 00 00 */	cmpwi r0, 0
/* 80175644  40 82 00 08 */	bne lbl_8017564C
/* 80175648  48 00 00 08 */	b lbl_80175650
lbl_8017564C:
/* 8017564C  FE 40 90 50 */	fneg f18, f18
lbl_80175650:
/* 80175650  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 80175654  EC 12 F0 28 */	fsubs f0, f18, f30
/* 80175658  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017565C  EF DE 00 2A */	fadds f30, f30, f0
/* 80175660  EC 18 E8 28 */	fsubs f0, f24, f29
/* 80175664  EC 01 00 32 */	fmuls f0, f1, f0
/* 80175668  EF BD 00 2A */	fadds f29, f29, f0
/* 8017566C  EC 17 E0 28 */	fsubs f0, f23, f28
/* 80175670  EC 01 00 32 */	fmuls f0, f1, f0
/* 80175674  EF 9C 00 2A */	fadds f28, f28, f0
/* 80175678  EC 15 B0 28 */	fsubs f0, f21, f22
/* 8017567C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80175680  EE D6 00 2A */	fadds f22, f22, f0
/* 80175684  48 00 00 C0 */	b lbl_80175744
lbl_80175688:
/* 80175688  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8017568C  41 82 00 40 */	beq lbl_801756CC
/* 80175690  C0 02 9E 90 */	lfs f0, lit_12865(r2)
/* 80175694  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80175698  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 8017569C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801756A0  EF DE 00 2A */	fadds f30, f30, f0
/* 801756A4  FC 00 E8 50 */	fneg f0, f29
/* 801756A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801756AC  EF BD 00 2A */	fadds f29, f29, f0
/* 801756B0  EC 19 E0 28 */	fsubs f0, f25, f28
/* 801756B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801756B8  EF 9C 00 2A */	fadds f28, f28, f0
/* 801756BC  EC 15 B0 28 */	fsubs f0, f21, f22
/* 801756C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801756C4  EE D6 00 2A */	fadds f22, f22, f0
/* 801756C8  48 00 00 7C */	b lbl_80175744
lbl_801756CC:
/* 801756CC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801756D0  41 82 00 3C */	beq lbl_8017570C
/* 801756D4  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 801756D8  EC 1B F0 28 */	fsubs f0, f27, f30
/* 801756DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801756E0  EF DE 00 2A */	fadds f30, f30, f0
/* 801756E4  EC 1A E8 28 */	fsubs f0, f26, f29
/* 801756E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801756EC  EF BD 00 2A */	fadds f29, f29, f0
/* 801756F0  EC 19 E0 28 */	fsubs f0, f25, f28
/* 801756F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801756F8  EF 9C 00 2A */	fadds f28, f28, f0
/* 801756FC  EC 15 B0 28 */	fsubs f0, f21, f22
/* 80175700  EC 01 00 32 */	fmuls f0, f1, f0
/* 80175704  EE D6 00 2A */	fadds f22, f22, f0
/* 80175708  48 00 00 3C */	b lbl_80175744
lbl_8017570C:
/* 8017570C  FC 00 F0 50 */	fneg f0, f30
/* 80175710  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 80175714  EC 00 00 72 */	fmuls f0, f0, f1
/* 80175718  EF DE 00 2A */	fadds f30, f30, f0
/* 8017571C  FC 00 E8 50 */	fneg f0, f29
/* 80175720  EC 00 00 72 */	fmuls f0, f0, f1
/* 80175724  EF BD 00 2A */	fadds f29, f29, f0
/* 80175728  FC 00 E0 50 */	fneg f0, f28
/* 8017572C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80175730  EF 9C 00 2A */	fadds f28, f28, f0
/* 80175734  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 80175738  EC 00 B0 28 */	fsubs f0, f0, f22
/* 8017573C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80175740  EE D6 00 2A */	fadds f22, f22, f0
lbl_80175744:
/* 80175744  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 80175748  2C 00 00 04 */	cmpwi r0, 4
/* 8017574C  40 82 00 20 */	bne lbl_8017576C
/* 80175750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80175754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80175758  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 8017575C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80175760  41 82 00 0C */	beq lbl_8017576C
/* 80175764  C3 A2 9D 88 */	lfs f29, lit_10557(r2)
/* 80175768  48 00 00 28 */	b lbl_80175790
lbl_8017576C:
/* 8017576C  7F A3 EB 78 */	mr r3, r29
/* 80175770  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80175774  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80175778  7D 89 03 A6 */	mtctr r12
/* 8017577C  4E 80 04 21 */	bctrl 
/* 80175780  2C 03 00 00 */	cmpwi r3, 0
/* 80175784  41 82 00 0C */	beq lbl_80175790
/* 80175788  C2 C2 9E 94 */	lfs f22, lit_12866(r2)
/* 8017578C  C3 A2 9D 68 */	lfs f29, lit_9788(r2)
lbl_80175790:
/* 80175790  80 1F 0A F4 */	lwz r0, 0xaf4(r31)
/* 80175794  7C 60 F2 14 */	add r3, r0, r30
/* 80175798  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017579C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 801757A0  41 82 00 10 */	beq lbl_801757B0
/* 801757A4  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801757A8  60 00 08 00 */	ori r0, r0, 0x800
/* 801757AC  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_801757B0:
/* 801757B0  80 1F 0A F4 */	lwz r0, 0xaf4(r31)
/* 801757B4  7C 60 F2 14 */	add r3, r0, r30
/* 801757B8  A0 03 00 06 */	lhz r0, 6(r3)
/* 801757BC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801757C0  41 82 00 10 */	beq lbl_801757D0
/* 801757C4  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801757C8  64 00 10 00 */	oris r0, r0, 0x1000
/* 801757CC  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_801757D0:
/* 801757D0  D3 C1 02 A8 */	stfs f30, 0x2a8(r1)
/* 801757D4  D3 A1 02 AC */	stfs f29, 0x2ac(r1)
/* 801757D8  D3 81 02 B0 */	stfs f28, 0x2b0(r1)
/* 801757DC  38 61 00 2C */	addi r3, r1, 0x2c
/* 801757E0  38 81 00 50 */	addi r4, r1, 0x50
/* 801757E4  48 0F B7 85 */	bl __ct__7cSAngleFRC7cSAngle
/* 801757E8  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 801757EC  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 801757F0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801757F4  4B F1 2B 29 */	bl xyzRotateX__8dCamMathFR4cXyz7cSAngle
/* 801757F8  38 61 02 CC */	addi r3, r1, 0x2cc
/* 801757FC  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80175800  4B F2 1F D9 */	bl __as__4cXyzFRC4cXyz
/* 80175804  38 61 00 28 */	addi r3, r1, 0x28
/* 80175808  38 81 00 4C */	addi r4, r1, 0x4c
/* 8017580C  48 0F B7 5D */	bl __ct__7cSAngleFRC7cSAngle
/* 80175810  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 80175814  38 81 02 CC */	addi r4, r1, 0x2cc
/* 80175818  38 A1 00 28 */	addi r5, r1, 0x28
/* 8017581C  4B F1 2B 69 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 80175820  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80175824  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80175828  4B F2 1F B1 */	bl __as__4cXyzFRC4cXyz
/* 8017582C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80175830  41 82 00 0C */	beq lbl_8017583C
/* 80175834  C0 22 9D 34 */	lfs f1, lit_9398(r2)
/* 80175838  48 00 00 08 */	b lbl_80175840
lbl_8017583C:
/* 8017583C  C0 22 9C A0 */	lfs f1, lit_5656(r2)
lbl_80175840:
/* 80175840  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80175844  D0 01 02 9C */	stfs f0, 0x29c(r1)
/* 80175848  D0 21 02 A0 */	stfs f1, 0x2a0(r1)
/* 8017584C  FC 00 B0 50 */	fneg f0, f22
/* 80175850  D0 01 02 A4 */	stfs f0, 0x2a4(r1)
/* 80175854  38 61 00 24 */	addi r3, r1, 0x24
/* 80175858  38 81 00 50 */	addi r4, r1, 0x50
/* 8017585C  48 0F B7 0D */	bl __ct__7cSAngleFRC7cSAngle
/* 80175860  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80175864  38 81 02 9C */	addi r4, r1, 0x29c
/* 80175868  38 A1 00 24 */	addi r5, r1, 0x24
/* 8017586C  4B F1 2A B1 */	bl xyzRotateX__8dCamMathFR4cXyz7cSAngle
/* 80175870  38 61 02 CC */	addi r3, r1, 0x2cc
/* 80175874  38 81 01 AC */	addi r4, r1, 0x1ac
/* 80175878  4B F2 1F 61 */	bl __as__4cXyzFRC4cXyz
/* 8017587C  38 61 00 20 */	addi r3, r1, 0x20
/* 80175880  38 81 00 4C */	addi r4, r1, 0x4c
/* 80175884  48 0F B6 E5 */	bl __ct__7cSAngleFRC7cSAngle
/* 80175888  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8017588C  38 81 02 CC */	addi r4, r1, 0x2cc
/* 80175890  38 A1 00 20 */	addi r5, r1, 0x20
/* 80175894  4B F1 2A F1 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 80175898  38 61 02 9C */	addi r3, r1, 0x29c
/* 8017589C  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 801758A0  4B F2 1F 39 */	bl __as__4cXyzFRC4cXyz
/* 801758A4  28 19 00 00 */	cmplwi r25, 0
/* 801758A8  41 82 00 24 */	beq lbl_801758CC
/* 801758AC  7E E3 BB 78 */	mr r3, r23
/* 801758B0  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 801758B4  7C 85 23 78 */	mr r5, r4
/* 801758B8  48 1D 15 95 */	bl PSMTXMultVecSR
/* 801758BC  7E E3 BB 78 */	mr r3, r23
/* 801758C0  38 81 02 9C */	addi r4, r1, 0x29c
/* 801758C4  7C 85 23 78 */	mr r5, r4
/* 801758C8  48 1D 15 85 */	bl PSMTXMultVecSR
lbl_801758CC:
/* 801758CC  C2 42 9C A8 */	lfs f18, lit_5658(r2)
/* 801758D0  7F A3 EB 78 */	mr r3, r29
/* 801758D4  4B F9 CB E1 */	bl checkIronBallThrowReturnMode__9daAlink_cCFv
/* 801758D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801758DC  41 82 00 0C */	beq lbl_801758E8
/* 801758E0  C2 42 9D 0C */	lfs f18, lit_8021(r2)
/* 801758E4  48 00 00 40 */	b lbl_80175924
lbl_801758E8:
/* 801758E8  7F A3 EB 78 */	mr r3, r29
/* 801758EC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 801758F0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 801758F4  7D 89 03 A6 */	mtctr r12
/* 801758F8  4E 80 04 21 */	bctrl 
/* 801758FC  28 03 00 00 */	cmplwi r3, 0
/* 80175900  40 82 00 20 */	bne lbl_80175920
/* 80175904  7F A3 EB 78 */	mr r3, r29
/* 80175908  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017590C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80175910  7D 89 03 A6 */	mtctr r12
/* 80175914  4E 80 04 21 */	bctrl 
/* 80175918  28 03 00 00 */	cmplwi r3, 0
/* 8017591C  41 82 00 08 */	beq lbl_80175924
lbl_80175920:
/* 80175920  C2 42 9C A8 */	lfs f18, lit_5658(r2)
lbl_80175924:
/* 80175924  38 61 01 94 */	addi r3, r1, 0x194
/* 80175928  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 8017592C  38 A1 02 A8 */	addi r5, r1, 0x2a8
/* 80175930  48 0F 11 B5 */	bl __pl__4cXyzCFRC3Vec
/* 80175934  38 61 02 90 */	addi r3, r1, 0x290
/* 80175938  38 81 01 94 */	addi r4, r1, 0x194
/* 8017593C  4B F2 1E B9 */	bl __ct__4cXyzFRC4cXyz
/* 80175940  38 61 03 04 */	addi r3, r1, 0x304
/* 80175944  4B F0 24 61 */	bl __ct__14dBgS_CamLinChkFv
/* 80175948  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 8017594C  2C 00 00 01 */	cmpwi r0, 1
/* 80175950  40 82 00 A4 */	bne lbl_801759F4
/* 80175954  38 61 01 88 */	addi r3, r1, 0x188
/* 80175958  7F E4 FB 78 */	mr r4, r31
/* 8017595C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80175960  4B F2 1D FD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80175964  38 61 02 84 */	addi r3, r1, 0x284
/* 80175968  38 81 01 88 */	addi r4, r1, 0x188
/* 8017596C  4B F2 1E 89 */	bl __ct__4cXyzFRC4cXyz
/* 80175970  C0 01 02 DC */	lfs f0, 0x2dc(r1)
/* 80175974  D0 01 02 88 */	stfs f0, 0x288(r1)
/* 80175978  7F E3 FB 78 */	mr r3, r31
/* 8017597C  38 81 02 84 */	addi r4, r1, 0x284
/* 80175980  38 A1 02 90 */	addi r5, r1, 0x290
/* 80175984  38 C1 03 04 */	addi r6, r1, 0x304
/* 80175988  38 E0 40 B7 */	li r7, 0x40b7
/* 8017598C  4B FE FF 35 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80175990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80175994  41 82 00 60 */	beq lbl_801759F4
/* 80175998  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8017599C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 801759A0  90 01 03 00 */	stw r0, 0x300(r1)
/* 801759A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801759A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801759AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 801759B0  38 81 03 18 */	addi r4, r1, 0x318
/* 801759B4  38 A1 02 F0 */	addi r5, r1, 0x2f0
/* 801759B8  4B EF ED 8D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 801759BC  38 61 02 90 */	addi r3, r1, 0x290
/* 801759C0  38 81 03 34 */	addi r4, r1, 0x334
/* 801759C4  4B F2 1E 15 */	bl __as__4cXyzFRC4cXyz
/* 801759C8  38 61 01 7C */	addi r3, r1, 0x17c
/* 801759CC  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 801759D0  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 801759D4  48 0F 11 B1 */	bl __ml__4cXyzCFf
/* 801759D8  38 61 02 90 */	addi r3, r1, 0x290
/* 801759DC  38 81 01 7C */	addi r4, r1, 0x17c
/* 801759E0  7C 65 1B 78 */	mr r5, r3
/* 801759E4  48 1D 16 AD */	bl PSVECAdd
/* 801759E8  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 801759EC  38 80 FF FF */	li r4, -1
/* 801759F0  4B EA 81 A1 */	bl __dt__8cM3dGPlaFv
lbl_801759F4:
/* 801759F4  38 61 01 70 */	addi r3, r1, 0x170
/* 801759F8  38 81 02 90 */	addi r4, r1, 0x290
/* 801759FC  38 BF 00 64 */	addi r5, r31, 0x64
/* 80175A00  48 0F 11 35 */	bl __mi__4cXyzCFRC3Vec
/* 80175A04  38 61 01 64 */	addi r3, r1, 0x164
/* 80175A08  38 81 01 70 */	addi r4, r1, 0x170
/* 80175A0C  FC 20 90 90 */	fmr f1, f18
/* 80175A10  48 0F 11 75 */	bl __ml__4cXyzCFf
/* 80175A14  38 61 01 58 */	addi r3, r1, 0x158
/* 80175A18  38 9F 00 64 */	addi r4, r31, 0x64
/* 80175A1C  38 A1 01 64 */	addi r5, r1, 0x164
/* 80175A20  48 0F 10 C5 */	bl __pl__4cXyzCFRC3Vec
/* 80175A24  38 61 02 90 */	addi r3, r1, 0x290
/* 80175A28  38 81 01 58 */	addi r4, r1, 0x158
/* 80175A2C  4B F2 1D AD */	bl __as__4cXyzFRC4cXyz
/* 80175A30  38 61 01 4C */	addi r3, r1, 0x14c
/* 80175A34  38 81 02 90 */	addi r4, r1, 0x290
/* 80175A38  38 A1 02 9C */	addi r5, r1, 0x29c
/* 80175A3C  48 0F 10 A9 */	bl __pl__4cXyzCFRC3Vec
/* 80175A40  38 61 02 78 */	addi r3, r1, 0x278
/* 80175A44  38 81 01 4C */	addi r4, r1, 0x14c
/* 80175A48  4B F2 1D AD */	bl __ct__4cXyzFRC4cXyz
/* 80175A4C  38 61 01 40 */	addi r3, r1, 0x140
/* 80175A50  38 81 02 78 */	addi r4, r1, 0x278
/* 80175A54  38 BF 00 70 */	addi r5, r31, 0x70
/* 80175A58  48 0F 10 DD */	bl __mi__4cXyzCFRC3Vec
/* 80175A5C  38 61 01 34 */	addi r3, r1, 0x134
/* 80175A60  38 81 01 40 */	addi r4, r1, 0x140
/* 80175A64  FC 20 90 90 */	fmr f1, f18
/* 80175A68  48 0F 11 1D */	bl __ml__4cXyzCFf
/* 80175A6C  38 61 01 28 */	addi r3, r1, 0x128
/* 80175A70  38 9F 00 70 */	addi r4, r31, 0x70
/* 80175A74  38 A1 01 34 */	addi r5, r1, 0x134
/* 80175A78  48 0F 10 6D */	bl __pl__4cXyzCFRC3Vec
/* 80175A7C  38 61 02 78 */	addi r3, r1, 0x278
/* 80175A80  38 81 01 28 */	addi r4, r1, 0x128
/* 80175A84  4B F2 1D 55 */	bl __as__4cXyzFRC4cXyz
/* 80175A88  28 19 00 00 */	cmplwi r25, 0
/* 80175A8C  41 82 00 20 */	beq lbl_80175AAC
/* 80175A90  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80175A94  60 00 00 10 */	ori r0, r0, 0x10
/* 80175A98  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80175A9C  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 80175AA0  38 81 02 E4 */	addi r4, r1, 0x2e4
/* 80175AA4  4B F2 1D 35 */	bl __as__4cXyzFRC4cXyz
/* 80175AA8  48 00 00 14 */	b lbl_80175ABC
lbl_80175AAC:
/* 80175AAC  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 80175AB0  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 80175AB4  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 80175AB8  4B F2 1D 21 */	bl __as__4cXyzFRC4cXyz
lbl_80175ABC:
/* 80175ABC  38 61 01 1C */	addi r3, r1, 0x11c
/* 80175AC0  38 81 02 78 */	addi r4, r1, 0x278
/* 80175AC4  38 A1 02 90 */	addi r5, r1, 0x290
/* 80175AC8  48 0F 10 6D */	bl __mi__4cXyzCFRC3Vec
/* 80175ACC  38 61 02 6C */	addi r3, r1, 0x26c
/* 80175AD0  38 81 01 1C */	addi r4, r1, 0x11c
/* 80175AD4  4B F2 1D 21 */	bl __ct__4cXyzFRC4cXyz
/* 80175AD8  38 61 01 10 */	addi r3, r1, 0x110
/* 80175ADC  38 81 02 6C */	addi r4, r1, 0x26c
/* 80175AE0  48 0F 14 15 */	bl normalize__4cXyzFv
/* 80175AE4  38 61 01 04 */	addi r3, r1, 0x104
/* 80175AE8  38 81 02 6C */	addi r4, r1, 0x26c
/* 80175AEC  C0 22 9D 34 */	lfs f1, lit_9398(r2)
/* 80175AF0  48 0F 10 95 */	bl __ml__4cXyzCFf
/* 80175AF4  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80175AF8  38 81 02 90 */	addi r4, r1, 0x290
/* 80175AFC  38 A1 01 04 */	addi r5, r1, 0x104
/* 80175B00  48 0F 0F E5 */	bl __pl__4cXyzCFRC3Vec
/* 80175B04  38 61 02 60 */	addi r3, r1, 0x260
/* 80175B08  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80175B0C  4B F2 1C CD */	bl __as__4cXyzFRC4cXyz
/* 80175B10  7F E3 FB 78 */	mr r3, r31
/* 80175B14  38 81 02 60 */	addi r4, r1, 0x260
/* 80175B18  38 A1 02 90 */	addi r5, r1, 0x290
/* 80175B1C  38 C1 02 54 */	addi r6, r1, 0x254
/* 80175B20  38 E0 40 B7 */	li r7, 0x40b7
/* 80175B24  4B FE FE D1 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP4cXyzUl
/* 80175B28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80175B2C  41 82 00 30 */	beq lbl_80175B5C
/* 80175B30  38 61 00 EC */	addi r3, r1, 0xec
/* 80175B34  38 81 02 6C */	addi r4, r1, 0x26c
/* 80175B38  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 80175B3C  48 0F 10 49 */	bl __ml__4cXyzCFf
/* 80175B40  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80175B44  38 81 02 54 */	addi r4, r1, 0x254
/* 80175B48  38 A1 00 EC */	addi r5, r1, 0xec
/* 80175B4C  48 0F 0F 99 */	bl __pl__4cXyzCFRC3Vec
/* 80175B50  38 61 02 78 */	addi r3, r1, 0x278
/* 80175B54  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80175B58  4B F2 1C 81 */	bl __as__4cXyzFRC4cXyz
lbl_80175B5C:
/* 80175B5C  88 1F 01 58 */	lbz r0, 0x158(r31)
/* 80175B60  28 00 00 00 */	cmplwi r0, 0
/* 80175B64  41 82 00 20 */	beq lbl_80175B84
/* 80175B68  38 7F 00 64 */	addi r3, r31, 0x64
/* 80175B6C  38 81 02 90 */	addi r4, r1, 0x290
/* 80175B70  4B F2 1C 69 */	bl __as__4cXyzFRC4cXyz
/* 80175B74  38 7F 00 70 */	addi r3, r31, 0x70
/* 80175B78  38 81 02 78 */	addi r4, r1, 0x278
/* 80175B7C  4B F2 1C 5D */	bl __as__4cXyzFRC4cXyz
/* 80175B80  48 00 02 1C */	b lbl_80175D9C
lbl_80175B84:
/* 80175B84  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80175B88  38 81 02 78 */	addi r4, r1, 0x278
/* 80175B8C  38 A1 02 90 */	addi r5, r1, 0x290
/* 80175B90  48 0F 0F A5 */	bl __mi__4cXyzCFRC3Vec
/* 80175B94  38 61 00 64 */	addi r3, r1, 0x64
/* 80175B98  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80175B9C  48 0F BC E5 */	bl __ct__7cSGlobeFRC4cXyz
/* 80175BA0  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 80175BA4  80 7F 03 F8 */	lwz r3, 0x3f8(r31)
/* 80175BA8  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 80175BAC  7C 03 00 50 */	subf r0, r3, r0
/* 80175BB0  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80175BB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80175BB8  90 01 03 7C */	stw r0, 0x37c(r1)
/* 80175BBC  3C 00 43 30 */	lis r0, 0x4330
/* 80175BC0  90 01 03 78 */	stw r0, 0x378(r1)
/* 80175BC4  C8 01 03 78 */	lfd f0, 0x378(r1)
/* 80175BC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80175BCC  EE 22 00 24 */	fdivs f17, f2, f0
/* 80175BD0  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80175BD4  38 81 02 90 */	addi r4, r1, 0x290
/* 80175BD8  38 BF 00 64 */	addi r5, r31, 0x64
/* 80175BDC  48 0F 0F 59 */	bl __mi__4cXyzCFRC3Vec
/* 80175BE0  38 61 00 BC */	addi r3, r1, 0xbc
/* 80175BE4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80175BE8  FC 20 88 90 */	fmr f1, f17
/* 80175BEC  48 0F 0F 99 */	bl __ml__4cXyzCFf
/* 80175BF0  38 7F 00 64 */	addi r3, r31, 0x64
/* 80175BF4  38 81 00 BC */	addi r4, r1, 0xbc
/* 80175BF8  7C 65 1B 78 */	mr r5, r3
/* 80175BFC  48 1D 14 95 */	bl PSVECAdd
/* 80175C00  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80175C04  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80175C08  EC 00 08 28 */	fsubs f0, f0, f1
/* 80175C0C  EC 11 00 32 */	fmuls f0, f17, f0
/* 80175C10  EC 01 00 2A */	fadds f0, f1, f0
/* 80175C14  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80175C18  38 61 00 1C */	addi r3, r1, 0x1c
/* 80175C1C  38 81 00 68 */	addi r4, r1, 0x68
/* 80175C20  3A DF 00 60 */	addi r22, r31, 0x60
/* 80175C24  7E C5 B3 78 */	mr r5, r22
/* 80175C28  48 0F B5 7D */	bl __mi__7cSAngleCFRC7cSAngle
/* 80175C2C  38 61 00 18 */	addi r3, r1, 0x18
/* 80175C30  38 81 00 1C */	addi r4, r1, 0x1c
/* 80175C34  FC 20 88 90 */	fmr f1, f17
/* 80175C38  48 0F B6 2D */	bl __ml__7cSAngleCFf
/* 80175C3C  38 61 00 14 */	addi r3, r1, 0x14
/* 80175C40  7E C4 B3 78 */	mr r4, r22
/* 80175C44  38 A1 00 18 */	addi r5, r1, 0x18
/* 80175C48  48 0F B5 2D */	bl __pl__7cSAngleCFRC7cSAngle
/* 80175C4C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80175C50  38 81 00 14 */	addi r4, r1, 0x14
/* 80175C54  4B F1 9E 05 */	bl V__7cSGlobeFRC7cSAngle
/* 80175C58  38 61 00 10 */	addi r3, r1, 0x10
/* 80175C5C  38 81 00 6A */	addi r4, r1, 0x6a
/* 80175C60  3A DF 00 62 */	addi r22, r31, 0x62
/* 80175C64  7E C5 B3 78 */	mr r5, r22
/* 80175C68  48 0F B5 3D */	bl __mi__7cSAngleCFRC7cSAngle
/* 80175C6C  38 61 00 0C */	addi r3, r1, 0xc
/* 80175C70  38 81 00 10 */	addi r4, r1, 0x10
/* 80175C74  FC 20 88 90 */	fmr f1, f17
/* 80175C78  48 0F B5 ED */	bl __ml__7cSAngleCFf
/* 80175C7C  38 61 00 08 */	addi r3, r1, 8
/* 80175C80  7E C4 B3 78 */	mr r4, r22
/* 80175C84  38 A1 00 0C */	addi r5, r1, 0xc
/* 80175C88  48 0F B4 ED */	bl __pl__7cSAngleCFRC7cSAngle
/* 80175C8C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80175C90  38 81 00 08 */	addi r4, r1, 8
/* 80175C94  4B F1 8C 01 */	bl U__7cSGlobeFRC7cSAngle
/* 80175C98  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80175C9C  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80175CA0  48 0F BE 15 */	bl Xyz__7cSGlobeCFv
/* 80175CA4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80175CA8  38 9F 00 64 */	addi r4, r31, 0x64
/* 80175CAC  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80175CB0  48 0F 0E 35 */	bl __pl__4cXyzCFRC3Vec
/* 80175CB4  38 7F 00 70 */	addi r3, r31, 0x70
/* 80175CB8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80175CBC  4B F2 1B 1D */	bl __as__4cXyzFRC4cXyz
/* 80175CC0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80175CC4  EC 1F 08 28 */	fsubs f0, f31, f1
/* 80175CC8  EC 11 00 32 */	fmuls f0, f17, f0
/* 80175CCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80175CD0  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80175CD4  38 61 00 98 */	addi r3, r1, 0x98
/* 80175CD8  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 80175CDC  38 BF 04 24 */	addi r5, r31, 0x424
/* 80175CE0  48 0F 0E 55 */	bl __mi__4cXyzCFRC3Vec
/* 80175CE4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80175CE8  38 81 00 98 */	addi r4, r1, 0x98
/* 80175CEC  FC 20 88 90 */	fmr f1, f17
/* 80175CF0  48 0F 0E 95 */	bl __ml__4cXyzCFf
/* 80175CF4  38 7F 04 24 */	addi r3, r31, 0x424
/* 80175CF8  38 81 00 8C */	addi r4, r1, 0x8c
/* 80175CFC  7C 65 1B 78 */	mr r5, r3
/* 80175D00  48 1D 13 91 */	bl PSVECAdd
/* 80175D04  38 61 00 80 */	addi r3, r1, 0x80
/* 80175D08  38 9F 04 24 */	addi r4, r31, 0x424
/* 80175D0C  48 0F 0F D9 */	bl norm__4cXyzCFv
/* 80175D10  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 80175D14  38 81 00 80 */	addi r4, r1, 0x80
/* 80175D18  4B F2 1A C1 */	bl __as__4cXyzFRC4cXyz
/* 80175D1C  80 9F 03 F8 */	lwz r4, 0x3f8(r31)
/* 80175D20  80 7F 03 FC */	lwz r3, 0x3fc(r31)
/* 80175D24  38 03 FF FF */	addi r0, r3, -1
/* 80175D28  7C 04 00 00 */	cmpw r4, r0
/* 80175D2C  40 82 00 0C */	bne lbl_80175D38
/* 80175D30  38 00 00 01 */	li r0, 1
/* 80175D34  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_80175D38:
/* 80175D38  80 7F 03 F8 */	lwz r3, 0x3f8(r31)
/* 80175D3C  38 03 00 01 */	addi r0, r3, 1
/* 80175D40  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 80175D44  28 19 00 00 */	cmplwi r25, 0
/* 80175D48  41 82 00 34 */	beq lbl_80175D7C
/* 80175D4C  38 7F 07 40 */	addi r3, r31, 0x740
/* 80175D50  38 9F 00 64 */	addi r4, r31, 0x64
/* 80175D54  4B F2 1A 85 */	bl __as__4cXyzFRC4cXyz
/* 80175D58  38 7F 07 4C */	addi r3, r31, 0x74c
/* 80175D5C  38 9F 00 70 */	addi r4, r31, 0x70
/* 80175D60  4B F2 1A 79 */	bl __as__4cXyzFRC4cXyz
/* 80175D64  38 7F 07 64 */	addi r3, r31, 0x764
/* 80175D68  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80175D6C  4B F1 8A 09 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80175D70  38 7F 07 58 */	addi r3, r31, 0x758
/* 80175D74  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 80175D78  4B F2 1A 61 */	bl __as__4cXyzFRC4cXyz
lbl_80175D7C:
/* 80175D7C  38 61 00 64 */	addi r3, r1, 0x64
/* 80175D80  38 80 FF FF */	li r4, -1
/* 80175D84  4B EF B8 F9 */	bl __dt__7cSGlobeFv
/* 80175D88  38 61 03 04 */	addi r3, r1, 0x304
/* 80175D8C  38 80 FF FF */	li r4, -1
/* 80175D90  4B F0 20 71 */	bl __dt__14dBgS_CamLinChkFv
/* 80175D94  38 60 00 01 */	li r3, 1
/* 80175D98  48 00 02 4C */	b lbl_80175FE4
lbl_80175D9C:
/* 80175D9C  38 61 00 74 */	addi r3, r1, 0x74
/* 80175DA0  38 9F 00 70 */	addi r4, r31, 0x70
/* 80175DA4  38 BF 00 64 */	addi r5, r31, 0x64
/* 80175DA8  48 0F 0D 8D */	bl __mi__4cXyzCFRC3Vec
/* 80175DAC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80175DB0  38 81 00 74 */	addi r4, r1, 0x74
/* 80175DB4  48 0F BC BD */	bl Val__7cSGlobeFRC4cXyz
/* 80175DB8  38 7F 07 40 */	addi r3, r31, 0x740
/* 80175DBC  38 9F 00 64 */	addi r4, r31, 0x64
/* 80175DC0  4B F2 1A 19 */	bl __as__4cXyzFRC4cXyz
/* 80175DC4  38 7F 07 4C */	addi r3, r31, 0x74c
/* 80175DC8  38 9F 00 70 */	addi r4, r31, 0x70
/* 80175DCC  4B F2 1A 0D */	bl __as__4cXyzFRC4cXyz
/* 80175DD0  38 7F 07 64 */	addi r3, r31, 0x764
/* 80175DD4  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80175DD8  4B F1 89 9D */	bl __as__7cSGlobeFRC7cSGlobe
/* 80175DDC  38 7F 07 58 */	addi r3, r31, 0x758
/* 80175DE0  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 80175DE4  4B F2 19 F5 */	bl __as__4cXyzFRC4cXyz
/* 80175DE8  80 1F 0A F4 */	lwz r0, 0xaf4(r31)
/* 80175DEC  7C 60 F2 14 */	add r3, r0, r30
/* 80175DF0  A0 03 00 06 */	lhz r0, 6(r3)
/* 80175DF4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80175DF8  41 82 01 D8 */	beq lbl_80175FD0
/* 80175DFC  C2 42 9C A0 */	lfs f18, lit_5656(r2)
/* 80175E00  FE 80 90 90 */	fmr f20, f18
/* 80175E04  38 00 00 00 */	li r0, 0
/* 80175E08  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80175E0C  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 80175E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80175E14  40 81 00 18 */	ble lbl_80175E2C
/* 80175E18  C0 5F 09 BC */	lfs f2, 0x9bc(r31)
/* 80175E1C  4B F1 23 21 */	bl rationalBezierRatio__8dCamMathFff
/* 80175E20  FE 40 08 90 */	fmr f18, f1
/* 80175E24  38 00 FF FF */	li r0, -1
/* 80175E28  48 00 00 24 */	b lbl_80175E4C
lbl_80175E2C:
/* 80175E2C  C0 02 9E 98 */	lfs f0, lit_12867(r2)
/* 80175E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80175E34  40 80 00 18 */	bge lbl_80175E4C
/* 80175E38  FC 20 08 50 */	fneg f1, f1
/* 80175E3C  C0 5F 09 BC */	lfs f2, 0x9bc(r31)
/* 80175E40  4B F1 22 FD */	bl rationalBezierRatio__8dCamMathFff
/* 80175E44  FE 80 08 90 */	fmr f20, f1
/* 80175E48  38 00 00 01 */	li r0, 1
lbl_80175E4C:
/* 80175E4C  C0 5F 04 0C */	lfs f2, 0x40c(r31)
/* 80175E50  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 80175E54  EC 12 A0 28 */	fsubs f0, f18, f20
/* 80175E58  EC 13 00 32 */	fmuls f0, f19, f0
/* 80175E5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80175E60  EC 42 00 2A */	fadds f2, f2, f0
/* 80175E64  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80175E68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80175E6C  40 80 00 0C */	bge lbl_80175E78
/* 80175E70  D0 1F 04 0C */	stfs f0, 0x40c(r31)
/* 80175E74  48 00 00 98 */	b lbl_80175F0C
lbl_80175E78:
/* 80175E78  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80175E7C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80175E80  40 81 00 0C */	ble lbl_80175E8C
/* 80175E84  D0 3F 04 0C */	stfs f1, 0x40c(r31)
/* 80175E88  48 00 00 84 */	b lbl_80175F0C
lbl_80175E8C:
/* 80175E8C  D0 5F 04 0C */	stfs f2, 0x40c(r31)
/* 80175E90  2C 00 FF FF */	cmpwi r0, -1
/* 80175E94  40 82 00 3C */	bne lbl_80175ED0
/* 80175E98  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B8@ha */
/* 80175E9C  38 03 00 B8 */	addi r0, r3, 0x00B8 /* 0x000200B8@l */
/* 80175EA0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80175EA4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80175EA8  38 81 00 60 */	addi r4, r1, 0x60
/* 80175EAC  38 A0 00 00 */	li r5, 0
/* 80175EB0  38 C0 00 00 */	li r6, 0
/* 80175EB4  38 E0 00 00 */	li r7, 0
/* 80175EB8  FC 40 08 90 */	fmr f2, f1
/* 80175EBC  C0 62 9E 9C */	lfs f3, lit_12868(r2)
/* 80175EC0  FC 80 18 90 */	fmr f4, f3
/* 80175EC4  39 00 00 00 */	li r8, 0
/* 80175EC8  48 13 66 45 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80175ECC  48 00 00 40 */	b lbl_80175F0C
lbl_80175ED0:
/* 80175ED0  2C 00 00 01 */	cmpwi r0, 1
/* 80175ED4  40 82 00 38 */	bne lbl_80175F0C
/* 80175ED8  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B9@ha */
/* 80175EDC  38 03 00 B9 */	addi r0, r3, 0x00B9 /* 0x000200B9@l */
/* 80175EE0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80175EE4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80175EE8  38 81 00 5C */	addi r4, r1, 0x5c
/* 80175EEC  38 A0 00 00 */	li r5, 0
/* 80175EF0  38 C0 00 00 */	li r6, 0
/* 80175EF4  38 E0 00 00 */	li r7, 0
/* 80175EF8  FC 40 08 90 */	fmr f2, f1
/* 80175EFC  C0 62 9E 9C */	lfs f3, lit_12868(r2)
/* 80175F00  FC 80 18 90 */	fmr f4, f3
/* 80175F04  39 00 00 00 */	li r8, 0
/* 80175F08  48 13 66 05 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80175F0C:
/* 80175F0C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80175F10  C0 5F 04 0C */	lfs f2, 0x40c(r31)
/* 80175F14  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80175F18  41 82 00 1C */	beq lbl_80175F34
/* 80175F1C  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 80175F20  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80175F24  41 82 00 10 */	beq lbl_80175F34
/* 80175F28  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80175F2C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80175F30  40 82 00 0C */	bne lbl_80175F3C
lbl_80175F34:
/* 80175F34  C2 42 9C A0 */	lfs f18, lit_5656(r2)
/* 80175F38  FE 80 90 90 */	fmr f20, f18
lbl_80175F3C:
/* 80175F3C  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80175F40  C0 02 9D B8 */	lfs f0, lit_10569(r2)
/* 80175F44  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80175F48  EE 61 00 2A */	fadds f19, f1, f0
/* 80175F4C  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 80175F50  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80175F54  FC 40 98 90 */	fmr f2, f19
/* 80175F58  4B F1 23 2D */	bl zoomFovy__8dCamMathFff
/* 80175F5C  C0 02 9C F8 */	lfs f0, lit_8016(r2)
/* 80175F60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80175F64  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80175F68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80175F6C  EC 11 00 32 */	fmuls f0, f17, f0
/* 80175F70  EC 01 00 2A */	fadds f0, f1, f0
/* 80175F74  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80175F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80175F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80175F80  D2 63 5D 80 */	stfs f19, 0x5d80(r3)
/* 80175F84  EC 12 A0 28 */	fsubs f0, f18, f20
/* 80175F88  FC 00 02 10 */	fabs f0, f0
/* 80175F8C  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 80175F90  C0 22 9E A0 */	lfs f1, lit_12869(r2)
/* 80175F94  FC 00 00 18 */	frsp f0, f0
/* 80175F98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80175F9C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80175FA0  D0 03 5D 84 */	stfs f0, 0x5d84(r3)
/* 80175FA4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80175FA8  3C 80 00 20 */	lis r4, 0x20
/* 80175FAC  4B FF 63 BD */	bl func_8016C368
/* 80175FB0  28 03 00 00 */	cmplwi r3, 0
/* 80175FB4  41 82 00 20 */	beq lbl_80175FD4
/* 80175FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80175FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80175FC0  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80175FC4  60 00 00 08 */	ori r0, r0, 8
/* 80175FC8  90 03 5D 7C */	stw r0, 0x5d7c(r3)
/* 80175FCC  48 00 00 08 */	b lbl_80175FD4
lbl_80175FD0:
/* 80175FD0  D3 FF 00 80 */	stfs f31, 0x80(r31)
lbl_80175FD4:
/* 80175FD4  38 61 03 04 */	addi r3, r1, 0x304
/* 80175FD8  38 80 FF FF */	li r4, -1
/* 80175FDC  4B F0 1E 25 */	bl __dt__14dBgS_CamLinChkFv
/* 80175FE0  38 60 00 01 */	li r3, 1
lbl_80175FE4:
/* 80175FE4  E3 E1 04 98 */	psq_l f31, 1176(r1), 0, 0 /* qr0 */
/* 80175FE8  CB E1 04 90 */	lfd f31, 0x490(r1)
/* 80175FEC  E3 C1 04 88 */	psq_l f30, 1160(r1), 0, 0 /* qr0 */
/* 80175FF0  CB C1 04 80 */	lfd f30, 0x480(r1)
/* 80175FF4  E3 A1 04 78 */	psq_l f29, 1144(r1), 0, 0 /* qr0 */
/* 80175FF8  CB A1 04 70 */	lfd f29, 0x470(r1)
/* 80175FFC  E3 81 04 68 */	psq_l f28, 1128(r1), 0, 0 /* qr0 */
/* 80176000  CB 81 04 60 */	lfd f28, 0x460(r1)
/* 80176004  E3 61 04 58 */	psq_l f27, 1112(r1), 0, 0 /* qr0 */
/* 80176008  CB 61 04 50 */	lfd f27, 0x450(r1)
/* 8017600C  E3 41 04 48 */	psq_l f26, 1096(r1), 0, 0 /* qr0 */
/* 80176010  CB 41 04 40 */	lfd f26, 0x440(r1)
/* 80176014  E3 21 04 38 */	psq_l f25, 1080(r1), 0, 0 /* qr0 */
/* 80176018  CB 21 04 30 */	lfd f25, 0x430(r1)
/* 8017601C  E3 01 04 28 */	psq_l f24, 1064(r1), 0, 0 /* qr0 */
/* 80176020  CB 01 04 20 */	lfd f24, 0x420(r1)
/* 80176024  E2 E1 04 18 */	psq_l f23, 1048(r1), 0, 0 /* qr0 */
/* 80176028  CA E1 04 10 */	lfd f23, 0x410(r1)
/* 8017602C  E2 C1 04 08 */	psq_l f22, 1032(r1), 0, 0 /* qr0 */
/* 80176030  CA C1 04 00 */	lfd f22, 0x400(r1)
/* 80176034  E2 A1 03 F8 */	psq_l f21, 1016(r1), 0, 0 /* qr0 */
/* 80176038  CA A1 03 F0 */	lfd f21, 0x3f0(r1)
/* 8017603C  E2 81 03 E8 */	psq_l f20, 1000(r1), 0, 0 /* qr0 */
/* 80176040  CA 81 03 E0 */	lfd f20, 0x3e0(r1)
/* 80176044  E2 61 03 D8 */	psq_l f19, 984(r1), 0, 0 /* qr0 */
/* 80176048  CA 61 03 D0 */	lfd f19, 0x3d0(r1)
/* 8017604C  E2 41 03 C8 */	psq_l f18, 968(r1), 0, 0 /* qr0 */
/* 80176050  CA 41 03 C0 */	lfd f18, 0x3c0(r1)
/* 80176054  E2 21 03 B8 */	psq_l f17, 952(r1), 0, 0 /* qr0 */
/* 80176058  CA 21 03 B0 */	lfd f17, 0x3b0(r1)
/* 8017605C  39 61 03 B0 */	addi r11, r1, 0x3b0
/* 80176060  48 1E C1 A9 */	bl _restgpr_21
/* 80176064  80 01 04 A4 */	lwz r0, 0x4a4(r1)
/* 80176068  7C 08 03 A6 */	mtlr r0
/* 8017606C  38 21 04 A0 */	addi r1, r1, 0x4a0
/* 80176070  4E 80 00 20 */	blr 
