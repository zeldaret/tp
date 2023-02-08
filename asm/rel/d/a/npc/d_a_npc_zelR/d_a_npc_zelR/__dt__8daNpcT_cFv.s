lbl_80B70914:
/* 80B70914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70918  7C 08 02 A6 */	mflr r0
/* 80B7091C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B70924  93 C1 00 08 */	stw r30, 8(r1)
/* 80B70928  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B7092C  7C 9F 23 78 */	mr r31, r4
/* 80B70930  41 82 03 50 */	beq lbl_80B70C80
/* 80B70934  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B70938  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B7093C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B70940  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B70944  41 82 00 1C */	beq lbl_80B70960
/* 80B70948  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B7094C  3C 80 80 B7 */	lis r4, __dt__5csXyzFv@ha /* 0x80B70CD8@ha */
/* 80B70950  38 84 0C D8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B70CD8@l */
/* 80B70954  38 A0 00 06 */	li r5, 6
/* 80B70958  38 C0 00 02 */	li r6, 2
/* 80B7095C  4B 7F 13 8D */	bl __destroy_arr
lbl_80B70960:
/* 80B70960  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B70964  41 82 00 B4 */	beq lbl_80B70A18
/* 80B70968  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B71DA4@ha */
/* 80B7096C  38 03 1D A4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B71DA4@l */
/* 80B70970  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B70974  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B70978  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B7097C  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B70980  38 A0 00 0C */	li r5, 0xc
/* 80B70984  38 C0 00 03 */	li r6, 3
/* 80B70988  4B 7F 13 61 */	bl __destroy_arr
/* 80B7098C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B70990  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B70994  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B70998  38 A0 00 0C */	li r5, 0xc
/* 80B7099C  38 C0 00 03 */	li r6, 3
/* 80B709A0  4B 7F 13 49 */	bl __destroy_arr
/* 80B709A4  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B709A8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B709AC  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B709B0  38 A0 00 0C */	li r5, 0xc
/* 80B709B4  38 C0 00 03 */	li r6, 3
/* 80B709B8  4B 7F 13 31 */	bl __destroy_arr
/* 80B709BC  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B709C0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B709C4  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B709C8  38 A0 00 0C */	li r5, 0xc
/* 80B709CC  38 C0 00 03 */	li r6, 3
/* 80B709D0  4B 7F 13 19 */	bl __destroy_arr
/* 80B709D4  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B709D8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B709DC  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B709E0  38 A0 00 0C */	li r5, 0xc
/* 80B709E4  38 C0 00 03 */	li r6, 3
/* 80B709E8  4B 7F 13 01 */	bl __destroy_arr
/* 80B709EC  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B709F0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B709F4  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B709F8  38 A0 00 0C */	li r5, 0xc
/* 80B709FC  38 C0 00 03 */	li r6, 3
/* 80B70A00  4B 7F 12 E9 */	bl __destroy_arr
/* 80B70A04  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B70A08  41 82 00 10 */	beq lbl_80B70A18
/* 80B70A0C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B70A10  38 03 1D 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B70A14  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B70A18:
/* 80B70A18  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B70A1C  41 82 00 10 */	beq lbl_80B70A2C
/* 80B70A20  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B70A24  38 03 1D 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B70A28  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B70A2C:
/* 80B70A2C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B70A30  41 82 00 10 */	beq lbl_80B70A40
/* 80B70A34  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B70A38  38 03 1D 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B70A3C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B70A40:
/* 80B70A40  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B70A44  41 82 00 10 */	beq lbl_80B70A54
/* 80B70A48  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B71D8C@ha */
/* 80B70A4C  38 03 1D 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B71D8C@l */
/* 80B70A50  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B70A54:
/* 80B70A54  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B70A58  41 82 00 10 */	beq lbl_80B70A68
/* 80B70A5C  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B71D8C@ha */
/* 80B70A60  38 03 1D 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B71D8C@l */
/* 80B70A64  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B70A68:
/* 80B70A68  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B70A6C  38 80 FF FF */	li r4, -1
/* 80B70A70  4B 50 72 6D */	bl __dt__11dBgS_LinChkFv
/* 80B70A74  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B70A78  38 80 FF FF */	li r4, -1
/* 80B70A7C  4B 50 6B 75 */	bl __dt__11dBgS_GndChkFv
/* 80B70A80  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B70A84  41 82 00 54 */	beq lbl_80B70AD8
/* 80B70A88  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B70A8C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B70A90  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B70A94  38 03 00 20 */	addi r0, r3, 0x20
/* 80B70A98  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B70A9C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B70AA0  41 82 00 24 */	beq lbl_80B70AC4
/* 80B70AA4  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B71D80@ha */
/* 80B70AA8  38 03 1D 80 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B71D80@l */
/* 80B70AAC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B70AB0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B70AB4  41 82 00 10 */	beq lbl_80B70AC4
/* 80B70AB8  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B71D74@ha */
/* 80B70ABC  38 03 1D 74 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B71D74@l */
/* 80B70AC0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B70AC4:
/* 80B70AC4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B70AC8  41 82 00 10 */	beq lbl_80B70AD8
/* 80B70ACC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B70AD0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B70AD4  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B70AD8:
/* 80B70AD8  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B70ADC  38 80 FF FF */	li r4, -1
/* 80B70AE0  4B 6D 94 69 */	bl __dt__10dMsgFlow_cFv
/* 80B70AE4  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B70AE8  38 80 FF FF */	li r4, -1
/* 80B70AEC  4B 6F 71 A9 */	bl __dt__11cBgS_GndChkFv
/* 80B70AF0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B70AF4  41 82 00 28 */	beq lbl_80B70B1C
/* 80B70AF8  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B71D68@ha */
/* 80B70AFC  38 03 1D 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B71D68@l */
/* 80B70B00  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B70B04  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B70B08  38 80 FF FF */	li r4, -1
/* 80B70B0C  4B 6F E4 0D */	bl __dt__8cM3dGCirFv
/* 80B70B10  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B70B14  38 80 00 00 */	li r4, 0
/* 80B70B18  4B 6F 75 99 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B70B1C:
/* 80B70B1C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B70B20  41 82 00 54 */	beq lbl_80B70B74
/* 80B70B24  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B70B28  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B70B2C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B70B30  38 03 00 20 */	addi r0, r3, 0x20
/* 80B70B34  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B70B38  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B70B3C  41 82 00 24 */	beq lbl_80B70B60
/* 80B70B40  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B71D80@ha */
/* 80B70B44  38 03 1D 80 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B71D80@l */
/* 80B70B48  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B70B4C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B70B50  41 82 00 10 */	beq lbl_80B70B60
/* 80B70B54  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B71D74@ha */
/* 80B70B58  38 03 1D 74 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B71D74@l */
/* 80B70B5C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B70B60:
/* 80B70B60  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B70B64  41 82 00 10 */	beq lbl_80B70B74
/* 80B70B68  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B70B6C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B70B70  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B70B74:
/* 80B70B74  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B70B78  41 82 00 2C */	beq lbl_80B70BA4
/* 80B70B7C  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B71D44@ha */
/* 80B70B80  38 63 1D 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B71D44@l */
/* 80B70B84  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B70B88  38 03 00 0C */	addi r0, r3, 0xc
/* 80B70B8C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B70B90  38 03 00 18 */	addi r0, r3, 0x18
/* 80B70B94  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B70B98  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B70B9C  38 80 00 00 */	li r4, 0
/* 80B70BA0  4B 50 53 F5 */	bl __dt__9dBgS_AcchFv
lbl_80B70BA4:
/* 80B70BA4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B70BA8  41 82 00 20 */	beq lbl_80B70BC8
/* 80B70BAC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B70BB0  41 82 00 18 */	beq lbl_80B70BC8
/* 80B70BB4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B70BB8  41 82 00 10 */	beq lbl_80B70BC8
/* 80B70BBC  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70BC0  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70BC4  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B70BC8:
/* 80B70BC8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B70BCC  41 82 00 20 */	beq lbl_80B70BEC
/* 80B70BD0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B70BD4  41 82 00 18 */	beq lbl_80B70BEC
/* 80B70BD8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B70BDC  41 82 00 10 */	beq lbl_80B70BEC
/* 80B70BE0  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70BE4  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70BE8  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B70BEC:
/* 80B70BEC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B70BF0  41 82 00 20 */	beq lbl_80B70C10
/* 80B70BF4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B70BF8  41 82 00 18 */	beq lbl_80B70C10
/* 80B70BFC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B70C00  41 82 00 10 */	beq lbl_80B70C10
/* 80B70C04  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70C08  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70C0C  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B70C10:
/* 80B70C10  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B70C14  41 82 00 20 */	beq lbl_80B70C34
/* 80B70C18  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B70C1C  41 82 00 18 */	beq lbl_80B70C34
/* 80B70C20  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B70C24  41 82 00 10 */	beq lbl_80B70C34
/* 80B70C28  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70C2C  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70C30  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B70C34:
/* 80B70C34  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B70C38  41 82 00 20 */	beq lbl_80B70C58
/* 80B70C3C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B70C40  41 82 00 18 */	beq lbl_80B70C58
/* 80B70C44  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B70C48  41 82 00 10 */	beq lbl_80B70C58
/* 80B70C4C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70C50  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70C54  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B70C58:
/* 80B70C58  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B70C5C  38 80 FF FF */	li r4, -1
/* 80B70C60  4B 74 F7 C1 */	bl __dt__10Z2CreatureFv
/* 80B70C64  7F C3 F3 78 */	mr r3, r30
/* 80B70C68  38 80 00 00 */	li r4, 0
/* 80B70C6C  4B 4A 80 21 */	bl __dt__10fopAc_ac_cFv
/* 80B70C70  7F E0 07 35 */	extsh. r0, r31
/* 80B70C74  40 81 00 0C */	ble lbl_80B70C80
/* 80B70C78  7F C3 F3 78 */	mr r3, r30
/* 80B70C7C  4B 75 E0 C1 */	bl __dl__FPv
lbl_80B70C80:
/* 80B70C80  7F C3 F3 78 */	mr r3, r30
/* 80B70C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B70C88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B70C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70C90  7C 08 03 A6 */	mtlr r0
/* 80B70C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70C98  4E 80 00 20 */	blr 
