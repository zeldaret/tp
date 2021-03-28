lbl_80A21C14:
/* 80A21C14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A21C18  7C 08 02 A6 */	mflr r0
/* 80A21C1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A21C20  39 61 00 20 */	addi r11, r1, 0x20
/* 80A21C24  4B 94 05 AC */	b _savegpr_26
/* 80A21C28  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A21C2C  7C 9F 23 78 */	mr r31, r4
/* 80A21C30  41 82 01 D8 */	beq lbl_80A21E08
/* 80A21C34  3C 60 80 A2 */	lis r3, __vt__14daNpcKasiKyu_c@ha
/* 80A21C38  38 03 5F 14 */	addi r0, r3, __vt__14daNpcKasiKyu_c@l
/* 80A21C3C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A21C40  3B 40 00 00 */	li r26, 0
/* 80A21C44  3B A0 00 00 */	li r29, 0
/* 80A21C48  3B 80 00 00 */	li r28, 0
/* 80A21C4C  3C 60 80 A2 */	lis r3, l_arcNames@ha
/* 80A21C50  3B 63 5C 10 */	addi r27, r3, l_arcNames@l
lbl_80A21C54:
/* 80A21C54  38 7C 14 14 */	addi r3, r28, 0x1414
/* 80A21C58  7C 7E 1A 14 */	add r3, r30, r3
/* 80A21C5C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A21C60  4B 60 B3 A8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A21C64  3B 5A 00 01 */	addi r26, r26, 1
/* 80A21C68  2C 1A 00 03 */	cmpwi r26, 3
/* 80A21C6C  3B BD 00 04 */	addi r29, r29, 4
/* 80A21C70  3B 9C 00 08 */	addi r28, r28, 8
/* 80A21C74  41 80 FF E0 */	blt lbl_80A21C54
/* 80A21C78  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A21C7C  28 00 00 00 */	cmplwi r0, 0
/* 80A21C80  41 82 00 0C */	beq lbl_80A21C8C
/* 80A21C84  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A21C88  4B 5E F6 88 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A21C8C:
/* 80A21C8C  34 1E 12 C8 */	addic. r0, r30, 0x12c8
/* 80A21C90  41 82 00 84 */	beq lbl_80A21D14
/* 80A21C94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A21C98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A21C9C  90 7E 13 04 */	stw r3, 0x1304(r30)
/* 80A21CA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A21CA4  90 1E 13 E8 */	stw r0, 0x13e8(r30)
/* 80A21CA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80A21CAC  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80A21CB0  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A21CB4  41 82 00 54 */	beq lbl_80A21D08
/* 80A21CB8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A21CBC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A21CC0  90 7E 13 E8 */	stw r3, 0x13e8(r30)
/* 80A21CC4  38 03 00 58 */	addi r0, r3, 0x58
/* 80A21CC8  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80A21CCC  34 1E 13 EC */	addic. r0, r30, 0x13ec
/* 80A21CD0  41 82 00 10 */	beq lbl_80A21CE0
/* 80A21CD4  3C 60 80 A2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A21CD8  38 03 5F BC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A21CDC  90 1E 14 00 */	stw r0, 0x1400(r30)
lbl_80A21CE0:
/* 80A21CE0  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A21CE4  41 82 00 24 */	beq lbl_80A21D08
/* 80A21CE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A21CEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A21CF0  90 1E 13 E8 */	stw r0, 0x13e8(r30)
/* 80A21CF4  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A21CF8  41 82 00 10 */	beq lbl_80A21D08
/* 80A21CFC  3C 60 80 A2 */	lis r3, __vt__8cM3dGAab@ha
/* 80A21D00  38 03 5F C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A21D04  90 1E 13 E4 */	stw r0, 0x13e4(r30)
lbl_80A21D08:
/* 80A21D08  38 7E 12 C8 */	addi r3, r30, 0x12c8
/* 80A21D0C  38 80 00 00 */	li r4, 0
/* 80A21D10  4B 66 23 D4 */	b __dt__12dCcD_GObjInfFv
lbl_80A21D14:
/* 80A21D14  34 1E 0C 94 */	addic. r0, r30, 0xc94
/* 80A21D18  41 82 00 24 */	beq lbl_80A21D3C
/* 80A21D1C  3C 60 80 A2 */	lis r3, __vt__13daNpcF_Path_c@ha
/* 80A21D20  38 03 5F E0 */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 80A21D24  90 1E 12 C0 */	stw r0, 0x12c0(r30)
/* 80A21D28  34 1E 0C B4 */	addic. r0, r30, 0xcb4
/* 80A21D2C  41 82 00 10 */	beq lbl_80A21D3C
/* 80A21D30  3C 60 80 A2 */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 80A21D34  38 03 5F D4 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 80A21D38  90 1E 12 BC */	stw r0, 0x12bc(r30)
lbl_80A21D3C:
/* 80A21D3C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A21D40  3C 80 80 A2 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A21D44  38 84 4F E0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A21D48  38 A0 00 08 */	li r5, 8
/* 80A21D4C  38 C0 00 01 */	li r6, 1
/* 80A21D50  4B 93 FF 98 */	b __destroy_arr
/* 80A21D54  34 1E 0B F0 */	addic. r0, r30, 0xbf0
/* 80A21D58  41 82 00 88 */	beq lbl_80A21DE0
/* 80A21D5C  3C 60 80 A2 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80A21D60  38 03 5F EC */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80A21D64  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 80A21D68  38 7E 0C 6C */	addi r3, r30, 0xc6c
/* 80A21D6C  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A21D70  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A21D74  38 A0 00 06 */	li r5, 6
/* 80A21D78  38 C0 00 04 */	li r6, 4
/* 80A21D7C  4B 93 FF 6C */	b __destroy_arr
/* 80A21D80  38 7E 0C 54 */	addi r3, r30, 0xc54
/* 80A21D84  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A21D88  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A21D8C  38 A0 00 06 */	li r5, 6
/* 80A21D90  38 C0 00 04 */	li r6, 4
/* 80A21D94  4B 93 FF 54 */	b __destroy_arr
/* 80A21D98  38 7E 0C 3C */	addi r3, r30, 0xc3c
/* 80A21D9C  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A21DA0  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A21DA4  38 A0 00 06 */	li r5, 6
/* 80A21DA8  38 C0 00 04 */	li r6, 4
/* 80A21DAC  4B 93 FF 3C */	b __destroy_arr
/* 80A21DB0  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 80A21DB4  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A21DB8  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A21DBC  38 A0 00 06 */	li r5, 6
/* 80A21DC0  38 C0 00 04 */	li r6, 4
/* 80A21DC4  4B 93 FF 24 */	b __destroy_arr
/* 80A21DC8  38 7E 0B F0 */	addi r3, r30, 0xbf0
/* 80A21DCC  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A21DD0  38 84 51 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A21DD4  38 A0 00 0C */	li r5, 0xc
/* 80A21DD8  38 C0 00 04 */	li r6, 4
/* 80A21DDC  4B 93 FF 0C */	b __destroy_arr
lbl_80A21DE0:
/* 80A21DE0  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A21DE4  38 80 FF FF */	li r4, -1
/* 80A21DE8  4B 89 EE 84 */	b __dt__17Z2CreatureCitizenFv
/* 80A21DEC  7F C3 F3 78 */	mr r3, r30
/* 80A21DF0  38 80 00 00 */	li r4, 0
/* 80A21DF4  48 00 33 C1 */	bl __dt__8daNpcF_cFv
/* 80A21DF8  7F E0 07 35 */	extsh. r0, r31
/* 80A21DFC  40 81 00 0C */	ble lbl_80A21E08
/* 80A21E00  7F C3 F3 78 */	mr r3, r30
/* 80A21E04  4B 8A CF 38 */	b __dl__FPv
lbl_80A21E08:
/* 80A21E08  7F C3 F3 78 */	mr r3, r30
/* 80A21E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A21E10  4B 94 04 0C */	b _restgpr_26
/* 80A21E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A21E18  7C 08 03 A6 */	mtlr r0
/* 80A21E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A21E20  4E 80 00 20 */	blr 
