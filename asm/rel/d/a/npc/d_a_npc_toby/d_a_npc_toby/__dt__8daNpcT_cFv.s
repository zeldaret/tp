lbl_80B23728:
/* 80B23728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2372C  7C 08 02 A6 */	mflr r0
/* 80B23730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23738  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2373C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B23740  7C 9F 23 78 */	mr r31, r4
/* 80B23744  41 82 03 50 */	beq lbl_80B23A94
/* 80B23748  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B2374C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B23750  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B23754  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B23758  41 82 00 1C */	beq lbl_80B23774
/* 80B2375C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B23760  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha /* 0x80B23AEC@ha */
/* 80B23764  38 84 3A EC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B23AEC@l */
/* 80B23768  38 A0 00 06 */	li r5, 6
/* 80B2376C  38 C0 00 02 */	li r6, 2
/* 80B23770  4B 83 E5 79 */	bl __destroy_arr
lbl_80B23774:
/* 80B23774  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B23778  41 82 00 B4 */	beq lbl_80B2382C
/* 80B2377C  3C 60 80 B2 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B25738@ha */
/* 80B23780  38 03 57 38 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B25738@l */
/* 80B23784  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B23788  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B2378C  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23790  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B23794  38 A0 00 0C */	li r5, 0xc
/* 80B23798  38 C0 00 03 */	li r6, 3
/* 80B2379C  4B 83 E5 4D */	bl __destroy_arr
/* 80B237A0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B237A4  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B237A8  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B237AC  38 A0 00 0C */	li r5, 0xc
/* 80B237B0  38 C0 00 03 */	li r6, 3
/* 80B237B4  4B 83 E5 35 */	bl __destroy_arr
/* 80B237B8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B237BC  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B237C0  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B237C4  38 A0 00 0C */	li r5, 0xc
/* 80B237C8  38 C0 00 03 */	li r6, 3
/* 80B237CC  4B 83 E5 1D */	bl __destroy_arr
/* 80B237D0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B237D4  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B237D8  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B237DC  38 A0 00 0C */	li r5, 0xc
/* 80B237E0  38 C0 00 03 */	li r6, 3
/* 80B237E4  4B 83 E5 05 */	bl __destroy_arr
/* 80B237E8  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B237EC  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B237F0  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B237F4  38 A0 00 0C */	li r5, 0xc
/* 80B237F8  38 C0 00 03 */	li r6, 3
/* 80B237FC  4B 83 E4 ED */	bl __destroy_arr
/* 80B23800  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B23804  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23808  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B2380C  38 A0 00 0C */	li r5, 0xc
/* 80B23810  38 C0 00 03 */	li r6, 3
/* 80B23814  4B 83 E4 D5 */	bl __destroy_arr
/* 80B23818  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B2381C  41 82 00 10 */	beq lbl_80B2382C
/* 80B23820  3C 60 80 B2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2572C@ha */
/* 80B23824  38 03 57 2C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2572C@l */
/* 80B23828  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B2382C:
/* 80B2382C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B23830  41 82 00 10 */	beq lbl_80B23840
/* 80B23834  3C 60 80 B2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2572C@ha */
/* 80B23838  38 03 57 2C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2572C@l */
/* 80B2383C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B23840:
/* 80B23840  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B23844  41 82 00 10 */	beq lbl_80B23854
/* 80B23848  3C 60 80 B2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2572C@ha */
/* 80B2384C  38 03 57 2C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2572C@l */
/* 80B23850  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B23854:
/* 80B23854  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B23858  41 82 00 10 */	beq lbl_80B23868
/* 80B2385C  3C 60 80 B2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B25720@ha */
/* 80B23860  38 03 57 20 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B25720@l */
/* 80B23864  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B23868:
/* 80B23868  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B2386C  41 82 00 10 */	beq lbl_80B2387C
/* 80B23870  3C 60 80 B2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B25720@ha */
/* 80B23874  38 03 57 20 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B25720@l */
/* 80B23878  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B2387C:
/* 80B2387C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B23880  38 80 FF FF */	li r4, -1
/* 80B23884  4B 55 44 59 */	bl __dt__11dBgS_LinChkFv
/* 80B23888  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B2388C  38 80 FF FF */	li r4, -1
/* 80B23890  4B 55 3D 61 */	bl __dt__11dBgS_GndChkFv
/* 80B23894  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B23898  41 82 00 54 */	beq lbl_80B238EC
/* 80B2389C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B238A0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B238A4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B238A8  38 03 00 20 */	addi r0, r3, 0x20
/* 80B238AC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B238B0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B238B4  41 82 00 24 */	beq lbl_80B238D8
/* 80B238B8  3C 60 80 B2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B25714@ha */
/* 80B238BC  38 03 57 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B25714@l */
/* 80B238C0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B238C4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B238C8  41 82 00 10 */	beq lbl_80B238D8
/* 80B238CC  3C 60 80 B2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B25708@ha */
/* 80B238D0  38 03 57 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B25708@l */
/* 80B238D4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B238D8:
/* 80B238D8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B238DC  41 82 00 10 */	beq lbl_80B238EC
/* 80B238E0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B238E4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B238E8  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B238EC:
/* 80B238EC  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B238F0  38 80 FF FF */	li r4, -1
/* 80B238F4  4B 72 66 55 */	bl __dt__10dMsgFlow_cFv
/* 80B238F8  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B238FC  38 80 FF FF */	li r4, -1
/* 80B23900  4B 74 43 95 */	bl __dt__11cBgS_GndChkFv
/* 80B23904  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B23908  41 82 00 28 */	beq lbl_80B23930
/* 80B2390C  3C 60 80 B2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B256FC@ha */
/* 80B23910  38 03 56 FC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B256FC@l */
/* 80B23914  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B23918  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B2391C  38 80 FF FF */	li r4, -1
/* 80B23920  4B 74 B5 F9 */	bl __dt__8cM3dGCirFv
/* 80B23924  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B23928  38 80 00 00 */	li r4, 0
/* 80B2392C  4B 74 47 85 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B23930:
/* 80B23930  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B23934  41 82 00 54 */	beq lbl_80B23988
/* 80B23938  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B2393C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B23940  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B23944  38 03 00 20 */	addi r0, r3, 0x20
/* 80B23948  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B2394C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B23950  41 82 00 24 */	beq lbl_80B23974
/* 80B23954  3C 60 80 B2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B25714@ha */
/* 80B23958  38 03 57 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B25714@l */
/* 80B2395C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B23960  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B23964  41 82 00 10 */	beq lbl_80B23974
/* 80B23968  3C 60 80 B2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B25708@ha */
/* 80B2396C  38 03 57 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B25708@l */
/* 80B23970  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B23974:
/* 80B23974  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B23978  41 82 00 10 */	beq lbl_80B23988
/* 80B2397C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B23980  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B23984  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B23988:
/* 80B23988  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B2398C  41 82 00 2C */	beq lbl_80B239B8
/* 80B23990  3C 60 80 B2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B256D8@ha */
/* 80B23994  38 63 56 D8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B256D8@l */
/* 80B23998  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B2399C  38 03 00 0C */	addi r0, r3, 0xc
/* 80B239A0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B239A4  38 03 00 18 */	addi r0, r3, 0x18
/* 80B239A8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B239AC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B239B0  38 80 00 00 */	li r4, 0
/* 80B239B4  4B 55 25 E1 */	bl __dt__9dBgS_AcchFv
lbl_80B239B8:
/* 80B239B8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B239BC  41 82 00 20 */	beq lbl_80B239DC
/* 80B239C0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B239C4  41 82 00 18 */	beq lbl_80B239DC
/* 80B239C8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B239CC  41 82 00 10 */	beq lbl_80B239DC
/* 80B239D0  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B239D4  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B239D8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B239DC:
/* 80B239DC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B239E0  41 82 00 20 */	beq lbl_80B23A00
/* 80B239E4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B239E8  41 82 00 18 */	beq lbl_80B23A00
/* 80B239EC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B239F0  41 82 00 10 */	beq lbl_80B23A00
/* 80B239F4  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B239F8  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B239FC  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B23A00:
/* 80B23A00  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B23A04  41 82 00 20 */	beq lbl_80B23A24
/* 80B23A08  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B23A0C  41 82 00 18 */	beq lbl_80B23A24
/* 80B23A10  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B23A14  41 82 00 10 */	beq lbl_80B23A24
/* 80B23A18  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23A1C  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23A20  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B23A24:
/* 80B23A24  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B23A28  41 82 00 20 */	beq lbl_80B23A48
/* 80B23A2C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B23A30  41 82 00 18 */	beq lbl_80B23A48
/* 80B23A34  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B23A38  41 82 00 10 */	beq lbl_80B23A48
/* 80B23A3C  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23A40  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23A44  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B23A48:
/* 80B23A48  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B23A4C  41 82 00 20 */	beq lbl_80B23A6C
/* 80B23A50  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B23A54  41 82 00 18 */	beq lbl_80B23A6C
/* 80B23A58  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B23A5C  41 82 00 10 */	beq lbl_80B23A6C
/* 80B23A60  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23A64  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23A68  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B23A6C:
/* 80B23A6C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B23A70  38 80 FF FF */	li r4, -1
/* 80B23A74  4B 79 C9 AD */	bl __dt__10Z2CreatureFv
/* 80B23A78  7F C3 F3 78 */	mr r3, r30
/* 80B23A7C  38 80 00 00 */	li r4, 0
/* 80B23A80  4B 4F 52 0D */	bl __dt__10fopAc_ac_cFv
/* 80B23A84  7F E0 07 35 */	extsh. r0, r31
/* 80B23A88  40 81 00 0C */	ble lbl_80B23A94
/* 80B23A8C  7F C3 F3 78 */	mr r3, r30
/* 80B23A90  4B 7A B2 AD */	bl __dl__FPv
lbl_80B23A94:
/* 80B23A94  7F C3 F3 78 */	mr r3, r30
/* 80B23A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23A9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B23AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23AA4  7C 08 03 A6 */	mtlr r0
/* 80B23AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23AAC  4E 80 00 20 */	blr 
