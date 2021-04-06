lbl_80095FD0:
/* 80095FD0  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80095FD4  7C 08 02 A6 */	mflr r0
/* 80095FD8  90 01 01 84 */	stw r0, 0x184(r1)
/* 80095FDC  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80095FE0  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 80095FE4  39 61 01 70 */	addi r11, r1, 0x170
/* 80095FE8  48 2C C1 F1 */	bl _savegpr_28
/* 80095FEC  7C 7F 1B 78 */	mr r31, r3
/* 80095FF0  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80095FF4  28 00 00 00 */	cmplwi r0, 0
/* 80095FF8  40 82 04 08 */	bne lbl_80096400
/* 80095FFC  38 00 00 00 */	li r0, 0
/* 80096000  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 80096004  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80096008  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8009600C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 80096010  38 A5 01 7B */	addi r5, r5, 0x17b
/* 80096014  38 C0 00 03 */	li r6, 3
/* 80096018  4B FF 30 75 */	bl getEvIntData__9dCamera_cFPiPci
/* 8009601C  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 80096020  2C 00 00 01 */	cmpwi r0, 1
/* 80096024  40 82 00 0C */	bne lbl_80096030
/* 80096028  38 00 00 00 */	li r0, 0
/* 8009602C  90 1F 05 08 */	stw r0, 0x508(r31)
lbl_80096030:
/* 80096030  38 00 00 3C */	li r0, 0x3c
/* 80096034  90 1F 03 F0 */	stw r0, 0x3f0(r31)
/* 80096038  C0 02 91 44 */	lfs f0, lit_9798(r2)
/* 8009603C  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 80096040  38 00 00 01 */	li r0, 1
/* 80096044  98 1F 03 F8 */	stb r0, 0x3f8(r31)
/* 80096048  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 8009604C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80096050  41 82 01 C4 */	beq lbl_80096214
/* 80096054  38 61 00 30 */	addi r3, r1, 0x30
/* 80096058  7F E4 FB 78 */	mr r4, r31
/* 8009605C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80096060  48 00 16 D9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80096064  38 61 00 2C */	addi r3, r1, 0x2c
/* 80096068  38 9F 00 62 */	addi r4, r31, 0x62
/* 8009606C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80096070  48 1D B1 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80096074  38 61 00 34 */	addi r3, r1, 0x34
/* 80096078  38 81 00 2C */	addi r4, r1, 0x2c
/* 8009607C  48 1D AE ED */	bl __ct__7cSAngleFRC7cSAngle
/* 80096080  AB CD 8C 10 */	lha r30, _90__7cSAngle(r13)
/* 80096084  38 61 00 34 */	addi r3, r1, 0x34
/* 80096088  48 1D B0 45 */	bl Abs__7cSAngleCFv
/* 8009608C  7C 63 07 34 */	extsh r3, r3
/* 80096090  7F C0 07 34 */	extsh r0, r30
/* 80096094  7C 03 00 00 */	cmpw r3, r0
/* 80096098  40 80 01 7C */	bge lbl_80096214
/* 8009609C  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 800960A0  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 800960A4  C0 02 8F 6C */	lfs f0, lit_8188(r2)
/* 800960A8  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 800960AC  C0 02 8F 74 */	lfs f0, lit_8190(r2)
/* 800960B0  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 800960B4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 800960B8  7F E4 FB 78 */	mr r4, r31
/* 800960BC  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 800960C0  38 C1 01 18 */	addi r6, r1, 0x118
/* 800960C4  48 0C EC A9 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 800960C8  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 800960CC  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 800960D0  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 800960D4  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 800960D8  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 800960DC  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 800960E0  C0 02 90 00 */	lfs f0, lit_8225(r2)
/* 800960E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800960E8  38 61 00 28 */	addi r3, r1, 0x28
/* 800960EC  C0 22 8F 3C */	lfs f1, lit_7347(r2)
/* 800960F0  48 1D AE D9 */	bl __ct__7cSAngleFf
/* 800960F4  38 61 00 10 */	addi r3, r1, 0x10
/* 800960F8  A8 81 00 28 */	lha r4, 0x28(r1)
/* 800960FC  48 1D AE 9D */	bl __ct__7cSAngleFs
/* 80096100  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80096104  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80096108  38 61 00 24 */	addi r3, r1, 0x24
/* 8009610C  7F E4 FB 78 */	mr r4, r31
/* 80096110  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80096114  48 00 16 25 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80096118  38 61 00 20 */	addi r3, r1, 0x20
/* 8009611C  A8 81 00 34 */	lha r4, 0x34(r1)
/* 80096120  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80096124  7C 04 00 00 */	cmpw r4, r0
/* 80096128  40 80 00 0C */	bge lbl_80096134
/* 8009612C  C0 22 8F 1C */	lfs f1, lit_7339(r2)
/* 80096130  48 00 00 08 */	b lbl_80096138
lbl_80096134:
/* 80096134  C0 22 8F 74 */	lfs f1, lit_8190(r2)
lbl_80096138:
/* 80096138  48 1D AE 91 */	bl __ct__7cSAngleFf
/* 8009613C  38 61 00 24 */	addi r3, r1, 0x24
/* 80096140  48 1D AF A9 */	bl Inv__7cSAngleCFv
/* 80096144  7C 64 1B 78 */	mr r4, r3
/* 80096148  38 61 00 1C */	addi r3, r1, 0x1c
/* 8009614C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80096150  48 1D B1 A5 */	bl __pl__FsRC7cSAngle
/* 80096154  38 61 00 0C */	addi r3, r1, 0xc
/* 80096158  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 8009615C  48 1D AE 3D */	bl __ct__7cSAngleFs
/* 80096160  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80096164  B0 01 00 3E */	sth r0, 0x3e(r1)
/* 80096168  38 61 00 DC */	addi r3, r1, 0xdc
/* 8009616C  38 81 00 38 */	addi r4, r1, 0x38
/* 80096170  48 1D B9 45 */	bl Xyz__7cSGlobeCFv
/* 80096174  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80096178  38 81 01 30 */	addi r4, r1, 0x130
/* 8009617C  38 A1 00 DC */	addi r5, r1, 0xdc
/* 80096180  48 1D 09 65 */	bl __pl__4cXyzCFRC3Vec
/* 80096184  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80096188  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 8009618C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80096190  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80096194  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80096198  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 8009619C  7F E3 FB 78 */	mr r3, r31
/* 800961A0  38 81 01 30 */	addi r4, r1, 0x130
/* 800961A4  38 A1 01 24 */	addi r5, r1, 0x124
/* 800961A8  38 C0 40 07 */	li r6, 0x4007
/* 800961AC  48 0C F9 45 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 800961B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800961B4  40 82 00 58 */	bne lbl_8009620C
/* 800961B8  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 800961BC  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 800961C0  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 800961C4  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 800961C8  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 800961CC  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 800961D0  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 800961D4  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 800961D8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800961DC  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800961E0  A8 01 00 3C */	lha r0, 0x3c(r1)
/* 800961E4  B0 1F 00 60 */	sth r0, 0x60(r31)
/* 800961E8  A8 01 00 3E */	lha r0, 0x3e(r1)
/* 800961EC  B0 1F 00 62 */	sth r0, 0x62(r31)
/* 800961F0  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 800961F4  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 800961F8  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 800961FC  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80096200  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 80096204  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80096208  48 00 00 0C */	b lbl_80096214
lbl_8009620C:
/* 8009620C  38 00 00 00 */	li r0, 0
/* 80096210  98 1F 03 F8 */	stb r0, 0x3f8(r31)
lbl_80096214:
/* 80096214  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 80096218  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8009621C  41 82 01 9C */	beq lbl_800963B8
/* 80096220  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80096224  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80096228  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8009622C  C0 02 91 A4 */	lfs f0, lit_11068(r2)
/* 80096230  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80096234  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80096238  7F E4 FB 78 */	mr r4, r31
/* 8009623C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80096240  38 C1 01 0C */	addi r6, r1, 0x10c
/* 80096244  48 0C EB 29 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80096248  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8009624C  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 80096250  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80096254  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 80096258  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8009625C  D0 1F 04 04 */	stfs f0, 0x404(r31)
/* 80096260  C0 42 90 B4 */	lfs f2, lit_9406(r2)
/* 80096264  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 80096268  C0 22 8F 74 */	lfs f1, lit_8190(r2)
/* 8009626C  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80096270  C0 02 91 40 */	lfs f0, lit_9441(r2)
/* 80096274  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80096278  D0 41 01 3C */	stfs f2, 0x13c(r1)
/* 8009627C  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 80096280  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80096284  C0 42 8F E4 */	lfs f2, lit_8218(r2)
/* 80096288  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8009628C  C0 22 8F 50 */	lfs f1, lit_8181(r2)
/* 80096290  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 80096294  C0 02 8F 84 */	lfs f0, lit_8194(r2)
/* 80096298  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8009629C  D0 41 01 48 */	stfs f2, 0x148(r1)
/* 800962A0  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 800962A4  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 800962A8  C0 42 90 3C */	lfs f2, lit_8735(r2)
/* 800962AC  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 800962B0  C0 22 8F 4C */	lfs f1, lit_8180(r2)
/* 800962B4  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 800962B8  C0 02 8F 3C */	lfs f0, lit_7347(r2)
/* 800962BC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 800962C0  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 800962C4  D0 21 01 58 */	stfs f1, 0x158(r1)
/* 800962C8  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 800962CC  83 8D 8A 98 */	lwz r28, m_midnaActor__9daPy_py_c(r13)
/* 800962D0  3B A0 00 00 */	li r29, 0
/* 800962D4  3B C0 00 00 */	li r30, 0
lbl_800962D8:
/* 800962D8  38 61 00 18 */	addi r3, r1, 0x18
/* 800962DC  7F E4 FB 78 */	mr r4, r31
/* 800962E0  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 800962E4  48 00 14 55 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 800962E8  38 61 00 94 */	addi r3, r1, 0x94
/* 800962EC  38 81 01 3C */	addi r4, r1, 0x13c
/* 800962F0  7C 84 F2 14 */	add r4, r4, r30
/* 800962F4  38 A1 00 18 */	addi r5, r1, 0x18
/* 800962F8  4B FF 20 8D */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 800962FC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80096300  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80096304  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80096308  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8009630C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80096310  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80096314  38 61 00 88 */	addi r3, r1, 0x88
/* 80096318  38 9F 03 FC */	addi r4, r31, 0x3fc
/* 8009631C  38 A1 01 00 */	addi r5, r1, 0x100
/* 80096320  48 1D 07 C5 */	bl __pl__4cXyzCFRC3Vec
/* 80096324  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80096328  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 8009632C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80096330  D0 1F 04 0C */	stfs f0, 0x40c(r31)
/* 80096334  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80096338  D0 1F 04 10 */	stfs f0, 0x410(r31)
/* 8009633C  7F E3 FB 78 */	mr r3, r31
/* 80096340  38 9F 03 FC */	addi r4, r31, 0x3fc
/* 80096344  38 BF 04 08 */	addi r5, r31, 0x408
/* 80096348  38 C0 40 07 */	li r6, 0x4007
/* 8009634C  48 0C F7 A5 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80096350  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80096354  40 82 00 54 */	bne lbl_800963A8
/* 80096358  C0 1F 03 FC */	lfs f0, 0x3fc(r31)
/* 8009635C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80096360  C0 1F 04 00 */	lfs f0, 0x400(r31)
/* 80096364  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80096368  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8009636C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80096370  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80096374  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80096378  C0 1F 04 0C */	lfs f0, 0x40c(r31)
/* 8009637C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80096380  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 80096384  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80096388  38 61 00 7C */	addi r3, r1, 0x7c
/* 8009638C  38 81 00 70 */	addi r4, r1, 0x70
/* 80096390  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80096394  7F 86 E3 78 */	mr r6, r28
/* 80096398  38 E0 00 00 */	li r7, 0
/* 8009639C  4B FF 96 F9 */	bl func_8008FA94
/* 800963A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800963A4  41 82 00 14 */	beq lbl_800963B8
lbl_800963A8:
/* 800963A8  3B BD 00 01 */	addi r29, r29, 1
/* 800963AC  2C 1D 00 03 */	cmpwi r29, 3
/* 800963B0  3B DE 00 0C */	addi r30, r30, 0xc
/* 800963B4  41 80 FF 24 */	blt lbl_800962D8
lbl_800963B8:
/* 800963B8  38 61 00 64 */	addi r3, r1, 0x64
/* 800963BC  7F E4 FB 78 */	mr r4, r31
/* 800963C0  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 800963C4  48 00 13 59 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 800963C8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800963CC  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 800963D0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800963D4  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 800963D8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800963DC  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 800963E0  38 7F 00 64 */	addi r3, r31, 0x64
/* 800963E4  38 81 00 F4 */	addi r4, r1, 0xf4
/* 800963E8  4B FF 20 05 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 800963EC  C0 02 8F 28 */	lfs f0, lit_7342(r2)
/* 800963F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800963F4  40 81 00 0C */	ble lbl_80096400
/* 800963F8  38 00 00 00 */	li r0, 0
/* 800963FC  98 1F 03 F8 */	stb r0, 0x3f8(r31)
lbl_80096400:
/* 80096400  80 7F 03 E8 */	lwz r3, 0x3e8(r31)
/* 80096404  38 03 00 01 */	addi r0, r3, 1
/* 80096408  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 8009640C  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 80096410  2C 00 00 02 */	cmpwi r0, 2
/* 80096414  41 82 01 14 */	beq lbl_80096528
/* 80096418  88 1F 03 F8 */	lbz r0, 0x3f8(r31)
/* 8009641C  28 00 00 00 */	cmplwi r0, 0
/* 80096420  41 82 00 AC */	beq lbl_800964CC
/* 80096424  C3 FF 00 5C */	lfs f31, 0x5c(r31)
/* 80096428  38 7F 00 60 */	addi r3, r31, 0x60
/* 8009642C  48 1D AC 05 */	bl Degree__7cSAngleCFv
/* 80096430  C0 02 90 00 */	lfs f0, lit_8225(r2)
/* 80096434  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80096438  C0 1F 03 F4 */	lfs f0, 0x3f4(r31)
/* 8009643C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80096440  EC 1F 00 2A */	fadds f0, f31, f0
/* 80096444  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80096448  38 61 00 14 */	addi r3, r1, 0x14
/* 8009644C  C0 02 8F 68 */	lfs f0, lit_8187(r2)
/* 80096450  EC 40 08 28 */	fsubs f2, f0, f1
/* 80096454  C0 1F 03 F4 */	lfs f0, 0x3f4(r31)
/* 80096458  EC 02 00 32 */	fmuls f0, f2, f0
/* 8009645C  EC 21 00 2A */	fadds f1, f1, f0
/* 80096460  48 1D AB 69 */	bl __ct__7cSAngleFf
/* 80096464  38 61 00 08 */	addi r3, r1, 8
/* 80096468  A8 81 00 14 */	lha r4, 0x14(r1)
/* 8009646C  48 1D AB 2D */	bl __ct__7cSAngleFs
/* 80096470  A8 01 00 08 */	lha r0, 8(r1)
/* 80096474  B0 1F 00 60 */	sth r0, 0x60(r31)
/* 80096478  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8009647C  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 80096480  EC 20 10 28 */	fsubs f1, f0, f2
/* 80096484  C0 1F 03 F4 */	lfs f0, 0x3f4(r31)
/* 80096488  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009648C  EC 02 00 2A */	fadds f0, f2, f0
/* 80096490  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80096494  38 61 00 58 */	addi r3, r1, 0x58
/* 80096498  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8009649C  48 1D B6 19 */	bl Xyz__7cSGlobeCFv
/* 800964A0  38 61 00 4C */	addi r3, r1, 0x4c
/* 800964A4  38 9F 00 64 */	addi r4, r31, 0x64
/* 800964A8  38 A1 00 58 */	addi r5, r1, 0x58
/* 800964AC  48 1D 06 39 */	bl __pl__4cXyzCFRC3Vec
/* 800964B0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800964B4  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 800964B8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800964BC  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 800964C0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800964C4  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 800964C8  48 00 00 30 */	b lbl_800964F8
lbl_800964CC:
/* 800964CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800964D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800964D4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 800964D8  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 800964DC  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 800964E0  38 84 02 20 */	addi r4, r4, 0x220
/* 800964E4  48 2D 24 B1 */	bl strcmp
/* 800964E8  2C 03 00 00 */	cmpwi r3, 0
/* 800964EC  40 82 00 0C */	bne lbl_800964F8
/* 800964F0  38 00 00 00 */	li r0, 0
/* 800964F4  90 1F 00 88 */	stw r0, 0x88(r31)
lbl_800964F8:
/* 800964F8  80 7F 03 E8 */	lwz r3, 0x3e8(r31)
/* 800964FC  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80096500  7C 03 00 00 */	cmpw r3, r0
/* 80096504  41 80 00 84 */	blt lbl_80096588
/* 80096508  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 8009650C  2C 00 00 01 */	cmpwi r0, 1
/* 80096510  41 82 00 78 */	beq lbl_80096588
/* 80096514  38 00 00 00 */	li r0, 0
/* 80096518  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 8009651C  38 00 00 02 */	li r0, 2
/* 80096520  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 80096524  48 00 00 64 */	b lbl_80096588
lbl_80096528:
/* 80096528  80 1F 03 E8 */	lwz r0, 0x3e8(r31)
/* 8009652C  2C 00 00 01 */	cmpwi r0, 1
/* 80096530  40 82 00 58 */	bne lbl_80096588
/* 80096534  C0 1F 03 FC */	lfs f0, 0x3fc(r31)
/* 80096538  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 8009653C  C0 1F 04 00 */	lfs f0, 0x400(r31)
/* 80096540  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 80096544  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 80096548  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8009654C  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80096550  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 80096554  C0 1F 04 0C */	lfs f0, 0x40c(r31)
/* 80096558  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8009655C  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 80096560  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80096564  38 61 00 40 */	addi r3, r1, 0x40
/* 80096568  38 9F 00 70 */	addi r4, r31, 0x70
/* 8009656C  38 BF 00 64 */	addi r5, r31, 0x64
/* 80096570  48 1D 05 C5 */	bl __mi__4cXyzCFRC3Vec
/* 80096574  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80096578  38 81 00 40 */	addi r4, r1, 0x40
/* 8009657C  48 1D B4 F5 */	bl Val__7cSGlobeFRC4cXyz
/* 80096580  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 80096584  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_80096588:
/* 80096588  38 60 00 01 */	li r3, 1
/* 8009658C  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 80096590  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 80096594  39 61 01 70 */	addi r11, r1, 0x170
/* 80096598  48 2C BC 8D */	bl _restgpr_28
/* 8009659C  80 01 01 84 */	lwz r0, 0x184(r1)
/* 800965A0  7C 08 03 A6 */	mtlr r0
/* 800965A4  38 21 01 80 */	addi r1, r1, 0x180
/* 800965A8  4E 80 00 20 */	blr 
