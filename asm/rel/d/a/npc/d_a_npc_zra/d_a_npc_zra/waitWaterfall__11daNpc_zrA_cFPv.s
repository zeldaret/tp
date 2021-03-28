lbl_80B82C54:
/* 80B82C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B82C58  7C 08 02 A6 */	mflr r0
/* 80B82C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B82C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B82C64  93 C1 00 08 */	stw r30, 8(r1)
/* 80B82C68  7C 7F 1B 78 */	mr r31, r3
/* 80B82C6C  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B82C70  3B C4 C4 58 */	addi r30, r4, m__17daNpc_zrA_Param_c@l
/* 80B82C74  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B82C78  2C 00 00 02 */	cmpwi r0, 2
/* 80B82C7C  41 82 00 DC */	beq lbl_80B82D58
/* 80B82C80  40 80 00 10 */	bge lbl_80B82C90
/* 80B82C84  2C 00 00 00 */	cmpwi r0, 0
/* 80B82C88  41 82 00 14 */	beq lbl_80B82C9C
/* 80B82C8C  48 00 01 E0 */	b lbl_80B82E6C
lbl_80B82C90:
/* 80B82C90  2C 00 00 04 */	cmpwi r0, 4
/* 80B82C94  40 80 01 D8 */	bge lbl_80B82E6C
/* 80B82C98  48 00 01 CC */	b lbl_80B82E64
lbl_80B82C9C:
/* 80B82C9C  38 80 00 00 */	li r4, 0
/* 80B82CA0  38 A0 00 00 */	li r5, 0
/* 80B82CA4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B82CA8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B82CAC  7D 89 03 A6 */	mtctr r12
/* 80B82CB0  4E 80 04 21 */	bctrl 
/* 80B82CB4  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80B82CB8  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80B82CBC  41 82 00 2C */	beq lbl_80B82CE8
/* 80B82CC0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B82CC4  41 82 00 24 */	beq lbl_80B82CE8
/* 80B82CC8  7F E3 FB 78 */	mr r3, r31
/* 80B82CCC  38 80 00 01 */	li r4, 1
/* 80B82CD0  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B82CD4  38 A0 00 00 */	li r5, 0
/* 80B82CD8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B82CDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B82CE0  7D 89 03 A6 */	mtctr r12
/* 80B82CE4  4E 80 04 21 */	bctrl 
lbl_80B82CE8:
/* 80B82CE8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B82CEC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B82CF0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B82CF4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B82CF8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B82CFC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B82D00  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B82D04  60 00 00 02 */	ori r0, r0, 2
/* 80B82D08  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B82D0C  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B82D10  60 00 00 04 */	ori r0, r0, 4
/* 80B82D14  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B82D18  7F E3 FB 78 */	mr r3, r31
/* 80B82D1C  38 80 00 00 */	li r4, 0
/* 80B82D20  4B FF B9 D5 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B82D24  38 00 00 00 */	li r0, 0
/* 80B82D28  90 1F 09 38 */	stw r0, 0x938(r31)
/* 80B82D2C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B82D30  38 00 00 01 */	li r0, 1
/* 80B82D34  98 1F 15 20 */	stb r0, 0x1520(r31)
/* 80B82D38  7F E3 FB 78 */	mr r3, r31
/* 80B82D3C  4B FF F5 91 */	bl calcWaistAngleStop__11daNpc_zrA_cFv
/* 80B82D40  38 00 00 01 */	li r0, 1
/* 80B82D44  98 1F 15 50 */	stb r0, 0x1550(r31)
/* 80B82D48  38 00 00 FF */	li r0, 0xff
/* 80B82D4C  98 1F 07 BC */	stb r0, 0x7bc(r31)
/* 80B82D50  38 00 00 02 */	li r0, 2
/* 80B82D54  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B82D58:
/* 80B82D58  7F E3 FB 78 */	mr r3, r31
/* 80B82D5C  38 80 00 00 */	li r4, 0
/* 80B82D60  4B FF F8 9D */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B82D64  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80B82D68  C0 1F 15 6C */	lfs f0, 0x156c(r31)
/* 80B82D6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B82D70  40 82 00 0C */	bne lbl_80B82D7C
/* 80B82D74  38 00 00 00 */	li r0, 0
/* 80B82D78  98 1F 15 20 */	stb r0, 0x1520(r31)
lbl_80B82D7C:
/* 80B82D7C  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80B82D80  2C 00 00 00 */	cmpwi r0, 0
/* 80B82D84  40 82 00 E8 */	bne lbl_80B82E6C
/* 80B82D88  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80B82D8C  28 00 00 00 */	cmplwi r0, 0
/* 80B82D90  40 82 00 DC */	bne lbl_80B82E6C
/* 80B82D94  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B82D98  4B 5C D9 54 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B82D9C  30 03 FF FF */	addic r0, r3, -1
/* 80B82DA0  7C 00 19 10 */	subfe r0, r0, r3
/* 80B82DA4  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80B82DA8  7F E3 FB 78 */	mr r3, r31
/* 80B82DAC  7F C4 F3 78 */	mr r4, r30
/* 80B82DB0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B82DB4  4B 5D 1C 2C */	b chkFindPlayer2__8daNpcF_cFis
/* 80B82DB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B82DBC  41 82 00 2C */	beq lbl_80B82DE8
/* 80B82DC0  2C 1E 00 00 */	cmpwi r30, 0
/* 80B82DC4  40 82 00 3C */	bne lbl_80B82E00
/* 80B82DC8  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B82DCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B82DD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B82DD4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B82DD8  4B 5C D8 E4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B82DDC  38 00 00 00 */	li r0, 0
/* 80B82DE0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B82DE4  48 00 00 1C */	b lbl_80B82E00
lbl_80B82DE8:
/* 80B82DE8  2C 1E 00 00 */	cmpwi r30, 0
/* 80B82DEC  41 82 00 14 */	beq lbl_80B82E00
/* 80B82DF0  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B82DF4  4B 5C D8 EC */	b remove__18daNpcF_ActorMngr_cFv
/* 80B82DF8  38 00 00 00 */	li r0, 0
/* 80B82DFC  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B82E00:
/* 80B82E00  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B82E04  4B 5C D8 E8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B82E08  28 03 00 00 */	cmplwi r3, 0
/* 80B82E0C  41 82 00 14 */	beq lbl_80B82E20
/* 80B82E10  7F E3 FB 78 */	mr r3, r31
/* 80B82E14  38 80 00 02 */	li r4, 2
/* 80B82E18  4B FF B8 DD */	bl setLookMode__11daNpc_zrA_cFi
/* 80B82E1C  48 00 00 50 */	b lbl_80B82E6C
lbl_80B82E20:
/* 80B82E20  7F E3 FB 78 */	mr r3, r31
/* 80B82E24  38 80 00 00 */	li r4, 0
/* 80B82E28  4B FF B8 CD */	bl setLookMode__11daNpc_zrA_cFi
/* 80B82E2C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B82E30  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B82E34  7C 04 00 00 */	cmpw r4, r0
/* 80B82E38  41 82 00 34 */	beq lbl_80B82E6C
/* 80B82E3C  7F E3 FB 78 */	mr r3, r31
/* 80B82E40  38 A0 FF FF */	li r5, -1
/* 80B82E44  38 C0 FF FF */	li r6, -1
/* 80B82E48  38 E0 00 0F */	li r7, 0xf
/* 80B82E4C  4B 5D 12 58 */	b step__8daNpcF_cFsiii
/* 80B82E50  2C 03 00 00 */	cmpwi r3, 0
/* 80B82E54  41 82 00 18 */	beq lbl_80B82E6C
/* 80B82E58  38 00 00 00 */	li r0, 0
/* 80B82E5C  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
/* 80B82E60  48 00 00 0C */	b lbl_80B82E6C
lbl_80B82E64:
/* 80B82E64  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B82E68  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80B82E6C:
/* 80B82E6C  38 60 00 01 */	li r3, 1
/* 80B82E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B82E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B82E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B82E7C  7C 08 03 A6 */	mtlr r0
/* 80B82E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80B82E84  4E 80 00 20 */	blr 
