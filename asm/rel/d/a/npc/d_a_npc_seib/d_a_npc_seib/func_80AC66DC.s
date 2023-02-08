lbl_80AC66DC:
/* 80AC66DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AC66E0  7C 08 02 A6 */	mflr r0
/* 80AC66E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AC66E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC66EC  4B 89 BA D5 */	bl _savegpr_22
/* 80AC66F0  7C 7F 1B 78 */	mr r31, r3
/* 80AC66F4  7C 96 23 78 */	mr r22, r4
/* 80AC66F8  7C B7 2B 78 */	mr r23, r5
/* 80AC66FC  7C DA 33 78 */	mr r26, r6
/* 80AC6700  7C FB 3B 78 */	mr r27, r7
/* 80AC6704  7D 1C 43 78 */	mr r28, r8
/* 80AC6708  7D 3D 4B 78 */	mr r29, r9
/* 80AC670C  7D 58 53 78 */	mr r24, r10
/* 80AC6710  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AC6714  3C 80 80 AC */	lis r4, m__18daNpc_seiB_Param_c@ha /* 0x80AC7024@ha */
/* 80AC6718  3B C4 70 24 */	addi r30, r4, m__18daNpc_seiB_Param_c@l /* 0x80AC7024@l */
/* 80AC671C  4B 55 24 49 */	bl __ct__10fopAc_ac_cFv
/* 80AC6720  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AC6724  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AC6728  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AC672C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AC6730  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AC6734  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AC6738  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AC673C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AC6740  4B 7F 9C 89 */	bl __ct__10Z2CreatureFv
/* 80AC6744  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AC6748  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC674C  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC6750  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AC6754  7E C3 B3 78 */	mr r3, r22
/* 80AC6758  38 80 00 00 */	li r4, 0
/* 80AC675C  4B 86 1C A1 */	bl init__12J3DFrameCtrlFs
/* 80AC6760  38 00 00 00 */	li r0, 0
/* 80AC6764  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AC6768  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AC676C  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC6770  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC6774  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AC6778  7E C3 B3 78 */	mr r3, r22
/* 80AC677C  38 80 00 00 */	li r4, 0
/* 80AC6780  4B 86 1C 7D */	bl init__12J3DFrameCtrlFs
/* 80AC6784  38 00 00 00 */	li r0, 0
/* 80AC6788  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC678C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AC6790  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC6794  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC6798  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AC679C  7E C3 B3 78 */	mr r3, r22
/* 80AC67A0  38 80 00 00 */	li r4, 0
/* 80AC67A4  4B 86 1C 59 */	bl init__12J3DFrameCtrlFs
/* 80AC67A8  38 00 00 00 */	li r0, 0
/* 80AC67AC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC67B0  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AC67B4  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC67B8  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC67BC  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AC67C0  7E C3 B3 78 */	mr r3, r22
/* 80AC67C4  38 80 00 00 */	li r4, 0
/* 80AC67C8  4B 86 1C 35 */	bl init__12J3DFrameCtrlFs
/* 80AC67CC  38 00 00 00 */	li r0, 0
/* 80AC67D0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC67D4  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AC67D8  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC67DC  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC67E0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AC67E4  7E C3 B3 78 */	mr r3, r22
/* 80AC67E8  38 80 00 00 */	li r4, 0
/* 80AC67EC  4B 86 1C 11 */	bl init__12J3DFrameCtrlFs
/* 80AC67F0  38 00 00 00 */	li r0, 0
/* 80AC67F4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC67F8  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AC67FC  7E C3 B3 78 */	mr r3, r22
/* 80AC6800  4B 5A F8 A1 */	bl __ct__9dBgS_AcchFv
/* 80AC6804  3C 60 80 AC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AC72F8@ha */
/* 80AC6808  38 63 72 F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AC72F8@l */
/* 80AC680C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AC6810  38 03 00 0C */	addi r0, r3, 0xc
/* 80AC6814  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC6818  38 03 00 18 */	addi r0, r3, 0x18
/* 80AC681C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AC6820  38 76 00 14 */	addi r3, r22, 0x14
/* 80AC6824  4B 5B 26 45 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AC6828  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC682C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC6830  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AC6834  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AC6838  4B 5B CF 29 */	bl __ct__10dCcD_GSttsFv
/* 80AC683C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC6840  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC6844  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AC6848  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AC684C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AC6850  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AC6854  4B 5A F6 59 */	bl __ct__12dBgS_AcchCirFv
/* 80AC6858  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AC685C  4B 7A 13 C1 */	bl __ct__11cBgS_GndChkFv
/* 80AC6860  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AC6864  4B 78 36 9D */	bl __ct__10dMsgFlow_cFv
/* 80AC6868  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC686C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC6870  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AC6874  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AC6878  4B 5B CE E9 */	bl __ct__10dCcD_GSttsFv
/* 80AC687C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC6880  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC6884  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AC6888  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AC688C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AC6890  4B 5B 0C ED */	bl __ct__11dBgS_GndChkFv
/* 80AC6894  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AC6898  4B 5B 13 D1 */	bl __ct__11dBgS_LinChkFv
/* 80AC689C  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC7340@ha */
/* 80AC68A0  38 03 73 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC7340@l */
/* 80AC68A4  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AC68A8  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AC68AC  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AC68B0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC68B4  4B 67 EF E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC68B8  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC7340@ha */
/* 80AC68BC  38 03 73 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC7340@l */
/* 80AC68C0  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AC68C4  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AC68C8  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AC68CC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC68D0  4B 67 EF C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC68D4  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC68D8  38 03 73 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC68DC  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AC68E0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC68E4  4B 67 ED F1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC68E8  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC68EC  38 03 73 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC68F0  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AC68F4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC68F8  4B 67 ED DD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC68FC  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AC6900  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC7358@ha */
/* 80AC6904  38 03 73 58 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC7358@l */
/* 80AC6908  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AC690C  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC6910  38 03 73 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC6914  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AC6918  7F 43 D3 78 */	mr r3, r26
/* 80AC691C  4B 67 ED B9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC6920  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AC6924  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC6BE0@ha */
/* 80AC6928  38 84 6B E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC6BE0@l */
/* 80AC692C  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6930  38 A5 66 64 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6934  38 C0 00 0C */	li r6, 0xc
/* 80AC6938  38 E0 00 03 */	li r7, 3
/* 80AC693C  4B 89 B4 25 */	bl __construct_array
/* 80AC6940  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AC6944  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC6BE0@ha */
/* 80AC6948  38 84 6B E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC6BE0@l */
/* 80AC694C  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6950  38 A5 66 64 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6954  38 C0 00 0C */	li r6, 0xc
/* 80AC6958  38 E0 00 03 */	li r7, 3
/* 80AC695C  4B 89 B4 05 */	bl __construct_array
/* 80AC6960  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AC6964  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC6BE0@ha */
/* 80AC6968  38 84 6B E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC6BE0@l */
/* 80AC696C  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6970  38 A5 66 64 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6974  38 C0 00 0C */	li r6, 0xc
/* 80AC6978  38 E0 00 03 */	li r7, 3
/* 80AC697C  4B 89 B3 E5 */	bl __construct_array
/* 80AC6980  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AC6984  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC6BE0@ha */
/* 80AC6988  38 84 6B E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC6BE0@l */
/* 80AC698C  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6990  38 A5 66 64 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6994  38 C0 00 0C */	li r6, 0xc
/* 80AC6998  38 E0 00 03 */	li r7, 3
/* 80AC699C  4B 89 B3 C5 */	bl __construct_array
/* 80AC69A0  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AC69A4  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC6BE0@ha */
/* 80AC69A8  38 84 6B E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC6BE0@l */
/* 80AC69AC  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC69B0  38 A5 66 64 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC69B4  38 C0 00 0C */	li r6, 0xc
/* 80AC69B8  38 E0 00 03 */	li r7, 3
/* 80AC69BC  4B 89 B3 A5 */	bl __construct_array
/* 80AC69C0  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AC69C4  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC6BE0@ha */
/* 80AC69C8  38 84 6B E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC6BE0@l */
/* 80AC69CC  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC69D0  38 A5 66 64 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC69D4  38 C0 00 0C */	li r6, 0xc
/* 80AC69D8  38 E0 00 03 */	li r7, 3
/* 80AC69DC  4B 89 B3 85 */	bl __construct_array
/* 80AC69E0  7F 43 D3 78 */	mr r3, r26
/* 80AC69E4  4B 68 02 B5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AC69E8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AC69EC  3C 80 80 AC */	lis r4, __ct__5csXyzFv@ha /* 0x80AC6AE0@ha */
/* 80AC69F0  38 84 6A E0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AC6AE0@l */
/* 80AC69F4  3C A0 80 AC */	lis r5, __dt__5csXyzFv@ha /* 0x80AC66A0@ha */
/* 80AC69F8  38 A5 66 A0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AC66A0@l */
/* 80AC69FC  38 C0 00 06 */	li r6, 6
/* 80AC6A00  38 E0 00 02 */	li r7, 2
/* 80AC6A04  4B 89 B3 5D */	bl __construct_array
/* 80AC6A08  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AC6A0C  38 80 00 00 */	li r4, 0
/* 80AC6A10  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AC6A14  7C A3 00 50 */	subf r5, r3, r0
/* 80AC6A18  4B 53 CA 41 */	bl memset
/* 80AC6A1C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC6A20  4B 67 EE 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC6A24  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC6A28  4B 67 EE 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC6A2C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC6A30  4B 67 EC A5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC6A34  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC6A38  4B 67 EC 9D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC6A3C  7F 43 D3 78 */	mr r3, r26
/* 80AC6A40  4B 68 02 59 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AC6A44  38 A0 00 00 */	li r5, 0
/* 80AC6A48  38 60 00 00 */	li r3, 0
/* 80AC6A4C  7C A4 2B 78 */	mr r4, r5
/* 80AC6A50  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80AC6A54  38 00 00 02 */	li r0, 2
/* 80AC6A58  7C 09 03 A6 */	mtctr r0
lbl_80AC6A5C:
/* 80AC6A5C  7C DF 22 14 */	add r6, r31, r4
/* 80AC6A60  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AC6A64  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AC6A68  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AC6A6C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC6A70  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC6A74  38 63 00 04 */	addi r3, r3, 4
/* 80AC6A78  38 84 00 06 */	addi r4, r4, 6
/* 80AC6A7C  42 00 FF E0 */	bdnz lbl_80AC6A5C
/* 80AC6A80  38 00 00 00 */	li r0, 0
/* 80AC6A84  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AC6A88  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AC6A8C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AC6A90  38 00 FF FF */	li r0, -1
/* 80AC6A94  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AC6A98  38 00 00 01 */	li r0, 1
/* 80AC6A9C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC6AA0  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80AC6AA4  4B 7A 0E B1 */	bl cM_rndF__Ff
/* 80AC6AA8  FC 00 08 1E */	fctiwz f0, f1
/* 80AC6AAC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC6AB0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC6AB4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AC6AB8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AC6ABC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AC6AC0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AC6AC4  7F E3 FB 78 */	mr r3, r31
/* 80AC6AC8  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC6ACC  4B 89 B7 41 */	bl _restgpr_22
/* 80AC6AD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AC6AD4  7C 08 03 A6 */	mtlr r0
/* 80AC6AD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80AC6ADC  4E 80 00 20 */	blr 
