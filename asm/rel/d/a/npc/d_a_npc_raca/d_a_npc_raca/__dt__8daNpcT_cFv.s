lbl_80AB7C40:
/* 80AB7C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB7C44  7C 08 02 A6 */	mflr r0
/* 80AB7C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB7C50  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB7C54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB7C58  7C 9F 23 78 */	mr r31, r4
/* 80AB7C5C  41 82 03 50 */	beq lbl_80AB7FAC
/* 80AB7C60  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AB7C64  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AB7C68  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AB7C6C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AB7C70  41 82 00 1C */	beq lbl_80AB7C8C
/* 80AB7C74  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AB7C78  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha /* 0x80AB8004@ha */
/* 80AB7C7C  38 84 80 04 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB8004@l */
/* 80AB7C80  38 A0 00 06 */	li r5, 6
/* 80AB7C84  38 C0 00 02 */	li r6, 2
/* 80AB7C88  4B 8A A0 61 */	bl __destroy_arr
lbl_80AB7C8C:
/* 80AB7C8C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AB7C90  41 82 00 B4 */	beq lbl_80AB7D44
/* 80AB7C94  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AB9424@ha */
/* 80AB7C98  38 03 94 24 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AB9424@l */
/* 80AB7C9C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AB7CA0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AB7CA4  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB7CA8  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB7CAC  38 A0 00 0C */	li r5, 0xc
/* 80AB7CB0  38 C0 00 03 */	li r6, 3
/* 80AB7CB4  4B 8A A0 35 */	bl __destroy_arr
/* 80AB7CB8  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AB7CBC  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB7CC0  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB7CC4  38 A0 00 0C */	li r5, 0xc
/* 80AB7CC8  38 C0 00 03 */	li r6, 3
/* 80AB7CCC  4B 8A A0 1D */	bl __destroy_arr
/* 80AB7CD0  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AB7CD4  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB7CD8  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB7CDC  38 A0 00 0C */	li r5, 0xc
/* 80AB7CE0  38 C0 00 03 */	li r6, 3
/* 80AB7CE4  4B 8A A0 05 */	bl __destroy_arr
/* 80AB7CE8  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AB7CEC  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB7CF0  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB7CF4  38 A0 00 0C */	li r5, 0xc
/* 80AB7CF8  38 C0 00 03 */	li r6, 3
/* 80AB7CFC  4B 8A 9F ED */	bl __destroy_arr
/* 80AB7D00  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AB7D04  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB7D08  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB7D0C  38 A0 00 0C */	li r5, 0xc
/* 80AB7D10  38 C0 00 03 */	li r6, 3
/* 80AB7D14  4B 8A 9F D5 */	bl __destroy_arr
/* 80AB7D18  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AB7D1C  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB7D20  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB7D24  38 A0 00 0C */	li r5, 0xc
/* 80AB7D28  38 C0 00 03 */	li r6, 3
/* 80AB7D2C  4B 8A 9F BD */	bl __destroy_arr
/* 80AB7D30  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AB7D34  41 82 00 10 */	beq lbl_80AB7D44
/* 80AB7D38  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB9418@ha */
/* 80AB7D3C  38 03 94 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB9418@l */
/* 80AB7D40  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AB7D44:
/* 80AB7D44  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AB7D48  41 82 00 10 */	beq lbl_80AB7D58
/* 80AB7D4C  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB9418@ha */
/* 80AB7D50  38 03 94 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB9418@l */
/* 80AB7D54  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AB7D58:
/* 80AB7D58  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AB7D5C  41 82 00 10 */	beq lbl_80AB7D6C
/* 80AB7D60  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB9418@ha */
/* 80AB7D64  38 03 94 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB9418@l */
/* 80AB7D68  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AB7D6C:
/* 80AB7D6C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AB7D70  41 82 00 10 */	beq lbl_80AB7D80
/* 80AB7D74  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AB940C@ha */
/* 80AB7D78  38 03 94 0C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AB940C@l */
/* 80AB7D7C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AB7D80:
/* 80AB7D80  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AB7D84  41 82 00 10 */	beq lbl_80AB7D94
/* 80AB7D88  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AB940C@ha */
/* 80AB7D8C  38 03 94 0C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AB940C@l */
/* 80AB7D90  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AB7D94:
/* 80AB7D94  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AB7D98  38 80 FF FF */	li r4, -1
/* 80AB7D9C  4B 5B FF 41 */	bl __dt__11dBgS_LinChkFv
/* 80AB7DA0  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AB7DA4  38 80 FF FF */	li r4, -1
/* 80AB7DA8  4B 5B F8 49 */	bl __dt__11dBgS_GndChkFv
/* 80AB7DAC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AB7DB0  41 82 00 54 */	beq lbl_80AB7E04
/* 80AB7DB4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AB7DB8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AB7DBC  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AB7DC0  38 03 00 20 */	addi r0, r3, 0x20
/* 80AB7DC4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AB7DC8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AB7DCC  41 82 00 24 */	beq lbl_80AB7DF0
/* 80AB7DD0  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AB9400@ha */
/* 80AB7DD4  38 03 94 00 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AB9400@l */
/* 80AB7DD8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AB7DDC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AB7DE0  41 82 00 10 */	beq lbl_80AB7DF0
/* 80AB7DE4  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AB93F4@ha */
/* 80AB7DE8  38 03 93 F4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AB93F4@l */
/* 80AB7DEC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AB7DF0:
/* 80AB7DF0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AB7DF4  41 82 00 10 */	beq lbl_80AB7E04
/* 80AB7DF8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AB7DFC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AB7E00  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AB7E04:
/* 80AB7E04  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AB7E08  38 80 FF FF */	li r4, -1
/* 80AB7E0C  4B 79 21 3D */	bl __dt__10dMsgFlow_cFv
/* 80AB7E10  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AB7E14  38 80 FF FF */	li r4, -1
/* 80AB7E18  4B 7A FE 7D */	bl __dt__11cBgS_GndChkFv
/* 80AB7E1C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AB7E20  41 82 00 28 */	beq lbl_80AB7E48
/* 80AB7E24  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AB93E8@ha */
/* 80AB7E28  38 03 93 E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AB93E8@l */
/* 80AB7E2C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AB7E30  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AB7E34  38 80 FF FF */	li r4, -1
/* 80AB7E38  4B 7B 70 E1 */	bl __dt__8cM3dGCirFv
/* 80AB7E3C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AB7E40  38 80 00 00 */	li r4, 0
/* 80AB7E44  4B 7B 02 6D */	bl __dt__13cBgS_PolyInfoFv
lbl_80AB7E48:
/* 80AB7E48  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AB7E4C  41 82 00 54 */	beq lbl_80AB7EA0
/* 80AB7E50  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AB7E54  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AB7E58  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AB7E5C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AB7E60  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AB7E64  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AB7E68  41 82 00 24 */	beq lbl_80AB7E8C
/* 80AB7E6C  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AB9400@ha */
/* 80AB7E70  38 03 94 00 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AB9400@l */
/* 80AB7E74  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AB7E78  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AB7E7C  41 82 00 10 */	beq lbl_80AB7E8C
/* 80AB7E80  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AB93F4@ha */
/* 80AB7E84  38 03 93 F4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AB93F4@l */
/* 80AB7E88  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AB7E8C:
/* 80AB7E8C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AB7E90  41 82 00 10 */	beq lbl_80AB7EA0
/* 80AB7E94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AB7E98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AB7E9C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AB7EA0:
/* 80AB7EA0  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AB7EA4  41 82 00 2C */	beq lbl_80AB7ED0
/* 80AB7EA8  3C 60 80 AC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AB93C4@ha */
/* 80AB7EAC  38 63 93 C4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AB93C4@l */
/* 80AB7EB0  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AB7EB4  38 03 00 0C */	addi r0, r3, 0xc
/* 80AB7EB8  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AB7EBC  38 03 00 18 */	addi r0, r3, 0x18
/* 80AB7EC0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AB7EC4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AB7EC8  38 80 00 00 */	li r4, 0
/* 80AB7ECC  4B 5B E0 C9 */	bl __dt__9dBgS_AcchFv
lbl_80AB7ED0:
/* 80AB7ED0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AB7ED4  41 82 00 20 */	beq lbl_80AB7EF4
/* 80AB7ED8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AB7EDC  41 82 00 18 */	beq lbl_80AB7EF4
/* 80AB7EE0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AB7EE4  41 82 00 10 */	beq lbl_80AB7EF4
/* 80AB7EE8  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB7EEC  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB7EF0  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AB7EF4:
/* 80AB7EF4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AB7EF8  41 82 00 20 */	beq lbl_80AB7F18
/* 80AB7EFC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AB7F00  41 82 00 18 */	beq lbl_80AB7F18
/* 80AB7F04  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AB7F08  41 82 00 10 */	beq lbl_80AB7F18
/* 80AB7F0C  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB7F10  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB7F14  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AB7F18:
/* 80AB7F18  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AB7F1C  41 82 00 20 */	beq lbl_80AB7F3C
/* 80AB7F20  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AB7F24  41 82 00 18 */	beq lbl_80AB7F3C
/* 80AB7F28  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AB7F2C  41 82 00 10 */	beq lbl_80AB7F3C
/* 80AB7F30  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB7F34  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB7F38  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AB7F3C:
/* 80AB7F3C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AB7F40  41 82 00 20 */	beq lbl_80AB7F60
/* 80AB7F44  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AB7F48  41 82 00 18 */	beq lbl_80AB7F60
/* 80AB7F4C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AB7F50  41 82 00 10 */	beq lbl_80AB7F60
/* 80AB7F54  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB7F58  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB7F5C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AB7F60:
/* 80AB7F60  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AB7F64  41 82 00 20 */	beq lbl_80AB7F84
/* 80AB7F68  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AB7F6C  41 82 00 18 */	beq lbl_80AB7F84
/* 80AB7F70  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AB7F74  41 82 00 10 */	beq lbl_80AB7F84
/* 80AB7F78  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB7F7C  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB7F80  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AB7F84:
/* 80AB7F84  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AB7F88  38 80 FF FF */	li r4, -1
/* 80AB7F8C  4B 80 84 95 */	bl __dt__10Z2CreatureFv
/* 80AB7F90  7F C3 F3 78 */	mr r3, r30
/* 80AB7F94  38 80 00 00 */	li r4, 0
/* 80AB7F98  4B 56 0C F5 */	bl __dt__10fopAc_ac_cFv
/* 80AB7F9C  7F E0 07 35 */	extsh. r0, r31
/* 80AB7FA0  40 81 00 0C */	ble lbl_80AB7FAC
/* 80AB7FA4  7F C3 F3 78 */	mr r3, r30
/* 80AB7FA8  4B 81 6D 95 */	bl __dl__FPv
lbl_80AB7FAC:
/* 80AB7FAC  7F C3 F3 78 */	mr r3, r30
/* 80AB7FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB7FB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB7FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7FBC  7C 08 03 A6 */	mtlr r0
/* 80AB7FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB7FC4  4E 80 00 20 */	blr 
