lbl_80A5C7B0:
/* 80A5C7B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A5C7B4  7C 08 02 A6 */	mflr r0
/* 80A5C7B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A5C7BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A5C7C0  4B 90 5A 0C */	b _savegpr_25
/* 80A5C7C4  7C 7F 1B 78 */	mr r31, r3
/* 80A5C7C8  3C 60 80 A6 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A5C7CC  3B 23 E4 58 */	addi r25, r3, cNullVec__6Z2Calc@l
/* 80A5C7D0  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A5C7D4  3B A3 DE FC */	addi r29, r3, lit_4030@l
/* 80A5C7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5C7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5C7E0  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A5C7E4  3B C0 00 01 */	li r30, 1
/* 80A5C7E8  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A5C7EC  28 00 00 03 */	cmplwi r0, 3
/* 80A5C7F0  41 81 00 D8 */	bgt lbl_80A5C8C8
/* 80A5C7F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5C7F8  2C 00 00 04 */	cmpwi r0, 4
/* 80A5C7FC  40 82 00 CC */	bne lbl_80A5C8C8
/* 80A5C800  38 63 09 58 */	addi r3, r3, 0x958
/* 80A5C804  38 80 00 07 */	li r4, 7
/* 80A5C808  4B 5D 81 2C */	b isDungeonItem__12dSv_memBit_cCFi
/* 80A5C80C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5C810  41 82 00 0C */	beq lbl_80A5C81C
/* 80A5C814  38 60 00 00 */	li r3, 0
/* 80A5C818  48 00 0A 8C */	b lbl_80A5D2A4
lbl_80A5C81C:
/* 80A5C81C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A5C820  FC 40 00 50 */	fneg f2, f0
/* 80A5C824  C0 3D 05 08 */	lfs f1, 0x508(r29)
/* 80A5C828  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A5C82C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5C830  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A5C834  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A5C838  EC 21 00 2A */	fadds f1, f1, f0
/* 80A5C83C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A5C840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5C844  40 81 00 0C */	ble lbl_80A5C850
/* 80A5C848  FC 00 08 34 */	frsqrte f0, f1
/* 80A5C84C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A5C850:
/* 80A5C850  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80A5C854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5C858  40 81 00 0C */	ble lbl_80A5C864
/* 80A5C85C  38 60 00 00 */	li r3, 0
/* 80A5C860  48 00 0A 44 */	b lbl_80A5D2A4
lbl_80A5C864:
/* 80A5C864  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 80A5C868  38 83 0C 98 */	addi r4, r3, struct_80450C98+0x0@l
/* 80A5C86C  88 64 00 00 */	lbz r3, 0(r4)
/* 80A5C870  28 03 00 00 */	cmplwi r3, 0
/* 80A5C874  41 82 00 54 */	beq lbl_80A5C8C8
/* 80A5C878  38 03 FF FF */	addi r0, r3, -1
/* 80A5C87C  98 04 00 00 */	stb r0, 0(r4)
/* 80A5C880  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A5C884  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A5C888  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A5C88C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5C890  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A5C894  38 00 80 00 */	li r0, -32768
/* 80A5C898  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80A5C89C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A5C8A0  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A5C8A4  1C 60 00 06 */	mulli r3, r0, 6
/* 80A5C8A8  38 03 00 06 */	addi r0, r3, 6
/* 80A5C8AC  90 1F 06 30 */	stw r0, 0x630(r31)
/* 80A5C8B0  38 00 00 0A */	li r0, 0xa
/* 80A5C8B4  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5C8B8  38 00 00 1E */	li r0, 0x1e
/* 80A5C8BC  B0 1F 09 4E */	sth r0, 0x94e(r31)
/* 80A5C8C0  38 60 00 01 */	li r3, 1
/* 80A5C8C4  48 00 09 E0 */	b lbl_80A5D2A4
lbl_80A5C8C8:
/* 80A5C8C8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A5C8CC  54 1C 46 3E */	srwi r28, r0, 0x18
/* 80A5C8D0  3B 40 00 00 */	li r26, 0
/* 80A5C8D4  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A5C8D8  28 00 00 16 */	cmplwi r0, 0x16
/* 80A5C8DC  41 81 08 34 */	bgt lbl_80A5D110
/* 80A5C8E0  3C 60 80 A6 */	lis r3, lit_11379@ha
/* 80A5C8E4  38 63 FC D4 */	addi r3, r3, lit_11379@l
/* 80A5C8E8  54 00 10 3A */	slwi r0, r0, 2
/* 80A5C8EC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A5C8F0  7C 09 03 A6 */	mtctr r0
/* 80A5C8F4  4E 80 04 20 */	bctr 
lbl_80A5C8F8:
/* 80A5C8F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5C8FC  7C 05 07 74 */	extsb r5, r0
/* 80A5C900  2C 05 00 16 */	cmpwi r5, 0x16
/* 80A5C904  40 82 00 30 */	bne lbl_80A5C934
/* 80A5C908  2C 1C 00 FF */	cmpwi r28, 0xff
/* 80A5C90C  41 82 00 3C */	beq lbl_80A5C948
/* 80A5C910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5C914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5C918  7F 84 E3 78 */	mr r4, r28
/* 80A5C91C  4B 5D 8A 44 */	b isSwitch__10dSv_info_cCFii
/* 80A5C920  2C 03 00 00 */	cmpwi r3, 0
/* 80A5C924  40 82 00 24 */	bne lbl_80A5C948
/* 80A5C928  38 00 00 06 */	li r0, 6
/* 80A5C92C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5C930  48 00 07 FC */	b lbl_80A5D12C
lbl_80A5C934:
/* 80A5C934  2C 05 00 0C */	cmpwi r5, 0xc
/* 80A5C938  40 82 00 10 */	bne lbl_80A5C948
/* 80A5C93C  38 00 00 08 */	li r0, 8
/* 80A5C940  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5C944  48 00 07 E8 */	b lbl_80A5D12C
lbl_80A5C948:
/* 80A5C948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5C94C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5C950  38 63 09 58 */	addi r3, r3, 0x958
/* 80A5C954  38 80 00 07 */	li r4, 7
/* 80A5C958  4B 5D 7F DC */	b isDungeonItem__12dSv_memBit_cCFi
/* 80A5C95C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5C960  41 82 00 90 */	beq lbl_80A5C9F0
/* 80A5C964  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5C968  7C 00 07 75 */	extsb. r0, r0
/* 80A5C96C  40 82 00 3C */	bne lbl_80A5C9A8
/* 80A5C970  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A5C974  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A5C978  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A5C97C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5C980  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A5C984  38 00 80 00 */	li r0, -32768
/* 80A5C988  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80A5C98C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A5C990  38 00 00 03 */	li r0, 3
/* 80A5C994  90 1F 06 30 */	stw r0, 0x630(r31)
/* 80A5C998  38 00 00 0B */	li r0, 0xb
/* 80A5C99C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5C9A0  38 60 00 01 */	li r3, 1
/* 80A5C9A4  48 00 09 00 */	b lbl_80A5D2A4
lbl_80A5C9A8:
/* 80A5C9A8  2C 00 00 02 */	cmpwi r0, 2
/* 80A5C9AC  40 82 00 3C */	bne lbl_80A5C9E8
/* 80A5C9B0  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A5C9B4  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A5C9B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A5C9BC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5C9C0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A5C9C4  38 00 80 00 */	li r0, -32768
/* 80A5C9C8  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80A5C9CC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A5C9D0  38 00 00 0A */	li r0, 0xa
/* 80A5C9D4  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5C9D8  38 00 00 1E */	li r0, 0x1e
/* 80A5C9DC  B0 1F 09 4E */	sth r0, 0x94e(r31)
/* 80A5C9E0  38 60 00 01 */	li r3, 1
/* 80A5C9E4  48 00 08 C0 */	b lbl_80A5D2A4
lbl_80A5C9E8:
/* 80A5C9E8  3B C0 00 00 */	li r30, 0
/* 80A5C9EC  48 00 00 2C */	b lbl_80A5CA18
lbl_80A5C9F0:
/* 80A5C9F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5C9F4  7C 05 07 75 */	extsb. r5, r0
/* 80A5C9F8  40 82 00 20 */	bne lbl_80A5CA18
/* 80A5C9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CA04  7F 84 E3 78 */	mr r4, r28
/* 80A5CA08  4B 5D 89 58 */	b isSwitch__10dSv_info_cCFii
/* 80A5CA0C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CA10  40 82 00 08 */	bne lbl_80A5CA18
/* 80A5CA14  3B C0 00 00 */	li r30, 0
lbl_80A5CA18:
/* 80A5CA18  38 00 00 64 */	li r0, 0x64
/* 80A5CA1C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CA20  48 00 07 0C */	b lbl_80A5D12C
lbl_80A5CA24:
/* 80A5CA24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CA28  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A5CA2C  40 82 00 10 */	bne lbl_80A5CA3C
/* 80A5CA30  38 00 00 08 */	li r0, 8
/* 80A5CA34  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CA38  48 00 06 F4 */	b lbl_80A5D12C
lbl_80A5CA3C:
/* 80A5CA3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CA40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CA44  38 63 09 58 */	addi r3, r3, 0x958
/* 80A5CA48  38 80 00 07 */	li r4, 7
/* 80A5CA4C  4B 5D 7E E8 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80A5CA50  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CA54  41 82 00 90 */	beq lbl_80A5CAE4
/* 80A5CA58  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CA5C  7C 00 07 75 */	extsb. r0, r0
/* 80A5CA60  40 82 00 3C */	bne lbl_80A5CA9C
/* 80A5CA64  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A5CA68  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A5CA6C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A5CA70  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5CA74  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A5CA78  38 00 80 00 */	li r0, -32768
/* 80A5CA7C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80A5CA80  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A5CA84  38 00 00 03 */	li r0, 3
/* 80A5CA88  90 1F 06 30 */	stw r0, 0x630(r31)
/* 80A5CA8C  38 00 00 0B */	li r0, 0xb
/* 80A5CA90  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CA94  38 60 00 01 */	li r3, 1
/* 80A5CA98  48 00 08 0C */	b lbl_80A5D2A4
lbl_80A5CA9C:
/* 80A5CA9C  2C 00 00 02 */	cmpwi r0, 2
/* 80A5CAA0  40 82 00 3C */	bne lbl_80A5CADC
/* 80A5CAA4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A5CAA8  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A5CAAC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A5CAB0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5CAB4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A5CAB8  38 00 80 00 */	li r0, -32768
/* 80A5CABC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80A5CAC0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A5CAC4  38 00 00 0A */	li r0, 0xa
/* 80A5CAC8  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CACC  38 00 00 1E */	li r0, 0x1e
/* 80A5CAD0  B0 1F 09 4E */	sth r0, 0x94e(r31)
/* 80A5CAD4  38 60 00 01 */	li r3, 1
/* 80A5CAD8  48 00 07 CC */	b lbl_80A5D2A4
lbl_80A5CADC:
/* 80A5CADC  3B C0 00 00 */	li r30, 0
/* 80A5CAE0  48 00 06 4C */	b lbl_80A5D12C
lbl_80A5CAE4:
/* 80A5CAE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CAE8  7C 05 07 74 */	extsb r5, r0
/* 80A5CAEC  2C 05 00 02 */	cmpwi r5, 2
/* 80A5CAF0  40 82 00 34 */	bne lbl_80A5CB24
/* 80A5CAF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CAF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CAFC  7F 84 E3 78 */	mr r4, r28
/* 80A5CB00  4B 5D 88 60 */	b isSwitch__10dSv_info_cCFii
/* 80A5CB04  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CB08  41 82 00 10 */	beq lbl_80A5CB18
/* 80A5CB0C  38 00 00 64 */	li r0, 0x64
/* 80A5CB10  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CB14  48 00 06 18 */	b lbl_80A5D12C
lbl_80A5CB18:
/* 80A5CB18  38 00 00 04 */	li r0, 4
/* 80A5CB1C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CB20  48 00 06 0C */	b lbl_80A5D12C
lbl_80A5CB24:
/* 80A5CB24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CB28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CB2C  7F 84 E3 78 */	mr r4, r28
/* 80A5CB30  4B 5D 88 30 */	b isSwitch__10dSv_info_cCFii
/* 80A5CB34  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CB38  40 82 00 0C */	bne lbl_80A5CB44
/* 80A5CB3C  3B C0 00 00 */	li r30, 0
/* 80A5CB40  48 00 05 EC */	b lbl_80A5D12C
lbl_80A5CB44:
/* 80A5CB44  38 00 00 64 */	li r0, 0x64
/* 80A5CB48  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CB4C  48 00 05 E0 */	b lbl_80A5D12C
lbl_80A5CB50:
/* 80A5CB50  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CB54  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A5CB58  40 82 00 10 */	bne lbl_80A5CB68
/* 80A5CB5C  38 00 00 08 */	li r0, 8
/* 80A5CB60  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CB64  48 00 05 C8 */	b lbl_80A5D12C
lbl_80A5CB68:
/* 80A5CB68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CB6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CB70  38 63 09 58 */	addi r3, r3, 0x958
/* 80A5CB74  38 80 00 07 */	li r4, 7
/* 80A5CB78  4B 5D 7D BC */	b isDungeonItem__12dSv_memBit_cCFi
/* 80A5CB7C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CB80  41 82 00 08 */	beq lbl_80A5CB88
/* 80A5CB84  3B C0 00 00 */	li r30, 0
lbl_80A5CB88:
/* 80A5CB88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CB8C  7C 05 07 74 */	extsb r5, r0
/* 80A5CB90  2C 05 00 07 */	cmpwi r5, 7
/* 80A5CB94  40 82 00 30 */	bne lbl_80A5CBC4
/* 80A5CB98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CB9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CBA0  7F 84 E3 78 */	mr r4, r28
/* 80A5CBA4  4B 5D 87 BC */	b isSwitch__10dSv_info_cCFii
/* 80A5CBA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CBAC  41 82 00 0C */	beq lbl_80A5CBB8
/* 80A5CBB0  3B C0 00 00 */	li r30, 0
/* 80A5CBB4  48 00 05 78 */	b lbl_80A5D12C
lbl_80A5CBB8:
/* 80A5CBB8  38 00 00 05 */	li r0, 5
/* 80A5CBBC  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CBC0  48 00 05 6C */	b lbl_80A5D12C
lbl_80A5CBC4:
/* 80A5CBC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CBC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CBCC  7F 84 E3 78 */	mr r4, r28
/* 80A5CBD0  4B 5D 87 90 */	b isSwitch__10dSv_info_cCFii
/* 80A5CBD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CBD8  40 82 00 0C */	bne lbl_80A5CBE4
/* 80A5CBDC  3B C0 00 00 */	li r30, 0
/* 80A5CBE0  48 00 05 4C */	b lbl_80A5D12C
lbl_80A5CBE4:
/* 80A5CBE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CBE8  7C 05 07 75 */	extsb. r5, r0
/* 80A5CBEC  40 82 00 10 */	bne lbl_80A5CBFC
/* 80A5CBF0  38 00 00 08 */	li r0, 8
/* 80A5CBF4  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CBF8  48 00 05 34 */	b lbl_80A5D12C
lbl_80A5CBFC:
/* 80A5CBFC  2C 05 00 03 */	cmpwi r5, 3
/* 80A5CC00  41 82 00 14 */	beq lbl_80A5CC14
/* 80A5CC04  2C 05 00 05 */	cmpwi r5, 5
/* 80A5CC08  41 82 00 0C */	beq lbl_80A5CC14
/* 80A5CC0C  2C 05 00 07 */	cmpwi r5, 7
/* 80A5CC10  40 82 00 24 */	bne lbl_80A5CC34
lbl_80A5CC14:
/* 80A5CC14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CC18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CC1C  38 80 00 4F */	li r4, 0x4f
/* 80A5CC20  4B 5D 87 40 */	b isSwitch__10dSv_info_cCFii
/* 80A5CC24  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CC28  41 82 00 0C */	beq lbl_80A5CC34
/* 80A5CC2C  3B C0 00 00 */	li r30, 0
/* 80A5CC30  48 00 04 FC */	b lbl_80A5D12C
lbl_80A5CC34:
/* 80A5CC34  38 00 00 64 */	li r0, 0x64
/* 80A5CC38  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CC3C  48 00 04 F0 */	b lbl_80A5D12C
lbl_80A5CC40:
/* 80A5CC40  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CC44  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A5CC48  40 82 00 10 */	bne lbl_80A5CC58
/* 80A5CC4C  38 00 00 08 */	li r0, 8
/* 80A5CC50  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CC54  48 00 04 D8 */	b lbl_80A5D12C
lbl_80A5CC58:
/* 80A5CC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CC5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CC60  38 63 09 58 */	addi r3, r3, 0x958
/* 80A5CC64  38 80 00 07 */	li r4, 7
/* 80A5CC68  4B 5D 7C CC */	b isDungeonItem__12dSv_memBit_cCFi
/* 80A5CC6C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CC70  41 82 00 08 */	beq lbl_80A5CC78
/* 80A5CC74  3B C0 00 00 */	li r30, 0
lbl_80A5CC78:
/* 80A5CC78  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CC7C  7C 05 07 74 */	extsb r5, r0
/* 80A5CC80  2C 05 00 05 */	cmpwi r5, 5
/* 80A5CC84  40 82 00 30 */	bne lbl_80A5CCB4
/* 80A5CC88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CC8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CC90  7F 84 E3 78 */	mr r4, r28
/* 80A5CC94  4B 5D 86 CC */	b isSwitch__10dSv_info_cCFii
/* 80A5CC98  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CC9C  41 82 00 0C */	beq lbl_80A5CCA8
/* 80A5CCA0  3B C0 00 00 */	li r30, 0
/* 80A5CCA4  48 00 04 88 */	b lbl_80A5D12C
lbl_80A5CCA8:
/* 80A5CCA8  38 00 00 05 */	li r0, 5
/* 80A5CCAC  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CCB0  48 00 04 7C */	b lbl_80A5D12C
lbl_80A5CCB4:
/* 80A5CCB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CCB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CCBC  7F 84 E3 78 */	mr r4, r28
/* 80A5CCC0  4B 5D 86 A0 */	b isSwitch__10dSv_info_cCFii
/* 80A5CCC4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CCC8  40 82 00 0C */	bne lbl_80A5CCD4
/* 80A5CCCC  3B C0 00 00 */	li r30, 0
/* 80A5CCD0  48 00 04 5C */	b lbl_80A5D12C
lbl_80A5CCD4:
/* 80A5CCD4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CCD8  7C 05 07 75 */	extsb. r5, r0
/* 80A5CCDC  40 82 00 10 */	bne lbl_80A5CCEC
/* 80A5CCE0  38 00 00 08 */	li r0, 8
/* 80A5CCE4  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CCE8  48 00 04 44 */	b lbl_80A5D12C
lbl_80A5CCEC:
/* 80A5CCEC  2C 05 00 03 */	cmpwi r5, 3
/* 80A5CCF0  41 82 00 14 */	beq lbl_80A5CD04
/* 80A5CCF4  2C 05 00 05 */	cmpwi r5, 5
/* 80A5CCF8  41 82 00 0C */	beq lbl_80A5CD04
/* 80A5CCFC  2C 05 00 07 */	cmpwi r5, 7
/* 80A5CD00  40 82 00 24 */	bne lbl_80A5CD24
lbl_80A5CD04:
/* 80A5CD04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CD08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CD0C  38 80 00 50 */	li r4, 0x50
/* 80A5CD10  4B 5D 86 50 */	b isSwitch__10dSv_info_cCFii
/* 80A5CD14  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CD18  41 82 00 0C */	beq lbl_80A5CD24
/* 80A5CD1C  3B C0 00 00 */	li r30, 0
/* 80A5CD20  48 00 04 0C */	b lbl_80A5D12C
lbl_80A5CD24:
/* 80A5CD24  38 00 00 64 */	li r0, 0x64
/* 80A5CD28  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CD2C  48 00 04 00 */	b lbl_80A5D12C
lbl_80A5CD30:
/* 80A5CD30  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CD34  7C 05 07 74 */	extsb r5, r0
/* 80A5CD38  2C 05 00 0C */	cmpwi r5, 0xc
/* 80A5CD3C  40 82 00 30 */	bne lbl_80A5CD6C
/* 80A5CD40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CD44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CD48  7F 84 E3 78 */	mr r4, r28
/* 80A5CD4C  4B 5D 86 14 */	b isSwitch__10dSv_info_cCFii
/* 80A5CD50  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CD54  40 82 00 0C */	bne lbl_80A5CD60
/* 80A5CD58  3B C0 00 00 */	li r30, 0
/* 80A5CD5C  48 00 03 D0 */	b lbl_80A5D12C
lbl_80A5CD60:
/* 80A5CD60  38 00 00 08 */	li r0, 8
/* 80A5CD64  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CD68  48 00 03 C4 */	b lbl_80A5D12C
lbl_80A5CD6C:
/* 80A5CD6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CD70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CD74  38 80 00 53 */	li r4, 0x53
/* 80A5CD78  4B 5D 85 E8 */	b isSwitch__10dSv_info_cCFii
/* 80A5CD7C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CD80  41 82 00 0C */	beq lbl_80A5CD8C
/* 80A5CD84  3B C0 00 00 */	li r30, 0
/* 80A5CD88  48 00 03 A4 */	b lbl_80A5D12C
lbl_80A5CD8C:
/* 80A5CD8C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CD90  7C 05 07 74 */	extsb r5, r0
/* 80A5CD94  2C 05 00 04 */	cmpwi r5, 4
/* 80A5CD98  40 82 00 98 */	bne lbl_80A5CE30
/* 80A5CD9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CDA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CDA4  7F 84 E3 78 */	mr r4, r28
/* 80A5CDA8  4B 5D 85 B8 */	b isSwitch__10dSv_info_cCFii
/* 80A5CDAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CDB0  41 82 00 74 */	beq lbl_80A5CE24
/* 80A5CDB4  38 00 00 75 */	li r0, 0x75
/* 80A5CDB8  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CDBC  38 00 00 00 */	li r0, 0
/* 80A5CDC0  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A5CDC4  C0 1D 05 0C */	lfs f0, 0x50c(r29)
/* 80A5CDC8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A5CDCC  C0 1D 05 10 */	lfs f0, 0x510(r29)
/* 80A5CDD0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A5CDD4  C0 1D 05 14 */	lfs f0, 0x514(r29)
/* 80A5CDD8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A5CDDC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A5CDE0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A5CDE4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A5CDE8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5CDEC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A5CDF0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A5CDF4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A5CDF8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A5CDFC  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A5CE00  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5CE04  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A5CE08  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A5CE0C  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A5CE10  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CE14  98 1F 04 CE */	stb r0, 0x4ce(r31)
/* 80A5CE18  88 1F 04 E3 */	lbz r0, 0x4e3(r31)
/* 80A5CE1C  98 1F 04 CF */	stb r0, 0x4cf(r31)
/* 80A5CE20  48 00 03 0C */	b lbl_80A5D12C
lbl_80A5CE24:
/* 80A5CE24  38 00 00 06 */	li r0, 6
/* 80A5CE28  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CE2C  48 00 03 00 */	b lbl_80A5D12C
lbl_80A5CE30:
/* 80A5CE30  2C 05 00 09 */	cmpwi r5, 9
/* 80A5CE34  40 82 02 F8 */	bne lbl_80A5D12C
/* 80A5CE38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CE3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CE40  7F 84 E3 78 */	mr r4, r28
/* 80A5CE44  4B 5D 85 1C */	b isSwitch__10dSv_info_cCFii
/* 80A5CE48  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CE4C  40 82 00 0C */	bne lbl_80A5CE58
/* 80A5CE50  38 60 00 00 */	li r3, 0
/* 80A5CE54  48 00 04 50 */	b lbl_80A5D2A4
lbl_80A5CE58:
/* 80A5CE58  38 00 00 64 */	li r0, 0x64
/* 80A5CE5C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CE60  38 60 00 00 */	li r3, 0
/* 80A5CE64  38 B9 18 58 */	addi r5, r25, 0x1858
/* 80A5CE68  38 99 18 70 */	addi r4, r25, 0x1870
/* 80A5CE6C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80A5CE70  C0 1D 03 FC */	lfs f0, 0x3fc(r29)
/* 80A5CE74  38 00 00 03 */	li r0, 3
/* 80A5CE78  7C 09 03 A6 */	mtctr r0
lbl_80A5CE7C:
/* 80A5CE7C  7C A5 1C 2E */	lfsx f5, r5, r3
/* 80A5CE80  C0 5B 04 D0 */	lfs f2, 0x4d0(r27)
/* 80A5CE84  EC 65 10 28 */	fsubs f3, f5, f2
/* 80A5CE88  7C 84 1C 2E */	lfsx f4, r4, r3
/* 80A5CE8C  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80A5CE90  EC 44 10 28 */	fsubs f2, f4, f2
/* 80A5CE94  EC 63 00 F2 */	fmuls f3, f3, f3
/* 80A5CE98  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80A5CE9C  EC 63 10 2A */	fadds f3, f3, f2
/* 80A5CEA0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80A5CEA4  40 81 00 0C */	ble lbl_80A5CEB0
/* 80A5CEA8  FC 40 18 34 */	frsqrte f2, f3
/* 80A5CEAC  EC 62 00 F2 */	fmuls f3, f2, f3
lbl_80A5CEB0:
/* 80A5CEB0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80A5CEB4  40 80 00 60 */	bge lbl_80A5CF14
/* 80A5CEB8  38 99 18 64 */	addi r4, r25, 0x1864
/* 80A5CEBC  7C 04 1C 2E */	lfsx f0, r4, r3
/* 80A5CEC0  D0 BF 04 D0 */	stfs f5, 0x4d0(r31)
/* 80A5CEC4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A5CEC8  D0 9F 04 D8 */	stfs f4, 0x4d8(r31)
/* 80A5CECC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A5CED0  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A5CED4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5CED8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A5CEDC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A5CEE0  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A5CEE4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A5CEE8  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A5CEEC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5CEF0  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A5CEF4  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A5CEF8  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A5CEFC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CF00  98 1F 04 CE */	stb r0, 0x4ce(r31)
/* 80A5CF04  88 1F 04 E3 */	lbz r0, 0x4e3(r31)
/* 80A5CF08  98 1F 04 CF */	stb r0, 0x4cf(r31)
/* 80A5CF0C  38 60 00 01 */	li r3, 1
/* 80A5CF10  48 00 03 94 */	b lbl_80A5D2A4
lbl_80A5CF14:
/* 80A5CF14  38 63 00 04 */	addi r3, r3, 4
/* 80A5CF18  42 00 FF 64 */	bdnz lbl_80A5CE7C
/* 80A5CF1C  48 00 02 10 */	b lbl_80A5D12C
lbl_80A5CF20:
/* 80A5CF20  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CF24  7C 05 07 74 */	extsb r5, r0
/* 80A5CF28  2C 05 00 0C */	cmpwi r5, 0xc
/* 80A5CF2C  40 82 00 30 */	bne lbl_80A5CF5C
/* 80A5CF30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CF34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CF38  7F 84 E3 78 */	mr r4, r28
/* 80A5CF3C  4B 5D 84 24 */	b isSwitch__10dSv_info_cCFii
/* 80A5CF40  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CF44  40 82 00 0C */	bne lbl_80A5CF50
/* 80A5CF48  3B C0 00 00 */	li r30, 0
/* 80A5CF4C  48 00 01 E0 */	b lbl_80A5D12C
lbl_80A5CF50:
/* 80A5CF50  38 00 00 08 */	li r0, 8
/* 80A5CF54  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CF58  48 00 01 D4 */	b lbl_80A5D12C
lbl_80A5CF5C:
/* 80A5CF5C  2C 05 00 0A */	cmpwi r5, 0xa
/* 80A5CF60  40 82 01 CC */	bne lbl_80A5D12C
/* 80A5CF64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CF68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CF6C  7F 84 E3 78 */	mr r4, r28
/* 80A5CF70  4B 5D 83 F0 */	b isSwitch__10dSv_info_cCFii
/* 80A5CF74  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CF78  41 82 00 0C */	beq lbl_80A5CF84
/* 80A5CF7C  3B C0 00 00 */	li r30, 0
/* 80A5CF80  48 00 01 AC */	b lbl_80A5D12C
lbl_80A5CF84:
/* 80A5CF84  38 00 00 05 */	li r0, 5
/* 80A5CF88  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CF8C  48 00 01 A0 */	b lbl_80A5D12C
lbl_80A5CF90:
/* 80A5CF90  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5CF94  7C 05 07 74 */	extsb r5, r0
/* 80A5CF98  2C 05 00 0C */	cmpwi r5, 0xc
/* 80A5CF9C  40 82 00 30 */	bne lbl_80A5CFCC
/* 80A5CFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CFA8  7F 84 E3 78 */	mr r4, r28
/* 80A5CFAC  4B 5D 83 B4 */	b isSwitch__10dSv_info_cCFii
/* 80A5CFB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CFB4  40 82 00 0C */	bne lbl_80A5CFC0
/* 80A5CFB8  3B C0 00 00 */	li r30, 0
/* 80A5CFBC  48 00 01 70 */	b lbl_80A5D12C
lbl_80A5CFC0:
/* 80A5CFC0  38 00 00 08 */	li r0, 8
/* 80A5CFC4  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CFC8  48 00 01 64 */	b lbl_80A5D12C
lbl_80A5CFCC:
/* 80A5CFCC  2C 05 00 13 */	cmpwi r5, 0x13
/* 80A5CFD0  40 82 01 5C */	bne lbl_80A5D12C
/* 80A5CFD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5CFD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5CFDC  7F 84 E3 78 */	mr r4, r28
/* 80A5CFE0  4B 5D 83 80 */	b isSwitch__10dSv_info_cCFii
/* 80A5CFE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5CFE8  41 82 00 0C */	beq lbl_80A5CFF4
/* 80A5CFEC  3B C0 00 00 */	li r30, 0
/* 80A5CFF0  48 00 01 3C */	b lbl_80A5D12C
lbl_80A5CFF4:
/* 80A5CFF4  38 00 00 06 */	li r0, 6
/* 80A5CFF8  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5CFFC  48 00 01 30 */	b lbl_80A5D12C
lbl_80A5D000:
/* 80A5D000  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5D004  7C 05 07 74 */	extsb r5, r0
/* 80A5D008  2C 05 00 0C */	cmpwi r5, 0xc
/* 80A5D00C  40 82 00 30 */	bne lbl_80A5D03C
/* 80A5D010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5D018  7F 84 E3 78 */	mr r4, r28
/* 80A5D01C  4B 5D 83 44 */	b isSwitch__10dSv_info_cCFii
/* 80A5D020  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D024  40 82 00 0C */	bne lbl_80A5D030
/* 80A5D028  3B C0 00 00 */	li r30, 0
/* 80A5D02C  48 00 01 00 */	b lbl_80A5D12C
lbl_80A5D030:
/* 80A5D030  38 00 00 08 */	li r0, 8
/* 80A5D034  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5D038  48 00 00 F4 */	b lbl_80A5D12C
lbl_80A5D03C:
/* 80A5D03C  2C 05 00 0B */	cmpwi r5, 0xb
/* 80A5D040  40 82 00 EC */	bne lbl_80A5D12C
/* 80A5D044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5D04C  7F 84 E3 78 */	mr r4, r28
/* 80A5D050  4B 5D 83 10 */	b isSwitch__10dSv_info_cCFii
/* 80A5D054  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D058  41 82 00 0C */	beq lbl_80A5D064
/* 80A5D05C  3B C0 00 00 */	li r30, 0
/* 80A5D060  48 00 00 CC */	b lbl_80A5D12C
lbl_80A5D064:
/* 80A5D064  38 00 00 05 */	li r0, 5
/* 80A5D068  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5D06C  48 00 00 C0 */	b lbl_80A5D12C
lbl_80A5D070:
/* 80A5D070  38 00 00 64 */	li r0, 0x64
/* 80A5D074  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5D078  48 00 00 B4 */	b lbl_80A5D12C
lbl_80A5D07C:
/* 80A5D07C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80A5D080  64 00 00 02 */	oris r0, r0, 2
/* 80A5D084  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80A5D088  38 00 01 2C */	li r0, 0x12c
/* 80A5D08C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5D090  38 00 00 01 */	li r0, 1
/* 80A5D094  98 1F 0C 17 */	stb r0, 0xc17(r31)
/* 80A5D098  3B 40 00 01 */	li r26, 1
/* 80A5D09C  48 00 00 90 */	b lbl_80A5D12C
lbl_80A5D0A0:
/* 80A5D0A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D0A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5D0A8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A5D0AC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A5D0B0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A5D0B4  A0 84 04 14 */	lhz r4, 0x414(r4)
/* 80A5D0B8  4B 5D 79 04 */	b isEventBit__11dSv_event_cCFUs
/* 80A5D0BC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D0C0  41 82 00 0C */	beq lbl_80A5D0CC
/* 80A5D0C4  3B C0 00 00 */	li r30, 0
/* 80A5D0C8  48 00 00 64 */	b lbl_80A5D12C
lbl_80A5D0CC:
/* 80A5D0CC  38 00 01 2D */	li r0, 0x12d
/* 80A5D0D0  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5D0D4  48 00 00 58 */	b lbl_80A5D12C
lbl_80A5D0D8:
/* 80A5D0D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D0DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5D0E0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A5D0E4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A5D0E8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A5D0EC  A0 84 04 82 */	lhz r4, 0x482(r4)
/* 80A5D0F0  4B 5D 78 CC */	b isEventBit__11dSv_event_cCFUs
/* 80A5D0F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D0F8  41 82 00 0C */	beq lbl_80A5D104
/* 80A5D0FC  3B C0 00 00 */	li r30, 0
/* 80A5D100  48 00 00 2C */	b lbl_80A5D12C
lbl_80A5D104:
/* 80A5D104  38 00 01 2E */	li r0, 0x12e
/* 80A5D108  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5D10C  48 00 00 20 */	b lbl_80A5D12C
lbl_80A5D110:
/* 80A5D110  38 00 00 64 */	li r0, 0x64
/* 80A5D114  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5D118  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A5D11C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80A5D120  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 80A5D124  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A5D128  98 1F 05 B6 */	stb r0, 0x5b6(r31)
lbl_80A5D12C:
/* 80A5D12C  A8 1F 05 E8 */	lha r0, 0x5e8(r31)
/* 80A5D130  2C 00 00 64 */	cmpwi r0, 0x64
/* 80A5D134  40 82 01 40 */	bne lbl_80A5D274
/* 80A5D138  7F E3 FB 78 */	mr r3, r31
/* 80A5D13C  4B 5B C7 88 */	b fopAcM_setStageLayer__FPv
/* 80A5D140  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5D144  2C 00 00 01 */	cmpwi r0, 1
/* 80A5D148  40 82 01 0C */	bne lbl_80A5D254
/* 80A5D14C  C0 3D 05 18 */	lfs f1, 0x518(r29)
/* 80A5D150  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A5D154  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A5D158  C0 3D 05 1C */	lfs f1, 0x51c(r29)
/* 80A5D15C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A5D160  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5D164  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A5D168  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A5D16C  EC 21 00 2A */	fadds f1, f1, f0
/* 80A5D170  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A5D174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5D178  40 81 00 0C */	ble lbl_80A5D184
/* 80A5D17C  FC 00 08 34 */	frsqrte f0, f1
/* 80A5D180  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A5D184:
/* 80A5D184  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 80A5D188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5D18C  40 80 00 A4 */	bge lbl_80A5D230
/* 80A5D190  C0 1D 05 20 */	lfs f0, 0x520(r29)
/* 80A5D194  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80A5D198  C0 1D 05 24 */	lfs f0, 0x524(r29)
/* 80A5D19C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80A5D1A0  C0 1D 05 28 */	lfs f0, 0x528(r29)
/* 80A5D1A4  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80A5D1A8  38 00 8C BD */	li r0, -29507
/* 80A5D1AC  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80A5D1B0  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A5D1B4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A5D1B8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A5D1BC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A5D1C0  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A5D1C4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A5D1C8  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80A5D1CC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80A5D1D0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A5D1D4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A5D1D8  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80A5D1DC  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80A5D1E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80A5D1E4  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 80A5D1E8  88 1F 04 BB */	lbz r0, 0x4bb(r31)
/* 80A5D1EC  98 1F 04 E3 */	stb r0, 0x4e3(r31)
/* 80A5D1F0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A5D1F4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A5D1F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5D1FC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A5D200  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A5D204  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A5D208  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A5D20C  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A5D210  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A5D214  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A5D218  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A5D21C  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A5D220  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5D224  98 1F 04 CE */	stb r0, 0x4ce(r31)
/* 80A5D228  88 1F 04 E3 */	lbz r0, 0x4e3(r31)
/* 80A5D22C  98 1F 04 CF */	stb r0, 0x4cf(r31)
lbl_80A5D230:
/* 80A5D230  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80A5D234  4B 80 A7 20 */	b cM_rndF__Ff
/* 80A5D238  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 80A5D23C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A5D240  FC 00 00 1E */	fctiwz f0, f0
/* 80A5D244  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A5D248  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A5D24C  B0 1F 05 F2 */	sth r0, 0x5f2(r31)
/* 80A5D250  48 00 00 24 */	b lbl_80A5D274
lbl_80A5D254:
/* 80A5D254  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80A5D258  4B 80 A6 FC */	b cM_rndF__Ff
/* 80A5D25C  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80A5D260  EC 00 08 2A */	fadds f0, f0, f1
/* 80A5D264  FC 00 00 1E */	fctiwz f0, f0
/* 80A5D268  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A5D26C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A5D270  B0 1F 05 F2 */	sth r0, 0x5f2(r31)
lbl_80A5D274:
/* 80A5D274  2C 1A 00 00 */	cmpwi r26, 0
/* 80A5D278  41 82 00 28 */	beq lbl_80A5D2A0
/* 80A5D27C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5D284  7F 84 E3 78 */	mr r4, r28
/* 80A5D288  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5D28C  7C 05 07 74 */	extsb r5, r0
/* 80A5D290  4B 5D 80 D0 */	b isSwitch__10dSv_info_cCFii
/* 80A5D294  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D298  41 82 00 08 */	beq lbl_80A5D2A0
/* 80A5D29C  3B C0 00 00 */	li r30, 0
lbl_80A5D2A0:
/* 80A5D2A0  7F C3 F3 78 */	mr r3, r30
lbl_80A5D2A4:
/* 80A5D2A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A5D2A8  4B 90 4F 70 */	b _restgpr_25
/* 80A5D2AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A5D2B0  7C 08 03 A6 */	mtlr r0
/* 80A5D2B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A5D2B8  4E 80 00 20 */	blr 
