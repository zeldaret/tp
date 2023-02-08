lbl_80A447CC:
/* 80A447CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A447D0  7C 08 02 A6 */	mflr r0
/* 80A447D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A447D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A447DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A447E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A447E4  7C 9F 23 78 */	mr r31, r4
/* 80A447E8  41 82 03 50 */	beq lbl_80A44B38
/* 80A447EC  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A447F0  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A447F4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A447F8  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A447FC  41 82 00 1C */	beq lbl_80A44818
/* 80A44800  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A44804  3C 80 80 A4 */	lis r4, __dt__5csXyzFv@ha /* 0x80A44B90@ha */
/* 80A44808  38 84 4B 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A44B90@l */
/* 80A4480C  38 A0 00 06 */	li r5, 6
/* 80A44810  38 C0 00 02 */	li r6, 2
/* 80A44814  4B 91 D4 D5 */	bl __destroy_arr
lbl_80A44818:
/* 80A44818  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A4481C  41 82 00 B4 */	beq lbl_80A448D0
/* 80A44820  3C 60 80 A4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A457AC@ha */
/* 80A44824  38 03 57 AC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A457AC@l */
/* 80A44828  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A4482C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A44830  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44834  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44838  38 A0 00 0C */	li r5, 0xc
/* 80A4483C  38 C0 00 03 */	li r6, 3
/* 80A44840  4B 91 D4 A9 */	bl __destroy_arr
/* 80A44844  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A44848  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A4484C  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44850  38 A0 00 0C */	li r5, 0xc
/* 80A44854  38 C0 00 03 */	li r6, 3
/* 80A44858  4B 91 D4 91 */	bl __destroy_arr
/* 80A4485C  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A44860  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44864  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44868  38 A0 00 0C */	li r5, 0xc
/* 80A4486C  38 C0 00 03 */	li r6, 3
/* 80A44870  4B 91 D4 79 */	bl __destroy_arr
/* 80A44874  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A44878  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A4487C  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44880  38 A0 00 0C */	li r5, 0xc
/* 80A44884  38 C0 00 03 */	li r6, 3
/* 80A44888  4B 91 D4 61 */	bl __destroy_arr
/* 80A4488C  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A44890  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44894  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44898  38 A0 00 0C */	li r5, 0xc
/* 80A4489C  38 C0 00 03 */	li r6, 3
/* 80A448A0  4B 91 D4 49 */	bl __destroy_arr
/* 80A448A4  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A448A8  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A448AC  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A448B0  38 A0 00 0C */	li r5, 0xc
/* 80A448B4  38 C0 00 03 */	li r6, 3
/* 80A448B8  4B 91 D4 31 */	bl __destroy_arr
/* 80A448BC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A448C0  41 82 00 10 */	beq lbl_80A448D0
/* 80A448C4  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A448C8  38 03 57 A0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A448CC  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A448D0:
/* 80A448D0  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A448D4  41 82 00 10 */	beq lbl_80A448E4
/* 80A448D8  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A448DC  38 03 57 A0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A448E0  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A448E4:
/* 80A448E4  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A448E8  41 82 00 10 */	beq lbl_80A448F8
/* 80A448EC  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A448F0  38 03 57 A0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A448F4  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A448F8:
/* 80A448F8  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A448FC  41 82 00 10 */	beq lbl_80A4490C
/* 80A44900  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A45794@ha */
/* 80A44904  38 03 57 94 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A45794@l */
/* 80A44908  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A4490C:
/* 80A4490C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A44910  41 82 00 10 */	beq lbl_80A44920
/* 80A44914  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A45794@ha */
/* 80A44918  38 03 57 94 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A45794@l */
/* 80A4491C  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A44920:
/* 80A44920  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A44924  38 80 FF FF */	li r4, -1
/* 80A44928  4B 63 33 B5 */	bl __dt__11dBgS_LinChkFv
/* 80A4492C  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A44930  38 80 FF FF */	li r4, -1
/* 80A44934  4B 63 2C BD */	bl __dt__11dBgS_GndChkFv
/* 80A44938  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A4493C  41 82 00 54 */	beq lbl_80A44990
/* 80A44940  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A44944  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A44948  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A4494C  38 03 00 20 */	addi r0, r3, 0x20
/* 80A44950  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A44954  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A44958  41 82 00 24 */	beq lbl_80A4497C
/* 80A4495C  3C 60 80 A4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A45788@ha */
/* 80A44960  38 03 57 88 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A45788@l */
/* 80A44964  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A44968  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A4496C  41 82 00 10 */	beq lbl_80A4497C
/* 80A44970  3C 60 80 A4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A4577C@ha */
/* 80A44974  38 03 57 7C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A4577C@l */
/* 80A44978  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A4497C:
/* 80A4497C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A44980  41 82 00 10 */	beq lbl_80A44990
/* 80A44984  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A44988  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A4498C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A44990:
/* 80A44990  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A44994  38 80 FF FF */	li r4, -1
/* 80A44998  4B 80 55 B1 */	bl __dt__10dMsgFlow_cFv
/* 80A4499C  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A449A0  38 80 FF FF */	li r4, -1
/* 80A449A4  4B 82 32 F1 */	bl __dt__11cBgS_GndChkFv
/* 80A449A8  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A449AC  41 82 00 28 */	beq lbl_80A449D4
/* 80A449B0  3C 60 80 A4 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A45770@ha */
/* 80A449B4  38 03 57 70 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A45770@l */
/* 80A449B8  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A449BC  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A449C0  38 80 FF FF */	li r4, -1
/* 80A449C4  4B 82 A5 55 */	bl __dt__8cM3dGCirFv
/* 80A449C8  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A449CC  38 80 00 00 */	li r4, 0
/* 80A449D0  4B 82 36 E1 */	bl __dt__13cBgS_PolyInfoFv
lbl_80A449D4:
/* 80A449D4  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A449D8  41 82 00 54 */	beq lbl_80A44A2C
/* 80A449DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A449E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A449E4  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A449E8  38 03 00 20 */	addi r0, r3, 0x20
/* 80A449EC  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A449F0  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A449F4  41 82 00 24 */	beq lbl_80A44A18
/* 80A449F8  3C 60 80 A4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A45788@ha */
/* 80A449FC  38 03 57 88 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A45788@l */
/* 80A44A00  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A44A04  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A44A08  41 82 00 10 */	beq lbl_80A44A18
/* 80A44A0C  3C 60 80 A4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A4577C@ha */
/* 80A44A10  38 03 57 7C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A4577C@l */
/* 80A44A14  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A44A18:
/* 80A44A18  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A44A1C  41 82 00 10 */	beq lbl_80A44A2C
/* 80A44A20  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A44A24  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A44A28  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A44A2C:
/* 80A44A2C  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A44A30  41 82 00 2C */	beq lbl_80A44A5C
/* 80A44A34  3C 60 80 A4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A4574C@ha */
/* 80A44A38  38 63 57 4C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A4574C@l */
/* 80A44A3C  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A44A40  38 03 00 0C */	addi r0, r3, 0xc
/* 80A44A44  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A44A48  38 03 00 18 */	addi r0, r3, 0x18
/* 80A44A4C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A44A50  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A44A54  38 80 00 00 */	li r4, 0
/* 80A44A58  4B 63 15 3D */	bl __dt__9dBgS_AcchFv
lbl_80A44A5C:
/* 80A44A5C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A44A60  41 82 00 20 */	beq lbl_80A44A80
/* 80A44A64  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A44A68  41 82 00 18 */	beq lbl_80A44A80
/* 80A44A6C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A44A70  41 82 00 10 */	beq lbl_80A44A80
/* 80A44A74  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44A78  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44A7C  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A44A80:
/* 80A44A80  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A44A84  41 82 00 20 */	beq lbl_80A44AA4
/* 80A44A88  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A44A8C  41 82 00 18 */	beq lbl_80A44AA4
/* 80A44A90  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A44A94  41 82 00 10 */	beq lbl_80A44AA4
/* 80A44A98  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44A9C  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44AA0  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A44AA4:
/* 80A44AA4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A44AA8  41 82 00 20 */	beq lbl_80A44AC8
/* 80A44AAC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A44AB0  41 82 00 18 */	beq lbl_80A44AC8
/* 80A44AB4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A44AB8  41 82 00 10 */	beq lbl_80A44AC8
/* 80A44ABC  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44AC0  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44AC4  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A44AC8:
/* 80A44AC8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A44ACC  41 82 00 20 */	beq lbl_80A44AEC
/* 80A44AD0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A44AD4  41 82 00 18 */	beq lbl_80A44AEC
/* 80A44AD8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A44ADC  41 82 00 10 */	beq lbl_80A44AEC
/* 80A44AE0  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44AE4  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44AE8  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A44AEC:
/* 80A44AEC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A44AF0  41 82 00 20 */	beq lbl_80A44B10
/* 80A44AF4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A44AF8  41 82 00 18 */	beq lbl_80A44B10
/* 80A44AFC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A44B00  41 82 00 10 */	beq lbl_80A44B10
/* 80A44B04  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44B08  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44B0C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A44B10:
/* 80A44B10  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A44B14  38 80 FF FF */	li r4, -1
/* 80A44B18  4B 87 B9 09 */	bl __dt__10Z2CreatureFv
/* 80A44B1C  7F C3 F3 78 */	mr r3, r30
/* 80A44B20  38 80 00 00 */	li r4, 0
/* 80A44B24  4B 5D 41 69 */	bl __dt__10fopAc_ac_cFv
/* 80A44B28  7F E0 07 35 */	extsh. r0, r31
/* 80A44B2C  40 81 00 0C */	ble lbl_80A44B38
/* 80A44B30  7F C3 F3 78 */	mr r3, r30
/* 80A44B34  4B 88 A2 09 */	bl __dl__FPv
lbl_80A44B38:
/* 80A44B38  7F C3 F3 78 */	mr r3, r30
/* 80A44B3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A44B40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A44B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A44B48  7C 08 03 A6 */	mtlr r0
/* 80A44B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A44B50  4E 80 00 20 */	blr 
