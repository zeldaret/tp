lbl_80A18B74:
/* 80A18B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A18B78  7C 08 02 A6 */	mflr r0
/* 80A18B7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A18B80  39 61 00 20 */	addi r11, r1, 0x20
/* 80A18B84  4B 94 96 55 */	bl _savegpr_28
/* 80A18B88  7C 7E 1B 78 */	mr r30, r3
/* 80A18B8C  3C 80 80 A2 */	lis r4, m__19daNpc_Jagar_Param_c@ha /* 0x80A1A330@ha */
/* 80A18B90  3B E4 A3 30 */	addi r31, r4, m__19daNpc_Jagar_Param_c@l /* 0x80A1A330@l */
/* 80A18B94  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A18B98  2C 00 00 02 */	cmpwi r0, 2
/* 80A18B9C  41 82 01 54 */	beq lbl_80A18CF0
/* 80A18BA0  40 80 03 6C */	bge lbl_80A18F0C
/* 80A18BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80A18BA8  40 80 00 0C */	bge lbl_80A18BB4
/* 80A18BAC  48 00 03 60 */	b lbl_80A18F0C
/* 80A18BB0  48 00 03 5C */	b lbl_80A18F0C
lbl_80A18BB4:
/* 80A18BB4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A18BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80A18BBC  40 82 01 34 */	bne lbl_80A18CF0
/* 80A18BC0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A18BC4  28 00 00 01 */	cmplwi r0, 1
/* 80A18BC8  40 82 01 14 */	bne lbl_80A18CDC
/* 80A18BCC  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A18BD0  4B 72 CB 39 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A18BD4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A18BD8  41 82 00 CC */	beq lbl_80A18CA4
/* 80A18BDC  4B F5 4E 9D */	bl getType__11daNpc_Bou_cFv
/* 80A18BE0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80A18BE4  28 00 00 01 */	cmplwi r0, 1
/* 80A18BE8  40 82 00 BC */	bne lbl_80A18CA4
/* 80A18BEC  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80A18BF0  7C 00 00 34 */	cntlzw r0, r0
/* 80A18BF4  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80A18BF8  41 82 00 AC */	beq lbl_80A18CA4
/* 80A18BFC  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A18C00  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A18C04  41 82 00 24 */	beq lbl_80A18C28
/* 80A18C08  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A18C0C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A18C10  4B 72 CC 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A18C14  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A18C18  38 00 00 0A */	li r0, 0xa
/* 80A18C1C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A18C20  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A18C24  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A18C28:
/* 80A18C28  4B 84 EC 45 */	bl cM_rnd__Fv
/* 80A18C2C  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80A18C30  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A18C34  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80A18C38  EC 20 08 2A */	fadds f1, f0, f1
/* 80A18C3C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A18C40  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A18C44  40 80 00 34 */	bge lbl_80A18C78
/* 80A18C48  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A18C4C  2C 00 00 04 */	cmpwi r0, 4
/* 80A18C50  41 82 00 54 */	beq lbl_80A18CA4
/* 80A18C54  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A18C58  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A18C5C  4B 72 CC 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A18C60  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A18C64  38 00 00 04 */	li r0, 4
/* 80A18C68  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A18C6C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A18C70  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A18C74  48 00 00 30 */	b lbl_80A18CA4
lbl_80A18C78:
/* 80A18C78  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A18C7C  2C 00 00 01 */	cmpwi r0, 1
/* 80A18C80  41 82 00 24 */	beq lbl_80A18CA4
/* 80A18C84  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A18C88  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A18C8C  4B 72 CC 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A18C90  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A18C94  38 00 00 01 */	li r0, 1
/* 80A18C98  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A18C9C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A18CA0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A18CA4:
/* 80A18CA4  80 1E 0F EC */	lwz r0, 0xfec(r30)
/* 80A18CA8  2C 00 00 04 */	cmpwi r0, 4
/* 80A18CAC  41 82 00 08 */	beq lbl_80A18CB4
/* 80A18CB0  48 00 00 18 */	b lbl_80A18CC8
lbl_80A18CB4:
/* 80A18CB4  7F C3 F3 78 */	mr r3, r30
/* 80A18CB8  38 80 00 D6 */	li r4, 0xd6
/* 80A18CBC  38 A0 00 00 */	li r5, 0
/* 80A18CC0  4B 73 2F 31 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A18CC4  48 00 00 24 */	b lbl_80A18CE8
lbl_80A18CC8:
/* 80A18CC8  7F C3 F3 78 */	mr r3, r30
/* 80A18CCC  38 80 00 D5 */	li r4, 0xd5
/* 80A18CD0  38 A0 00 00 */	li r5, 0
/* 80A18CD4  4B 73 2F 1D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A18CD8  48 00 00 10 */	b lbl_80A18CE8
lbl_80A18CDC:
/* 80A18CDC  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 80A18CE0  38 A0 00 00 */	li r5, 0
/* 80A18CE4  4B 73 2F 0D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A18CE8:
/* 80A18CE8  38 00 00 02 */	li r0, 2
/* 80A18CEC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A18CF0:
/* 80A18CF0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A18CF4  2C 00 00 00 */	cmpwi r0, 0
/* 80A18CF8  40 82 02 14 */	bne lbl_80A18F0C
/* 80A18CFC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A18D00  28 00 00 00 */	cmplwi r0, 0
/* 80A18D04  40 82 00 2C */	bne lbl_80A18D30
/* 80A18D08  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 80A18D0C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A18D10  7C 03 00 00 */	cmpw r3, r0
/* 80A18D14  41 82 00 1C */	beq lbl_80A18D30
/* 80A18D18  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A18D1C  28 00 00 01 */	cmplwi r0, 1
/* 80A18D20  41 82 00 10 */	beq lbl_80A18D30
/* 80A18D24  88 1E 10 03 */	lbz r0, 0x1003(r30)
/* 80A18D28  28 00 00 00 */	cmplwi r0, 0
/* 80A18D2C  41 82 01 8C */	beq lbl_80A18EB8
lbl_80A18D30:
/* 80A18D30  7F C3 F3 78 */	mr r3, r30
/* 80A18D34  38 80 00 00 */	li r4, 0
/* 80A18D38  38 A0 00 00 */	li r5, 0
/* 80A18D3C  38 C0 00 00 */	li r6, 0
/* 80A18D40  38 E0 00 00 */	li r7, 0
/* 80A18D44  4B 73 2F 35 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A18D48  2C 03 00 00 */	cmpwi r3, 0
/* 80A18D4C  41 82 00 3C */	beq lbl_80A18D88
/* 80A18D50  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 80A18D54  28 00 00 01 */	cmplwi r0, 1
/* 80A18D58  40 82 00 30 */	bne lbl_80A18D88
/* 80A18D5C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A18D60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A18D64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A18D68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A18D6C  4B 72 C9 75 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A18D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A18D74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A18D78  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A18D7C  4B 62 96 ED */	bl reset__14dEvt_control_cFv
/* 80A18D80  38 00 00 03 */	li r0, 3
/* 80A18D84  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A18D88:
/* 80A18D88  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A18D8C  28 00 00 01 */	cmplwi r0, 1
/* 80A18D90  40 82 00 A0 */	bne lbl_80A18E30
/* 80A18D94  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A18D98  4B 72 C9 71 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A18D9C  7C 7C 1B 78 */	mr r28, r3
/* 80A18DA0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A18DA4  4B 72 C9 65 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A18DA8  7C 63 E0 50 */	subf r3, r3, r28
/* 80A18DAC  30 03 FF FF */	addic r0, r3, -1
/* 80A18DB0  7C 00 19 10 */	subfe r0, r0, r3
/* 80A18DB4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A18DB8  40 82 00 10 */	bne lbl_80A18DC8
/* 80A18DBC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A18DC0  2C 00 00 02 */	cmpwi r0, 2
/* 80A18DC4  41 82 00 30 */	beq lbl_80A18DF4
lbl_80A18DC8:
/* 80A18DC8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A18DCC  4B 72 C9 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A18DD0  38 00 00 00 */	li r0, 0
/* 80A18DD4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A18DD8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A18DDC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A18DE0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18DE4  38 00 00 02 */	li r0, 2
/* 80A18DE8  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80A18DEC  38 00 00 01 */	li r0, 1
/* 80A18DF0  48 00 00 08 */	b lbl_80A18DF8
lbl_80A18DF4:
/* 80A18DF4  38 00 00 00 */	li r0, 0
lbl_80A18DF8:
/* 80A18DF8  2C 00 00 00 */	cmpwi r0, 0
/* 80A18DFC  41 82 00 28 */	beq lbl_80A18E24
/* 80A18E00  7F 83 E3 78 */	mr r3, r28
/* 80A18E04  4B 5F FE DD */	bl fopAc_IsActor__FPv
/* 80A18E08  2C 03 00 00 */	cmpwi r3, 0
/* 80A18E0C  41 82 00 18 */	beq lbl_80A18E24
/* 80A18E10  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A18E14  7F 84 E3 78 */	mr r4, r28
/* 80A18E18  4B 72 C8 C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A18E1C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80A18E20  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80A18E24:
/* 80A18E24  38 00 00 00 */	li r0, 0
/* 80A18E28  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18E2C  48 00 00 E0 */	b lbl_80A18F0C
lbl_80A18E30:
/* 80A18E30  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A18E34  2C 00 00 01 */	cmpwi r0, 1
/* 80A18E38  41 82 00 28 */	beq lbl_80A18E60
/* 80A18E3C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A18E40  4B 72 C8 BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A18E44  38 00 00 00 */	li r0, 0
/* 80A18E48  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A18E4C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A18E50  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A18E54  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18E58  38 00 00 01 */	li r0, 1
/* 80A18E5C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A18E60:
/* 80A18E60  38 00 00 00 */	li r0, 0
/* 80A18E64  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18E68  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A18E6C  28 00 00 00 */	cmplwi r0, 0
/* 80A18E70  40 82 00 10 */	bne lbl_80A18E80
/* 80A18E74  88 1E 10 03 */	lbz r0, 0x1003(r30)
/* 80A18E78  28 00 00 02 */	cmplwi r0, 2
/* 80A18E7C  40 82 00 90 */	bne lbl_80A18F0C
lbl_80A18E80:
/* 80A18E80  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A18E84  2C 00 00 00 */	cmpwi r0, 0
/* 80A18E88  41 82 00 24 */	beq lbl_80A18EAC
/* 80A18E8C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A18E90  4B 72 C8 6D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A18E94  38 00 00 00 */	li r0, 0
/* 80A18E98  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A18E9C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A18EA0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A18EA4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18EA8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A18EAC:
/* 80A18EAC  38 00 00 00 */	li r0, 0
/* 80A18EB0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18EB4  48 00 00 58 */	b lbl_80A18F0C
lbl_80A18EB8:
/* 80A18EB8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A18EBC  2C 00 00 01 */	cmpwi r0, 1
/* 80A18EC0  41 82 00 28 */	beq lbl_80A18EE8
/* 80A18EC4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A18EC8  4B 72 C8 35 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A18ECC  38 00 00 00 */	li r0, 0
/* 80A18ED0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A18ED4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A18ED8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A18EDC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18EE0  38 00 00 01 */	li r0, 1
/* 80A18EE4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A18EE8:
/* 80A18EE8  38 00 00 00 */	li r0, 0
/* 80A18EEC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18EF0  7F C3 F3 78 */	mr r3, r30
/* 80A18EF4  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80A18EF8  38 A0 00 08 */	li r5, 8
/* 80A18EFC  38 C0 00 0E */	li r6, 0xe
/* 80A18F00  38 E0 00 0F */	li r7, 0xf
/* 80A18F04  39 00 00 00 */	li r8, 0
/* 80A18F08  4B 73 27 41 */	bl step__8daNpcT_cFsiiii
lbl_80A18F0C:
/* 80A18F0C  38 60 00 00 */	li r3, 0
/* 80A18F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80A18F14  4B 94 93 11 */	bl _restgpr_28
/* 80A18F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A18F1C  7C 08 03 A6 */	mtlr r0
/* 80A18F20  38 21 00 20 */	addi r1, r1, 0x20
/* 80A18F24  4E 80 00 20 */	blr 
