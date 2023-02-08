lbl_80B73A90:
/* 80B73A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73A94  7C 08 02 A6 */	mflr r0
/* 80B73A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B73A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B73AA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B73AA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B73AA8  7C 9F 23 78 */	mr r31, r4
/* 80B73AAC  41 82 03 50 */	beq lbl_80B73DFC
/* 80B73AB0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B73AB4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B73AB8  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B73ABC  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B73AC0  41 82 00 1C */	beq lbl_80B73ADC
/* 80B73AC4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B73AC8  3C 80 80 B7 */	lis r4, __dt__5csXyzFv@ha /* 0x80B73E54@ha */
/* 80B73ACC  38 84 3E 54 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B73E54@l */
/* 80B73AD0  38 A0 00 06 */	li r5, 6
/* 80B73AD4  38 C0 00 02 */	li r6, 2
/* 80B73AD8  4B 7E E2 11 */	bl __destroy_arr
lbl_80B73ADC:
/* 80B73ADC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B73AE0  41 82 00 B4 */	beq lbl_80B73B94
/* 80B73AE4  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B74F24@ha */
/* 80B73AE8  38 03 4F 24 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B74F24@l */
/* 80B73AEC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B73AF0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B73AF4  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B73E18@ha */
/* 80B73AF8  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B73E18@l */
/* 80B73AFC  38 A0 00 0C */	li r5, 0xc
/* 80B73B00  38 C0 00 03 */	li r6, 3
/* 80B73B04  4B 7E E1 E5 */	bl __destroy_arr
/* 80B73B08  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B73B0C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B73E18@ha */
/* 80B73B10  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B73E18@l */
/* 80B73B14  38 A0 00 0C */	li r5, 0xc
/* 80B73B18  38 C0 00 03 */	li r6, 3
/* 80B73B1C  4B 7E E1 CD */	bl __destroy_arr
/* 80B73B20  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B73B24  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B73E18@ha */
/* 80B73B28  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B73E18@l */
/* 80B73B2C  38 A0 00 0C */	li r5, 0xc
/* 80B73B30  38 C0 00 03 */	li r6, 3
/* 80B73B34  4B 7E E1 B5 */	bl __destroy_arr
/* 80B73B38  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B73B3C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B73E18@ha */
/* 80B73B40  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B73E18@l */
/* 80B73B44  38 A0 00 0C */	li r5, 0xc
/* 80B73B48  38 C0 00 03 */	li r6, 3
/* 80B73B4C  4B 7E E1 9D */	bl __destroy_arr
/* 80B73B50  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B73B54  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B73E18@ha */
/* 80B73B58  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B73E18@l */
/* 80B73B5C  38 A0 00 0C */	li r5, 0xc
/* 80B73B60  38 C0 00 03 */	li r6, 3
/* 80B73B64  4B 7E E1 85 */	bl __destroy_arr
/* 80B73B68  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B73B6C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B73E18@ha */
/* 80B73B70  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B73E18@l */
/* 80B73B74  38 A0 00 0C */	li r5, 0xc
/* 80B73B78  38 C0 00 03 */	li r6, 3
/* 80B73B7C  4B 7E E1 6D */	bl __destroy_arr
/* 80B73B80  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B73B84  41 82 00 10 */	beq lbl_80B73B94
/* 80B73B88  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B74F18@ha */
/* 80B73B8C  38 03 4F 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B74F18@l */
/* 80B73B90  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B73B94:
/* 80B73B94  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B73B98  41 82 00 10 */	beq lbl_80B73BA8
/* 80B73B9C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B74F18@ha */
/* 80B73BA0  38 03 4F 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B74F18@l */
/* 80B73BA4  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B73BA8:
/* 80B73BA8  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B73BAC  41 82 00 10 */	beq lbl_80B73BBC
/* 80B73BB0  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B74F18@ha */
/* 80B73BB4  38 03 4F 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B74F18@l */
/* 80B73BB8  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B73BBC:
/* 80B73BBC  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B73BC0  41 82 00 10 */	beq lbl_80B73BD0
/* 80B73BC4  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B74F0C@ha */
/* 80B73BC8  38 03 4F 0C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B74F0C@l */
/* 80B73BCC  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B73BD0:
/* 80B73BD0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B73BD4  41 82 00 10 */	beq lbl_80B73BE4
/* 80B73BD8  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B74F0C@ha */
/* 80B73BDC  38 03 4F 0C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B74F0C@l */
/* 80B73BE0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B73BE4:
/* 80B73BE4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B73BE8  38 80 FF FF */	li r4, -1
/* 80B73BEC  4B 50 40 F1 */	bl __dt__11dBgS_LinChkFv
/* 80B73BF0  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B73BF4  38 80 FF FF */	li r4, -1
/* 80B73BF8  4B 50 39 F9 */	bl __dt__11dBgS_GndChkFv
/* 80B73BFC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B73C00  41 82 00 54 */	beq lbl_80B73C54
/* 80B73C04  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B73C08  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B73C0C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B73C10  38 03 00 20 */	addi r0, r3, 0x20
/* 80B73C14  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B73C18  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B73C1C  41 82 00 24 */	beq lbl_80B73C40
/* 80B73C20  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B74F00@ha */
/* 80B73C24  38 03 4F 00 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B74F00@l */
/* 80B73C28  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B73C2C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B73C30  41 82 00 10 */	beq lbl_80B73C40
/* 80B73C34  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B74EF4@ha */
/* 80B73C38  38 03 4E F4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B74EF4@l */
/* 80B73C3C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B73C40:
/* 80B73C40  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B73C44  41 82 00 10 */	beq lbl_80B73C54
/* 80B73C48  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B73C4C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B73C50  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B73C54:
/* 80B73C54  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B73C58  38 80 FF FF */	li r4, -1
/* 80B73C5C  4B 6D 62 ED */	bl __dt__10dMsgFlow_cFv
/* 80B73C60  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B73C64  38 80 FF FF */	li r4, -1
/* 80B73C68  4B 6F 40 2D */	bl __dt__11cBgS_GndChkFv
/* 80B73C6C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B73C70  41 82 00 28 */	beq lbl_80B73C98
/* 80B73C74  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B74EE8@ha */
/* 80B73C78  38 03 4E E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B74EE8@l */
/* 80B73C7C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B73C80  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B73C84  38 80 FF FF */	li r4, -1
/* 80B73C88  4B 6F B2 91 */	bl __dt__8cM3dGCirFv
/* 80B73C8C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B73C90  38 80 00 00 */	li r4, 0
/* 80B73C94  4B 6F 44 1D */	bl __dt__13cBgS_PolyInfoFv
lbl_80B73C98:
/* 80B73C98  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B73C9C  41 82 00 54 */	beq lbl_80B73CF0
/* 80B73CA0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B73CA4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B73CA8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B73CAC  38 03 00 20 */	addi r0, r3, 0x20
/* 80B73CB0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B73CB4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B73CB8  41 82 00 24 */	beq lbl_80B73CDC
/* 80B73CBC  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B74F00@ha */
/* 80B73CC0  38 03 4F 00 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B74F00@l */
/* 80B73CC4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B73CC8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B73CCC  41 82 00 10 */	beq lbl_80B73CDC
/* 80B73CD0  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B74EF4@ha */
/* 80B73CD4  38 03 4E F4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B74EF4@l */
/* 80B73CD8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B73CDC:
/* 80B73CDC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B73CE0  41 82 00 10 */	beq lbl_80B73CF0
/* 80B73CE4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B73CE8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B73CEC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B73CF0:
/* 80B73CF0  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B73CF4  41 82 00 2C */	beq lbl_80B73D20
/* 80B73CF8  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B74EC4@ha */
/* 80B73CFC  38 63 4E C4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B74EC4@l */
/* 80B73D00  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B73D04  38 03 00 0C */	addi r0, r3, 0xc
/* 80B73D08  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B73D0C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B73D10  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B73D14  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B73D18  38 80 00 00 */	li r4, 0
/* 80B73D1C  4B 50 22 79 */	bl __dt__9dBgS_AcchFv
lbl_80B73D20:
/* 80B73D20  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B73D24  41 82 00 20 */	beq lbl_80B73D44
/* 80B73D28  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B73D2C  41 82 00 18 */	beq lbl_80B73D44
/* 80B73D30  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B73D34  41 82 00 10 */	beq lbl_80B73D44
/* 80B73D38  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B74EB8@ha */
/* 80B73D3C  38 03 4E B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B74EB8@l */
/* 80B73D40  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B73D44:
/* 80B73D44  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B73D48  41 82 00 20 */	beq lbl_80B73D68
/* 80B73D4C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B73D50  41 82 00 18 */	beq lbl_80B73D68
/* 80B73D54  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B73D58  41 82 00 10 */	beq lbl_80B73D68
/* 80B73D5C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B74EB8@ha */
/* 80B73D60  38 03 4E B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B74EB8@l */
/* 80B73D64  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B73D68:
/* 80B73D68  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B73D6C  41 82 00 20 */	beq lbl_80B73D8C
/* 80B73D70  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B73D74  41 82 00 18 */	beq lbl_80B73D8C
/* 80B73D78  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B73D7C  41 82 00 10 */	beq lbl_80B73D8C
/* 80B73D80  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B74EB8@ha */
/* 80B73D84  38 03 4E B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B74EB8@l */
/* 80B73D88  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B73D8C:
/* 80B73D8C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B73D90  41 82 00 20 */	beq lbl_80B73DB0
/* 80B73D94  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B73D98  41 82 00 18 */	beq lbl_80B73DB0
/* 80B73D9C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B73DA0  41 82 00 10 */	beq lbl_80B73DB0
/* 80B73DA4  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B74EB8@ha */
/* 80B73DA8  38 03 4E B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B74EB8@l */
/* 80B73DAC  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B73DB0:
/* 80B73DB0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B73DB4  41 82 00 20 */	beq lbl_80B73DD4
/* 80B73DB8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B73DBC  41 82 00 18 */	beq lbl_80B73DD4
/* 80B73DC0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B73DC4  41 82 00 10 */	beq lbl_80B73DD4
/* 80B73DC8  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B74EB8@ha */
/* 80B73DCC  38 03 4E B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B74EB8@l */
/* 80B73DD0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B73DD4:
/* 80B73DD4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B73DD8  38 80 FF FF */	li r4, -1
/* 80B73DDC  4B 74 C6 45 */	bl __dt__10Z2CreatureFv
/* 80B73DE0  7F C3 F3 78 */	mr r3, r30
/* 80B73DE4  38 80 00 00 */	li r4, 0
/* 80B73DE8  4B 4A 4E A5 */	bl __dt__10fopAc_ac_cFv
/* 80B73DEC  7F E0 07 35 */	extsh. r0, r31
/* 80B73DF0  40 81 00 0C */	ble lbl_80B73DFC
/* 80B73DF4  7F C3 F3 78 */	mr r3, r30
/* 80B73DF8  4B 75 AF 45 */	bl __dl__FPv
lbl_80B73DFC:
/* 80B73DFC  7F C3 F3 78 */	mr r3, r30
/* 80B73E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B73E04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B73E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73E0C  7C 08 03 A6 */	mtlr r0
/* 80B73E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73E14  4E 80 00 20 */	blr 
