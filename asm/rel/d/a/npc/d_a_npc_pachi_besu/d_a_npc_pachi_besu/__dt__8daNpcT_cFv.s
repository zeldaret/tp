lbl_80A957B8:
/* 80A957B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A957BC  7C 08 02 A6 */	mflr r0
/* 80A957C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A957C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A957C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A957CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A957D0  7C 9F 23 78 */	mr r31, r4
/* 80A957D4  41 82 03 50 */	beq lbl_80A95B24
/* 80A957D8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A957DC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A957E0  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A957E4  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A957E8  41 82 00 1C */	beq lbl_80A95804
/* 80A957EC  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A957F0  3C 80 80 A9 */	lis r4, __dt__5csXyzFv@ha /* 0x80A95B7C@ha */
/* 80A957F4  38 84 5B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A95B7C@l */
/* 80A957F8  38 A0 00 06 */	li r5, 6
/* 80A957FC  38 C0 00 02 */	li r6, 2
/* 80A95800  4B 8C C4 E9 */	bl __destroy_arr
lbl_80A95804:
/* 80A95804  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A95808  41 82 00 B4 */	beq lbl_80A958BC
/* 80A9580C  3C 60 80 A9 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A979C8@ha */
/* 80A95810  38 03 79 C8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A979C8@l */
/* 80A95814  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A95818  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A9581C  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A95820  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A95824  38 A0 00 0C */	li r5, 0xc
/* 80A95828  38 C0 00 03 */	li r6, 3
/* 80A9582C  4B 8C C4 BD */	bl __destroy_arr
/* 80A95830  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A95834  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A95838  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A9583C  38 A0 00 0C */	li r5, 0xc
/* 80A95840  38 C0 00 03 */	li r6, 3
/* 80A95844  4B 8C C4 A5 */	bl __destroy_arr
/* 80A95848  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A9584C  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A95850  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A95854  38 A0 00 0C */	li r5, 0xc
/* 80A95858  38 C0 00 03 */	li r6, 3
/* 80A9585C  4B 8C C4 8D */	bl __destroy_arr
/* 80A95860  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A95864  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A95868  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A9586C  38 A0 00 0C */	li r5, 0xc
/* 80A95870  38 C0 00 03 */	li r6, 3
/* 80A95874  4B 8C C4 75 */	bl __destroy_arr
/* 80A95878  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A9587C  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A95880  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A95884  38 A0 00 0C */	li r5, 0xc
/* 80A95888  38 C0 00 03 */	li r6, 3
/* 80A9588C  4B 8C C4 5D */	bl __destroy_arr
/* 80A95890  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A95894  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A95898  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A9589C  38 A0 00 0C */	li r5, 0xc
/* 80A958A0  38 C0 00 03 */	li r6, 3
/* 80A958A4  4B 8C C4 45 */	bl __destroy_arr
/* 80A958A8  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A958AC  41 82 00 10 */	beq lbl_80A958BC
/* 80A958B0  3C 60 80 A9 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A979BC@ha */
/* 80A958B4  38 03 79 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A979BC@l */
/* 80A958B8  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A958BC:
/* 80A958BC  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A958C0  41 82 00 10 */	beq lbl_80A958D0
/* 80A958C4  3C 60 80 A9 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A979BC@ha */
/* 80A958C8  38 03 79 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A979BC@l */
/* 80A958CC  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A958D0:
/* 80A958D0  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A958D4  41 82 00 10 */	beq lbl_80A958E4
/* 80A958D8  3C 60 80 A9 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A979BC@ha */
/* 80A958DC  38 03 79 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A979BC@l */
/* 80A958E0  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A958E4:
/* 80A958E4  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A958E8  41 82 00 10 */	beq lbl_80A958F8
/* 80A958EC  3C 60 80 A9 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A979B0@ha */
/* 80A958F0  38 03 79 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A979B0@l */
/* 80A958F4  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A958F8:
/* 80A958F8  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A958FC  41 82 00 10 */	beq lbl_80A9590C
/* 80A95900  3C 60 80 A9 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A979B0@ha */
/* 80A95904  38 03 79 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A979B0@l */
/* 80A95908  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A9590C:
/* 80A9590C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A95910  38 80 FF FF */	li r4, -1
/* 80A95914  4B 5E 23 C9 */	bl __dt__11dBgS_LinChkFv
/* 80A95918  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A9591C  38 80 FF FF */	li r4, -1
/* 80A95920  4B 5E 1C D1 */	bl __dt__11dBgS_GndChkFv
/* 80A95924  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A95928  41 82 00 54 */	beq lbl_80A9597C
/* 80A9592C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A95930  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A95934  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A95938  38 03 00 20 */	addi r0, r3, 0x20
/* 80A9593C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A95940  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A95944  41 82 00 24 */	beq lbl_80A95968
/* 80A95948  3C 60 80 A9 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A979A4@ha */
/* 80A9594C  38 03 79 A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A979A4@l */
/* 80A95950  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A95954  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A95958  41 82 00 10 */	beq lbl_80A95968
/* 80A9595C  3C 60 80 A9 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A97998@ha */
/* 80A95960  38 03 79 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A97998@l */
/* 80A95964  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A95968:
/* 80A95968  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A9596C  41 82 00 10 */	beq lbl_80A9597C
/* 80A95970  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A95974  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A95978  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A9597C:
/* 80A9597C  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A95980  38 80 FF FF */	li r4, -1
/* 80A95984  4B 7B 45 C5 */	bl __dt__10dMsgFlow_cFv
/* 80A95988  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A9598C  38 80 FF FF */	li r4, -1
/* 80A95990  4B 7D 23 05 */	bl __dt__11cBgS_GndChkFv
/* 80A95994  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A95998  41 82 00 28 */	beq lbl_80A959C0
/* 80A9599C  3C 60 80 A9 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A9798C@ha */
/* 80A959A0  38 03 79 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A9798C@l */
/* 80A959A4  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A959A8  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A959AC  38 80 FF FF */	li r4, -1
/* 80A959B0  4B 7D 95 69 */	bl __dt__8cM3dGCirFv
/* 80A959B4  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A959B8  38 80 00 00 */	li r4, 0
/* 80A959BC  4B 7D 26 F5 */	bl __dt__13cBgS_PolyInfoFv
lbl_80A959C0:
/* 80A959C0  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A959C4  41 82 00 54 */	beq lbl_80A95A18
/* 80A959C8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A959CC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A959D0  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A959D4  38 03 00 20 */	addi r0, r3, 0x20
/* 80A959D8  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A959DC  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A959E0  41 82 00 24 */	beq lbl_80A95A04
/* 80A959E4  3C 60 80 A9 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A979A4@ha */
/* 80A959E8  38 03 79 A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A979A4@l */
/* 80A959EC  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A959F0  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A959F4  41 82 00 10 */	beq lbl_80A95A04
/* 80A959F8  3C 60 80 A9 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A97998@ha */
/* 80A959FC  38 03 79 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A97998@l */
/* 80A95A00  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A95A04:
/* 80A95A04  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A95A08  41 82 00 10 */	beq lbl_80A95A18
/* 80A95A0C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A95A10  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A95A14  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A95A18:
/* 80A95A18  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A95A1C  41 82 00 2C */	beq lbl_80A95A48
/* 80A95A20  3C 60 80 A9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A97968@ha */
/* 80A95A24  38 63 79 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A97968@l */
/* 80A95A28  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A95A2C  38 03 00 0C */	addi r0, r3, 0xc
/* 80A95A30  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A95A34  38 03 00 18 */	addi r0, r3, 0x18
/* 80A95A38  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A95A3C  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A95A40  38 80 00 00 */	li r4, 0
/* 80A95A44  4B 5E 05 51 */	bl __dt__9dBgS_AcchFv
lbl_80A95A48:
/* 80A95A48  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A95A4C  41 82 00 20 */	beq lbl_80A95A6C
/* 80A95A50  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A95A54  41 82 00 18 */	beq lbl_80A95A6C
/* 80A95A58  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A95A5C  41 82 00 10 */	beq lbl_80A95A6C
/* 80A95A60  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9795C@ha */
/* 80A95A64  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9795C@l */
/* 80A95A68  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A95A6C:
/* 80A95A6C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A95A70  41 82 00 20 */	beq lbl_80A95A90
/* 80A95A74  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A95A78  41 82 00 18 */	beq lbl_80A95A90
/* 80A95A7C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A95A80  41 82 00 10 */	beq lbl_80A95A90
/* 80A95A84  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9795C@ha */
/* 80A95A88  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9795C@l */
/* 80A95A8C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A95A90:
/* 80A95A90  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A95A94  41 82 00 20 */	beq lbl_80A95AB4
/* 80A95A98  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A95A9C  41 82 00 18 */	beq lbl_80A95AB4
/* 80A95AA0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A95AA4  41 82 00 10 */	beq lbl_80A95AB4
/* 80A95AA8  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9795C@ha */
/* 80A95AAC  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9795C@l */
/* 80A95AB0  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A95AB4:
/* 80A95AB4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A95AB8  41 82 00 20 */	beq lbl_80A95AD8
/* 80A95ABC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A95AC0  41 82 00 18 */	beq lbl_80A95AD8
/* 80A95AC4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A95AC8  41 82 00 10 */	beq lbl_80A95AD8
/* 80A95ACC  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9795C@ha */
/* 80A95AD0  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9795C@l */
/* 80A95AD4  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A95AD8:
/* 80A95AD8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A95ADC  41 82 00 20 */	beq lbl_80A95AFC
/* 80A95AE0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A95AE4  41 82 00 18 */	beq lbl_80A95AFC
/* 80A95AE8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A95AEC  41 82 00 10 */	beq lbl_80A95AFC
/* 80A95AF0  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9795C@ha */
/* 80A95AF4  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9795C@l */
/* 80A95AF8  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A95AFC:
/* 80A95AFC  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A95B00  38 80 FF FF */	li r4, -1
/* 80A95B04  4B 82 A9 1D */	bl __dt__10Z2CreatureFv
/* 80A95B08  7F C3 F3 78 */	mr r3, r30
/* 80A95B0C  38 80 00 00 */	li r4, 0
/* 80A95B10  4B 58 31 7D */	bl __dt__10fopAc_ac_cFv
/* 80A95B14  7F E0 07 35 */	extsh. r0, r31
/* 80A95B18  40 81 00 0C */	ble lbl_80A95B24
/* 80A95B1C  7F C3 F3 78 */	mr r3, r30
/* 80A95B20  4B 83 92 1D */	bl __dl__FPv
lbl_80A95B24:
/* 80A95B24  7F C3 F3 78 */	mr r3, r30
/* 80A95B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A95B2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A95B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A95B34  7C 08 03 A6 */	mtlr r0
/* 80A95B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95B3C  4E 80 00 20 */	blr 
