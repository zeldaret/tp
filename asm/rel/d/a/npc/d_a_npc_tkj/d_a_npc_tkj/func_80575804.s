lbl_80575804:
/* 80575804  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80575808  7C 08 02 A6 */	mflr r0
/* 8057580C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80575810  39 61 00 40 */	addi r11, r1, 0x40
/* 80575814  4B DE C9 AD */	bl _savegpr_22
/* 80575818  7C 7F 1B 78 */	mr r31, r3
/* 8057581C  7C 96 23 78 */	mr r22, r4
/* 80575820  7C B7 2B 78 */	mr r23, r5
/* 80575824  7C DA 33 78 */	mr r26, r6
/* 80575828  7C FB 3B 78 */	mr r27, r7
/* 8057582C  7D 1C 43 78 */	mr r28, r8
/* 80575830  7D 3D 4B 78 */	mr r29, r9
/* 80575834  7D 58 53 78 */	mr r24, r10
/* 80575838  83 21 00 48 */	lwz r25, 0x48(r1)
/* 8057583C  3C 80 80 57 */	lis r4, m__17daNpc_Tkj_Param_c@ha /* 0x80576598@ha */
/* 80575840  3B C4 65 98 */	addi r30, r4, m__17daNpc_Tkj_Param_c@l /* 0x80576598@l */
/* 80575844  4B AA 33 21 */	bl __ct__10fopAc_ac_cFv
/* 80575848  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 8057584C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80575850  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80575854  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80575858  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 8057585C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80575860  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80575864  38 7F 05 80 */	addi r3, r31, 0x580
/* 80575868  4B D4 AB 61 */	bl __ct__10Z2CreatureFv
/* 8057586C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80575870  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 80575874  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 80575878  90 1F 06 10 */	stw r0, 0x610(r31)
/* 8057587C  7E C3 B3 78 */	mr r3, r22
/* 80575880  38 80 00 00 */	li r4, 0
/* 80575884  4B DB 2B 79 */	bl init__12J3DFrameCtrlFs
/* 80575888  38 00 00 00 */	li r0, 0
/* 8057588C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80575890  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80575894  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 80575898  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 8057589C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 805758A0  7E C3 B3 78 */	mr r3, r22
/* 805758A4  38 80 00 00 */	li r4, 0
/* 805758A8  4B DB 2B 55 */	bl init__12J3DFrameCtrlFs
/* 805758AC  38 00 00 00 */	li r0, 0
/* 805758B0  90 16 00 14 */	stw r0, 0x14(r22)
/* 805758B4  3A DF 06 44 */	addi r22, r31, 0x644
/* 805758B8  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 805758BC  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 805758C0  90 1F 06 44 */	stw r0, 0x644(r31)
/* 805758C4  7E C3 B3 78 */	mr r3, r22
/* 805758C8  38 80 00 00 */	li r4, 0
/* 805758CC  4B DB 2B 31 */	bl init__12J3DFrameCtrlFs
/* 805758D0  38 00 00 00 */	li r0, 0
/* 805758D4  90 16 00 14 */	stw r0, 0x14(r22)
/* 805758D8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 805758DC  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 805758E0  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 805758E4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 805758E8  7E C3 B3 78 */	mr r3, r22
/* 805758EC  38 80 00 00 */	li r4, 0
/* 805758F0  4B DB 2B 0D */	bl init__12J3DFrameCtrlFs
/* 805758F4  38 00 00 00 */	li r0, 0
/* 805758F8  90 16 00 14 */	stw r0, 0x14(r22)
/* 805758FC  3A DF 06 74 */	addi r22, r31, 0x674
/* 80575900  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 80575904  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 80575908  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8057590C  7E C3 B3 78 */	mr r3, r22
/* 80575910  38 80 00 00 */	li r4, 0
/* 80575914  4B DB 2A E9 */	bl init__12J3DFrameCtrlFs
/* 80575918  38 00 00 00 */	li r0, 0
/* 8057591C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80575920  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80575924  7E C3 B3 78 */	mr r3, r22
/* 80575928  4B B0 07 79 */	bl __ct__9dBgS_AcchFv
/* 8057592C  3C 60 80 57 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80576868@ha */
/* 80575930  38 63 68 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80576868@l */
/* 80575934  90 76 00 10 */	stw r3, 0x10(r22)
/* 80575938  38 03 00 0C */	addi r0, r3, 0xc
/* 8057593C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80575940  38 03 00 18 */	addi r0, r3, 0x18
/* 80575944  90 16 00 24 */	stw r0, 0x24(r22)
/* 80575948  38 76 00 14 */	addi r3, r22, 0x14
/* 8057594C  4B B0 35 1D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80575950  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80575954  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80575958  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 8057595C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80575960  4B B0 DE 01 */	bl __ct__10dCcD_GSttsFv
/* 80575964  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80575968  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8057596C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80575970  3B 23 00 20 */	addi r25, r3, 0x20
/* 80575974  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80575978  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8057597C  4B B0 05 31 */	bl __ct__12dBgS_AcchCirFv
/* 80575980  38 7F 09 30 */	addi r3, r31, 0x930
/* 80575984  4B CF 22 99 */	bl __ct__11cBgS_GndChkFv
/* 80575988  38 7F 09 74 */	addi r3, r31, 0x974
/* 8057598C  4B CD 45 75 */	bl __ct__10dMsgFlow_cFv
/* 80575990  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80575994  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80575998  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8057599C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 805759A0  4B B0 DD C1 */	bl __ct__10dCcD_GSttsFv
/* 805759A4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 805759A8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 805759AC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 805759B0  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 805759B4  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 805759B8  4B B0 1B C5 */	bl __ct__11dBgS_GndChkFv
/* 805759BC  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 805759C0  4B B0 22 A9 */	bl __ct__11dBgS_LinChkFv
/* 805759C4  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x805768B0@ha */
/* 805759C8  38 03 68 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x805768B0@l */
/* 805759CC  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 805759D0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 805759D4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 805759D8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805759DC  4B BC FE BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805759E0  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x805768B0@ha */
/* 805759E4  38 03 68 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x805768B0@l */
/* 805759E8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 805759EC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 805759F0  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 805759F4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 805759F8  4B BC FE A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805759FC  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x805768BC@ha */
/* 80575A00  38 03 68 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x805768BC@l */
/* 80575A04  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80575A08  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80575A0C  4B BC FC C9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80575A10  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x805768BC@ha */
/* 80575A14  38 03 68 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x805768BC@l */
/* 80575A18  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80575A1C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80575A20  4B BC FC B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80575A24  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80575A28  3C 60 80 57 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x805768C8@ha */
/* 80575A2C  38 03 68 C8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x805768C8@l */
/* 80575A30  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80575A34  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x805768BC@ha */
/* 80575A38  38 03 68 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x805768BC@l */
/* 80575A3C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80575A40  7F 43 D3 78 */	mr r3, r26
/* 80575A44  4B BC FC 91 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80575A48  38 7A 00 30 */	addi r3, r26, 0x30
/* 80575A4C  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha /* 0x80575D08@ha */
/* 80575A50  38 84 5D 08 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80575D08@l */
/* 80575A54  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575A58  38 A5 57 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575A5C  38 C0 00 0C */	li r6, 0xc
/* 80575A60  38 E0 00 03 */	li r7, 3
/* 80575A64  4B DE C2 FD */	bl __construct_array
/* 80575A68  38 7A 00 54 */	addi r3, r26, 0x54
/* 80575A6C  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha /* 0x80575D08@ha */
/* 80575A70  38 84 5D 08 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80575D08@l */
/* 80575A74  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575A78  38 A5 57 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575A7C  38 C0 00 0C */	li r6, 0xc
/* 80575A80  38 E0 00 03 */	li r7, 3
/* 80575A84  4B DE C2 DD */	bl __construct_array
/* 80575A88  38 7A 00 78 */	addi r3, r26, 0x78
/* 80575A8C  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha /* 0x80575D08@ha */
/* 80575A90  38 84 5D 08 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80575D08@l */
/* 80575A94  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575A98  38 A5 57 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575A9C  38 C0 00 0C */	li r6, 0xc
/* 80575AA0  38 E0 00 03 */	li r7, 3
/* 80575AA4  4B DE C2 BD */	bl __construct_array
/* 80575AA8  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80575AAC  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha /* 0x80575D08@ha */
/* 80575AB0  38 84 5D 08 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80575D08@l */
/* 80575AB4  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575AB8  38 A5 57 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575ABC  38 C0 00 0C */	li r6, 0xc
/* 80575AC0  38 E0 00 03 */	li r7, 3
/* 80575AC4  4B DE C2 9D */	bl __construct_array
/* 80575AC8  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80575ACC  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha /* 0x80575D08@ha */
/* 80575AD0  38 84 5D 08 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80575D08@l */
/* 80575AD4  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575AD8  38 A5 57 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575ADC  38 C0 00 0C */	li r6, 0xc
/* 80575AE0  38 E0 00 03 */	li r7, 3
/* 80575AE4  4B DE C2 7D */	bl __construct_array
/* 80575AE8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80575AEC  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha /* 0x80575D08@ha */
/* 80575AF0  38 84 5D 08 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80575D08@l */
/* 80575AF4  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575AF8  38 A5 57 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575AFC  38 C0 00 0C */	li r6, 0xc
/* 80575B00  38 E0 00 03 */	li r7, 3
/* 80575B04  4B DE C2 5D */	bl __construct_array
/* 80575B08  7F 43 D3 78 */	mr r3, r26
/* 80575B0C  4B BD 11 8D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80575B10  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80575B14  3C 80 80 57 */	lis r4, __ct__5csXyzFv@ha /* 0x80575C08@ha */
/* 80575B18  38 84 5C 08 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80575C08@l */
/* 80575B1C  3C A0 80 57 */	lis r5, __dt__5csXyzFv@ha /* 0x805757C8@ha */
/* 80575B20  38 A5 57 C8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x805757C8@l */
/* 80575B24  38 C0 00 06 */	li r6, 6
/* 80575B28  38 E0 00 02 */	li r7, 2
/* 80575B2C  4B DE C2 35 */	bl __construct_array
/* 80575B30  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80575B34  38 80 00 00 */	li r4, 0
/* 80575B38  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80575B3C  7C A3 00 50 */	subf r5, r3, r0
/* 80575B40  4B A8 D9 19 */	bl memset
/* 80575B44  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80575B48  4B BC FD 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80575B4C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80575B50  4B BC FD 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80575B54  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80575B58  4B BC FB 7D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80575B5C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80575B60  4B BC FB 75 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80575B64  7F 43 D3 78 */	mr r3, r26
/* 80575B68  4B BD 11 31 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80575B6C  38 A0 00 00 */	li r5, 0
/* 80575B70  38 60 00 00 */	li r3, 0
/* 80575B74  7C A4 2B 78 */	mr r4, r5
/* 80575B78  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80575B7C  38 00 00 02 */	li r0, 2
/* 80575B80  7C 09 03 A6 */	mtctr r0
lbl_80575B84:
/* 80575B84  7C DF 22 14 */	add r6, r31, r4
/* 80575B88  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80575B8C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80575B90  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80575B94  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80575B98  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80575B9C  38 63 00 04 */	addi r3, r3, 4
/* 80575BA0  38 84 00 06 */	addi r4, r4, 6
/* 80575BA4  42 00 FF E0 */	bdnz lbl_80575B84
/* 80575BA8  38 00 00 00 */	li r0, 0
/* 80575BAC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80575BB0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80575BB4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80575BB8  38 00 FF FF */	li r0, -1
/* 80575BBC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80575BC0  38 00 00 01 */	li r0, 1
/* 80575BC4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80575BC8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80575BCC  4B CF 1D 89 */	bl cM_rndF__Ff
/* 80575BD0  FC 00 08 1E */	fctiwz f0, f1
/* 80575BD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80575BD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80575BDC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80575BE0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80575BE4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80575BE8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80575BEC  7F E3 FB 78 */	mr r3, r31
/* 80575BF0  39 61 00 40 */	addi r11, r1, 0x40
/* 80575BF4  4B DE C6 19 */	bl _restgpr_22
/* 80575BF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80575BFC  7C 08 03 A6 */	mtlr r0
/* 80575C00  38 21 00 40 */	addi r1, r1, 0x40
/* 80575C04  4E 80 00 20 */	blr 
