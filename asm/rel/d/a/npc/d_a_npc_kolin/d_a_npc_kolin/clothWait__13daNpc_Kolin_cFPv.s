lbl_80558C4C:
/* 80558C4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80558C50  7C 08 02 A6 */	mflr r0
/* 80558C54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80558C58  39 61 00 30 */	addi r11, r1, 0x30
/* 80558C5C  4B E0 95 7C */	b _savegpr_28
/* 80558C60  7C 7E 1B 78 */	mr r30, r3
/* 80558C64  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 80558C68  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l
/* 80558C6C  38 7F 00 00 */	addi r3, r31, 0
/* 80558C70  AB 83 00 9A */	lha r28, 0x9a(r3)
/* 80558C74  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80558C78  2C 00 00 02 */	cmpwi r0, 2
/* 80558C7C  41 82 00 C4 */	beq lbl_80558D40
/* 80558C80  40 80 01 F4 */	bge lbl_80558E74
/* 80558C84  2C 00 00 00 */	cmpwi r0, 0
/* 80558C88  40 80 00 0C */	bge lbl_80558C94
/* 80558C8C  48 00 01 E8 */	b lbl_80558E74
/* 80558C90  48 00 01 E4 */	b lbl_80558E74
lbl_80558C94:
/* 80558C94  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80558C98  2C 00 00 00 */	cmpwi r0, 0
/* 80558C9C  40 82 00 A4 */	bne lbl_80558D40
/* 80558CA0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80558CA4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80558CA8  41 82 00 24 */	beq lbl_80558CCC
/* 80558CAC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80558CB0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80558CB4  4B BE CB E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558CB8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80558CBC  38 00 00 0D */	li r0, 0xd
/* 80558CC0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80558CC4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558CC8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80558CCC:
/* 80558CCC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80558CD0  2C 00 00 09 */	cmpwi r0, 9
/* 80558CD4  41 82 00 24 */	beq lbl_80558CF8
/* 80558CD8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80558CDC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80558CE0  4B BE CB B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558CE4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80558CE8  38 00 00 09 */	li r0, 9
/* 80558CEC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80558CF0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558CF4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80558CF8:
/* 80558CF8  4B D0 EB 74 */	b cM_rnd__Fv
/* 80558CFC  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80558D00  EC 41 00 28 */	fsubs f2, f1, f0
/* 80558D04  C8 3F 01 28 */	lfd f1, 0x128(r31)
/* 80558D08  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80558D0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80558D10  3C 00 43 30 */	lis r0, 0x4330
/* 80558D14  90 01 00 08 */	stw r0, 8(r1)
/* 80558D18  C8 01 00 08 */	lfd f0, 8(r1)
/* 80558D1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80558D20  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80558D24  FC 00 00 1E */	fctiwz f0, f0
/* 80558D28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80558D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558D30  7C 1C 02 14 */	add r0, r28, r0
/* 80558D34  90 1E 10 08 */	stw r0, 0x1008(r30)
/* 80558D38  38 00 00 02 */	li r0, 2
/* 80558D3C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80558D40:
/* 80558D40  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80558D44  2C 00 00 00 */	cmpwi r0, 0
/* 80558D48  40 82 01 2C */	bne lbl_80558E74
/* 80558D4C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80558D50  2C 00 00 00 */	cmpwi r0, 0
/* 80558D54  41 82 00 24 */	beq lbl_80558D78
/* 80558D58  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80558D5C  4B BE C9 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80558D60  38 00 00 00 */	li r0, 0
/* 80558D64  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80558D68  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80558D6C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80558D70  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558D74  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80558D78:
/* 80558D78  38 00 00 00 */	li r0, 0
/* 80558D7C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558D80  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80558D84  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80558D88  7C 04 00 00 */	cmpw r4, r0
/* 80558D8C  41 82 00 58 */	beq lbl_80558DE4
/* 80558D90  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80558D94  28 00 00 00 */	cmplwi r0, 0
/* 80558D98  40 82 00 18 */	bne lbl_80558DB0
/* 80558D9C  7F C3 F3 78 */	mr r3, r30
/* 80558DA0  4B BF 1C 78 */	b setAngle__8daNpcT_cFs
/* 80558DA4  38 00 00 01 */	li r0, 1
/* 80558DA8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80558DAC  48 00 00 2C */	b lbl_80558DD8
lbl_80558DB0:
/* 80558DB0  7F C3 F3 78 */	mr r3, r30
/* 80558DB4  38 A0 00 0D */	li r5, 0xd
/* 80558DB8  38 C0 00 0A */	li r6, 0xa
/* 80558DBC  38 E0 00 0F */	li r7, 0xf
/* 80558DC0  39 00 00 00 */	li r8, 0
/* 80558DC4  4B BF 28 84 */	b step__8daNpcT_cFsiiii
/* 80558DC8  2C 03 00 00 */	cmpwi r3, 0
/* 80558DCC  41 82 00 0C */	beq lbl_80558DD8
/* 80558DD0  38 00 00 01 */	li r0, 1
/* 80558DD4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80558DD8:
/* 80558DD8  38 00 00 00 */	li r0, 0
/* 80558DDC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80558DE0  48 00 00 94 */	b lbl_80558E74
lbl_80558DE4:
/* 80558DE4  80 1E 10 08 */	lwz r0, 0x1008(r30)
/* 80558DE8  2C 00 00 00 */	cmpwi r0, 0
/* 80558DEC  41 82 00 70 */	beq lbl_80558E5C
/* 80558DF0  38 7E 10 08 */	addi r3, r30, 0x1008
/* 80558DF4  48 00 13 D1 */	bl func_8055A1C4
/* 80558DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80558DFC  40 82 00 78 */	bne lbl_80558E74
/* 80558E00  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80558E04  2C 00 00 0C */	cmpwi r0, 0xc
/* 80558E08  41 82 00 24 */	beq lbl_80558E2C
/* 80558E0C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80558E10  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80558E14  4B BE CA 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558E18  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80558E1C  38 00 00 0C */	li r0, 0xc
/* 80558E20  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80558E24  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558E28  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80558E2C:
/* 80558E2C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80558E30  2C 00 00 13 */	cmpwi r0, 0x13
/* 80558E34  41 82 00 40 */	beq lbl_80558E74
/* 80558E38  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80558E3C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80558E40  4B BE CA 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558E44  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80558E48  38 00 00 13 */	li r0, 0x13
/* 80558E4C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80558E50  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558E54  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80558E58  48 00 00 1C */	b lbl_80558E74
lbl_80558E5C:
/* 80558E5C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80558E60  4B BE CB C4 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80558E64  2C 03 00 00 */	cmpwi r3, 0
/* 80558E68  41 82 00 0C */	beq lbl_80558E74
/* 80558E6C  38 00 00 01 */	li r0, 1
/* 80558E70  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80558E74:
/* 80558E74  38 60 00 01 */	li r3, 1
/* 80558E78  39 61 00 30 */	addi r11, r1, 0x30
/* 80558E7C  4B E0 93 A8 */	b _restgpr_28
/* 80558E80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80558E84  7C 08 03 A6 */	mtlr r0
/* 80558E88  38 21 00 30 */	addi r1, r1, 0x30
/* 80558E8C  4E 80 00 20 */	blr 
