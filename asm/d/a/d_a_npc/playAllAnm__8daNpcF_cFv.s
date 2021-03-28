lbl_80152F40:
/* 80152F40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80152F44  7C 08 02 A6 */	mflr r0
/* 80152F48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80152F4C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80152F50  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80152F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80152F58  7C 7F 1B 78 */	mr r31, r3
/* 80152F5C  80 63 09 9C */	lwz r3, 0x99c(r3)
/* 80152F60  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80152F64  40 82 00 DC */	bne lbl_80153040
/* 80152F68  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80152F6C  41 82 00 48 */	beq lbl_80152FB4
/* 80152F70  C3 FF 05 78 */	lfs f31, 0x578(r31)
/* 80152F74  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80152F78  41 82 00 0C */	beq lbl_80152F84
/* 80152F7C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80152F80  D0 1F 05 78 */	stfs f0, 0x578(r31)
lbl_80152F84:
/* 80152F84  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80152F88  4B EB A4 A1 */	bl play__14mDoExt_baseAnmFv
/* 80152F8C  7F E3 FB 78 */	mr r3, r31
/* 80152F90  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80152F94  FC 20 F8 90 */	fmr f1, f31
/* 80152F98  4B FF FF 2D */	bl chkEndAnm__8daNpcF_cFP12J3DFrameCtrlf
/* 80152F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80152FA0  41 82 00 10 */	beq lbl_80152FB0
/* 80152FA4  A0 7F 09 E4 */	lhz r3, 0x9e4(r31)
/* 80152FA8  38 03 00 01 */	addi r0, r3, 1
/* 80152FAC  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
lbl_80152FB0:
/* 80152FB0  D3 FF 05 78 */	stfs f31, 0x578(r31)
lbl_80152FB4:
/* 80152FB4  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80152FB8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80152FBC  41 82 00 84 */	beq lbl_80153040
/* 80152FC0  C3 FF 05 94 */	lfs f31, 0x594(r31)
/* 80152FC4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80152FC8  41 82 00 0C */	beq lbl_80152FD4
/* 80152FCC  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80152FD0  D0 1F 05 94 */	stfs f0, 0x594(r31)
lbl_80152FD4:
/* 80152FD4  38 7F 05 88 */	addi r3, r31, 0x588
/* 80152FD8  4B EB A4 51 */	bl play__14mDoExt_baseAnmFv
/* 80152FDC  D3 FF 05 94 */	stfs f31, 0x594(r31)
/* 80152FE0  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80152FE4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80152FE8  41 82 00 38 */	beq lbl_80153020
/* 80152FEC  7F E3 FB 78 */	mr r3, r31
/* 80152FF0  38 9F 05 88 */	addi r4, r31, 0x588
/* 80152FF4  FC 20 F8 90 */	fmr f1, f31
/* 80152FF8  4B FF FE CD */	bl chkEndAnm__8daNpcF_cFP12J3DFrameCtrlf
/* 80152FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80153000  41 82 00 28 */	beq lbl_80153028
/* 80153004  38 60 00 5A */	li r3, 0x5a
/* 80153008  38 80 00 5A */	li r4, 0x5a
/* 8015300C  4B FF A3 59 */	bl func_8014D364
/* 80153010  90 7F 09 64 */	stw r3, 0x964(r31)
/* 80153014  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80153018  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8015301C  48 00 00 0C */	b lbl_80153028
lbl_80153020:
/* 80153020  38 00 00 00 */	li r0, 0
/* 80153024  90 1F 09 64 */	stw r0, 0x964(r31)
lbl_80153028:
/* 80153028  38 7F 09 64 */	addi r3, r31, 0x964
/* 8015302C  4B FF A3 1D */	bl func_8014D348
/* 80153030  2C 03 00 00 */	cmpwi r3, 0
/* 80153034  40 82 00 0C */	bne lbl_80153040
/* 80153038  C0 02 99 DC */	lfs f0, lit_4140(r2)
/* 8015303C  D0 1F 05 94 */	stfs f0, 0x594(r31)
lbl_80153040:
/* 80153040  80 9F 09 9C */	lwz r4, 0x99c(r31)
/* 80153044  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80153048  41 82 00 64 */	beq lbl_801530AC
/* 8015304C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80153050  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80153054  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80153058  41 82 00 28 */	beq lbl_80153080
/* 8015305C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80153060  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80153064  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80153068  80 9F 09 B0 */	lwz r4, 0x9b0(r31)
/* 8015306C  88 BF 09 E8 */	lbz r5, 0x9e8(r31)
/* 80153070  4B EB E0 41 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80153074  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80153078  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 8015307C  48 00 00 30 */	b lbl_801530AC
lbl_80153080:
/* 80153080  80 9F 09 B0 */	lwz r4, 0x9b0(r31)
/* 80153084  88 BF 09 E8 */	lbz r5, 0x9e8(r31)
/* 80153088  4B EB E0 29 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8015308C  7F E3 FB 78 */	mr r3, r31
/* 80153090  FC 20 F8 90 */	fmr f1, f31
/* 80153094  4B FF FD 91 */	bl chkEndAnm__8daNpcF_cFf
/* 80153098  2C 03 00 00 */	cmpwi r3, 0
/* 8015309C  41 82 00 10 */	beq lbl_801530AC
/* 801530A0  A0 7F 09 E2 */	lhz r3, 0x9e2(r31)
/* 801530A4  38 03 00 01 */	addi r0, r3, 1
/* 801530A8  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_801530AC:
/* 801530AC  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 801530B0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 801530B4  41 82 00 40 */	beq lbl_801530F4
/* 801530B8  C3 FF 05 AC */	lfs f31, 0x5ac(r31)
/* 801530BC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 801530C0  41 82 00 0C */	beq lbl_801530CC
/* 801530C4  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 801530C8  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
lbl_801530CC:
/* 801530CC  7F E3 FB 78 */	mr r3, r31
/* 801530D0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 801530D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801530D8  7D 89 03 A6 */	mtctr r12
/* 801530DC  4E 80 04 21 */	bctrl 
/* 801530E0  2C 03 00 00 */	cmpwi r3, 0
/* 801530E4  40 82 00 0C */	bne lbl_801530F0
/* 801530E8  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 801530EC  4B EB A3 3D */	bl play__14mDoExt_baseAnmFv
lbl_801530F0:
/* 801530F0  D3 FF 05 AC */	stfs f31, 0x5ac(r31)
lbl_801530F4:
/* 801530F4  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 801530F8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 801530FC  41 82 00 24 */	beq lbl_80153120
/* 80153100  C3 FF 05 C4 */	lfs f31, 0x5c4(r31)
/* 80153104  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80153108  41 82 00 0C */	beq lbl_80153114
/* 8015310C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80153110  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
lbl_80153114:
/* 80153114  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80153118  4B EB A3 11 */	bl play__14mDoExt_baseAnmFv
/* 8015311C  D3 FF 05 C4 */	stfs f31, 0x5c4(r31)
lbl_80153120:
/* 80153120  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80153124  38 00 EF 38 */	li r0, -4296
/* 80153128  7C 60 00 38 */	and r0, r3, r0
/* 8015312C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80153130  38 60 00 01 */	li r3, 1
/* 80153134  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80153138  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8015313C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80153140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80153144  7C 08 03 A6 */	mtlr r0
/* 80153148  38 21 00 20 */	addi r1, r1, 0x20
/* 8015314C  4E 80 00 20 */	blr 
