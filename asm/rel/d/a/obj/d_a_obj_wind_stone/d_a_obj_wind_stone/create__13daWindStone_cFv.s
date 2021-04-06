lbl_80D37C20:
/* 80D37C20  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 80D37C24  7C 08 02 A6 */	mflr r0
/* 80D37C28  90 01 02 44 */	stw r0, 0x244(r1)
/* 80D37C2C  39 61 02 40 */	addi r11, r1, 0x240
/* 80D37C30  4B 62 A5 A1 */	bl _savegpr_26
/* 80D37C34  7C 7C 1B 78 */	mr r28, r3
/* 80D37C38  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D37C3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D37C40  40 82 00 1C */	bne lbl_80D37C5C
/* 80D37C44  28 1C 00 00 */	cmplwi r28, 0
/* 80D37C48  41 82 00 08 */	beq lbl_80D37C50
/* 80D37C4C  4B FF FD CD */	bl __ct__13daWindStone_cFv
lbl_80D37C50:
/* 80D37C50  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80D37C54  60 00 00 08 */	ori r0, r0, 8
/* 80D37C58  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80D37C5C:
/* 80D37C5C  7F 83 E3 78 */	mr r3, r28
/* 80D37C60  28 1C 00 00 */	cmplwi r28, 0
/* 80D37C64  41 82 00 08 */	beq lbl_80D37C6C
/* 80D37C68  38 7C 05 68 */	addi r3, r28, 0x568
lbl_80D37C6C:
/* 80D37C6C  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D38634@ha */
/* 80D37C70  38 84 86 34 */	addi r4, r4, l_arcName@l /* 0x80D38634@l */
/* 80D37C74  80 84 00 00 */	lwz r4, 0(r4)
/* 80D37C78  4B 2F 52 45 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D37C7C  7C 7D 1B 78 */	mr r29, r3
/* 80D37C80  2C 1D 00 04 */	cmpwi r29, 4
/* 80D37C84  40 82 01 8C */	bne lbl_80D37E10
/* 80D37C88  7F 83 E3 78 */	mr r3, r28
/* 80D37C8C  3C 80 80 D3 */	lis r4, daWindStone_c_createHeap__FP10fopAc_ac_c@ha /* 0x80D379F8@ha */
/* 80D37C90  38 84 79 F8 */	addi r4, r4, daWindStone_c_createHeap__FP10fopAc_ac_c@l /* 0x80D379F8@l */
/* 80D37C94  38 A0 10 00 */	li r5, 0x1000
/* 80D37C98  4B 2E 28 19 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D37C9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D37CA0  40 82 00 0C */	bne lbl_80D37CAC
/* 80D37CA4  38 60 00 05 */	li r3, 5
/* 80D37CA8  48 00 01 6C */	b lbl_80D37E14
lbl_80D37CAC:
/* 80D37CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D37CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D37CB4  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80D37CB8  7F 63 DB 78 */	mr r3, r27
/* 80D37CBC  80 9C 05 88 */	lwz r4, 0x588(r28)
/* 80D37CC0  7F 85 E3 78 */	mr r5, r28
/* 80D37CC4  4B 33 CD 45 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D37CC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D37CCC  41 82 00 0C */	beq lbl_80D37CD8
/* 80D37CD0  38 60 00 05 */	li r3, 5
/* 80D37CD4  48 00 01 40 */	b lbl_80D37E14
lbl_80D37CD8:
/* 80D37CD8  7F 83 E3 78 */	mr r3, r28
/* 80D37CDC  48 00 04 A5 */	bl init__13daWindStone_cFv
/* 80D37CE0  7F 83 E3 78 */	mr r3, r28
/* 80D37CE4  48 00 04 39 */	bl setModelMtx__13daWindStone_cFv
/* 80D37CE8  80 7C 05 84 */	lwz r3, 0x584(r28)
/* 80D37CEC  38 03 00 24 */	addi r0, r3, 0x24
/* 80D37CF0  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80D37CF4  38 61 00 10 */	addi r3, r1, 0x10
/* 80D37CF8  4B 33 E1 B5 */	bl __ct__12dBgS_AcchCirFv
/* 80D37CFC  3B 41 00 50 */	addi r26, r1, 0x50
/* 80D37D00  7F 43 D3 78 */	mr r3, r26
/* 80D37D04  4B 33 E3 9D */	bl __ct__9dBgS_AcchFv
/* 80D37D08  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D38694@ha */
/* 80D37D0C  38 63 86 94 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D38694@l */
/* 80D37D10  90 61 00 60 */	stw r3, 0x60(r1)
/* 80D37D14  3B E3 00 0C */	addi r31, r3, 0xc
/* 80D37D18  93 E1 00 64 */	stw r31, 0x64(r1)
/* 80D37D1C  3B C3 00 18 */	addi r30, r3, 0x18
/* 80D37D20  93 C1 00 74 */	stw r30, 0x74(r1)
/* 80D37D24  38 7A 00 14 */	addi r3, r26, 0x14
/* 80D37D28  4B 34 11 41 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D37D2C  38 61 00 10 */	addi r3, r1, 0x10
/* 80D37D30  3C 80 80 D4 */	lis r4, lit_4127@ha /* 0x80D38614@ha */
/* 80D37D34  C0 24 86 14 */	lfs f1, lit_4127@l(r4)  /* 0x80D38614@l */
/* 80D37D38  3C 80 80 D4 */	lis r4, lit_4128@ha /* 0x80D38618@ha */
/* 80D37D3C  C0 44 86 18 */	lfs f2, lit_4128@l(r4)  /* 0x80D38618@l */
/* 80D37D40  4B 33 E2 19 */	bl SetWall__12dBgS_AcchCirFff
/* 80D37D44  38 00 00 00 */	li r0, 0
/* 80D37D48  90 01 00 08 */	stw r0, 8(r1)
/* 80D37D4C  7F 43 D3 78 */	mr r3, r26
/* 80D37D50  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80D37D54  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80D37D58  7F 86 E3 78 */	mr r6, r28
/* 80D37D5C  38 E0 00 01 */	li r7, 1
/* 80D37D60  39 01 00 10 */	addi r8, r1, 0x10
/* 80D37D64  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80D37D68  39 40 00 00 */	li r10, 0
/* 80D37D6C  4B 33 E4 DD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D37D70  7F 43 D3 78 */	mr r3, r26
/* 80D37D74  7F 64 DB 78 */	mr r4, r27
/* 80D37D78  4B 33 ED 35 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D37D7C  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80D37D80  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80D37D84  A0 01 01 40 */	lhz r0, 0x140(r1)
/* 80D37D88  B0 1C 05 74 */	sth r0, 0x574(r28)
/* 80D37D8C  A0 01 01 42 */	lhz r0, 0x142(r1)
/* 80D37D90  B0 1C 05 76 */	sth r0, 0x576(r28)
/* 80D37D94  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80D37D98  90 1C 05 78 */	stw r0, 0x578(r28)
/* 80D37D9C  80 01 01 48 */	lwz r0, 0x148(r1)
/* 80D37DA0  90 1C 05 7C */	stw r0, 0x57c(r28)
/* 80D37DA4  88 1C 05 C4 */	lbz r0, 0x5c4(r28)
/* 80D37DA8  28 00 00 00 */	cmplwi r0, 0
/* 80D37DAC  40 82 00 20 */	bne lbl_80D37DCC
/* 80D37DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D37DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D37DB8  A8 1C 04 B4 */	lha r0, 0x4b4(r28)
/* 80D37DBC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D37DC0  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D37DC4  7C 05 07 74 */	extsb r5, r0
/* 80D37DC8  4B 2F D4 39 */	bl onSwitch__10dSv_info_cFii
lbl_80D37DCC:
/* 80D37DCC  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D38694@ha */
/* 80D37DD0  38 03 86 94 */	addi r0, r3, __vt__12dBgS_ObjAcch@l /* 0x80D38694@l */
/* 80D37DD4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80D37DD8  93 E1 00 64 */	stw r31, 0x64(r1)
/* 80D37DDC  93 C1 00 74 */	stw r30, 0x74(r1)
/* 80D37DE0  38 61 00 50 */	addi r3, r1, 0x50
/* 80D37DE4  38 80 00 00 */	li r4, 0
/* 80D37DE8  4B 33 E1 AD */	bl __dt__9dBgS_AcchFv
/* 80D37DEC  3C 60 80 D4 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80D38688@ha */
/* 80D37DF0  38 03 86 88 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80D38688@l */
/* 80D37DF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D37DF8  38 61 00 24 */	addi r3, r1, 0x24
/* 80D37DFC  38 80 FF FF */	li r4, -1
/* 80D37E00  4B 53 71 19 */	bl __dt__8cM3dGCirFv
/* 80D37E04  38 61 00 10 */	addi r3, r1, 0x10
/* 80D37E08  38 80 00 00 */	li r4, 0
/* 80D37E0C  4B 53 02 A5 */	bl __dt__13cBgS_PolyInfoFv
lbl_80D37E10:
/* 80D37E10  7F A3 EB 78 */	mr r3, r29
lbl_80D37E14:
/* 80D37E14  39 61 02 40 */	addi r11, r1, 0x240
/* 80D37E18  4B 62 A4 05 */	bl _restgpr_26
/* 80D37E1C  80 01 02 44 */	lwz r0, 0x244(r1)
/* 80D37E20  7C 08 03 A6 */	mtlr r0
/* 80D37E24  38 21 02 40 */	addi r1, r1, 0x240
/* 80D37E28  4E 80 00 20 */	blr 
