lbl_80CD4848:
/* 80CD4848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD484C  7C 08 02 A6 */	mflr r0
/* 80CD4850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4858  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD485C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD4860  7C 9F 23 78 */	mr r31, r4
/* 80CD4864  41 82 03 50 */	beq lbl_80CD4BB4
/* 80CD4868  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80CD486C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80CD4870  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80CD4874  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80CD4878  41 82 00 1C */	beq lbl_80CD4894
/* 80CD487C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80CD4880  3C 80 80 CD */	lis r4, __dt__5csXyzFv@ha /* 0x80CD4C0C@ha */
/* 80CD4884  38 84 4C 0C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80CD4C0C@l */
/* 80CD4888  38 A0 00 06 */	li r5, 6
/* 80CD488C  38 C0 00 02 */	li r6, 2
/* 80CD4890  4B 68 D4 59 */	bl __destroy_arr
lbl_80CD4894:
/* 80CD4894  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80CD4898  41 82 00 B4 */	beq lbl_80CD494C
/* 80CD489C  3C 60 80 CD */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80CD67D8@ha */
/* 80CD48A0  38 03 67 D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80CD67D8@l */
/* 80CD48A4  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80CD48A8  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80CD48AC  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD48B0  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD48B4  38 A0 00 0C */	li r5, 0xc
/* 80CD48B8  38 C0 00 03 */	li r6, 3
/* 80CD48BC  4B 68 D4 2D */	bl __destroy_arr
/* 80CD48C0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80CD48C4  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD48C8  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD48CC  38 A0 00 0C */	li r5, 0xc
/* 80CD48D0  38 C0 00 03 */	li r6, 3
/* 80CD48D4  4B 68 D4 15 */	bl __destroy_arr
/* 80CD48D8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80CD48DC  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD48E0  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD48E4  38 A0 00 0C */	li r5, 0xc
/* 80CD48E8  38 C0 00 03 */	li r6, 3
/* 80CD48EC  4B 68 D3 FD */	bl __destroy_arr
/* 80CD48F0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80CD48F4  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD48F8  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD48FC  38 A0 00 0C */	li r5, 0xc
/* 80CD4900  38 C0 00 03 */	li r6, 3
/* 80CD4904  4B 68 D3 E5 */	bl __destroy_arr
/* 80CD4908  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80CD490C  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD4910  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD4914  38 A0 00 0C */	li r5, 0xc
/* 80CD4918  38 C0 00 03 */	li r6, 3
/* 80CD491C  4B 68 D3 CD */	bl __destroy_arr
/* 80CD4920  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80CD4924  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD4928  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD492C  38 A0 00 0C */	li r5, 0xc
/* 80CD4930  38 C0 00 03 */	li r6, 3
/* 80CD4934  4B 68 D3 B5 */	bl __destroy_arr
/* 80CD4938  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80CD493C  41 82 00 10 */	beq lbl_80CD494C
/* 80CD4940  3C 60 80 CD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80CD67CC@ha */
/* 80CD4944  38 03 67 CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80CD67CC@l */
/* 80CD4948  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80CD494C:
/* 80CD494C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80CD4950  41 82 00 10 */	beq lbl_80CD4960
/* 80CD4954  3C 60 80 CD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80CD67CC@ha */
/* 80CD4958  38 03 67 CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80CD67CC@l */
/* 80CD495C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80CD4960:
/* 80CD4960  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80CD4964  41 82 00 10 */	beq lbl_80CD4974
/* 80CD4968  3C 60 80 CD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80CD67CC@ha */
/* 80CD496C  38 03 67 CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80CD67CC@l */
/* 80CD4970  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80CD4974:
/* 80CD4974  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80CD4978  41 82 00 10 */	beq lbl_80CD4988
/* 80CD497C  3C 60 80 CD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80CD67C0@ha */
/* 80CD4980  38 03 67 C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80CD67C0@l */
/* 80CD4984  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80CD4988:
/* 80CD4988  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80CD498C  41 82 00 10 */	beq lbl_80CD499C
/* 80CD4990  3C 60 80 CD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80CD67C0@ha */
/* 80CD4994  38 03 67 C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80CD67C0@l */
/* 80CD4998  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80CD499C:
/* 80CD499C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80CD49A0  38 80 FF FF */	li r4, -1
/* 80CD49A4  4B 3A 33 39 */	bl __dt__11dBgS_LinChkFv
/* 80CD49A8  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80CD49AC  38 80 FF FF */	li r4, -1
/* 80CD49B0  4B 3A 2C 41 */	bl __dt__11dBgS_GndChkFv
/* 80CD49B4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80CD49B8  41 82 00 54 */	beq lbl_80CD4A0C
/* 80CD49BC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CD49C0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CD49C4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80CD49C8  38 03 00 20 */	addi r0, r3, 0x20
/* 80CD49CC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80CD49D0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80CD49D4  41 82 00 24 */	beq lbl_80CD49F8
/* 80CD49D8  3C 60 80 CD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CD67B4@ha */
/* 80CD49DC  38 03 67 B4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CD67B4@l */
/* 80CD49E0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80CD49E4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80CD49E8  41 82 00 10 */	beq lbl_80CD49F8
/* 80CD49EC  3C 60 80 CD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CD67A8@ha */
/* 80CD49F0  38 03 67 A8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CD67A8@l */
/* 80CD49F4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80CD49F8:
/* 80CD49F8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80CD49FC  41 82 00 10 */	beq lbl_80CD4A0C
/* 80CD4A00  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CD4A04  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CD4A08  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80CD4A0C:
/* 80CD4A0C  38 7E 09 74 */	addi r3, r30, 0x974
/* 80CD4A10  38 80 FF FF */	li r4, -1
/* 80CD4A14  4B 57 55 35 */	bl __dt__10dMsgFlow_cFv
/* 80CD4A18  38 7E 09 30 */	addi r3, r30, 0x930
/* 80CD4A1C  38 80 FF FF */	li r4, -1
/* 80CD4A20  4B 59 32 75 */	bl __dt__11cBgS_GndChkFv
/* 80CD4A24  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80CD4A28  41 82 00 28 */	beq lbl_80CD4A50
/* 80CD4A2C  3C 60 80 CD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CD679C@ha */
/* 80CD4A30  38 03 67 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CD679C@l */
/* 80CD4A34  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80CD4A38  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80CD4A3C  38 80 FF FF */	li r4, -1
/* 80CD4A40  4B 59 A4 D9 */	bl __dt__8cM3dGCirFv
/* 80CD4A44  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80CD4A48  38 80 00 00 */	li r4, 0
/* 80CD4A4C  4B 59 36 65 */	bl __dt__13cBgS_PolyInfoFv
lbl_80CD4A50:
/* 80CD4A50  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80CD4A54  41 82 00 54 */	beq lbl_80CD4AA8
/* 80CD4A58  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CD4A5C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CD4A60  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80CD4A64  38 03 00 20 */	addi r0, r3, 0x20
/* 80CD4A68  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80CD4A6C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80CD4A70  41 82 00 24 */	beq lbl_80CD4A94
/* 80CD4A74  3C 60 80 CD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CD67B4@ha */
/* 80CD4A78  38 03 67 B4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CD67B4@l */
/* 80CD4A7C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80CD4A80  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80CD4A84  41 82 00 10 */	beq lbl_80CD4A94
/* 80CD4A88  3C 60 80 CD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CD67A8@ha */
/* 80CD4A8C  38 03 67 A8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CD67A8@l */
/* 80CD4A90  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80CD4A94:
/* 80CD4A94  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80CD4A98  41 82 00 10 */	beq lbl_80CD4AA8
/* 80CD4A9C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CD4AA0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CD4AA4  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80CD4AA8:
/* 80CD4AA8  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80CD4AAC  41 82 00 2C */	beq lbl_80CD4AD8
/* 80CD4AB0  3C 60 80 CD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CD6778@ha */
/* 80CD4AB4  38 63 67 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CD6778@l */
/* 80CD4AB8  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80CD4ABC  38 03 00 0C */	addi r0, r3, 0xc
/* 80CD4AC0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80CD4AC4  38 03 00 18 */	addi r0, r3, 0x18
/* 80CD4AC8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80CD4ACC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80CD4AD0  38 80 00 00 */	li r4, 0
/* 80CD4AD4  4B 3A 14 C1 */	bl __dt__9dBgS_AcchFv
lbl_80CD4AD8:
/* 80CD4AD8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80CD4ADC  41 82 00 20 */	beq lbl_80CD4AFC
/* 80CD4AE0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80CD4AE4  41 82 00 18 */	beq lbl_80CD4AFC
/* 80CD4AE8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80CD4AEC  41 82 00 10 */	beq lbl_80CD4AFC
/* 80CD4AF0  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4AF4  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4AF8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80CD4AFC:
/* 80CD4AFC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80CD4B00  41 82 00 20 */	beq lbl_80CD4B20
/* 80CD4B04  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80CD4B08  41 82 00 18 */	beq lbl_80CD4B20
/* 80CD4B0C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80CD4B10  41 82 00 10 */	beq lbl_80CD4B20
/* 80CD4B14  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4B18  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4B1C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80CD4B20:
/* 80CD4B20  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80CD4B24  41 82 00 20 */	beq lbl_80CD4B44
/* 80CD4B28  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80CD4B2C  41 82 00 18 */	beq lbl_80CD4B44
/* 80CD4B30  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80CD4B34  41 82 00 10 */	beq lbl_80CD4B44
/* 80CD4B38  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4B3C  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4B40  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80CD4B44:
/* 80CD4B44  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80CD4B48  41 82 00 20 */	beq lbl_80CD4B68
/* 80CD4B4C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80CD4B50  41 82 00 18 */	beq lbl_80CD4B68
/* 80CD4B54  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80CD4B58  41 82 00 10 */	beq lbl_80CD4B68
/* 80CD4B5C  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4B60  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4B64  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80CD4B68:
/* 80CD4B68  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80CD4B6C  41 82 00 20 */	beq lbl_80CD4B8C
/* 80CD4B70  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80CD4B74  41 82 00 18 */	beq lbl_80CD4B8C
/* 80CD4B78  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80CD4B7C  41 82 00 10 */	beq lbl_80CD4B8C
/* 80CD4B80  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4B84  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4B88  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80CD4B8C:
/* 80CD4B8C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD4B90  38 80 FF FF */	li r4, -1
/* 80CD4B94  4B 5E B8 8D */	bl __dt__10Z2CreatureFv
/* 80CD4B98  7F C3 F3 78 */	mr r3, r30
/* 80CD4B9C  38 80 00 00 */	li r4, 0
/* 80CD4BA0  4B 34 40 ED */	bl __dt__10fopAc_ac_cFv
/* 80CD4BA4  7F E0 07 35 */	extsh. r0, r31
/* 80CD4BA8  40 81 00 0C */	ble lbl_80CD4BB4
/* 80CD4BAC  7F C3 F3 78 */	mr r3, r30
/* 80CD4BB0  4B 5F A1 8D */	bl __dl__FPv
lbl_80CD4BB4:
/* 80CD4BB4  7F C3 F3 78 */	mr r3, r30
/* 80CD4BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4BBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD4BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4BC4  7C 08 03 A6 */	mtlr r0
/* 80CD4BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4BCC  4E 80 00 20 */	blr 
