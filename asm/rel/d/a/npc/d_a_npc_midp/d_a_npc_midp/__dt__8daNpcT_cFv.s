lbl_80A72854:
/* 80A72854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72858  7C 08 02 A6 */	mflr r0
/* 80A7285C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A72864  93 C1 00 08 */	stw r30, 8(r1)
/* 80A72868  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A7286C  7C 9F 23 78 */	mr r31, r4
/* 80A72870  41 82 03 50 */	beq lbl_80A72BC0
/* 80A72874  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A72878  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A7287C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A72880  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A72884  41 82 00 1C */	beq lbl_80A728A0
/* 80A72888  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A7288C  3C 80 80 A7 */	lis r4, __dt__5csXyzFv@ha
/* 80A72890  38 84 2C 18 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A72894  38 A0 00 06 */	li r5, 6
/* 80A72898  38 C0 00 02 */	li r6, 2
/* 80A7289C  4B 8E F4 4C */	b __destroy_arr
lbl_80A728A0:
/* 80A728A0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A728A4  41 82 00 B4 */	beq lbl_80A72958
/* 80A728A8  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A728AC  38 03 3C 54 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A728B0  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A728B4  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A728B8  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A728BC  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A728C0  38 A0 00 0C */	li r5, 0xc
/* 80A728C4  38 C0 00 03 */	li r6, 3
/* 80A728C8  4B 8E F4 20 */	b __destroy_arr
/* 80A728CC  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A728D0  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A728D4  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A728D8  38 A0 00 0C */	li r5, 0xc
/* 80A728DC  38 C0 00 03 */	li r6, 3
/* 80A728E0  4B 8E F4 08 */	b __destroy_arr
/* 80A728E4  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A728E8  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A728EC  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A728F0  38 A0 00 0C */	li r5, 0xc
/* 80A728F4  38 C0 00 03 */	li r6, 3
/* 80A728F8  4B 8E F3 F0 */	b __destroy_arr
/* 80A728FC  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A72900  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A72904  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A72908  38 A0 00 0C */	li r5, 0xc
/* 80A7290C  38 C0 00 03 */	li r6, 3
/* 80A72910  4B 8E F3 D8 */	b __destroy_arr
/* 80A72914  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A72918  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A7291C  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A72920  38 A0 00 0C */	li r5, 0xc
/* 80A72924  38 C0 00 03 */	li r6, 3
/* 80A72928  4B 8E F3 C0 */	b __destroy_arr
/* 80A7292C  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A72930  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A72934  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A72938  38 A0 00 0C */	li r5, 0xc
/* 80A7293C  38 C0 00 03 */	li r6, 3
/* 80A72940  4B 8E F3 A8 */	b __destroy_arr
/* 80A72944  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A72948  41 82 00 10 */	beq lbl_80A72958
/* 80A7294C  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A72950  38 03 3C 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A72954  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A72958:
/* 80A72958  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A7295C  41 82 00 10 */	beq lbl_80A7296C
/* 80A72960  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A72964  38 03 3C 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A72968  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A7296C:
/* 80A7296C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A72970  41 82 00 10 */	beq lbl_80A72980
/* 80A72974  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A72978  38 03 3C 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A7297C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A72980:
/* 80A72980  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A72984  41 82 00 10 */	beq lbl_80A72994
/* 80A72988  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A7298C  38 03 3C 3C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A72990  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A72994:
/* 80A72994  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A72998  41 82 00 10 */	beq lbl_80A729A8
/* 80A7299C  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A729A0  38 03 3C 3C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A729A4  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A729A8:
/* 80A729A8  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A729AC  38 80 FF FF */	li r4, -1
/* 80A729B0  4B 60 53 2C */	b __dt__11dBgS_LinChkFv
/* 80A729B4  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A729B8  38 80 FF FF */	li r4, -1
/* 80A729BC  4B 60 4C 34 */	b __dt__11dBgS_GndChkFv
/* 80A729C0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A729C4  41 82 00 54 */	beq lbl_80A72A18
/* 80A729C8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A729CC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A729D0  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A729D4  38 03 00 20 */	addi r0, r3, 0x20
/* 80A729D8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A729DC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A729E0  41 82 00 24 */	beq lbl_80A72A04
/* 80A729E4  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A729E8  38 03 3C 30 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A729EC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A729F0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A729F4  41 82 00 10 */	beq lbl_80A72A04
/* 80A729F8  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A729FC  38 03 3C 24 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A72A00  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A72A04:
/* 80A72A04  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A72A08  41 82 00 10 */	beq lbl_80A72A18
/* 80A72A0C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A72A10  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A72A14  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A72A18:
/* 80A72A18  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A72A1C  38 80 FF FF */	li r4, -1
/* 80A72A20  4B 7D 75 28 */	b __dt__10dMsgFlow_cFv
/* 80A72A24  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A72A28  38 80 FF FF */	li r4, -1
/* 80A72A2C  4B 7F 52 68 */	b __dt__11cBgS_GndChkFv
/* 80A72A30  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A72A34  41 82 00 28 */	beq lbl_80A72A5C
/* 80A72A38  3C 60 80 A7 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A72A3C  38 03 3C 18 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A72A40  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A72A44  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A72A48  38 80 FF FF */	li r4, -1
/* 80A72A4C  4B 7F C4 CC */	b __dt__8cM3dGCirFv
/* 80A72A50  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A72A54  38 80 00 00 */	li r4, 0
/* 80A72A58  4B 7F 56 58 */	b __dt__13cBgS_PolyInfoFv
lbl_80A72A5C:
/* 80A72A5C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A72A60  41 82 00 54 */	beq lbl_80A72AB4
/* 80A72A64  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A72A68  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A72A6C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A72A70  38 03 00 20 */	addi r0, r3, 0x20
/* 80A72A74  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A72A78  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A72A7C  41 82 00 24 */	beq lbl_80A72AA0
/* 80A72A80  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A72A84  38 03 3C 30 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A72A88  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A72A8C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A72A90  41 82 00 10 */	beq lbl_80A72AA0
/* 80A72A94  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A72A98  38 03 3C 24 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A72A9C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A72AA0:
/* 80A72AA0  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A72AA4  41 82 00 10 */	beq lbl_80A72AB4
/* 80A72AA8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A72AAC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A72AB0  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A72AB4:
/* 80A72AB4  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A72AB8  41 82 00 2C */	beq lbl_80A72AE4
/* 80A72ABC  3C 60 80 A7 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A72AC0  38 63 3B F4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A72AC4  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A72AC8  38 03 00 0C */	addi r0, r3, 0xc
/* 80A72ACC  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A72AD0  38 03 00 18 */	addi r0, r3, 0x18
/* 80A72AD4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A72AD8  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A72ADC  38 80 00 00 */	li r4, 0
/* 80A72AE0  4B 60 34 B4 */	b __dt__9dBgS_AcchFv
lbl_80A72AE4:
/* 80A72AE4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A72AE8  41 82 00 20 */	beq lbl_80A72B08
/* 80A72AEC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A72AF0  41 82 00 18 */	beq lbl_80A72B08
/* 80A72AF4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A72AF8  41 82 00 10 */	beq lbl_80A72B08
/* 80A72AFC  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A72B00  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A72B04  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A72B08:
/* 80A72B08  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A72B0C  41 82 00 20 */	beq lbl_80A72B2C
/* 80A72B10  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A72B14  41 82 00 18 */	beq lbl_80A72B2C
/* 80A72B18  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A72B1C  41 82 00 10 */	beq lbl_80A72B2C
/* 80A72B20  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A72B24  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A72B28  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A72B2C:
/* 80A72B2C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A72B30  41 82 00 20 */	beq lbl_80A72B50
/* 80A72B34  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A72B38  41 82 00 18 */	beq lbl_80A72B50
/* 80A72B3C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A72B40  41 82 00 10 */	beq lbl_80A72B50
/* 80A72B44  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A72B48  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A72B4C  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A72B50:
/* 80A72B50  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A72B54  41 82 00 20 */	beq lbl_80A72B74
/* 80A72B58  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A72B5C  41 82 00 18 */	beq lbl_80A72B74
/* 80A72B60  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A72B64  41 82 00 10 */	beq lbl_80A72B74
/* 80A72B68  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A72B6C  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A72B70  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A72B74:
/* 80A72B74  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A72B78  41 82 00 20 */	beq lbl_80A72B98
/* 80A72B7C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A72B80  41 82 00 18 */	beq lbl_80A72B98
/* 80A72B84  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A72B88  41 82 00 10 */	beq lbl_80A72B98
/* 80A72B8C  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A72B90  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A72B94  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A72B98:
/* 80A72B98  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A72B9C  38 80 FF FF */	li r4, -1
/* 80A72BA0  4B 84 D8 80 */	b __dt__10Z2CreatureFv
/* 80A72BA4  7F C3 F3 78 */	mr r3, r30
/* 80A72BA8  38 80 00 00 */	li r4, 0
/* 80A72BAC  4B 5A 60 E0 */	b __dt__10fopAc_ac_cFv
/* 80A72BB0  7F E0 07 35 */	extsh. r0, r31
/* 80A72BB4  40 81 00 0C */	ble lbl_80A72BC0
/* 80A72BB8  7F C3 F3 78 */	mr r3, r30
/* 80A72BBC  4B 85 C1 80 */	b __dl__FPv
lbl_80A72BC0:
/* 80A72BC0  7F C3 F3 78 */	mr r3, r30
/* 80A72BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A72BC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A72BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72BD0  7C 08 03 A6 */	mtlr r0
/* 80A72BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72BD8  4E 80 00 20 */	blr 
