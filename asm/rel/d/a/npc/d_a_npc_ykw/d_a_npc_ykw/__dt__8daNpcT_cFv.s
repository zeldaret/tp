lbl_80B66874:
/* 80B66874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66878  7C 08 02 A6 */	mflr r0
/* 80B6687C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B66884  93 C1 00 08 */	stw r30, 8(r1)
/* 80B66888  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6688C  7C 9F 23 78 */	mr r31, r4
/* 80B66890  41 82 03 50 */	beq lbl_80B66BE0
/* 80B66894  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B66898  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B6689C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B668A0  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B668A4  41 82 00 1C */	beq lbl_80B668C0
/* 80B668A8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B668AC  3C 80 80 B6 */	lis r4, __dt__5csXyzFv@ha
/* 80B668B0  38 84 6C 38 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B668B4  38 A0 00 06 */	li r5, 6
/* 80B668B8  38 C0 00 02 */	li r6, 2
/* 80B668BC  4B 7F B4 2C */	b __destroy_arr
lbl_80B668C0:
/* 80B668C0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B668C4  41 82 00 B4 */	beq lbl_80B66978
/* 80B668C8  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B668CC  38 03 8C 60 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B668D0  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B668D4  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B668D8  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B668DC  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B668E0  38 A0 00 0C */	li r5, 0xc
/* 80B668E4  38 C0 00 03 */	li r6, 3
/* 80B668E8  4B 7F B4 00 */	b __destroy_arr
/* 80B668EC  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B668F0  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B668F4  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B668F8  38 A0 00 0C */	li r5, 0xc
/* 80B668FC  38 C0 00 03 */	li r6, 3
/* 80B66900  4B 7F B3 E8 */	b __destroy_arr
/* 80B66904  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B66908  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B6690C  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B66910  38 A0 00 0C */	li r5, 0xc
/* 80B66914  38 C0 00 03 */	li r6, 3
/* 80B66918  4B 7F B3 D0 */	b __destroy_arr
/* 80B6691C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B66920  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B66924  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B66928  38 A0 00 0C */	li r5, 0xc
/* 80B6692C  38 C0 00 03 */	li r6, 3
/* 80B66930  4B 7F B3 B8 */	b __destroy_arr
/* 80B66934  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B66938  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B6693C  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B66940  38 A0 00 0C */	li r5, 0xc
/* 80B66944  38 C0 00 03 */	li r6, 3
/* 80B66948  4B 7F B3 A0 */	b __destroy_arr
/* 80B6694C  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B66950  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B66954  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B66958  38 A0 00 0C */	li r5, 0xc
/* 80B6695C  38 C0 00 03 */	li r6, 3
/* 80B66960  4B 7F B3 88 */	b __destroy_arr
/* 80B66964  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B66968  41 82 00 10 */	beq lbl_80B66978
/* 80B6696C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B66970  38 03 8C 54 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B66974  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B66978:
/* 80B66978  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B6697C  41 82 00 10 */	beq lbl_80B6698C
/* 80B66980  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B66984  38 03 8C 54 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B66988  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B6698C:
/* 80B6698C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B66990  41 82 00 10 */	beq lbl_80B669A0
/* 80B66994  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B66998  38 03 8C 54 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B6699C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B669A0:
/* 80B669A0  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B669A4  41 82 00 10 */	beq lbl_80B669B4
/* 80B669A8  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B669AC  38 03 8C 48 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B669B0  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B669B4:
/* 80B669B4  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B669B8  41 82 00 10 */	beq lbl_80B669C8
/* 80B669BC  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B669C0  38 03 8C 48 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B669C4  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B669C8:
/* 80B669C8  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B669CC  38 80 FF FF */	li r4, -1
/* 80B669D0  4B 51 13 0C */	b __dt__11dBgS_LinChkFv
/* 80B669D4  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B669D8  38 80 FF FF */	li r4, -1
/* 80B669DC  4B 51 0C 14 */	b __dt__11dBgS_GndChkFv
/* 80B669E0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B669E4  41 82 00 54 */	beq lbl_80B66A38
/* 80B669E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B669EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B669F0  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B669F4  38 03 00 20 */	addi r0, r3, 0x20
/* 80B669F8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B669FC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B66A00  41 82 00 24 */	beq lbl_80B66A24
/* 80B66A04  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B66A08  38 03 8C 3C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B66A0C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B66A10  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B66A14  41 82 00 10 */	beq lbl_80B66A24
/* 80B66A18  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B66A1C  38 03 8C 30 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B66A20  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B66A24:
/* 80B66A24  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B66A28  41 82 00 10 */	beq lbl_80B66A38
/* 80B66A2C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B66A30  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B66A34  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B66A38:
/* 80B66A38  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B66A3C  38 80 FF FF */	li r4, -1
/* 80B66A40  4B 6E 35 08 */	b __dt__10dMsgFlow_cFv
/* 80B66A44  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B66A48  38 80 FF FF */	li r4, -1
/* 80B66A4C  4B 70 12 48 */	b __dt__11cBgS_GndChkFv
/* 80B66A50  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B66A54  41 82 00 28 */	beq lbl_80B66A7C
/* 80B66A58  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B66A5C  38 03 8C 24 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B66A60  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B66A64  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B66A68  38 80 FF FF */	li r4, -1
/* 80B66A6C  4B 70 84 AC */	b __dt__8cM3dGCirFv
/* 80B66A70  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B66A74  38 80 00 00 */	li r4, 0
/* 80B66A78  4B 70 16 38 */	b __dt__13cBgS_PolyInfoFv
lbl_80B66A7C:
/* 80B66A7C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B66A80  41 82 00 54 */	beq lbl_80B66AD4
/* 80B66A84  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B66A88  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B66A8C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B66A90  38 03 00 20 */	addi r0, r3, 0x20
/* 80B66A94  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B66A98  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B66A9C  41 82 00 24 */	beq lbl_80B66AC0
/* 80B66AA0  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B66AA4  38 03 8C 3C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B66AA8  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B66AAC  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B66AB0  41 82 00 10 */	beq lbl_80B66AC0
/* 80B66AB4  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B66AB8  38 03 8C 30 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B66ABC  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B66AC0:
/* 80B66AC0  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B66AC4  41 82 00 10 */	beq lbl_80B66AD4
/* 80B66AC8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B66ACC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B66AD0  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B66AD4:
/* 80B66AD4  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B66AD8  41 82 00 2C */	beq lbl_80B66B04
/* 80B66ADC  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B66AE0  38 63 8C 00 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B66AE4  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B66AE8  38 03 00 0C */	addi r0, r3, 0xc
/* 80B66AEC  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B66AF0  38 03 00 18 */	addi r0, r3, 0x18
/* 80B66AF4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B66AF8  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B66AFC  38 80 00 00 */	li r4, 0
/* 80B66B00  4B 50 F4 94 */	b __dt__9dBgS_AcchFv
lbl_80B66B04:
/* 80B66B04  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B66B08  41 82 00 20 */	beq lbl_80B66B28
/* 80B66B0C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B66B10  41 82 00 18 */	beq lbl_80B66B28
/* 80B66B14  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B66B18  41 82 00 10 */	beq lbl_80B66B28
/* 80B66B1C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B66B20  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B66B24  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B66B28:
/* 80B66B28  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B66B2C  41 82 00 20 */	beq lbl_80B66B4C
/* 80B66B30  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B66B34  41 82 00 18 */	beq lbl_80B66B4C
/* 80B66B38  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B66B3C  41 82 00 10 */	beq lbl_80B66B4C
/* 80B66B40  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B66B44  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B66B48  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B66B4C:
/* 80B66B4C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B66B50  41 82 00 20 */	beq lbl_80B66B70
/* 80B66B54  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B66B58  41 82 00 18 */	beq lbl_80B66B70
/* 80B66B5C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B66B60  41 82 00 10 */	beq lbl_80B66B70
/* 80B66B64  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B66B68  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B66B6C  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B66B70:
/* 80B66B70  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B66B74  41 82 00 20 */	beq lbl_80B66B94
/* 80B66B78  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B66B7C  41 82 00 18 */	beq lbl_80B66B94
/* 80B66B80  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B66B84  41 82 00 10 */	beq lbl_80B66B94
/* 80B66B88  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B66B8C  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B66B90  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B66B94:
/* 80B66B94  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B66B98  41 82 00 20 */	beq lbl_80B66BB8
/* 80B66B9C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B66BA0  41 82 00 18 */	beq lbl_80B66BB8
/* 80B66BA4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B66BA8  41 82 00 10 */	beq lbl_80B66BB8
/* 80B66BAC  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B66BB0  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B66BB4  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B66BB8:
/* 80B66BB8  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B66BBC  38 80 FF FF */	li r4, -1
/* 80B66BC0  4B 75 98 60 */	b __dt__10Z2CreatureFv
/* 80B66BC4  7F C3 F3 78 */	mr r3, r30
/* 80B66BC8  38 80 00 00 */	li r4, 0
/* 80B66BCC  4B 4B 20 C0 */	b __dt__10fopAc_ac_cFv
/* 80B66BD0  7F E0 07 35 */	extsh. r0, r31
/* 80B66BD4  40 81 00 0C */	ble lbl_80B66BE0
/* 80B66BD8  7F C3 F3 78 */	mr r3, r30
/* 80B66BDC  4B 76 81 60 */	b __dl__FPv
lbl_80B66BE0:
/* 80B66BE0  7F C3 F3 78 */	mr r3, r30
/* 80B66BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66BE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B66BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66BF0  7C 08 03 A6 */	mtlr r0
/* 80B66BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66BF8  4E 80 00 20 */	blr 
