lbl_80A62670:
/* 80A62670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62674  7C 08 02 A6 */	mflr r0
/* 80A62678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6267C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62680  93 C1 00 08 */	stw r30, 8(r1)
/* 80A62684  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A62688  7C 9F 23 78 */	mr r31, r4
/* 80A6268C  41 82 03 50 */	beq lbl_80A629DC
/* 80A62690  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A62694  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A62698  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A6269C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A626A0  41 82 00 1C */	beq lbl_80A626BC
/* 80A626A4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A626A8  3C 80 80 A6 */	lis r4, __dt__5csXyzFv@ha
/* 80A626AC  38 84 2A 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A626B0  38 A0 00 06 */	li r5, 6
/* 80A626B4  38 C0 00 02 */	li r6, 2
/* 80A626B8  4B 8F F6 30 */	b __destroy_arr
lbl_80A626BC:
/* 80A626BC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A626C0  41 82 00 B4 */	beq lbl_80A62774
/* 80A626C4  3C 60 80 A6 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A626C8  38 03 41 18 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A626CC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A626D0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A626D4  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A626D8  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A626DC  38 A0 00 0C */	li r5, 0xc
/* 80A626E0  38 C0 00 03 */	li r6, 3
/* 80A626E4  4B 8F F6 04 */	b __destroy_arr
/* 80A626E8  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A626EC  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A626F0  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A626F4  38 A0 00 0C */	li r5, 0xc
/* 80A626F8  38 C0 00 03 */	li r6, 3
/* 80A626FC  4B 8F F5 EC */	b __destroy_arr
/* 80A62700  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A62704  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A62708  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6270C  38 A0 00 0C */	li r5, 0xc
/* 80A62710  38 C0 00 03 */	li r6, 3
/* 80A62714  4B 8F F5 D4 */	b __destroy_arr
/* 80A62718  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A6271C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A62720  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A62724  38 A0 00 0C */	li r5, 0xc
/* 80A62728  38 C0 00 03 */	li r6, 3
/* 80A6272C  4B 8F F5 BC */	b __destroy_arr
/* 80A62730  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A62734  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A62738  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6273C  38 A0 00 0C */	li r5, 0xc
/* 80A62740  38 C0 00 03 */	li r6, 3
/* 80A62744  4B 8F F5 A4 */	b __destroy_arr
/* 80A62748  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A6274C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A62750  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A62754  38 A0 00 0C */	li r5, 0xc
/* 80A62758  38 C0 00 03 */	li r6, 3
/* 80A6275C  4B 8F F5 8C */	b __destroy_arr
/* 80A62760  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A62764  41 82 00 10 */	beq lbl_80A62774
/* 80A62768  3C 60 80 A6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6276C  38 03 41 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A62770  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A62774:
/* 80A62774  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A62778  41 82 00 10 */	beq lbl_80A62788
/* 80A6277C  3C 60 80 A6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A62780  38 03 41 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A62784  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A62788:
/* 80A62788  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A6278C  41 82 00 10 */	beq lbl_80A6279C
/* 80A62790  3C 60 80 A6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A62794  38 03 41 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A62798  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A6279C:
/* 80A6279C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A627A0  41 82 00 10 */	beq lbl_80A627B0
/* 80A627A4  3C 60 80 A6 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A627A8  38 03 41 00 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A627AC  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A627B0:
/* 80A627B0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A627B4  41 82 00 10 */	beq lbl_80A627C4
/* 80A627B8  3C 60 80 A6 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A627BC  38 03 41 00 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A627C0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A627C4:
/* 80A627C4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A627C8  38 80 FF FF */	li r4, -1
/* 80A627CC  4B 61 55 10 */	b __dt__11dBgS_LinChkFv
/* 80A627D0  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A627D4  38 80 FF FF */	li r4, -1
/* 80A627D8  4B 61 4E 18 */	b __dt__11dBgS_GndChkFv
/* 80A627DC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A627E0  41 82 00 54 */	beq lbl_80A62834
/* 80A627E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A627E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A627EC  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A627F0  38 03 00 20 */	addi r0, r3, 0x20
/* 80A627F4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A627F8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A627FC  41 82 00 24 */	beq lbl_80A62820
/* 80A62800  3C 60 80 A6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A62804  38 03 40 F4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A62808  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A6280C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A62810  41 82 00 10 */	beq lbl_80A62820
/* 80A62814  3C 60 80 A6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A62818  38 03 40 E8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A6281C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A62820:
/* 80A62820  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A62824  41 82 00 10 */	beq lbl_80A62834
/* 80A62828  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A6282C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A62830  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A62834:
/* 80A62834  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A62838  38 80 FF FF */	li r4, -1
/* 80A6283C  4B 7E 77 0C */	b __dt__10dMsgFlow_cFv
/* 80A62840  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A62844  38 80 FF FF */	li r4, -1
/* 80A62848  4B 80 54 4C */	b __dt__11cBgS_GndChkFv
/* 80A6284C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A62850  41 82 00 28 */	beq lbl_80A62878
/* 80A62854  3C 60 80 A6 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A62858  38 03 40 DC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A6285C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A62860  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A62864  38 80 FF FF */	li r4, -1
/* 80A62868  4B 80 C6 B0 */	b __dt__8cM3dGCirFv
/* 80A6286C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A62870  38 80 00 00 */	li r4, 0
/* 80A62874  4B 80 58 3C */	b __dt__13cBgS_PolyInfoFv
lbl_80A62878:
/* 80A62878  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A6287C  41 82 00 54 */	beq lbl_80A628D0
/* 80A62880  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A62884  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A62888  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A6288C  38 03 00 20 */	addi r0, r3, 0x20
/* 80A62890  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A62894  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A62898  41 82 00 24 */	beq lbl_80A628BC
/* 80A6289C  3C 60 80 A6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A628A0  38 03 40 F4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A628A4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A628A8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A628AC  41 82 00 10 */	beq lbl_80A628BC
/* 80A628B0  3C 60 80 A6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A628B4  38 03 40 E8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A628B8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A628BC:
/* 80A628BC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A628C0  41 82 00 10 */	beq lbl_80A628D0
/* 80A628C4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A628C8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A628CC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A628D0:
/* 80A628D0  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A628D4  41 82 00 2C */	beq lbl_80A62900
/* 80A628D8  3C 60 80 A6 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A628DC  38 63 40 B8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A628E0  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A628E4  38 03 00 0C */	addi r0, r3, 0xc
/* 80A628E8  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A628EC  38 03 00 18 */	addi r0, r3, 0x18
/* 80A628F0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A628F4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A628F8  38 80 00 00 */	li r4, 0
/* 80A628FC  4B 61 36 98 */	b __dt__9dBgS_AcchFv
lbl_80A62900:
/* 80A62900  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A62904  41 82 00 20 */	beq lbl_80A62924
/* 80A62908  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A6290C  41 82 00 18 */	beq lbl_80A62924
/* 80A62910  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A62914  41 82 00 10 */	beq lbl_80A62924
/* 80A62918  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6291C  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A62920  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A62924:
/* 80A62924  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A62928  41 82 00 20 */	beq lbl_80A62948
/* 80A6292C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A62930  41 82 00 18 */	beq lbl_80A62948
/* 80A62934  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A62938  41 82 00 10 */	beq lbl_80A62948
/* 80A6293C  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A62940  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A62944  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A62948:
/* 80A62948  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A6294C  41 82 00 20 */	beq lbl_80A6296C
/* 80A62950  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A62954  41 82 00 18 */	beq lbl_80A6296C
/* 80A62958  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A6295C  41 82 00 10 */	beq lbl_80A6296C
/* 80A62960  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A62964  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A62968  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A6296C:
/* 80A6296C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A62970  41 82 00 20 */	beq lbl_80A62990
/* 80A62974  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A62978  41 82 00 18 */	beq lbl_80A62990
/* 80A6297C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A62980  41 82 00 10 */	beq lbl_80A62990
/* 80A62984  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A62988  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6298C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A62990:
/* 80A62990  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A62994  41 82 00 20 */	beq lbl_80A629B4
/* 80A62998  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A6299C  41 82 00 18 */	beq lbl_80A629B4
/* 80A629A0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A629A4  41 82 00 10 */	beq lbl_80A629B4
/* 80A629A8  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A629AC  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A629B0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A629B4:
/* 80A629B4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A629B8  38 80 FF FF */	li r4, -1
/* 80A629BC  4B 85 DA 64 */	b __dt__10Z2CreatureFv
/* 80A629C0  7F C3 F3 78 */	mr r3, r30
/* 80A629C4  38 80 00 00 */	li r4, 0
/* 80A629C8  4B 5B 62 C4 */	b __dt__10fopAc_ac_cFv
/* 80A629CC  7F E0 07 35 */	extsh. r0, r31
/* 80A629D0  40 81 00 0C */	ble lbl_80A629DC
/* 80A629D4  7F C3 F3 78 */	mr r3, r30
/* 80A629D8  4B 86 C3 64 */	b __dl__FPv
lbl_80A629DC:
/* 80A629DC  7F C3 F3 78 */	mr r3, r30
/* 80A629E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A629E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A629E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A629EC  7C 08 03 A6 */	mtlr r0
/* 80A629F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A629F4  4E 80 00 20 */	blr 
