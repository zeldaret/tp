lbl_80D31CC4:
/* 80D31CC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D31CC8  7C 08 02 A6 */	mflr r0
/* 80D31CCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D31CD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D31CD4  4B 63 04 F8 */	b _savegpr_25
/* 80D31CD8  7C 7D 1B 78 */	mr r29, r3
/* 80D31CDC  3C 80 80 D3 */	lis r4, mCcDObjInfo__11daWdStick_c@ha
/* 80D31CE0  3B E4 41 38 */	addi r31, r4, mCcDObjInfo__11daWdStick_c@l
/* 80D31CE4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D31CE8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D31CEC  40 82 01 40 */	bne lbl_80D31E2C
/* 80D31CF0  7F A0 EB 79 */	or. r0, r29, r29
/* 80D31CF4  41 82 01 2C */	beq lbl_80D31E20
/* 80D31CF8  7C 1E 03 78 */	mr r30, r0
/* 80D31CFC  4B 2E 6E 68 */	b __ct__10fopAc_ac_cFv
/* 80D31D00  3C 60 80 D3 */	lis r3, __vt__11daWdStick_c@ha
/* 80D31D04  38 03 43 E0 */	addi r0, r3, __vt__11daWdStick_c@l
/* 80D31D08  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D31D0C  3B 5E 05 A0 */	addi r26, r30, 0x5a0
/* 80D31D10  7F 43 D3 78 */	mr r3, r26
/* 80D31D14  4B 34 43 8C */	b __ct__9dBgS_AcchFv
/* 80D31D18  3C 60 80 D3 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D31D1C  38 63 43 BC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D31D20  90 7A 00 10 */	stw r3, 0x10(r26)
/* 80D31D24  38 03 00 0C */	addi r0, r3, 0xc
/* 80D31D28  90 1A 00 14 */	stw r0, 0x14(r26)
/* 80D31D2C  38 03 00 18 */	addi r0, r3, 0x18
/* 80D31D30  90 1A 00 24 */	stw r0, 0x24(r26)
/* 80D31D34  38 7A 00 14 */	addi r3, r26, 0x14
/* 80D31D38  4B 34 71 30 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D31D3C  38 7E 07 78 */	addi r3, r30, 0x778
/* 80D31D40  4B 34 41 6C */	b __ct__12dBgS_AcchCirFv
/* 80D31D44  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D31D48  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D31D4C  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80D31D50  38 7E 07 D4 */	addi r3, r30, 0x7d4
/* 80D31D54  4B 35 1A 0C */	b __ct__10dCcD_GSttsFv
/* 80D31D58  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D31D5C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D31D60  90 7E 07 D0 */	stw r3, 0x7d0(r30)
/* 80D31D64  38 03 00 20 */	addi r0, r3, 0x20
/* 80D31D68  90 1E 07 D4 */	stw r0, 0x7d4(r30)
/* 80D31D6C  3B 3E 07 F4 */	addi r25, r30, 0x7f4
/* 80D31D70  7F 23 CB 78 */	mr r3, r25
/* 80D31D74  4B 35 1C B4 */	b __ct__12dCcD_GObjInfFv
/* 80D31D78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D31D7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D31D80  90 19 01 20 */	stw r0, 0x120(r25)
/* 80D31D84  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D31D88  38 03 43 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D31D8C  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80D31D90  3C 60 80 D3 */	lis r3, __vt__8cM3dGSph@ha
/* 80D31D94  38 03 43 A4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80D31D98  90 19 01 34 */	stw r0, 0x134(r25)
/* 80D31D9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80D31DA0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80D31DA4  90 79 01 20 */	stw r3, 0x120(r25)
/* 80D31DA8  3B 83 00 58 */	addi r28, r3, 0x58
/* 80D31DAC  93 99 01 34 */	stw r28, 0x134(r25)
/* 80D31DB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80D31DB4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80D31DB8  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80D31DBC  3B 63 00 2C */	addi r27, r3, 0x2c
/* 80D31DC0  93 79 01 20 */	stw r27, 0x120(r25)
/* 80D31DC4  3B 43 00 84 */	addi r26, r3, 0x84
/* 80D31DC8  93 59 01 34 */	stw r26, 0x134(r25)
/* 80D31DCC  3B 3E 09 2C */	addi r25, r30, 0x92c
/* 80D31DD0  7F 23 CB 78 */	mr r3, r25
/* 80D31DD4  4B 35 1C 54 */	b __ct__12dCcD_GObjInfFv
/* 80D31DD8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D31DDC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D31DE0  90 19 01 20 */	stw r0, 0x120(r25)
/* 80D31DE4  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D31DE8  38 03 43 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D31DEC  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80D31DF0  3C 60 80 D3 */	lis r3, __vt__8cM3dGSph@ha
/* 80D31DF4  38 03 43 A4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80D31DF8  90 19 01 34 */	stw r0, 0x134(r25)
/* 80D31DFC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80D31E00  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80D31E04  90 19 01 20 */	stw r0, 0x120(r25)
/* 80D31E08  93 99 01 34 */	stw r28, 0x134(r25)
/* 80D31E0C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80D31E10  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80D31E14  90 19 00 3C */	stw r0, 0x3c(r25)
/* 80D31E18  93 79 01 20 */	stw r27, 0x120(r25)
/* 80D31E1C  93 59 01 34 */	stw r26, 0x134(r25)
lbl_80D31E20:
/* 80D31E20  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D31E24  60 00 00 08 */	ori r0, r0, 8
/* 80D31E28  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D31E2C:
/* 80D31E2C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80D31E30  3C 80 80 D3 */	lis r4, stringBase0@ha
/* 80D31E34  38 84 42 10 */	addi r4, r4, stringBase0@l
/* 80D31E38  4B 2F B0 84 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D31E3C  7C 7E 1B 78 */	mr r30, r3
/* 80D31E40  2C 1E 00 04 */	cmpwi r30, 4
/* 80D31E44  40 82 01 3C */	bne lbl_80D31F80
/* 80D31E48  7F A3 EB 78 */	mr r3, r29
/* 80D31E4C  3C 80 80 D3 */	lis r4, createHeapCallBack__11daWdStick_cFP10fopAc_ac_c@ha
/* 80D31E50  38 84 21 68 */	addi r4, r4, createHeapCallBack__11daWdStick_cFP10fopAc_ac_c@l
/* 80D31E54  38 A0 08 20 */	li r5, 0x820
/* 80D31E58  4B 2E 86 58 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D31E5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D31E60  40 82 00 0C */	bne lbl_80D31E6C
/* 80D31E64  38 60 00 05 */	li r3, 5
/* 80D31E68  48 00 01 1C */	b lbl_80D31F84
lbl_80D31E6C:
/* 80D31E6C  7F A3 EB 78 */	mr r3, r29
/* 80D31E70  4B FF FD 61 */	bl setBaseMtx__11daWdStick_cFv
/* 80D31E74  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80D31E78  38 03 00 24 */	addi r0, r3, 0x24
/* 80D31E7C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D31E80  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80D31E84  80 83 00 04 */	lwz r4, 4(r3)
/* 80D31E88  7F A3 EB 78 */	mr r3, r29
/* 80D31E8C  4B 2E 86 EC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D31E90  7F A3 EB 78 */	mr r3, r29
/* 80D31E94  48 00 03 01 */	bl lightInit__11daWdStick_cFv
/* 80D31E98  38 00 00 00 */	li r0, 0
/* 80D31E9C  98 1D 0A AC */	stb r0, 0xaac(r29)
/* 80D31EA0  98 1D 0A AD */	stb r0, 0xaad(r29)
/* 80D31EA4  B0 1D 0A AE */	sth r0, 0xaae(r29)
/* 80D31EA8  B0 1D 0A B0 */	sth r0, 0xab0(r29)
/* 80D31EAC  7F A3 EB 78 */	mr r3, r29
/* 80D31EB0  48 00 02 E9 */	bl setLight__11daWdStick_cFv
/* 80D31EB4  38 7D 07 78 */	addi r3, r29, 0x778
/* 80D31EB8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D31EBC  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80D31EC0  4B 34 40 98 */	b SetWall__12dBgS_AcchCirFff
/* 80D31EC4  38 00 00 00 */	li r0, 0
/* 80D31EC8  90 01 00 08 */	stw r0, 8(r1)
/* 80D31ECC  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80D31ED0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D31ED4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D31ED8  7F A6 EB 78 */	mr r6, r29
/* 80D31EDC  38 E0 00 01 */	li r7, 1
/* 80D31EE0  39 1D 07 78 */	addi r8, r29, 0x778
/* 80D31EE4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D31EE8  39 40 00 00 */	li r10, 0
/* 80D31EEC  4B 34 43 5C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D31EF0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80D31EF4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80D31EF8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80D31EFC  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 80D31F00  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80D31F04  90 1D 05 24 */	stw r0, 0x524(r29)
/* 80D31F08  38 7D 07 B8 */	addi r3, r29, 0x7b8
/* 80D31F0C  38 80 00 0A */	li r4, 0xa
/* 80D31F10  38 A0 00 FF */	li r5, 0xff
/* 80D31F14  7F A6 EB 78 */	mr r6, r29
/* 80D31F18  4B 35 19 48 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D31F1C  38 7D 07 F4 */	addi r3, r29, 0x7f4
/* 80D31F20  3C 80 80 D3 */	lis r4, mCcDSph__11daWdStick_c@ha
/* 80D31F24  38 84 42 3C */	addi r4, r4, mCcDSph__11daWdStick_c@l
/* 80D31F28  4B 35 2B 0C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D31F2C  38 1D 07 B8 */	addi r0, r29, 0x7b8
/* 80D31F30  90 1D 08 38 */	stw r0, 0x838(r29)
/* 80D31F34  38 7D 09 2C */	addi r3, r29, 0x92c
/* 80D31F38  3C 80 80 D3 */	lis r4, mCcDSph__11daWdStick_c@ha
/* 80D31F3C  38 84 42 3C */	addi r4, r4, mCcDSph__11daWdStick_c@l
/* 80D31F40  4B 35 2A F4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D31F44  38 1D 07 B8 */	addi r0, r29, 0x7b8
/* 80D31F48  90 1D 09 70 */	stw r0, 0x970(r29)
/* 80D31F4C  88 1D 04 9A */	lbz r0, 0x49a(r29)
/* 80D31F50  60 00 00 30 */	ori r0, r0, 0x30
/* 80D31F54  98 1D 04 9A */	stb r0, 0x49a(r29)
/* 80D31F58  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80D31F5C  60 00 00 10 */	ori r0, r0, 0x10
/* 80D31F60  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80D31F64  38 00 00 3B */	li r0, 0x3b
/* 80D31F68  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80D31F6C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80D31F70  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 80D31F74  98 1D 05 79 */	stb r0, 0x579(r29)
/* 80D31F78  7F A3 EB 78 */	mr r3, r29
/* 80D31F7C  48 00 15 91 */	bl mode_init_wait__11daWdStick_cFv
lbl_80D31F80:
/* 80D31F80  7F C3 F3 78 */	mr r3, r30
lbl_80D31F84:
/* 80D31F84  39 61 00 30 */	addi r11, r1, 0x30
/* 80D31F88  4B 63 02 90 */	b _restgpr_25
/* 80D31F8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D31F90  7C 08 03 A6 */	mtlr r0
/* 80D31F94  38 21 00 30 */	addi r1, r1, 0x30
/* 80D31F98  4E 80 00 20 */	blr 
