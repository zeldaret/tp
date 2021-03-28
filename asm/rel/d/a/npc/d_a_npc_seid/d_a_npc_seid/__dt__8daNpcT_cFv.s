lbl_80ACA614:
/* 80ACA614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA618  7C 08 02 A6 */	mflr r0
/* 80ACA61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACA624  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACA628  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACA62C  7C 9F 23 78 */	mr r31, r4
/* 80ACA630  41 82 03 50 */	beq lbl_80ACA980
/* 80ACA634  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80ACA638  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80ACA63C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80ACA640  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80ACA644  41 82 00 1C */	beq lbl_80ACA660
/* 80ACA648  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80ACA64C  3C 80 80 AD */	lis r4, __dt__5csXyzFv@ha
/* 80ACA650  38 84 A9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80ACA654  38 A0 00 06 */	li r5, 6
/* 80ACA658  38 C0 00 02 */	li r6, 2
/* 80ACA65C  4B 89 76 8C */	b __destroy_arr
lbl_80ACA660:
/* 80ACA660  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80ACA664  41 82 00 B4 */	beq lbl_80ACA718
/* 80ACA668  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80ACA66C  38 03 B5 DC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80ACA670  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80ACA674  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80ACA678  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACA67C  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACA680  38 A0 00 0C */	li r5, 0xc
/* 80ACA684  38 C0 00 03 */	li r6, 3
/* 80ACA688  4B 89 76 60 */	b __destroy_arr
/* 80ACA68C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80ACA690  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACA694  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACA698  38 A0 00 0C */	li r5, 0xc
/* 80ACA69C  38 C0 00 03 */	li r6, 3
/* 80ACA6A0  4B 89 76 48 */	b __destroy_arr
/* 80ACA6A4  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80ACA6A8  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACA6AC  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACA6B0  38 A0 00 0C */	li r5, 0xc
/* 80ACA6B4  38 C0 00 03 */	li r6, 3
/* 80ACA6B8  4B 89 76 30 */	b __destroy_arr
/* 80ACA6BC  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80ACA6C0  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACA6C4  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACA6C8  38 A0 00 0C */	li r5, 0xc
/* 80ACA6CC  38 C0 00 03 */	li r6, 3
/* 80ACA6D0  4B 89 76 18 */	b __destroy_arr
/* 80ACA6D4  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80ACA6D8  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACA6DC  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACA6E0  38 A0 00 0C */	li r5, 0xc
/* 80ACA6E4  38 C0 00 03 */	li r6, 3
/* 80ACA6E8  4B 89 76 00 */	b __destroy_arr
/* 80ACA6EC  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80ACA6F0  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACA6F4  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACA6F8  38 A0 00 0C */	li r5, 0xc
/* 80ACA6FC  38 C0 00 03 */	li r6, 3
/* 80ACA700  4B 89 75 E8 */	b __destroy_arr
/* 80ACA704  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80ACA708  41 82 00 10 */	beq lbl_80ACA718
/* 80ACA70C  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACA710  38 03 B5 D0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACA714  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80ACA718:
/* 80ACA718  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80ACA71C  41 82 00 10 */	beq lbl_80ACA72C
/* 80ACA720  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACA724  38 03 B5 D0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACA728  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80ACA72C:
/* 80ACA72C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80ACA730  41 82 00 10 */	beq lbl_80ACA740
/* 80ACA734  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACA738  38 03 B5 D0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACA73C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80ACA740:
/* 80ACA740  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80ACA744  41 82 00 10 */	beq lbl_80ACA754
/* 80ACA748  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80ACA74C  38 03 B5 C4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80ACA750  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80ACA754:
/* 80ACA754  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80ACA758  41 82 00 10 */	beq lbl_80ACA768
/* 80ACA75C  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80ACA760  38 03 B5 C4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80ACA764  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80ACA768:
/* 80ACA768  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80ACA76C  38 80 FF FF */	li r4, -1
/* 80ACA770  4B 5A D5 6C */	b __dt__11dBgS_LinChkFv
/* 80ACA774  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80ACA778  38 80 FF FF */	li r4, -1
/* 80ACA77C  4B 5A CE 74 */	b __dt__11dBgS_GndChkFv
/* 80ACA780  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80ACA784  41 82 00 54 */	beq lbl_80ACA7D8
/* 80ACA788  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80ACA78C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80ACA790  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80ACA794  38 03 00 20 */	addi r0, r3, 0x20
/* 80ACA798  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80ACA79C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80ACA7A0  41 82 00 24 */	beq lbl_80ACA7C4
/* 80ACA7A4  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha
/* 80ACA7A8  38 03 B5 B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80ACA7AC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80ACA7B0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80ACA7B4  41 82 00 10 */	beq lbl_80ACA7C4
/* 80ACA7B8  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha
/* 80ACA7BC  38 03 B5 AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80ACA7C0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80ACA7C4:
/* 80ACA7C4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80ACA7C8  41 82 00 10 */	beq lbl_80ACA7D8
/* 80ACA7CC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80ACA7D0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80ACA7D4  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80ACA7D8:
/* 80ACA7D8  38 7E 09 74 */	addi r3, r30, 0x974
/* 80ACA7DC  38 80 FF FF */	li r4, -1
/* 80ACA7E0  4B 77 F7 68 */	b __dt__10dMsgFlow_cFv
/* 80ACA7E4  38 7E 09 30 */	addi r3, r30, 0x930
/* 80ACA7E8  38 80 FF FF */	li r4, -1
/* 80ACA7EC  4B 79 D4 A8 */	b __dt__11cBgS_GndChkFv
/* 80ACA7F0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80ACA7F4  41 82 00 28 */	beq lbl_80ACA81C
/* 80ACA7F8  3C 60 80 AD */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80ACA7FC  38 03 B5 A0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80ACA800  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80ACA804  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80ACA808  38 80 FF FF */	li r4, -1
/* 80ACA80C  4B 7A 47 0C */	b __dt__8cM3dGCirFv
/* 80ACA810  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80ACA814  38 80 00 00 */	li r4, 0
/* 80ACA818  4B 79 D8 98 */	b __dt__13cBgS_PolyInfoFv
lbl_80ACA81C:
/* 80ACA81C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80ACA820  41 82 00 54 */	beq lbl_80ACA874
/* 80ACA824  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80ACA828  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80ACA82C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80ACA830  38 03 00 20 */	addi r0, r3, 0x20
/* 80ACA834  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80ACA838  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80ACA83C  41 82 00 24 */	beq lbl_80ACA860
/* 80ACA840  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha
/* 80ACA844  38 03 B5 B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80ACA848  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80ACA84C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80ACA850  41 82 00 10 */	beq lbl_80ACA860
/* 80ACA854  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha
/* 80ACA858  38 03 B5 AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80ACA85C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80ACA860:
/* 80ACA860  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80ACA864  41 82 00 10 */	beq lbl_80ACA874
/* 80ACA868  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80ACA86C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80ACA870  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80ACA874:
/* 80ACA874  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80ACA878  41 82 00 2C */	beq lbl_80ACA8A4
/* 80ACA87C  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80ACA880  38 63 B5 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80ACA884  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80ACA888  38 03 00 0C */	addi r0, r3, 0xc
/* 80ACA88C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80ACA890  38 03 00 18 */	addi r0, r3, 0x18
/* 80ACA894  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80ACA898  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80ACA89C  38 80 00 00 */	li r4, 0
/* 80ACA8A0  4B 5A B6 F4 */	b __dt__9dBgS_AcchFv
lbl_80ACA8A4:
/* 80ACA8A4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80ACA8A8  41 82 00 20 */	beq lbl_80ACA8C8
/* 80ACA8AC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80ACA8B0  41 82 00 18 */	beq lbl_80ACA8C8
/* 80ACA8B4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80ACA8B8  41 82 00 10 */	beq lbl_80ACA8C8
/* 80ACA8BC  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACA8C0  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACA8C4  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80ACA8C8:
/* 80ACA8C8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80ACA8CC  41 82 00 20 */	beq lbl_80ACA8EC
/* 80ACA8D0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80ACA8D4  41 82 00 18 */	beq lbl_80ACA8EC
/* 80ACA8D8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80ACA8DC  41 82 00 10 */	beq lbl_80ACA8EC
/* 80ACA8E0  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACA8E4  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACA8E8  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80ACA8EC:
/* 80ACA8EC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80ACA8F0  41 82 00 20 */	beq lbl_80ACA910
/* 80ACA8F4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80ACA8F8  41 82 00 18 */	beq lbl_80ACA910
/* 80ACA8FC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80ACA900  41 82 00 10 */	beq lbl_80ACA910
/* 80ACA904  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACA908  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACA90C  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80ACA910:
/* 80ACA910  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80ACA914  41 82 00 20 */	beq lbl_80ACA934
/* 80ACA918  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80ACA91C  41 82 00 18 */	beq lbl_80ACA934
/* 80ACA920  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80ACA924  41 82 00 10 */	beq lbl_80ACA934
/* 80ACA928  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACA92C  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACA930  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80ACA934:
/* 80ACA934  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80ACA938  41 82 00 20 */	beq lbl_80ACA958
/* 80ACA93C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80ACA940  41 82 00 18 */	beq lbl_80ACA958
/* 80ACA944  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80ACA948  41 82 00 10 */	beq lbl_80ACA958
/* 80ACA94C  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACA950  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACA954  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80ACA958:
/* 80ACA958  38 7E 05 80 */	addi r3, r30, 0x580
/* 80ACA95C  38 80 FF FF */	li r4, -1
/* 80ACA960  4B 7F 5A C0 */	b __dt__10Z2CreatureFv
/* 80ACA964  7F C3 F3 78 */	mr r3, r30
/* 80ACA968  38 80 00 00 */	li r4, 0
/* 80ACA96C  4B 54 E3 20 */	b __dt__10fopAc_ac_cFv
/* 80ACA970  7F E0 07 35 */	extsh. r0, r31
/* 80ACA974  40 81 00 0C */	ble lbl_80ACA980
/* 80ACA978  7F C3 F3 78 */	mr r3, r30
/* 80ACA97C  4B 80 43 C0 */	b __dl__FPv
lbl_80ACA980:
/* 80ACA980  7F C3 F3 78 */	mr r3, r30
/* 80ACA984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACA988  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACA98C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA990  7C 08 03 A6 */	mtlr r0
/* 80ACA994  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA998  4E 80 00 20 */	blr 
