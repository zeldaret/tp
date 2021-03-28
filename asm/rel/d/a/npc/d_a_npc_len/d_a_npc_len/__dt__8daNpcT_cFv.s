lbl_80A67BA0:
/* 80A67BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67BA4  7C 08 02 A6 */	mflr r0
/* 80A67BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A67BB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A67BB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A67BB8  7C 9F 23 78 */	mr r31, r4
/* 80A67BBC  41 82 03 50 */	beq lbl_80A67F0C
/* 80A67BC0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A67BC4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A67BC8  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A67BCC  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A67BD0  41 82 00 1C */	beq lbl_80A67BEC
/* 80A67BD4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A67BD8  3C 80 80 A6 */	lis r4, __dt__5csXyzFv@ha
/* 80A67BDC  38 84 7F 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A67BE0  38 A0 00 06 */	li r5, 6
/* 80A67BE4  38 C0 00 02 */	li r6, 2
/* 80A67BE8  4B 8F A1 00 */	b __destroy_arr
lbl_80A67BEC:
/* 80A67BEC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A67BF0  41 82 00 B4 */	beq lbl_80A67CA4
/* 80A67BF4  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A67BF8  38 03 99 4C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A67BFC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A67C00  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A67C04  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A67C08  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A67C0C  38 A0 00 0C */	li r5, 0xc
/* 80A67C10  38 C0 00 03 */	li r6, 3
/* 80A67C14  4B 8F A0 D4 */	b __destroy_arr
/* 80A67C18  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A67C1C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A67C20  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A67C24  38 A0 00 0C */	li r5, 0xc
/* 80A67C28  38 C0 00 03 */	li r6, 3
/* 80A67C2C  4B 8F A0 BC */	b __destroy_arr
/* 80A67C30  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A67C34  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A67C38  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A67C3C  38 A0 00 0C */	li r5, 0xc
/* 80A67C40  38 C0 00 03 */	li r6, 3
/* 80A67C44  4B 8F A0 A4 */	b __destroy_arr
/* 80A67C48  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A67C4C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A67C50  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A67C54  38 A0 00 0C */	li r5, 0xc
/* 80A67C58  38 C0 00 03 */	li r6, 3
/* 80A67C5C  4B 8F A0 8C */	b __destroy_arr
/* 80A67C60  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A67C64  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A67C68  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A67C6C  38 A0 00 0C */	li r5, 0xc
/* 80A67C70  38 C0 00 03 */	li r6, 3
/* 80A67C74  4B 8F A0 74 */	b __destroy_arr
/* 80A67C78  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A67C7C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A67C80  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A67C84  38 A0 00 0C */	li r5, 0xc
/* 80A67C88  38 C0 00 03 */	li r6, 3
/* 80A67C8C  4B 8F A0 5C */	b __destroy_arr
/* 80A67C90  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A67C94  41 82 00 10 */	beq lbl_80A67CA4
/* 80A67C98  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A67C9C  38 03 99 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A67CA0  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A67CA4:
/* 80A67CA4  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A67CA8  41 82 00 10 */	beq lbl_80A67CB8
/* 80A67CAC  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A67CB0  38 03 99 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A67CB4  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A67CB8:
/* 80A67CB8  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A67CBC  41 82 00 10 */	beq lbl_80A67CCC
/* 80A67CC0  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A67CC4  38 03 99 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A67CC8  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A67CCC:
/* 80A67CCC  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A67CD0  41 82 00 10 */	beq lbl_80A67CE0
/* 80A67CD4  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A67CD8  38 03 99 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A67CDC  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A67CE0:
/* 80A67CE0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A67CE4  41 82 00 10 */	beq lbl_80A67CF4
/* 80A67CE8  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A67CEC  38 03 99 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A67CF0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A67CF4:
/* 80A67CF4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A67CF8  38 80 FF FF */	li r4, -1
/* 80A67CFC  4B 60 FF E0 */	b __dt__11dBgS_LinChkFv
/* 80A67D00  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A67D04  38 80 FF FF */	li r4, -1
/* 80A67D08  4B 60 F8 E8 */	b __dt__11dBgS_GndChkFv
/* 80A67D0C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A67D10  41 82 00 54 */	beq lbl_80A67D64
/* 80A67D14  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A67D18  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A67D1C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A67D20  38 03 00 20 */	addi r0, r3, 0x20
/* 80A67D24  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A67D28  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A67D2C  41 82 00 24 */	beq lbl_80A67D50
/* 80A67D30  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A67D34  38 03 99 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A67D38  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A67D3C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A67D40  41 82 00 10 */	beq lbl_80A67D50
/* 80A67D44  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A67D48  38 03 99 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A67D4C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A67D50:
/* 80A67D50  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A67D54  41 82 00 10 */	beq lbl_80A67D64
/* 80A67D58  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A67D5C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A67D60  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A67D64:
/* 80A67D64  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A67D68  38 80 FF FF */	li r4, -1
/* 80A67D6C  4B 7E 21 DC */	b __dt__10dMsgFlow_cFv
/* 80A67D70  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A67D74  38 80 FF FF */	li r4, -1
/* 80A67D78  4B 7F FF 1C */	b __dt__11cBgS_GndChkFv
/* 80A67D7C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A67D80  41 82 00 28 */	beq lbl_80A67DA8
/* 80A67D84  3C 60 80 A7 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A67D88  38 03 99 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A67D8C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A67D90  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A67D94  38 80 FF FF */	li r4, -1
/* 80A67D98  4B 80 71 80 */	b __dt__8cM3dGCirFv
/* 80A67D9C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A67DA0  38 80 00 00 */	li r4, 0
/* 80A67DA4  4B 80 03 0C */	b __dt__13cBgS_PolyInfoFv
lbl_80A67DA8:
/* 80A67DA8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A67DAC  41 82 00 54 */	beq lbl_80A67E00
/* 80A67DB0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A67DB4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A67DB8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A67DBC  38 03 00 20 */	addi r0, r3, 0x20
/* 80A67DC0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A67DC4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A67DC8  41 82 00 24 */	beq lbl_80A67DEC
/* 80A67DCC  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A67DD0  38 03 99 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A67DD4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A67DD8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A67DDC  41 82 00 10 */	beq lbl_80A67DEC
/* 80A67DE0  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A67DE4  38 03 99 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A67DE8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A67DEC:
/* 80A67DEC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A67DF0  41 82 00 10 */	beq lbl_80A67E00
/* 80A67DF4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A67DF8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A67DFC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A67E00:
/* 80A67E00  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A67E04  41 82 00 2C */	beq lbl_80A67E30
/* 80A67E08  3C 60 80 A7 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A67E0C  38 63 98 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A67E10  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A67E14  38 03 00 0C */	addi r0, r3, 0xc
/* 80A67E18  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A67E1C  38 03 00 18 */	addi r0, r3, 0x18
/* 80A67E20  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A67E24  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A67E28  38 80 00 00 */	li r4, 0
/* 80A67E2C  4B 60 E1 68 */	b __dt__9dBgS_AcchFv
lbl_80A67E30:
/* 80A67E30  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A67E34  41 82 00 20 */	beq lbl_80A67E54
/* 80A67E38  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A67E3C  41 82 00 18 */	beq lbl_80A67E54
/* 80A67E40  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A67E44  41 82 00 10 */	beq lbl_80A67E54
/* 80A67E48  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A67E4C  38 03 98 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A67E50  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A67E54:
/* 80A67E54  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A67E58  41 82 00 20 */	beq lbl_80A67E78
/* 80A67E5C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A67E60  41 82 00 18 */	beq lbl_80A67E78
/* 80A67E64  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A67E68  41 82 00 10 */	beq lbl_80A67E78
/* 80A67E6C  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A67E70  38 03 98 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A67E74  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A67E78:
/* 80A67E78  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A67E7C  41 82 00 20 */	beq lbl_80A67E9C
/* 80A67E80  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A67E84  41 82 00 18 */	beq lbl_80A67E9C
/* 80A67E88  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A67E8C  41 82 00 10 */	beq lbl_80A67E9C
/* 80A67E90  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A67E94  38 03 98 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A67E98  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A67E9C:
/* 80A67E9C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A67EA0  41 82 00 20 */	beq lbl_80A67EC0
/* 80A67EA4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A67EA8  41 82 00 18 */	beq lbl_80A67EC0
/* 80A67EAC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A67EB0  41 82 00 10 */	beq lbl_80A67EC0
/* 80A67EB4  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A67EB8  38 03 98 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A67EBC  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A67EC0:
/* 80A67EC0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A67EC4  41 82 00 20 */	beq lbl_80A67EE4
/* 80A67EC8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A67ECC  41 82 00 18 */	beq lbl_80A67EE4
/* 80A67ED0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A67ED4  41 82 00 10 */	beq lbl_80A67EE4
/* 80A67ED8  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A67EDC  38 03 98 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A67EE0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A67EE4:
/* 80A67EE4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A67EE8  38 80 FF FF */	li r4, -1
/* 80A67EEC  4B 85 85 34 */	b __dt__10Z2CreatureFv
/* 80A67EF0  7F C3 F3 78 */	mr r3, r30
/* 80A67EF4  38 80 00 00 */	li r4, 0
/* 80A67EF8  4B 5B 0D 94 */	b __dt__10fopAc_ac_cFv
/* 80A67EFC  7F E0 07 35 */	extsh. r0, r31
/* 80A67F00  40 81 00 0C */	ble lbl_80A67F0C
/* 80A67F04  7F C3 F3 78 */	mr r3, r30
/* 80A67F08  4B 86 6E 34 */	b __dl__FPv
lbl_80A67F0C:
/* 80A67F0C  7F C3 F3 78 */	mr r3, r30
/* 80A67F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A67F14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A67F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67F1C  7C 08 03 A6 */	mtlr r0
/* 80A67F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67F24  4E 80 00 20 */	blr 
