lbl_80665F80:
/* 80665F80  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80665F84  7C 08 02 A6 */	mflr r0
/* 80665F88  90 01 00 84 */	stw r0, 0x84(r1)
/* 80665F8C  39 61 00 80 */	addi r11, r1, 0x80
/* 80665F90  4B CF C2 4D */	bl _savegpr_29
/* 80665F94  7C 7D 1B 78 */	mr r29, r3
/* 80665F98  3C 80 80 66 */	lis r4, lit_3768@ha /* 0x80667698@ha */
/* 80665F9C  3B E4 76 98 */	addi r31, r4, lit_3768@l /* 0x80667698@l */
/* 80665FA0  80 03 0A EC */	lwz r0, 0xaec(r3)
/* 80665FA4  60 00 00 40 */	ori r0, r0, 0x40
/* 80665FA8  90 03 0A EC */	stw r0, 0xaec(r3)
/* 80665FAC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80665FB0  28 00 00 02 */	cmplwi r0, 2
/* 80665FB4  40 82 03 A4 */	bne lbl_80666358
/* 80665FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80665FC0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80665FC4  7C 00 07 74 */	extsb r0, r0
/* 80665FC8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80665FCC  7C 83 02 14 */	add r4, r3, r0
/* 80665FD0  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 80665FD4  88 9D 0A E2 */	lbz r4, 0xae2(r29)
/* 80665FD8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80665FDC  7C 05 07 74 */	extsb r5, r0
/* 80665FE0  4B 9C F2 21 */	bl onSwitch__10dSv_info_cFii
/* 80665FE4  88 1D 0A E3 */	lbz r0, 0xae3(r29)
/* 80665FE8  28 00 00 00 */	cmplwi r0, 0
/* 80665FEC  40 82 00 94 */	bne lbl_80666080
/* 80665FF0  38 7E 02 48 */	addi r3, r30, 0x248
/* 80665FF4  4B AF B4 DD */	bl Stop__9dCamera_cFv
/* 80665FF8  38 7E 02 48 */	addi r3, r30, 0x248
/* 80665FFC  38 80 00 03 */	li r4, 3
/* 80666000  4B AF D0 0D */	bl SetTrimSize__9dCamera_cFl
/* 80666004  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80666008  38 63 00 24 */	addi r3, r3, 0x24
/* 8066600C  38 9F 02 A8 */	addi r4, r31, 0x2a8
/* 80666010  38 A1 00 58 */	addi r5, r1, 0x58
/* 80666014  4B CE 0D 59 */	bl PSMTXMultVec
/* 80666018  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8066601C  38 63 00 24 */	addi r3, r3, 0x24
/* 80666020  38 9F 02 B4 */	addi r4, r31, 0x2b4
/* 80666024  38 A1 00 64 */	addi r5, r1, 0x64
/* 80666028  4B CE 0D 45 */	bl PSMTXMultVec
/* 8066602C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80666030  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80666034  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80666038  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8066603C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80666040  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80666044  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80666048  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8066604C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80666050  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80666054  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80666058  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8066605C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80666060  38 81 00 4C */	addi r4, r1, 0x4c
/* 80666064  38 A1 00 40 */	addi r5, r1, 0x40
/* 80666068  4B B1 AA 41 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 8066606C  38 00 00 01 */	li r0, 1
/* 80666070  98 1D 0A E3 */	stb r0, 0xae3(r29)
/* 80666074  38 00 00 64 */	li r0, 0x64
/* 80666078  B0 1D 0A E8 */	sth r0, 0xae8(r29)
/* 8066607C  48 00 02 FC */	b lbl_80666378
lbl_80666080:
/* 80666080  28 00 00 01 */	cmplwi r0, 1
/* 80666084  40 82 00 A0 */	bne lbl_80666124
/* 80666088  A8 7D 0A E8 */	lha r3, 0xae8(r29)
/* 8066608C  2C 03 00 00 */	cmpwi r3, 0
/* 80666090  41 82 00 10 */	beq lbl_806660A0
/* 80666094  38 03 FF FF */	addi r0, r3, -1
/* 80666098  B0 1D 0A E8 */	sth r0, 0xae8(r29)
/* 8066609C  48 00 02 DC */	b lbl_80666378
lbl_806660A0:
/* 806660A0  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 806660A4  38 63 00 24 */	addi r3, r3, 0x24
/* 806660A8  38 9F 02 C0 */	addi r4, r31, 0x2c0
/* 806660AC  38 A1 00 58 */	addi r5, r1, 0x58
/* 806660B0  4B CE 0C BD */	bl PSMTXMultVec
/* 806660B4  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 806660B8  38 63 00 24 */	addi r3, r3, 0x24
/* 806660BC  38 9F 02 CC */	addi r4, r31, 0x2cc
/* 806660C0  38 A1 00 64 */	addi r5, r1, 0x64
/* 806660C4  4B CE 0C A9 */	bl PSMTXMultVec
/* 806660C8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806660CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806660D0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806660D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806660D8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 806660DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806660E0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 806660E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806660E8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 806660EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806660F0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 806660F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806660F8  38 7E 02 48 */	addi r3, r30, 0x248
/* 806660FC  38 81 00 34 */	addi r4, r1, 0x34
/* 80666100  38 A1 00 28 */	addi r5, r1, 0x28
/* 80666104  4B B1 A9 A5 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 80666108  7F A3 EB 78 */	mr r3, r29
/* 8066610C  48 00 0B 2D */	bl initStartBrkBtk__11daCstatue_cFv
/* 80666110  38 00 00 02 */	li r0, 2
/* 80666114  98 1D 0A E3 */	stb r0, 0xae3(r29)
/* 80666118  38 00 00 1E */	li r0, 0x1e
/* 8066611C  B0 1D 0A E8 */	sth r0, 0xae8(r29)
/* 80666120  48 00 02 58 */	b lbl_80666378
lbl_80666124:
/* 80666124  38 7D 05 94 */	addi r3, r29, 0x594
/* 80666128  C0 3D 0B 04 */	lfs f1, 0xb04(r29)
/* 8066612C  4B CC 23 01 */	bl checkPass__12J3DFrameCtrlFf
/* 80666130  2C 03 00 00 */	cmpwi r3, 0
/* 80666134  41 82 00 34 */	beq lbl_80666168
/* 80666138  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060066@ha */
/* 8066613C  38 03 00 66 */	addi r0, r3, 0x0066 /* 0x00060066@l */
/* 80666140  90 01 00 0C */	stw r0, 0xc(r1)
/* 80666144  38 7D 0A 14 */	addi r3, r29, 0xa14
/* 80666148  38 81 00 0C */	addi r4, r1, 0xc
/* 8066614C  38 A0 00 00 */	li r5, 0
/* 80666150  88 DD 0A DC */	lbz r6, 0xadc(r29)
/* 80666154  81 9D 0A 14 */	lwz r12, 0xa14(r29)
/* 80666158  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8066615C  7D 89 03 A6 */	mtctr r12
/* 80666160  4E 80 04 21 */	bctrl 
/* 80666164  48 00 00 40 */	b lbl_806661A4
lbl_80666168:
/* 80666168  C0 3D 05 A4 */	lfs f1, 0x5a4(r29)
/* 8066616C  C0 1D 0B 04 */	lfs f0, 0xb04(r29)
/* 80666170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80666174  4C 41 13 82 */	cror 2, 1, 2
/* 80666178  40 82 00 2C */	bne lbl_806661A4
/* 8066617C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060061@ha */
/* 80666180  38 03 00 61 */	addi r0, r3, 0x0061 /* 0x00060061@l */
/* 80666184  90 01 00 08 */	stw r0, 8(r1)
/* 80666188  38 7D 0A 14 */	addi r3, r29, 0xa14
/* 8066618C  38 81 00 08 */	addi r4, r1, 8
/* 80666190  88 BD 0A DC */	lbz r5, 0xadc(r29)
/* 80666194  81 9D 0A 14 */	lwz r12, 0xa14(r29)
/* 80666198  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8066619C  7D 89 03 A6 */	mtctr r12
/* 806661A0  4E 80 04 21 */	bctrl 
lbl_806661A4:
/* 806661A4  88 1D 0A E3 */	lbz r0, 0xae3(r29)
/* 806661A8  28 00 00 02 */	cmplwi r0, 2
/* 806661AC  40 82 01 48 */	bne lbl_806662F4
/* 806661B0  38 7D 05 7C */	addi r3, r29, 0x57c
/* 806661B4  4B 9A 72 75 */	bl play__14mDoExt_baseAnmFv
/* 806661B8  38 7D 05 94 */	addi r3, r29, 0x594
/* 806661BC  4B 9A 72 6D */	bl play__14mDoExt_baseAnmFv
/* 806661C0  38 60 00 01 */	li r3, 1
/* 806661C4  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 806661C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806661CC  40 82 00 18 */	bne lbl_806661E4
/* 806661D0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 806661D4  C0 1D 05 88 */	lfs f0, 0x588(r29)
/* 806661D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806661DC  41 82 00 08 */	beq lbl_806661E4
/* 806661E0  38 60 00 00 */	li r3, 0
lbl_806661E4:
/* 806661E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806661E8  41 82 01 90 */	beq lbl_80666378
/* 806661EC  38 60 00 01 */	li r3, 1
/* 806661F0  88 1D 05 99 */	lbz r0, 0x599(r29)
/* 806661F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806661F8  40 82 00 18 */	bne lbl_80666210
/* 806661FC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80666200  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80666204  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80666208  41 82 00 08 */	beq lbl_80666210
/* 8066620C  38 60 00 00 */	li r3, 0
lbl_80666210:
/* 80666210  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80666214  41 82 01 64 */	beq lbl_80666378
/* 80666218  A8 7D 0A E8 */	lha r3, 0xae8(r29)
/* 8066621C  2C 03 00 00 */	cmpwi r3, 0
/* 80666220  41 82 00 10 */	beq lbl_80666230
/* 80666224  38 03 FF FF */	addi r0, r3, -1
/* 80666228  B0 1D 0A E8 */	sth r0, 0xae8(r29)
/* 8066622C  48 00 01 4C */	b lbl_80666378
lbl_80666230:
/* 80666230  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80666234  38 63 00 24 */	addi r3, r3, 0x24
/* 80666238  38 9F 02 D8 */	addi r4, r31, 0x2d8
/* 8066623C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80666240  4B CE 0B 2D */	bl PSMTXMultVec
/* 80666244  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80666248  38 63 00 24 */	addi r3, r3, 0x24
/* 8066624C  38 9F 02 E4 */	addi r4, r31, 0x2e4
/* 80666250  38 A1 00 64 */	addi r5, r1, 0x64
/* 80666254  4B CE 0B 19 */	bl PSMTXMultVec
/* 80666258  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8066625C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80666260  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80666264  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80666268  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8066626C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80666270  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80666274  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80666278  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8066627C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80666280  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80666284  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80666288  38 7E 02 48 */	addi r3, r30, 0x248
/* 8066628C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80666290  38 A1 00 10 */	addi r5, r1, 0x10
/* 80666294  4B B1 A8 15 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 80666298  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8066629C  38 80 00 0C */	li r4, 0xc
/* 806662A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806662A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806662A8  3C A5 00 02 */	addis r5, r5, 2
/* 806662AC  38 C0 00 80 */	li r6, 0x80
/* 806662B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806662B4  4B 9D 60 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806662B8  7C 64 1B 78 */	mr r4, r3
/* 806662BC  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 806662C0  38 A0 FF FF */	li r5, -1
/* 806662C4  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 806662C8  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 806662CC  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 806662D0  C0 9F 01 90 */	lfs f4, 0x190(r31)
/* 806662D4  4B 9A AB 9D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806662D8  38 00 00 07 */	li r0, 7
/* 806662DC  98 1D 0A DF */	stb r0, 0xadf(r29)
/* 806662E0  38 00 00 1E */	li r0, 0x1e
/* 806662E4  B0 1D 0A E8 */	sth r0, 0xae8(r29)
/* 806662E8  38 00 00 03 */	li r0, 3
/* 806662EC  98 1D 0A E3 */	stb r0, 0xae3(r29)
/* 806662F0  48 00 00 88 */	b lbl_80666378
lbl_806662F4:
/* 806662F4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 806662F8  38 80 00 01 */	li r4, 1
/* 806662FC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80666300  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80666304  40 82 00 18 */	bne lbl_8066631C
/* 80666308  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8066630C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80666310  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80666314  41 82 00 08 */	beq lbl_8066631C
/* 80666318  38 80 00 00 */	li r4, 0
lbl_8066631C:
/* 8066631C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80666320  41 82 00 58 */	beq lbl_80666378
/* 80666324  A8 7D 0A E8 */	lha r3, 0xae8(r29)
/* 80666328  2C 03 00 00 */	cmpwi r3, 0
/* 8066632C  41 82 00 10 */	beq lbl_8066633C
/* 80666330  38 03 FF FF */	addi r0, r3, -1
/* 80666334  B0 1D 0A E8 */	sth r0, 0xae8(r29)
/* 80666338  48 00 00 40 */	b lbl_80666378
lbl_8066633C:
/* 8066633C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80666340  4B AF B1 6D */	bl Start__9dCamera_cFv
/* 80666344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80666348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066634C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80666350  4B 9D C1 19 */	bl reset__14dEvt_control_cFv
/* 80666354  48 00 00 24 */	b lbl_80666378
lbl_80666358:
/* 80666358  38 80 00 02 */	li r4, 2
/* 8066635C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80666360  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80666364  38 C0 00 00 */	li r6, 0
/* 80666368  4B 9B 55 A1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8066636C  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80666370  60 00 00 02 */	ori r0, r0, 2
/* 80666374  B0 1D 00 FA */	sth r0, 0xfa(r29)
lbl_80666378:
/* 80666378  39 61 00 80 */	addi r11, r1, 0x80
/* 8066637C  4B CF BE AD */	bl _restgpr_29
/* 80666380  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80666384  7C 08 03 A6 */	mtlr r0
/* 80666388  38 21 00 80 */	addi r1, r1, 0x80
/* 8066638C  4E 80 00 20 */	blr 
