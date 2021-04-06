lbl_80A799D0:
/* 80A799D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A799D4  7C 08 02 A6 */	mflr r0
/* 80A799D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A799DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A799E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A799E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A799E8  7C 9F 23 78 */	mr r31, r4
/* 80A799EC  41 82 03 50 */	beq lbl_80A79D3C
/* 80A799F0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A799F4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A799F8  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A799FC  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A79A00  41 82 00 1C */	beq lbl_80A79A1C
/* 80A79A04  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A79A08  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A79EA8@ha */
/* 80A79A0C  38 84 9E A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A79EA8@l */
/* 80A79A10  38 A0 00 06 */	li r5, 6
/* 80A79A14  38 C0 00 02 */	li r6, 2
/* 80A79A18  4B 8E 82 D1 */	bl __destroy_arr
lbl_80A79A1C:
/* 80A79A1C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A79A20  41 82 00 B4 */	beq lbl_80A79AD4
/* 80A79A24  3C 60 80 A8 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A7BE94@ha */
/* 80A79A28  38 03 BE 94 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A7BE94@l */
/* 80A79A2C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A79A30  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A79A34  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A79A38  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A79A3C  38 A0 00 0C */	li r5, 0xc
/* 80A79A40  38 C0 00 03 */	li r6, 3
/* 80A79A44  4B 8E 82 A5 */	bl __destroy_arr
/* 80A79A48  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A79A4C  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A79A50  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A79A54  38 A0 00 0C */	li r5, 0xc
/* 80A79A58  38 C0 00 03 */	li r6, 3
/* 80A79A5C  4B 8E 82 8D */	bl __destroy_arr
/* 80A79A60  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A79A64  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A79A68  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A79A6C  38 A0 00 0C */	li r5, 0xc
/* 80A79A70  38 C0 00 03 */	li r6, 3
/* 80A79A74  4B 8E 82 75 */	bl __destroy_arr
/* 80A79A78  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A79A7C  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A79A80  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A79A84  38 A0 00 0C */	li r5, 0xc
/* 80A79A88  38 C0 00 03 */	li r6, 3
/* 80A79A8C  4B 8E 82 5D */	bl __destroy_arr
/* 80A79A90  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A79A94  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A79A98  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A79A9C  38 A0 00 0C */	li r5, 0xc
/* 80A79AA0  38 C0 00 03 */	li r6, 3
/* 80A79AA4  4B 8E 82 45 */	bl __destroy_arr
/* 80A79AA8  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A79AAC  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A79AB0  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A79AB4  38 A0 00 0C */	li r5, 0xc
/* 80A79AB8  38 C0 00 03 */	li r6, 3
/* 80A79ABC  4B 8E 82 2D */	bl __destroy_arr
/* 80A79AC0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A79AC4  41 82 00 10 */	beq lbl_80A79AD4
/* 80A79AC8  3C 60 80 A8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A79ACC  38 03 BE 88 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A79AD0  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A79AD4:
/* 80A79AD4  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A79AD8  41 82 00 10 */	beq lbl_80A79AE8
/* 80A79ADC  3C 60 80 A8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A79AE0  38 03 BE 88 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A79AE4  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A79AE8:
/* 80A79AE8  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A79AEC  41 82 00 10 */	beq lbl_80A79AFC
/* 80A79AF0  3C 60 80 A8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A79AF4  38 03 BE 88 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A79AF8  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A79AFC:
/* 80A79AFC  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A79B00  41 82 00 10 */	beq lbl_80A79B10
/* 80A79B04  3C 60 80 A8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A7BE7C@ha */
/* 80A79B08  38 03 BE 7C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A7BE7C@l */
/* 80A79B0C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A79B10:
/* 80A79B10  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A79B14  41 82 00 10 */	beq lbl_80A79B24
/* 80A79B18  3C 60 80 A8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A7BE7C@ha */
/* 80A79B1C  38 03 BE 7C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A7BE7C@l */
/* 80A79B20  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A79B24:
/* 80A79B24  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A79B28  38 80 FF FF */	li r4, -1
/* 80A79B2C  4B 5F E1 B1 */	bl __dt__11dBgS_LinChkFv
/* 80A79B30  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A79B34  38 80 FF FF */	li r4, -1
/* 80A79B38  4B 5F DA B9 */	bl __dt__11dBgS_GndChkFv
/* 80A79B3C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A79B40  41 82 00 54 */	beq lbl_80A79B94
/* 80A79B44  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A79B48  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A79B4C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A79B50  38 03 00 20 */	addi r0, r3, 0x20
/* 80A79B54  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A79B58  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A79B5C  41 82 00 24 */	beq lbl_80A79B80
/* 80A79B60  3C 60 80 A8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A7BE70@ha */
/* 80A79B64  38 03 BE 70 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A7BE70@l */
/* 80A79B68  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A79B6C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A79B70  41 82 00 10 */	beq lbl_80A79B80
/* 80A79B74  3C 60 80 A8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A7BE64@ha */
/* 80A79B78  38 03 BE 64 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A7BE64@l */
/* 80A79B7C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A79B80:
/* 80A79B80  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A79B84  41 82 00 10 */	beq lbl_80A79B94
/* 80A79B88  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A79B8C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A79B90  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A79B94:
/* 80A79B94  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A79B98  38 80 FF FF */	li r4, -1
/* 80A79B9C  4B 7D 03 AD */	bl __dt__10dMsgFlow_cFv
/* 80A79BA0  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A79BA4  38 80 FF FF */	li r4, -1
/* 80A79BA8  4B 7E E0 ED */	bl __dt__11cBgS_GndChkFv
/* 80A79BAC  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A79BB0  41 82 00 28 */	beq lbl_80A79BD8
/* 80A79BB4  3C 60 80 A8 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A7BE58@ha */
/* 80A79BB8  38 03 BE 58 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A7BE58@l */
/* 80A79BBC  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A79BC0  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A79BC4  38 80 FF FF */	li r4, -1
/* 80A79BC8  4B 7F 53 51 */	bl __dt__8cM3dGCirFv
/* 80A79BCC  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A79BD0  38 80 00 00 */	li r4, 0
/* 80A79BD4  4B 7E E4 DD */	bl __dt__13cBgS_PolyInfoFv
lbl_80A79BD8:
/* 80A79BD8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A79BDC  41 82 00 54 */	beq lbl_80A79C30
/* 80A79BE0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A79BE4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A79BE8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A79BEC  38 03 00 20 */	addi r0, r3, 0x20
/* 80A79BF0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A79BF4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A79BF8  41 82 00 24 */	beq lbl_80A79C1C
/* 80A79BFC  3C 60 80 A8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A7BE70@ha */
/* 80A79C00  38 03 BE 70 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A7BE70@l */
/* 80A79C04  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A79C08  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A79C0C  41 82 00 10 */	beq lbl_80A79C1C
/* 80A79C10  3C 60 80 A8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A7BE64@ha */
/* 80A79C14  38 03 BE 64 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A7BE64@l */
/* 80A79C18  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A79C1C:
/* 80A79C1C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A79C20  41 82 00 10 */	beq lbl_80A79C30
/* 80A79C24  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A79C28  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A79C2C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A79C30:
/* 80A79C30  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A79C34  41 82 00 2C */	beq lbl_80A79C60
/* 80A79C38  3C 60 80 A8 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A7BE34@ha */
/* 80A79C3C  38 63 BE 34 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A7BE34@l */
/* 80A79C40  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A79C44  38 03 00 0C */	addi r0, r3, 0xc
/* 80A79C48  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A79C4C  38 03 00 18 */	addi r0, r3, 0x18
/* 80A79C50  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A79C54  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A79C58  38 80 00 00 */	li r4, 0
/* 80A79C5C  4B 5F C3 39 */	bl __dt__9dBgS_AcchFv
lbl_80A79C60:
/* 80A79C60  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A79C64  41 82 00 20 */	beq lbl_80A79C84
/* 80A79C68  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A79C6C  41 82 00 18 */	beq lbl_80A79C84
/* 80A79C70  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A79C74  41 82 00 10 */	beq lbl_80A79C84
/* 80A79C78  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A79C7C  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A79C80  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A79C84:
/* 80A79C84  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A79C88  41 82 00 20 */	beq lbl_80A79CA8
/* 80A79C8C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A79C90  41 82 00 18 */	beq lbl_80A79CA8
/* 80A79C94  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A79C98  41 82 00 10 */	beq lbl_80A79CA8
/* 80A79C9C  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A79CA0  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A79CA4  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A79CA8:
/* 80A79CA8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A79CAC  41 82 00 20 */	beq lbl_80A79CCC
/* 80A79CB0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A79CB4  41 82 00 18 */	beq lbl_80A79CCC
/* 80A79CB8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A79CBC  41 82 00 10 */	beq lbl_80A79CCC
/* 80A79CC0  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A79CC4  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A79CC8  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A79CCC:
/* 80A79CCC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A79CD0  41 82 00 20 */	beq lbl_80A79CF0
/* 80A79CD4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A79CD8  41 82 00 18 */	beq lbl_80A79CF0
/* 80A79CDC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A79CE0  41 82 00 10 */	beq lbl_80A79CF0
/* 80A79CE4  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A79CE8  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A79CEC  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A79CF0:
/* 80A79CF0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A79CF4  41 82 00 20 */	beq lbl_80A79D14
/* 80A79CF8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A79CFC  41 82 00 18 */	beq lbl_80A79D14
/* 80A79D00  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A79D04  41 82 00 10 */	beq lbl_80A79D14
/* 80A79D08  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A79D0C  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A79D10  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A79D14:
/* 80A79D14  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A79D18  38 80 FF FF */	li r4, -1
/* 80A79D1C  4B 84 67 05 */	bl __dt__10Z2CreatureFv
/* 80A79D20  7F C3 F3 78 */	mr r3, r30
/* 80A79D24  38 80 00 00 */	li r4, 0
/* 80A79D28  4B 59 EF 65 */	bl __dt__10fopAc_ac_cFv
/* 80A79D2C  7F E0 07 35 */	extsh. r0, r31
/* 80A79D30  40 81 00 0C */	ble lbl_80A79D3C
/* 80A79D34  7F C3 F3 78 */	mr r3, r30
/* 80A79D38  4B 85 50 05 */	bl __dl__FPv
lbl_80A79D3C:
/* 80A79D3C  7F C3 F3 78 */	mr r3, r30
/* 80A79D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A79D44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A79D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79D4C  7C 08 03 A6 */	mtlr r0
/* 80A79D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80A79D54  4E 80 00 20 */	blr 
