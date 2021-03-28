lbl_80A4775C:
/* 80A4775C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47760  7C 08 02 A6 */	mflr r0
/* 80A47764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4776C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A47770  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A47774  7C 9F 23 78 */	mr r31, r4
/* 80A47778  41 82 03 50 */	beq lbl_80A47AC8
/* 80A4777C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A47780  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A47784  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A47788  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A4778C  41 82 00 1C */	beq lbl_80A477A8
/* 80A47790  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A47794  3C 80 80 A4 */	lis r4, __dt__5csXyzFv@ha
/* 80A47798  38 84 7B 20 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A4779C  38 A0 00 06 */	li r5, 6
/* 80A477A0  38 C0 00 02 */	li r6, 2
/* 80A477A4  4B 91 A5 44 */	b __destroy_arr
lbl_80A477A8:
/* 80A477A8  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A477AC  41 82 00 B4 */	beq lbl_80A47860
/* 80A477B0  3C 60 80 A5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A477B4  38 03 8D 80 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A477B8  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A477BC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A477C0  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A477C4  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A477C8  38 A0 00 0C */	li r5, 0xc
/* 80A477CC  38 C0 00 03 */	li r6, 3
/* 80A477D0  4B 91 A5 18 */	b __destroy_arr
/* 80A477D4  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A477D8  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A477DC  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A477E0  38 A0 00 0C */	li r5, 0xc
/* 80A477E4  38 C0 00 03 */	li r6, 3
/* 80A477E8  4B 91 A5 00 */	b __destroy_arr
/* 80A477EC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A477F0  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A477F4  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A477F8  38 A0 00 0C */	li r5, 0xc
/* 80A477FC  38 C0 00 03 */	li r6, 3
/* 80A47800  4B 91 A4 E8 */	b __destroy_arr
/* 80A47804  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A47808  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A4780C  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A47810  38 A0 00 0C */	li r5, 0xc
/* 80A47814  38 C0 00 03 */	li r6, 3
/* 80A47818  4B 91 A4 D0 */	b __destroy_arr
/* 80A4781C  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A47820  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A47824  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A47828  38 A0 00 0C */	li r5, 0xc
/* 80A4782C  38 C0 00 03 */	li r6, 3
/* 80A47830  4B 91 A4 B8 */	b __destroy_arr
/* 80A47834  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A47838  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A4783C  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A47840  38 A0 00 0C */	li r5, 0xc
/* 80A47844  38 C0 00 03 */	li r6, 3
/* 80A47848  4B 91 A4 A0 */	b __destroy_arr
/* 80A4784C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A47850  41 82 00 10 */	beq lbl_80A47860
/* 80A47854  3C 60 80 A5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A47858  38 03 8D 74 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A4785C  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A47860:
/* 80A47860  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A47864  41 82 00 10 */	beq lbl_80A47874
/* 80A47868  3C 60 80 A5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A4786C  38 03 8D 74 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A47870  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A47874:
/* 80A47874  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A47878  41 82 00 10 */	beq lbl_80A47888
/* 80A4787C  3C 60 80 A5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A47880  38 03 8D 74 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A47884  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A47888:
/* 80A47888  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A4788C  41 82 00 10 */	beq lbl_80A4789C
/* 80A47890  3C 60 80 A5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A47894  38 03 8D 68 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A47898  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A4789C:
/* 80A4789C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A478A0  41 82 00 10 */	beq lbl_80A478B0
/* 80A478A4  3C 60 80 A5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A478A8  38 03 8D 68 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A478AC  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A478B0:
/* 80A478B0  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A478B4  38 80 FF FF */	li r4, -1
/* 80A478B8  4B 63 04 24 */	b __dt__11dBgS_LinChkFv
/* 80A478BC  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A478C0  38 80 FF FF */	li r4, -1
/* 80A478C4  4B 62 FD 2C */	b __dt__11dBgS_GndChkFv
/* 80A478C8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A478CC  41 82 00 54 */	beq lbl_80A47920
/* 80A478D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A478D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A478D8  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A478DC  38 03 00 20 */	addi r0, r3, 0x20
/* 80A478E0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A478E4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A478E8  41 82 00 24 */	beq lbl_80A4790C
/* 80A478EC  3C 60 80 A5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A478F0  38 03 8D 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A478F4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A478F8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A478FC  41 82 00 10 */	beq lbl_80A4790C
/* 80A47900  3C 60 80 A5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A47904  38 03 8D 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A47908  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A4790C:
/* 80A4790C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A47910  41 82 00 10 */	beq lbl_80A47920
/* 80A47914  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A47918  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A4791C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A47920:
/* 80A47920  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A47924  38 80 FF FF */	li r4, -1
/* 80A47928  4B 80 26 20 */	b __dt__10dMsgFlow_cFv
/* 80A4792C  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A47930  38 80 FF FF */	li r4, -1
/* 80A47934  4B 82 03 60 */	b __dt__11cBgS_GndChkFv
/* 80A47938  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A4793C  41 82 00 28 */	beq lbl_80A47964
/* 80A47940  3C 60 80 A5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A47944  38 03 8D 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A47948  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A4794C  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A47950  38 80 FF FF */	li r4, -1
/* 80A47954  4B 82 75 C4 */	b __dt__8cM3dGCirFv
/* 80A47958  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A4795C  38 80 00 00 */	li r4, 0
/* 80A47960  4B 82 07 50 */	b __dt__13cBgS_PolyInfoFv
lbl_80A47964:
/* 80A47964  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A47968  41 82 00 54 */	beq lbl_80A479BC
/* 80A4796C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A47970  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A47974  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A47978  38 03 00 20 */	addi r0, r3, 0x20
/* 80A4797C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A47980  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A47984  41 82 00 24 */	beq lbl_80A479A8
/* 80A47988  3C 60 80 A5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A4798C  38 03 8D 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A47990  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A47994  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A47998  41 82 00 10 */	beq lbl_80A479A8
/* 80A4799C  3C 60 80 A5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A479A0  38 03 8D 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A479A4  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A479A8:
/* 80A479A8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A479AC  41 82 00 10 */	beq lbl_80A479BC
/* 80A479B0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A479B4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A479B8  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A479BC:
/* 80A479BC  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A479C0  41 82 00 2C */	beq lbl_80A479EC
/* 80A479C4  3C 60 80 A5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A479C8  38 63 8D 20 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A479CC  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A479D0  38 03 00 0C */	addi r0, r3, 0xc
/* 80A479D4  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A479D8  38 03 00 18 */	addi r0, r3, 0x18
/* 80A479DC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A479E0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A479E4  38 80 00 00 */	li r4, 0
/* 80A479E8  4B 62 E5 AC */	b __dt__9dBgS_AcchFv
lbl_80A479EC:
/* 80A479EC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A479F0  41 82 00 20 */	beq lbl_80A47A10
/* 80A479F4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A479F8  41 82 00 18 */	beq lbl_80A47A10
/* 80A479FC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A47A00  41 82 00 10 */	beq lbl_80A47A10
/* 80A47A04  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47A08  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47A0C  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A47A10:
/* 80A47A10  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A47A14  41 82 00 20 */	beq lbl_80A47A34
/* 80A47A18  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A47A1C  41 82 00 18 */	beq lbl_80A47A34
/* 80A47A20  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A47A24  41 82 00 10 */	beq lbl_80A47A34
/* 80A47A28  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47A2C  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47A30  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A47A34:
/* 80A47A34  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A47A38  41 82 00 20 */	beq lbl_80A47A58
/* 80A47A3C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A47A40  41 82 00 18 */	beq lbl_80A47A58
/* 80A47A44  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A47A48  41 82 00 10 */	beq lbl_80A47A58
/* 80A47A4C  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47A50  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47A54  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A47A58:
/* 80A47A58  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A47A5C  41 82 00 20 */	beq lbl_80A47A7C
/* 80A47A60  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A47A64  41 82 00 18 */	beq lbl_80A47A7C
/* 80A47A68  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A47A6C  41 82 00 10 */	beq lbl_80A47A7C
/* 80A47A70  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47A74  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47A78  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A47A7C:
/* 80A47A7C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A47A80  41 82 00 20 */	beq lbl_80A47AA0
/* 80A47A84  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A47A88  41 82 00 18 */	beq lbl_80A47AA0
/* 80A47A8C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A47A90  41 82 00 10 */	beq lbl_80A47AA0
/* 80A47A94  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47A98  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47A9C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A47AA0:
/* 80A47AA0  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A47AA4  38 80 FF FF */	li r4, -1
/* 80A47AA8  4B 87 89 78 */	b __dt__10Z2CreatureFv
/* 80A47AAC  7F C3 F3 78 */	mr r3, r30
/* 80A47AB0  38 80 00 00 */	li r4, 0
/* 80A47AB4  4B 5D 11 D8 */	b __dt__10fopAc_ac_cFv
/* 80A47AB8  7F E0 07 35 */	extsh. r0, r31
/* 80A47ABC  40 81 00 0C */	ble lbl_80A47AC8
/* 80A47AC0  7F C3 F3 78 */	mr r3, r30
/* 80A47AC4  4B 88 72 78 */	b __dl__FPv
lbl_80A47AC8:
/* 80A47AC8  7F C3 F3 78 */	mr r3, r30
/* 80A47ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A47AD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A47AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A47AD8  7C 08 03 A6 */	mtlr r0
/* 80A47ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A47AE0  4E 80 00 20 */	blr 
