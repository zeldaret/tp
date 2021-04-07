lbl_80838B78:
/* 80838B78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80838B7C  7C 08 02 A6 */	mflr r0
/* 80838B80  90 01 00 44 */	stw r0, 0x44(r1)
/* 80838B84  39 61 00 40 */	addi r11, r1, 0x40
/* 80838B88  4B B2 96 49 */	bl _savegpr_26
/* 80838B8C  7C 7E 1B 78 */	mr r30, r3
/* 80838B90  7C 9F 23 79 */	or. r31, r4, r4
/* 80838B94  40 82 00 64 */	bne lbl_80838BF8
/* 80838B98  88 1E 16 B4 */	lbz r0, 0x16b4(r30)
/* 80838B9C  28 00 00 07 */	cmplwi r0, 7
/* 80838BA0  40 82 03 48 */	bne lbl_80838EE8
/* 80838BA4  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80838BA8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80838BAC  57 E0 28 34 */	slwi r0, r31, 5
/* 80838BB0  7C 83 02 14 */	add r4, r3, r0
/* 80838BB4  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 80838BB8  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 80838BBC  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80838BC0  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80838BC4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80838BC8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80838BCC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80838BD0  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 80838BD4  7C 63 02 14 */	add r3, r3, r0
/* 80838BD8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80838BDC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80838BE0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80838BE4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80838BE8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80838BEC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80838BF0  4B B0 D8 C1 */	bl PSMTXCopy
/* 80838BF4  48 00 02 F4 */	b lbl_80838EE8
lbl_80838BF8:
/* 80838BF8  2C 1F 00 03 */	cmpwi r31, 3
/* 80838BFC  41 82 00 34 */	beq lbl_80838C30
/* 80838C00  2C 1F 00 07 */	cmpwi r31, 7
/* 80838C04  41 82 00 2C */	beq lbl_80838C30
/* 80838C08  2C 1F 00 0B */	cmpwi r31, 0xb
/* 80838C0C  41 82 00 24 */	beq lbl_80838C30
/* 80838C10  2C 1F 00 16 */	cmpwi r31, 0x16
/* 80838C14  41 82 00 1C */	beq lbl_80838C30
/* 80838C18  2C 1F 00 18 */	cmpwi r31, 0x18
/* 80838C1C  41 82 00 14 */	beq lbl_80838C30
/* 80838C20  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 80838C24  41 82 00 0C */	beq lbl_80838C30
/* 80838C28  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 80838C2C  40 82 01 30 */	bne lbl_80838D5C
lbl_80838C30:
/* 80838C30  2C 1F 00 0B */	cmpwi r31, 0xb
/* 80838C34  40 82 00 70 */	bne lbl_80838CA4
/* 80838C38  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80838C3C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80838C40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80838C44  3B 63 02 10 */	addi r27, r3, 0x210
/* 80838C48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838C4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838C50  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 80838C54  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 80838C58  C0 7B 00 2C */	lfs f3, 0x2c(r27)
/* 80838C5C  4B B0 DC 8D */	bl PSMTXTrans
/* 80838C60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838C64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838C68  A8 9E 16 F0 */	lha r4, 0x16f0(r30)
/* 80838C6C  4B 7D 37 C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80838C70  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80838C74  FC 20 00 50 */	fneg f1, f0
/* 80838C78  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80838C7C  FC 40 00 50 */	fneg f2, f0
/* 80838C80  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80838C84  FC 60 00 50 */	fneg f3, f0
/* 80838C88  4B 7D 41 15 */	bl transM__14mDoMtx_stack_cFfff
/* 80838C8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838C90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838C94  7F 64 DB 78 */	mr r4, r27
/* 80838C98  7C 65 1B 78 */	mr r5, r3
/* 80838C9C  4B B0 D8 49 */	bl PSMTXConcat
/* 80838CA0  48 00 00 24 */	b lbl_80838CC4
lbl_80838CA4:
/* 80838CA4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80838CA8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80838CAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80838CB0  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 80838CB4  7C 63 02 14 */	add r3, r3, r0
/* 80838CB8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838CBC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838CC0  4B B0 D7 F1 */	bl PSMTXCopy
lbl_80838CC4:
/* 80838CC4  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 80838CC8  41 82 00 1C */	beq lbl_80838CE4
/* 80838CCC  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 80838CD0  41 82 00 14 */	beq lbl_80838CE4
/* 80838CD4  2C 1F 00 16 */	cmpwi r31, 0x16
/* 80838CD8  41 82 00 0C */	beq lbl_80838CE4
/* 80838CDC  2C 1F 00 18 */	cmpwi r31, 0x18
/* 80838CE0  40 82 00 20 */	bne lbl_80838D00
lbl_80838CE4:
/* 80838CE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838CE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838CEC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80838CF0  7C 00 0E 70 */	srawi r0, r0, 1
/* 80838CF4  7C 04 07 34 */	extsh r4, r0
/* 80838CF8  4B 7D 37 D5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80838CFC  48 00 00 20 */	b lbl_80838D1C
lbl_80838D00:
/* 80838D00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838D04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838D08  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80838D0C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80838D10  7C 00 00 D0 */	neg r0, r0
/* 80838D14  7C 04 07 34 */	extsh r4, r0
/* 80838D18  4B 7D 37 B5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80838D1C:
/* 80838D1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838D20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838D24  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80838D28  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80838D2C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80838D30  1F 5F 00 30 */	mulli r26, r31, 0x30
/* 80838D34  7C 80 D2 14 */	add r4, r0, r26
/* 80838D38  4B B0 D7 79 */	bl PSMTXCopy
/* 80838D3C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80838D40  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80838D44  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80838D48  7C 60 D2 14 */	add r3, r0, r26
/* 80838D4C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80838D50  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80838D54  4B B0 D7 5D */	bl PSMTXCopy
/* 80838D58  48 00 01 90 */	b lbl_80838EE8
lbl_80838D5C:
/* 80838D5C  80 1E 17 4C */	lwz r0, 0x174c(r30)
/* 80838D60  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80838D64  40 82 00 10 */	bne lbl_80838D74
/* 80838D68  38 1F FF DD */	addi r0, r31, -35
/* 80838D6C  28 00 00 02 */	cmplwi r0, 2
/* 80838D70  40 81 00 14 */	ble lbl_80838D84
lbl_80838D74:
/* 80838D74  2C 1F 00 02 */	cmpwi r31, 2
/* 80838D78  41 82 00 0C */	beq lbl_80838D84
/* 80838D7C  2C 1F 00 1A */	cmpwi r31, 0x1a
/* 80838D80  40 82 01 58 */	bne lbl_80838ED8
lbl_80838D84:
/* 80838D84  2C 1F 00 02 */	cmpwi r31, 2
/* 80838D88  41 82 00 0C */	beq lbl_80838D94
/* 80838D8C  2C 1F 00 1A */	cmpwi r31, 0x1a
/* 80838D90  40 82 00 18 */	bne lbl_80838DA8
lbl_80838D94:
/* 80838D94  A8 1E 16 FA */	lha r0, 0x16fa(r30)
/* 80838D98  7C 00 00 D0 */	neg r0, r0
/* 80838D9C  7C 04 07 34 */	extsh r4, r0
/* 80838DA0  3B 60 00 00 */	li r27, 0
/* 80838DA4  48 00 00 14 */	b lbl_80838DB8
lbl_80838DA8:
/* 80838DA8  57 E0 08 3C */	slwi r0, r31, 1
/* 80838DAC  7C 7E 02 14 */	add r3, r30, r0
/* 80838DB0  A8 83 16 8E */	lha r4, 0x168e(r3)
/* 80838DB4  3B 60 00 01 */	li r27, 1
lbl_80838DB8:
/* 80838DB8  38 60 00 00 */	li r3, 0
/* 80838DBC  38 A0 00 00 */	li r5, 0
/* 80838DC0  38 C1 00 08 */	addi r6, r1, 8
/* 80838DC4  4B B0 0A B5 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80838DC8  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80838DCC  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80838DD0  57 FC 20 36 */	slwi r28, r31, 4
/* 80838DD4  7C 60 E2 14 */	add r3, r0, r28
/* 80838DD8  38 81 00 08 */	addi r4, r1, 8
/* 80838DDC  38 A1 00 18 */	addi r5, r1, 0x18
/* 80838DE0  4B 7D 3D 7D */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
/* 80838DE4  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80838DE8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80838DEC  57 E0 28 34 */	slwi r0, r31, 5
/* 80838DF0  7F A3 02 14 */	add r29, r3, r0
/* 80838DF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838DF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838DFC  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80838E00  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 80838E04  C0 7D 00 1C */	lfs f3, 0x1c(r29)
/* 80838E08  4B B0 DA E1 */	bl PSMTXTrans
/* 80838E0C  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80838E10  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80838E14  7C 60 E2 14 */	add r3, r0, r28
/* 80838E18  4B 7D 41 65 */	bl quatM__14mDoMtx_stack_cFPC10Quaternion
/* 80838E1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838E20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838E24  7C 64 1B 78 */	mr r4, r3
/* 80838E28  4B B0 D7 89 */	bl PSMTXInverse
/* 80838E2C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80838E30  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80838E34  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80838E38  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 80838E3C  7F 43 02 14 */	add r26, r3, r0
/* 80838E40  7F 43 D3 78 */	mr r3, r26
/* 80838E44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80838E48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80838E4C  3C A0 80 43 */	lis r5, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80838E50  38 A5 4B E4 */	addi r5, r5, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80838E54  4B B0 D6 91 */	bl PSMTXConcat
/* 80838E58  7F 43 D3 78 */	mr r3, r26
/* 80838E5C  38 81 00 18 */	addi r4, r1, 0x18
/* 80838E60  4B B0 DB 89 */	bl PSMTXQuat
/* 80838E64  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80838E68  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 80838E6C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80838E70  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 80838E74  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80838E78  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 80838E7C  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80838E80  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80838E84  7F 44 D3 78 */	mr r4, r26
/* 80838E88  7C 65 1B 78 */	mr r5, r3
/* 80838E8C  4B B0 D6 59 */	bl PSMTXConcat
/* 80838E90  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80838E94  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80838E98  7F 44 D3 78 */	mr r4, r26
/* 80838E9C  4B B0 D6 15 */	bl PSMTXCopy
/* 80838EA0  2C 1B 00 00 */	cmpwi r27, 0
/* 80838EA4  41 82 00 44 */	beq lbl_80838EE8
/* 80838EA8  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80838EAC  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80838EB0  7C 60 E2 14 */	add r3, r0, r28
/* 80838EB4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80838EB8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80838EBC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80838EC0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80838EC4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80838EC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80838ECC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80838ED0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80838ED4  48 00 00 14 */	b lbl_80838EE8
lbl_80838ED8:
/* 80838ED8  2C 1F 00 22 */	cmpwi r31, 0x22
/* 80838EDC  40 82 00 0C */	bne lbl_80838EE8
/* 80838EE0  7F C3 F3 78 */	mr r3, r30
/* 80838EE4  48 00 5C 2D */	bl setFootMatrix__9daHorse_cFv
lbl_80838EE8:
/* 80838EE8  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80838EEC  28 00 00 00 */	cmplwi r0, 0
/* 80838EF0  41 82 00 30 */	beq lbl_80838F20
/* 80838EF4  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80838EF8  40 82 00 14 */	bne lbl_80838F0C
/* 80838EFC  3C 60 80 84 */	lis r3, lit_4304@ha /* 0x808455F4@ha */
/* 80838F00  C0 03 55 F4 */	lfs f0, lit_4304@l(r3)  /* 0x808455F4@l */
/* 80838F04  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80838F08  48 00 00 18 */	b lbl_80838F20
lbl_80838F0C:
/* 80838F0C  2C 1F 00 14 */	cmpwi r31, 0x14
/* 80838F10  40 82 00 10 */	bne lbl_80838F20
/* 80838F14  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 80838F18  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 80838F1C  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
lbl_80838F20:
/* 80838F20  38 60 00 01 */	li r3, 1
/* 80838F24  39 61 00 40 */	addi r11, r1, 0x40
/* 80838F28  4B B2 92 F5 */	bl _restgpr_26
/* 80838F2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80838F30  7C 08 03 A6 */	mtlr r0
/* 80838F34  38 21 00 40 */	addi r1, r1, 0x40
/* 80838F38  4E 80 00 20 */	blr 
