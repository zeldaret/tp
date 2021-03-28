lbl_8049D98C:
/* 8049D98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049D990  7C 08 02 A6 */	mflr r0
/* 8049D994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049D99C  93 C1 00 08 */	stw r30, 8(r1)
/* 8049D9A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8049D9A4  7C 9F 23 78 */	mr r31, r4
/* 8049D9A8  41 82 02 14 */	beq lbl_8049DBBC
/* 8049D9AC  38 7E 09 04 */	addi r3, r30, 0x904
/* 8049D9B0  4B E2 06 48 */	b deleteObject__14Z2SoundObjBaseFv
/* 8049D9B4  7F C3 F3 78 */	mr r3, r30
/* 8049D9B8  38 80 00 01 */	li r4, 1
/* 8049D9BC  4B FF C8 31 */	bl setLightChargeEffect__9daArrow_cFi
/* 8049D9C0  34 1E 0A 10 */	addic. r0, r30, 0xa10
/* 8049D9C4  41 82 00 44 */	beq lbl_8049DA08
/* 8049D9C8  3C 60 80 3B */	lis r3, __vt__22dPa_hermiteEcallBack_c@ha
/* 8049D9CC  38 03 83 A0 */	addi r0, r3, __vt__22dPa_hermiteEcallBack_c@l
/* 8049D9D0  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 8049D9D4  34 1E 0A 10 */	addic. r0, r30, 0xa10
/* 8049D9D8  41 82 00 30 */	beq lbl_8049DA08
/* 8049D9DC  3C 60 80 4A */	lis r3, __vt__18dPa_levelEcallBack@ha
/* 8049D9E0  38 03 DE F4 */	addi r0, r3, __vt__18dPa_levelEcallBack@l
/* 8049D9E4  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 8049D9E8  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 8049D9EC  81 9E 0A 10 */	lwz r12, 0xa10(r30)
/* 8049D9F0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8049D9F4  7D 89 03 A6 */	mtctr r12
/* 8049D9F8  4E 80 04 21 */	bctrl 
/* 8049D9FC  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 8049DA00  38 80 00 00 */	li r4, 0
/* 8049DA04  4B DE 0C A0 */	b __dt__18JPAEmitterCallBackFv
lbl_8049DA08:
/* 8049DA08  34 1E 09 04 */	addic. r0, r30, 0x904
/* 8049DA0C  41 82 00 1C */	beq lbl_8049DA28
/* 8049DA10  3C 60 80 3D */	lis r3, __vt__15Z2SoundObjArrow@ha
/* 8049DA14  38 03 AC F0 */	addi r0, r3, __vt__15Z2SoundObjArrow@l
/* 8049DA18  90 1E 09 14 */	stw r0, 0x914(r30)
/* 8049DA1C  38 7E 09 04 */	addi r3, r30, 0x904
/* 8049DA20  38 80 00 00 */	li r4, 0
/* 8049DA24  4B E2 0B D8 */	b __dt__21Z2DopplerSoundObjBaseFv
lbl_8049DA28:
/* 8049DA28  34 1E 07 CC */	addic. r0, r30, 0x7cc
/* 8049DA2C  41 82 00 84 */	beq lbl_8049DAB0
/* 8049DA30  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8049DA34  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8049DA38  90 7E 08 08 */	stw r3, 0x808(r30)
/* 8049DA3C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8049DA40  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 8049DA44  38 03 00 84 */	addi r0, r3, 0x84
/* 8049DA48  90 1E 09 00 */	stw r0, 0x900(r30)
/* 8049DA4C  34 1E 08 D0 */	addic. r0, r30, 0x8d0
/* 8049DA50  41 82 00 54 */	beq lbl_8049DAA4
/* 8049DA54  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8049DA58  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8049DA5C  90 7E 08 EC */	stw r3, 0x8ec(r30)
/* 8049DA60  38 03 00 58 */	addi r0, r3, 0x58
/* 8049DA64  90 1E 09 00 */	stw r0, 0x900(r30)
/* 8049DA68  34 1E 08 F0 */	addic. r0, r30, 0x8f0
/* 8049DA6C  41 82 00 10 */	beq lbl_8049DA7C
/* 8049DA70  3C 60 80 4A */	lis r3, __vt__8cM3dGSph@ha
/* 8049DA74  38 03 DF 34 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8049DA78  90 1E 09 00 */	stw r0, 0x900(r30)
lbl_8049DA7C:
/* 8049DA7C  34 1E 08 D0 */	addic. r0, r30, 0x8d0
/* 8049DA80  41 82 00 24 */	beq lbl_8049DAA4
/* 8049DA84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8049DA88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8049DA8C  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 8049DA90  34 1E 08 D0 */	addic. r0, r30, 0x8d0
/* 8049DA94  41 82 00 10 */	beq lbl_8049DAA4
/* 8049DA98  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 8049DA9C  38 03 DF 40 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8049DAA0  90 1E 08 E8 */	stw r0, 0x8e8(r30)
lbl_8049DAA4:
/* 8049DAA4  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 8049DAA8  38 80 00 00 */	li r4, 0
/* 8049DAAC  4B BE 66 38 */	b __dt__12dCcD_GObjInfFv
lbl_8049DAB0:
/* 8049DAB0  34 1E 06 88 */	addic. r0, r30, 0x688
/* 8049DAB4  41 82 00 7C */	beq lbl_8049DB30
/* 8049DAB8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 8049DABC  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 8049DAC0  90 7E 06 C4 */	stw r3, 0x6c4(r30)
/* 8049DAC4  38 03 00 2C */	addi r0, r3, 0x2c
/* 8049DAC8  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 8049DACC  38 03 00 84 */	addi r0, r3, 0x84
/* 8049DAD0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 8049DAD4  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 8049DAD8  41 82 00 4C */	beq lbl_8049DB24
/* 8049DADC  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 8049DAE0  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 8049DAE4  90 7E 07 A8 */	stw r3, 0x7a8(r30)
/* 8049DAE8  38 03 00 58 */	addi r0, r3, 0x58
/* 8049DAEC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 8049DAF0  38 7E 07 AC */	addi r3, r30, 0x7ac
/* 8049DAF4  38 80 00 00 */	li r4, 0
/* 8049DAF8  4B DD 14 AC */	b __dt__8cM3dGCpsFv
/* 8049DAFC  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 8049DB00  41 82 00 24 */	beq lbl_8049DB24
/* 8049DB04  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8049DB08  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8049DB0C  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 8049DB10  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 8049DB14  41 82 00 10 */	beq lbl_8049DB24
/* 8049DB18  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 8049DB1C  38 03 DF 40 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8049DB20  90 1E 07 A4 */	stw r0, 0x7a4(r30)
lbl_8049DB24:
/* 8049DB24  38 7E 06 88 */	addi r3, r30, 0x688
/* 8049DB28  38 80 00 00 */	li r4, 0
/* 8049DB2C  4B BE 65 B8 */	b __dt__12dCcD_GObjInfFv
lbl_8049DB30:
/* 8049DB30  34 1E 06 4C */	addic. r0, r30, 0x64c
/* 8049DB34  41 82 00 54 */	beq lbl_8049DB88
/* 8049DB38  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8049DB3C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8049DB40  90 7E 06 64 */	stw r3, 0x664(r30)
/* 8049DB44  38 03 00 20 */	addi r0, r3, 0x20
/* 8049DB48  90 1E 06 68 */	stw r0, 0x668(r30)
/* 8049DB4C  34 1E 06 68 */	addic. r0, r30, 0x668
/* 8049DB50  41 82 00 24 */	beq lbl_8049DB74
/* 8049DB54  3C 60 80 4A */	lis r3, __vt__10dCcD_GStts@ha
/* 8049DB58  38 03 DE E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8049DB5C  90 1E 06 68 */	stw r0, 0x668(r30)
/* 8049DB60  34 1E 06 68 */	addic. r0, r30, 0x668
/* 8049DB64  41 82 00 10 */	beq lbl_8049DB74
/* 8049DB68  3C 60 80 4A */	lis r3, __vt__10cCcD_GStts@ha
/* 8049DB6C  38 03 DE DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8049DB70  90 1E 06 68 */	stw r0, 0x668(r30)
lbl_8049DB74:
/* 8049DB74  34 1E 06 4C */	addic. r0, r30, 0x64c
/* 8049DB78  41 82 00 10 */	beq lbl_8049DB88
/* 8049DB7C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8049DB80  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8049DB84  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_8049DB88:
/* 8049DB88  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 8049DB8C  38 80 FF FF */	li r4, -1
/* 8049DB90  4B BD A4 28 */	b __dt__14dBgS_ObjLinChkFv
/* 8049DB94  38 7E 05 6C */	addi r3, r30, 0x56c
/* 8049DB98  38 80 FF FF */	li r4, -1
/* 8049DB9C  4B BD A6 A4 */	b __dt__16dBgS_ArrowLinChkFv
/* 8049DBA0  7F C3 F3 78 */	mr r3, r30
/* 8049DBA4  38 80 00 00 */	li r4, 0
/* 8049DBA8  4B B7 B0 E4 */	b __dt__10fopAc_ac_cFv
/* 8049DBAC  7F E0 07 35 */	extsh. r0, r31
/* 8049DBB0  40 81 00 0C */	ble lbl_8049DBBC
/* 8049DBB4  7F C3 F3 78 */	mr r3, r30
/* 8049DBB8  4B E3 11 84 */	b __dl__FPv
lbl_8049DBBC:
/* 8049DBBC  7F C3 F3 78 */	mr r3, r30
/* 8049DBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049DBC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049DBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049DBCC  7C 08 03 A6 */	mtlr r0
/* 8049DBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8049DBD4  4E 80 00 20 */	blr 
