lbl_80A789D8:
/* 80A789D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A789DC  7C 08 02 A6 */	mflr r0
/* 80A789E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A789E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A789E8  4B 8E 97 F1 */	bl _savegpr_28
/* 80A789EC  7C 7E 1B 78 */	mr r30, r3
/* 80A789F0  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A789F4  3B E3 AE F0 */	addi r31, r3, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A789F8  38 7F 00 00 */	addi r3, r31, 0
/* 80A789FC  AB 83 00 98 */	lha r28, 0x98(r3)
/* 80A78A00  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A78A04  2C 00 00 02 */	cmpwi r0, 2
/* 80A78A08  41 82 00 D4 */	beq lbl_80A78ADC
/* 80A78A0C  40 80 03 E4 */	bge lbl_80A78DF0
/* 80A78A10  2C 00 00 00 */	cmpwi r0, 0
/* 80A78A14  40 80 00 0C */	bge lbl_80A78A20
/* 80A78A18  48 00 03 D8 */	b lbl_80A78DF0
/* 80A78A1C  48 00 03 D4 */	b lbl_80A78DF0
lbl_80A78A20:
/* 80A78A20  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A78A24  2C 00 00 00 */	cmpwi r0, 0
/* 80A78A28  40 82 00 B4 */	bne lbl_80A78ADC
/* 80A78A2C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A78A30  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A78A34  41 82 00 24 */	beq lbl_80A78A58
/* 80A78A38  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A78A3C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A78A40  4B 6C CE 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78A44  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A78A48  38 00 00 15 */	li r0, 0x15
/* 80A78A4C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A78A50  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A78A54  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A78A58:
/* 80A78A58  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A78A5C  2C 00 00 00 */	cmpwi r0, 0
/* 80A78A60  41 82 00 24 */	beq lbl_80A78A84
/* 80A78A64  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A78A68  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A78A6C  4B 6C CE 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78A70  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A78A74  38 00 00 00 */	li r0, 0
/* 80A78A78  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A78A7C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A78A80  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A78A84:
/* 80A78A84  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80A78A88  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 80A78A8C  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80A78A90  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A78A94  3C 00 43 30 */	lis r0, 0x4330
/* 80A78A98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A78A9C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A78AA0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80A78AA4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A78AA8  C0 5F 01 BC */	lfs f2, 0x1bc(r31)
/* 80A78AAC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80A78AB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A78AB4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80A78AB8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80A78ABC  EC 42 00 32 */	fmuls f2, f2, f0
/* 80A78AC0  48 00 20 C1 */	bl func_80A7AB80
/* 80A78AC4  FC 00 08 1E */	fctiwz f0, f1
/* 80A78AC8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80A78ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A78AD0  90 1E 16 48 */	stw r0, 0x1648(r30)
/* 80A78AD4  38 00 00 02 */	li r0, 2
/* 80A78AD8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A78ADC:
/* 80A78ADC  88 1E 15 C4 */	lbz r0, 0x15c4(r30)
/* 80A78AE0  28 00 00 05 */	cmplwi r0, 5
/* 80A78AE4  40 82 00 30 */	bne lbl_80A78B14
/* 80A78AE8  38 60 00 B8 */	li r3, 0xb8
/* 80A78AEC  4B 6D 3F C1 */	bl daNpcT_chkEvtBit__FUl
/* 80A78AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A78AF4  41 82 00 20 */	beq lbl_80A78B14
/* 80A78AF8  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A78AFC  28 00 00 00 */	cmplwi r0, 0
/* 80A78B00  41 82 00 14 */	beq lbl_80A78B14
/* 80A78B04  7F C3 F3 78 */	mr r3, r30
/* 80A78B08  4B 5A 11 75 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80A78B0C  38 60 00 01 */	li r3, 1
/* 80A78B10  48 00 02 E4 */	b lbl_80A78DF4
lbl_80A78B14:
/* 80A78B14  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A78B18  2C 00 00 00 */	cmpwi r0, 0
/* 80A78B1C  40 82 02 D4 */	bne lbl_80A78DF0
/* 80A78B20  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A78B24  4B 6C CB E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A78B28  28 03 00 00 */	cmplwi r3, 0
/* 80A78B2C  41 82 00 CC */	beq lbl_80A78BF8
/* 80A78B30  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A78B34  28 00 00 00 */	cmplwi r0, 0
/* 80A78B38  40 82 00 C0 */	bne lbl_80A78BF8
/* 80A78B3C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A78B40  2C 00 00 01 */	cmpwi r0, 1
/* 80A78B44  41 82 00 28 */	beq lbl_80A78B6C
/* 80A78B48  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A78B4C  4B 6C CB B1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A78B50  38 00 00 00 */	li r0, 0
/* 80A78B54  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A78B58  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A78B5C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A78B60  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A78B64  38 00 00 01 */	li r0, 1
/* 80A78B68  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A78B6C:
/* 80A78B6C  38 00 00 00 */	li r0, 0
/* 80A78B70  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A78B74  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A78B78  4B 6C CB 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A78B7C  7C 64 1B 78 */	mr r4, r3
/* 80A78B80  7F C3 F3 78 */	mr r3, r30
/* 80A78B84  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80A78B88  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A78B8C  4B 6D 20 45 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A78B90  2C 03 00 00 */	cmpwi r3, 0
/* 80A78B94  40 82 00 38 */	bne lbl_80A78BCC
/* 80A78B98  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A78B9C  2C 00 00 00 */	cmpwi r0, 0
/* 80A78BA0  41 82 00 24 */	beq lbl_80A78BC4
/* 80A78BA4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A78BA8  4B 6C CB 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A78BAC  38 00 00 00 */	li r0, 0
/* 80A78BB0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A78BB4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A78BB8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A78BBC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A78BC0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A78BC4:
/* 80A78BC4  38 00 00 00 */	li r0, 0
/* 80A78BC8  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A78BCC:
/* 80A78BCC  7F C3 F3 78 */	mr r3, r30
/* 80A78BD0  4B 6D 27 69 */	bl srchPlayerActor__8daNpcT_cFv
/* 80A78BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A78BD8  40 82 02 18 */	bne lbl_80A78DF0
/* 80A78BDC  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A78BE0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A78BE4  7C 03 00 00 */	cmpw r3, r0
/* 80A78BE8  40 82 02 08 */	bne lbl_80A78DF0
/* 80A78BEC  38 00 00 01 */	li r0, 1
/* 80A78BF0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A78BF4  48 00 01 FC */	b lbl_80A78DF0
lbl_80A78BF8:
/* 80A78BF8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A78BFC  2C 00 00 00 */	cmpwi r0, 0
/* 80A78C00  41 82 00 24 */	beq lbl_80A78C24
/* 80A78C04  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A78C08  4B 6C CA F5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A78C0C  38 00 00 00 */	li r0, 0
/* 80A78C10  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A78C14  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A78C18  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A78C1C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A78C20  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A78C24:
/* 80A78C24  38 00 00 00 */	li r0, 0
/* 80A78C28  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A78C2C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A78C30  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A78C34  7C 04 00 00 */	cmpw r4, r0
/* 80A78C38  41 82 00 58 */	beq lbl_80A78C90
/* 80A78C3C  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80A78C40  28 00 00 00 */	cmplwi r0, 0
/* 80A78C44  41 82 00 30 */	beq lbl_80A78C74
/* 80A78C48  7F C3 F3 78 */	mr r3, r30
/* 80A78C4C  38 A0 00 15 */	li r5, 0x15
/* 80A78C50  38 C0 00 2C */	li r6, 0x2c
/* 80A78C54  38 E0 00 0F */	li r7, 0xf
/* 80A78C58  39 00 00 00 */	li r8, 0
/* 80A78C5C  4B 6D 29 ED */	bl step__8daNpcT_cFsiiii
/* 80A78C60  2C 03 00 00 */	cmpwi r3, 0
/* 80A78C64  41 82 00 20 */	beq lbl_80A78C84
/* 80A78C68  38 00 00 01 */	li r0, 1
/* 80A78C6C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A78C70  48 00 00 14 */	b lbl_80A78C84
lbl_80A78C74:
/* 80A78C74  7F C3 F3 78 */	mr r3, r30
/* 80A78C78  4B 6D 1D A1 */	bl setAngle__8daNpcT_cFs
/* 80A78C7C  38 00 00 01 */	li r0, 1
/* 80A78C80  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A78C84:
/* 80A78C84  38 00 00 00 */	li r0, 0
/* 80A78C88  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A78C8C  48 00 01 64 */	b lbl_80A78DF0
lbl_80A78C90:
/* 80A78C90  88 1E 15 C4 */	lbz r0, 0x15c4(r30)
/* 80A78C94  28 00 00 01 */	cmplwi r0, 1
/* 80A78C98  40 82 01 44 */	bne lbl_80A78DDC
/* 80A78C9C  80 1E 16 48 */	lwz r0, 0x1648(r30)
/* 80A78CA0  2C 00 00 00 */	cmpwi r0, 0
/* 80A78CA4  41 82 00 70 */	beq lbl_80A78D14
/* 80A78CA8  38 7E 16 48 */	addi r3, r30, 0x1648
/* 80A78CAC  48 00 1E B9 */	bl func_80A7AB64
/* 80A78CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A78CB4  40 82 01 28 */	bne lbl_80A78DDC
/* 80A78CB8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A78CBC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A78CC0  41 82 00 24 */	beq lbl_80A78CE4
/* 80A78CC4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A78CC8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A78CCC  4B 6C CB CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78CD0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A78CD4  38 00 00 15 */	li r0, 0x15
/* 80A78CD8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A78CDC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A78CE0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A78CE4:
/* 80A78CE4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A78CE8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80A78CEC  41 82 00 F0 */	beq lbl_80A78DDC
/* 80A78CF0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A78CF4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A78CF8  4B 6C CB A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78CFC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A78D00  38 00 00 2F */	li r0, 0x2f
/* 80A78D04  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A78D08  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A78D0C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A78D10  48 00 00 CC */	b lbl_80A78DDC
lbl_80A78D14:
/* 80A78D14  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A78D18  4B 6C CD 0D */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A78D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A78D20  40 82 00 14 */	bne lbl_80A78D34
/* 80A78D24  7F C3 F3 78 */	mr r3, r30
/* 80A78D28  4B 6D 26 11 */	bl srchPlayerActor__8daNpcT_cFv
/* 80A78D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80A78D30  41 82 00 10 */	beq lbl_80A78D40
lbl_80A78D34:
/* 80A78D34  38 00 00 01 */	li r0, 1
/* 80A78D38  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A78D3C  48 00 00 B4 */	b lbl_80A78DF0
lbl_80A78D40:
/* 80A78D40  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A78D44  38 63 00 0C */	addi r3, r3, 0xc
/* 80A78D48  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80A78D4C  4B 8A F6 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80A78D50  2C 03 00 00 */	cmpwi r3, 0
/* 80A78D54  40 82 00 1C */	bne lbl_80A78D70
/* 80A78D58  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A78D5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80A78D60  C0 3F 01 E0 */	lfs f1, 0x1e0(r31)
/* 80A78D64  4B 8A F6 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80A78D68  2C 03 00 00 */	cmpwi r3, 0
/* 80A78D6C  41 82 00 30 */	beq lbl_80A78D9C
lbl_80A78D70:
/* 80A78D70  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500DD@ha */
/* 80A78D74  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000500DD@l */
/* 80A78D78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A78D7C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A78D80  38 81 00 0C */	addi r4, r1, 0xc
/* 80A78D84  38 A0 FF FF */	li r5, -1
/* 80A78D88  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80A78D8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A78D90  7D 89 03 A6 */	mtctr r12
/* 80A78D94  4E 80 04 21 */	bctrl 
/* 80A78D98  48 00 00 44 */	b lbl_80A78DDC
lbl_80A78D9C:
/* 80A78D9C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A78DA0  38 63 00 0C */	addi r3, r3, 0xc
/* 80A78DA4  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80A78DA8  4B 8A F6 85 */	bl checkPass__12J3DFrameCtrlFf
/* 80A78DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A78DB0  41 82 00 2C */	beq lbl_80A78DDC
/* 80A78DB4  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500DC@ha */
/* 80A78DB8  38 03 00 DC */	addi r0, r3, 0x00DC /* 0x000500DC@l */
/* 80A78DBC  90 01 00 08 */	stw r0, 8(r1)
/* 80A78DC0  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A78DC4  38 81 00 08 */	addi r4, r1, 8
/* 80A78DC8  38 A0 FF FF */	li r5, -1
/* 80A78DCC  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80A78DD0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A78DD4  7D 89 03 A6 */	mtctr r12
/* 80A78DD8  4E 80 04 21 */	bctrl 
lbl_80A78DDC:
/* 80A78DDC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A78DE0  28 00 00 00 */	cmplwi r0, 0
/* 80A78DE4  40 82 00 0C */	bne lbl_80A78DF0
/* 80A78DE8  7F C3 F3 78 */	mr r3, r30
/* 80A78DEC  4B 6D 25 4D */	bl srchPlayerActor__8daNpcT_cFv
lbl_80A78DF0:
/* 80A78DF0  38 60 00 01 */	li r3, 1
lbl_80A78DF4:
/* 80A78DF4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A78DF8  4B 8E 94 2D */	bl _restgpr_28
/* 80A78DFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A78E00  7C 08 03 A6 */	mtlr r0
/* 80A78E04  38 21 00 40 */	addi r1, r1, 0x40
/* 80A78E08  4E 80 00 20 */	blr 
