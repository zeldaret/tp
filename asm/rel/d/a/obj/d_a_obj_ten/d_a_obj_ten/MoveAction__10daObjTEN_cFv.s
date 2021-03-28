lbl_80D09748:
/* 80D09748  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80D0974C  7C 08 02 A6 */	mflr r0
/* 80D09750  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80D09754  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80D09758  4B 65 8A 80 */	b _savegpr_28
/* 80D0975C  7C 7C 1B 78 */	mr r28, r3
/* 80D09760  3C 60 80 D1 */	lis r3, lit_3775@ha
/* 80D09764  3B E3 B8 F0 */	addi r31, r3, lit_3775@l
/* 80D09768  38 60 00 00 */	li r3, 0
/* 80D0976C  7C 64 1B 78 */	mr r4, r3
/* 80D09770  38 00 00 03 */	li r0, 3
/* 80D09774  7C 09 03 A6 */	mtctr r0
lbl_80D09778:
/* 80D09778  38 C3 05 EA */	addi r6, r3, 0x5ea
/* 80D0977C  7C BC 32 AE */	lhax r5, r28, r6
/* 80D09780  38 05 FF FF */	addi r0, r5, -1
/* 80D09784  7C 1C 33 2E */	sthx r0, r28, r6
/* 80D09788  7C 1C 32 AE */	lhax r0, r28, r6
/* 80D0978C  2C 00 00 00 */	cmpwi r0, 0
/* 80D09790  41 81 00 08 */	bgt lbl_80D09798
/* 80D09794  7C 9C 33 2E */	sthx r4, r28, r6
lbl_80D09798:
/* 80D09798  38 63 00 02 */	addi r3, r3, 2
/* 80D0979C  42 00 FF DC */	bdnz lbl_80D09778
/* 80D097A0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D097A4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80D097A8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D097AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D097B0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D097B4  38 61 00 44 */	addi r3, r1, 0x44
/* 80D097B8  4B 36 E4 B0 */	b __ct__11dBgS_LinChkFv
/* 80D097BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D097C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D097C4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80D097C8  38 61 00 9C */	addi r3, r1, 0x9c
/* 80D097CC  4B 36 F6 9C */	b SetObj__16dBgS_PolyPassChkFv
/* 80D097D0  88 1C 05 E9 */	lbz r0, 0x5e9(r28)
/* 80D097D4  2C 00 00 01 */	cmpwi r0, 1
/* 80D097D8  41 82 00 7C */	beq lbl_80D09854
/* 80D097DC  40 80 00 10 */	bge lbl_80D097EC
/* 80D097E0  2C 00 00 00 */	cmpwi r0, 0
/* 80D097E4  40 80 00 14 */	bge lbl_80D097F8
/* 80D097E8  48 00 07 0C */	b lbl_80D09EF4
lbl_80D097EC:
/* 80D097EC  2C 00 00 03 */	cmpwi r0, 3
/* 80D097F0  40 80 07 04 */	bge lbl_80D09EF4
/* 80D097F4  48 00 01 4C */	b lbl_80D09940
lbl_80D097F8:
/* 80D097F8  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D097FC  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D09800  38 80 00 06 */	li r4, 6
/* 80D09804  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D09808  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D0980C  3C A5 00 02 */	addis r5, r5, 2
/* 80D09810  38 C0 00 80 */	li r6, 0x80
/* 80D09814  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D09818  4B 33 2A D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0981C  7C 64 1B 78 */	mr r4, r3
/* 80D09820  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80D09824  38 A0 00 02 */	li r5, 2
/* 80D09828  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D0982C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80D09830  FC 60 10 90 */	fmr f3, f2
/* 80D09834  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80D09838  4B 30 76 38 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D0983C  88 7C 05 E9 */	lbz r3, 0x5e9(r28)
/* 80D09840  38 03 00 01 */	addi r0, r3, 1
/* 80D09844  98 1C 05 E9 */	stb r0, 0x5e9(r28)
/* 80D09848  38 00 00 14 */	li r0, 0x14
/* 80D0984C  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80D09850  48 00 06 A4 */	b lbl_80D09EF4
lbl_80D09854:
/* 80D09854  A8 1C 05 EA */	lha r0, 0x5ea(r28)
/* 80D09858  2C 00 00 0A */	cmpwi r0, 0xa
/* 80D0985C  40 82 00 10 */	bne lbl_80D0986C
/* 80D09860  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D09864  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80D09868  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80D0986C:
/* 80D0986C  A8 1C 05 EA */	lha r0, 0x5ea(r28)
/* 80D09870  2C 00 00 00 */	cmpwi r0, 0
/* 80D09874  40 82 06 80 */	bne lbl_80D09EF4
/* 80D09878  88 7C 05 E9 */	lbz r3, 0x5e9(r28)
/* 80D0987C  38 03 00 01 */	addi r0, r3, 1
/* 80D09880  98 1C 05 E9 */	stb r0, 0x5e9(r28)
/* 80D09884  38 7C 06 02 */	addi r3, r28, 0x602
/* 80D09888  4B 30 36 84 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80D0988C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D09890  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D09894  38 81 00 38 */	addi r4, r1, 0x38
/* 80D09898  7C 85 23 78 */	mr r5, r4
/* 80D0989C  4B 63 D4 D0 */	b PSMTXMultVec
/* 80D098A0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80D098A4  4B 55 E0 B0 */	b cM_rndF__Ff
/* 80D098A8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80D098AC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D098B0  FC 00 00 1E */	fctiwz f0, f0
/* 80D098B4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80D098B8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80D098BC  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80D098C0  88 1C 06 24 */	lbz r0, 0x624(r28)
/* 80D098C4  28 00 00 00 */	cmplwi r0, 0
/* 80D098C8  40 82 00 28 */	bne lbl_80D098F0
/* 80D098CC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80D098D0  4B 55 E0 84 */	b cM_rndF__Ff
/* 80D098D4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80D098D8  EC 00 08 2A */	fadds f0, f0, f1
/* 80D098DC  FC 00 00 1E */	fctiwz f0, f0
/* 80D098E0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80D098E4  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80D098E8  B0 1C 05 EC */	sth r0, 0x5ec(r28)
/* 80D098EC  48 00 00 24 */	b lbl_80D09910
lbl_80D098F0:
/* 80D098F0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80D098F4  4B 55 E0 60 */	b cM_rndF__Ff
/* 80D098F8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80D098FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09900  FC 00 00 1E */	fctiwz f0, f0
/* 80D09904  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80D09908  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80D0990C  B0 1C 05 EC */	sth r0, 0x5ec(r28)
lbl_80D09910:
/* 80D09910  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D09914  4B 55 E0 40 */	b cM_rndF__Ff
/* 80D09918  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D0991C  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09920  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 80D09924  A8 1C 06 0A */	lha r0, 0x60a(r28)
/* 80D09928  B0 1C 05 F8 */	sth r0, 0x5f8(r28)
/* 80D0992C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D09930  D0 1C 05 F4 */	stfs f0, 0x5f4(r28)
/* 80D09934  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80D09938  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80D0993C  48 00 05 B8 */	b lbl_80D09EF4
lbl_80D09940:
/* 80D09940  7F C3 F3 78 */	mr r3, r30
/* 80D09944  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D09948  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80D0994C  7D 89 03 A6 */	mtctr r12
/* 80D09950  4E 80 04 21 */	bctrl 
/* 80D09954  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D09958  41 82 03 C0 */	beq lbl_80D09D18
/* 80D0995C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80D09960  7F A4 EB 78 */	mr r4, r29
/* 80D09964  4B 56 72 A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D09968  B0 7C 05 F8 */	sth r3, 0x5f8(r28)
/* 80D0996C  7F A3 EB 78 */	mr r3, r29
/* 80D09970  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80D09974  4B 63 DA 28 */	b PSVECSquareDistance
/* 80D09978  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0997C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09980  40 81 00 58 */	ble lbl_80D099D8
/* 80D09984  FC 00 08 34 */	frsqrte f0, f1
/* 80D09988  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80D0998C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D09990  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80D09994  FC 00 00 32 */	fmul f0, f0, f0
/* 80D09998  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0999C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D099A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D099A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D099A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D099AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D099B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D099B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D099B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D099BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D099C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D099C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D099C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D099CC  FC 21 00 32 */	fmul f1, f1, f0
/* 80D099D0  FC 20 08 18 */	frsp f1, f1
/* 80D099D4  48 00 00 88 */	b lbl_80D09A5C
lbl_80D099D8:
/* 80D099D8  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80D099DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D099E0  40 80 00 10 */	bge lbl_80D099F0
/* 80D099E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D099E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D099EC  48 00 00 70 */	b lbl_80D09A5C
lbl_80D099F0:
/* 80D099F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D099F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D099F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D099FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D09A00  7C 03 00 00 */	cmpw r3, r0
/* 80D09A04  41 82 00 14 */	beq lbl_80D09A18
/* 80D09A08  40 80 00 40 */	bge lbl_80D09A48
/* 80D09A0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D09A10  41 82 00 20 */	beq lbl_80D09A30
/* 80D09A14  48 00 00 34 */	b lbl_80D09A48
lbl_80D09A18:
/* 80D09A18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D09A1C  41 82 00 0C */	beq lbl_80D09A28
/* 80D09A20  38 00 00 01 */	li r0, 1
/* 80D09A24  48 00 00 28 */	b lbl_80D09A4C
lbl_80D09A28:
/* 80D09A28  38 00 00 02 */	li r0, 2
/* 80D09A2C  48 00 00 20 */	b lbl_80D09A4C
lbl_80D09A30:
/* 80D09A30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D09A34  41 82 00 0C */	beq lbl_80D09A40
/* 80D09A38  38 00 00 05 */	li r0, 5
/* 80D09A3C  48 00 00 10 */	b lbl_80D09A4C
lbl_80D09A40:
/* 80D09A40  38 00 00 03 */	li r0, 3
/* 80D09A44  48 00 00 08 */	b lbl_80D09A4C
lbl_80D09A48:
/* 80D09A48  38 00 00 04 */	li r0, 4
lbl_80D09A4C:
/* 80D09A4C  2C 00 00 01 */	cmpwi r0, 1
/* 80D09A50  40 82 00 0C */	bne lbl_80D09A5C
/* 80D09A54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D09A58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D09A5C:
/* 80D09A5C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D09A60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09A64  40 80 00 2C */	bge lbl_80D09A90
/* 80D09A68  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80D09A6C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09A70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09A74  40 80 00 1C */	bge lbl_80D09A90
/* 80D09A78  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80D09A7C  A8 9C 05 F8 */	lha r4, 0x5f8(r28)
/* 80D09A80  38 A0 00 02 */	li r5, 2
/* 80D09A84  38 C0 05 00 */	li r6, 0x500
/* 80D09A88  4B 56 6B 80 */	b cLib_addCalcAngleS2__FPssss
/* 80D09A8C  48 00 00 18 */	b lbl_80D09AA4
lbl_80D09A90:
/* 80D09A90  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80D09A94  A8 9C 05 F8 */	lha r4, 0x5f8(r28)
/* 80D09A98  38 A0 00 10 */	li r5, 0x10
/* 80D09A9C  38 C0 02 00 */	li r6, 0x200
/* 80D09AA0  4B 56 6B 68 */	b cLib_addCalcAngleS2__FPssss
lbl_80D09AA4:
/* 80D09AA4  7F A3 EB 78 */	mr r3, r29
/* 80D09AA8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80D09AAC  4B 63 D8 F0 */	b PSVECSquareDistance
/* 80D09AB0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09AB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09AB8  40 81 00 58 */	ble lbl_80D09B10
/* 80D09ABC  FC 00 08 34 */	frsqrte f0, f1
/* 80D09AC0  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80D09AC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D09AC8  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80D09ACC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D09AD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D09AD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D09AD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D09ADC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D09AE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D09AE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D09AE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D09AEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D09AF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D09AF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D09AF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D09AFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D09B00  FC 02 00 32 */	fmul f0, f2, f0
/* 80D09B04  FC 21 00 32 */	fmul f1, f1, f0
/* 80D09B08  FC 20 08 18 */	frsp f1, f1
/* 80D09B0C  48 00 00 88 */	b lbl_80D09B94
lbl_80D09B10:
/* 80D09B10  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80D09B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09B18  40 80 00 10 */	bge lbl_80D09B28
/* 80D09B1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D09B20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D09B24  48 00 00 70 */	b lbl_80D09B94
lbl_80D09B28:
/* 80D09B28  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D09B2C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D09B30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D09B34  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D09B38  7C 03 00 00 */	cmpw r3, r0
/* 80D09B3C  41 82 00 14 */	beq lbl_80D09B50
/* 80D09B40  40 80 00 40 */	bge lbl_80D09B80
/* 80D09B44  2C 03 00 00 */	cmpwi r3, 0
/* 80D09B48  41 82 00 20 */	beq lbl_80D09B68
/* 80D09B4C  48 00 00 34 */	b lbl_80D09B80
lbl_80D09B50:
/* 80D09B50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D09B54  41 82 00 0C */	beq lbl_80D09B60
/* 80D09B58  38 00 00 01 */	li r0, 1
/* 80D09B5C  48 00 00 28 */	b lbl_80D09B84
lbl_80D09B60:
/* 80D09B60  38 00 00 02 */	li r0, 2
/* 80D09B64  48 00 00 20 */	b lbl_80D09B84
lbl_80D09B68:
/* 80D09B68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D09B6C  41 82 00 0C */	beq lbl_80D09B78
/* 80D09B70  38 00 00 05 */	li r0, 5
/* 80D09B74  48 00 00 10 */	b lbl_80D09B84
lbl_80D09B78:
/* 80D09B78  38 00 00 03 */	li r0, 3
/* 80D09B7C  48 00 00 08 */	b lbl_80D09B84
lbl_80D09B80:
/* 80D09B80  38 00 00 04 */	li r0, 4
lbl_80D09B84:
/* 80D09B84  2C 00 00 01 */	cmpwi r0, 1
/* 80D09B88  40 82 00 0C */	bne lbl_80D09B94
/* 80D09B8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D09B90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D09B94:
/* 80D09B94  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80D09B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09B9C  40 80 00 FC */	bge lbl_80D09C98
/* 80D09BA0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80D09BA4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D09BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09BAC  40 80 00 EC */	bge lbl_80D09C98
/* 80D09BB0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09BB4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D09BB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D09BBC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80D09BC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D09BC4  88 1C 06 0D */	lbz r0, 0x60d(r28)
/* 80D09BC8  28 00 00 00 */	cmplwi r0, 0
/* 80D09BCC  40 82 00 14 */	bne lbl_80D09BE0
/* 80D09BD0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80D09BD4  7F A4 EB 78 */	mr r4, r29
/* 80D09BD8  4B 56 70 2C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D09BDC  B0 7C 06 0A */	sth r3, 0x60a(r28)
lbl_80D09BE0:
/* 80D09BE0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D09BE4  7F A4 EB 78 */	mr r4, r29
/* 80D09BE8  A8 BC 06 0A */	lha r5, 0x60a(r28)
/* 80D09BEC  38 C1 00 20 */	addi r6, r1, 0x20
/* 80D09BF0  4B 56 71 D0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80D09BF4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D09BF8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80D09BFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D09C00  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80D09C04  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D09C08  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80D09C0C  38 00 40 00 */	li r0, 0x4000
/* 80D09C10  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80D09C14  A8 1C 06 0A */	lha r0, 0x60a(r28)
/* 80D09C18  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80D09C1C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09C20  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80D09C24  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 80D09C28  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80D09C2C  D0 1C 05 F4 */	stfs f0, 0x5f4(r28)
/* 80D09C30  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80D09C34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D09C38  38 00 00 00 */	li r0, 0
/* 80D09C3C  B0 1C 05 F8 */	sth r0, 0x5f8(r28)
/* 80D09C40  A8 1C 06 0A */	lha r0, 0x60a(r28)
/* 80D09C44  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80D09C48  38 00 00 01 */	li r0, 1
/* 80D09C4C  98 1C 06 0D */	stb r0, 0x60d(r28)
/* 80D09C50  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D09C54  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D09C58  38 80 00 07 */	li r4, 7
/* 80D09C5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D09C60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D09C64  3C A5 00 02 */	addis r5, r5, 2
/* 80D09C68  38 C0 00 80 */	li r6, 0x80
/* 80D09C6C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D09C70  4B 33 26 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D09C74  7C 64 1B 78 */	mr r4, r3
/* 80D09C78  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80D09C7C  38 A0 00 02 */	li r5, 2
/* 80D09C80  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D09C84  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80D09C88  FC 60 10 90 */	fmr f3, f2
/* 80D09C8C  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80D09C90  4B 30 71 E0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D09C94  48 00 00 84 */	b lbl_80D09D18
lbl_80D09C98:
/* 80D09C98  88 1C 06 0D */	lbz r0, 0x60d(r28)
/* 80D09C9C  28 00 00 00 */	cmplwi r0, 0
/* 80D09CA0  41 82 00 78 */	beq lbl_80D09D18
/* 80D09CA4  38 00 00 00 */	li r0, 0
/* 80D09CA8  98 1C 06 0D */	stb r0, 0x60d(r28)
/* 80D09CAC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D09CB0  D0 1C 05 F4 */	stfs f0, 0x5f4(r28)
/* 80D09CB4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80D09CB8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D09CBC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80D09CC0  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 80D09CC4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D09CC8  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80D09CCC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D09CD0  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80D09CD4  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D09CD8  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D09CDC  38 80 00 06 */	li r4, 6
/* 80D09CE0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D09CE4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D09CE8  3C A5 00 02 */	addis r5, r5, 2
/* 80D09CEC  38 C0 00 80 */	li r6, 0x80
/* 80D09CF0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D09CF4  4B 33 25 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D09CF8  7C 64 1B 78 */	mr r4, r3
/* 80D09CFC  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80D09D00  38 A0 00 02 */	li r5, 2
/* 80D09D04  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D09D08  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80D09D0C  FC 60 10 90 */	fmr f3, f2
/* 80D09D10  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80D09D14  4B 30 71 5C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80D09D18:
/* 80D09D18  A8 1C 05 EA */	lha r0, 0x5ea(r28)
/* 80D09D1C  2C 00 00 00 */	cmpwi r0, 0
/* 80D09D20  40 82 00 C4 */	bne lbl_80D09DE4
/* 80D09D24  28 1D 00 00 */	cmplwi r29, 0
/* 80D09D28  40 82 00 88 */	bne lbl_80D09DB0
/* 80D09D2C  88 1C 06 24 */	lbz r0, 0x624(r28)
/* 80D09D30  28 00 00 00 */	cmplwi r0, 0
/* 80D09D34  40 82 00 64 */	bne lbl_80D09D98
/* 80D09D38  38 61 00 14 */	addi r3, r1, 0x14
/* 80D09D3C  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80D09D40  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80D09D44  4B 55 CD F0 */	b __mi__4cXyzCFRC3Vec
/* 80D09D48  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D09D4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D09D50  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D09D54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D09D58  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D09D5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D09D60  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80D09D64  4B 55 DC 28 */	b cM_rndFX__Ff
/* 80D09D68  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D09D6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09D70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D09D74  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80D09D78  4B 55 DC 14 */	b cM_rndFX__Ff
/* 80D09D7C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D09D80  EC 40 08 2A */	fadds f2, f0, f1
/* 80D09D84  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80D09D88  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80D09D8C  4B 55 D8 E8 */	b cM_atan2s__Fff
/* 80D09D90  B0 7C 05 F8 */	sth r3, 0x5f8(r28)
/* 80D09D94  48 00 00 1C */	b lbl_80D09DB0
lbl_80D09D98:
/* 80D09D98  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80D09D9C  4B 55 DB B8 */	b cM_rndF__Ff
/* 80D09DA0  FC 00 08 1E */	fctiwz f0, f1
/* 80D09DA4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80D09DA8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80D09DAC  B0 1C 05 F8 */	sth r0, 0x5f8(r28)
lbl_80D09DB0:
/* 80D09DB0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D09DB4  4B 55 DB A0 */	b cM_rndF__Ff
/* 80D09DB8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D09DBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09DC0  FC 00 00 1E */	fctiwz f0, f0
/* 80D09DC4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80D09DC8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80D09DCC  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80D09DD0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D09DD4  4B 55 DB 80 */	b cM_rndF__Ff
/* 80D09DD8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D09DDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09DE0  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
lbl_80D09DE4:
/* 80D09DE4  A8 1C 05 EC */	lha r0, 0x5ec(r28)
/* 80D09DE8  2C 00 00 00 */	cmpwi r0, 0
/* 80D09DEC  40 82 00 34 */	bne lbl_80D09E20
/* 80D09DF0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80D09DF4  4B 55 DB 60 */	b cM_rndF__Ff
/* 80D09DF8  FC 00 08 50 */	fneg f0, f1
/* 80D09DFC  D0 1C 05 F4 */	stfs f0, 0x5f4(r28)
/* 80D09E00  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D09E04  4B 55 DB 50 */	b cM_rndF__Ff
/* 80D09E08  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D09E0C  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09E10  FC 00 00 1E */	fctiwz f0, f0
/* 80D09E14  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80D09E18  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80D09E1C  B0 1C 05 EC */	sth r0, 0x5ec(r28)
lbl_80D09E20:
/* 80D09E20  7F 83 E3 78 */	mr r3, r28
/* 80D09E24  4B FF F1 E5 */	bl SpeedSet__10daObjTEN_cFv
/* 80D09E28  88 1C 06 24 */	lbz r0, 0x624(r28)
/* 80D09E2C  28 00 00 00 */	cmplwi r0, 0
/* 80D09E30  40 82 00 30 */	bne lbl_80D09E60
/* 80D09E34  38 7C 06 02 */	addi r3, r28, 0x602
/* 80D09E38  38 80 00 00 */	li r4, 0
/* 80D09E3C  38 A0 00 10 */	li r5, 0x10
/* 80D09E40  38 C0 10 00 */	li r6, 0x1000
/* 80D09E44  4B 56 67 C4 */	b cLib_addCalcAngleS2__FPssss
/* 80D09E48  38 7C 06 06 */	addi r3, r28, 0x606
/* 80D09E4C  38 80 00 00 */	li r4, 0
/* 80D09E50  38 A0 00 10 */	li r5, 0x10
/* 80D09E54  38 C0 10 00 */	li r6, 0x1000
/* 80D09E58  4B 56 67 B0 */	b cLib_addCalcAngleS2__FPssss
/* 80D09E5C  48 00 00 2C */	b lbl_80D09E88
lbl_80D09E60:
/* 80D09E60  38 7C 06 02 */	addi r3, r28, 0x602
/* 80D09E64  38 80 00 00 */	li r4, 0
/* 80D09E68  38 A0 00 10 */	li r5, 0x10
/* 80D09E6C  38 C0 01 00 */	li r6, 0x100
/* 80D09E70  4B 56 67 98 */	b cLib_addCalcAngleS2__FPssss
/* 80D09E74  38 7C 06 06 */	addi r3, r28, 0x606
/* 80D09E78  38 80 00 00 */	li r4, 0
/* 80D09E7C  38 A0 00 10 */	li r5, 0x10
/* 80D09E80  38 C0 01 00 */	li r6, 0x100
/* 80D09E84  4B 56 67 84 */	b cLib_addCalcAngleS2__FPssss
lbl_80D09E88:
/* 80D09E88  7F 83 E3 78 */	mr r3, r28
/* 80D09E8C  4B FF EF 09 */	bl WallCheck__10daObjTEN_cFv
/* 80D09E90  2C 03 00 00 */	cmpwi r3, 0
/* 80D09E94  41 82 00 24 */	beq lbl_80D09EB8
/* 80D09E98  38 00 00 00 */	li r0, 0
/* 80D09E9C  98 1C 05 E8 */	stb r0, 0x5e8(r28)
/* 80D09EA0  98 1C 05 E9 */	stb r0, 0x5e9(r28)
/* 80D09EA4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09EA8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80D09EAC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80D09EB0  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80D09EB4  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
lbl_80D09EB8:
/* 80D09EB8  88 1C 06 24 */	lbz r0, 0x624(r28)
/* 80D09EBC  28 00 00 01 */	cmplwi r0, 1
/* 80D09EC0  40 82 00 18 */	bne lbl_80D09ED8
/* 80D09EC4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80D09EC8  A8 9C 05 F8 */	lha r4, 0x5f8(r28)
/* 80D09ECC  38 A0 00 10 */	li r5, 0x10
/* 80D09ED0  38 C0 01 00 */	li r6, 0x100
/* 80D09ED4  4B 56 67 34 */	b cLib_addCalcAngleS2__FPssss
lbl_80D09ED8:
/* 80D09ED8  88 1C 06 0D */	lbz r0, 0x60d(r28)
/* 80D09EDC  28 00 00 00 */	cmplwi r0, 0
/* 80D09EE0  40 82 00 14 */	bne lbl_80D09EF4
/* 80D09EE4  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80D09EE8  38 80 00 00 */	li r4, 0
/* 80D09EEC  38 A0 04 00 */	li r5, 0x400
/* 80D09EF0  4B 56 6C A0 */	b cLib_chaseAngleS__FPsss
lbl_80D09EF4:
/* 80D09EF4  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80D09EF8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80D09EFC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D09F00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D09F04  40 82 00 30 */	bne lbl_80D09F34
/* 80D09F08  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A4@ha */
/* 80D09F0C  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000600A4@l */
/* 80D09F10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D09F14  38 7C 09 C4 */	addi r3, r28, 0x9c4
/* 80D09F18  38 81 00 10 */	addi r4, r1, 0x10
/* 80D09F1C  38 A0 00 00 */	li r5, 0
/* 80D09F20  38 C0 FF FF */	li r6, -1
/* 80D09F24  81 9C 09 C4 */	lwz r12, 0x9c4(r28)
/* 80D09F28  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D09F2C  7D 89 03 A6 */	mtctr r12
/* 80D09F30  4E 80 04 21 */	bctrl 
lbl_80D09F34:
/* 80D09F34  38 61 00 44 */	addi r3, r1, 0x44
/* 80D09F38  38 80 FF FF */	li r4, -1
/* 80D09F3C  4B 36 DD A0 */	b __dt__11dBgS_LinChkFv
/* 80D09F40  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80D09F44  4B 65 82 E0 */	b _restgpr_28
/* 80D09F48  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80D09F4C  7C 08 03 A6 */	mtlr r0
/* 80D09F50  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80D09F54  4E 80 00 20 */	blr 
