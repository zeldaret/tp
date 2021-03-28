lbl_805591B4:
/* 805591B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805591B8  7C 08 02 A6 */	mflr r0
/* 805591BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805591C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805591C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805591C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 805591CC  7C 9F 23 78 */	mr r31, r4
/* 805591D0  41 82 03 50 */	beq lbl_80559520
/* 805591D4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 805591D8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 805591DC  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 805591E0  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 805591E4  41 82 00 1C */	beq lbl_80559200
/* 805591E8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 805591EC  3C 80 80 56 */	lis r4, __dt__5csXyzFv@ha
/* 805591F0  38 84 95 78 */	addi r4, r4, __dt__5csXyzFv@l
/* 805591F4  38 A0 00 06 */	li r5, 6
/* 805591F8  38 C0 00 02 */	li r6, 2
/* 805591FC  4B E0 8A EC */	b __destroy_arr
lbl_80559200:
/* 80559200  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80559204  41 82 00 B4 */	beq lbl_805592B8
/* 80559208  3C 60 80 56 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 8055920C  38 03 B2 C4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80559210  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80559214  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80559218  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 8055921C  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559220  38 A0 00 0C */	li r5, 0xc
/* 80559224  38 C0 00 03 */	li r6, 3
/* 80559228  4B E0 8A C0 */	b __destroy_arr
/* 8055922C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80559230  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559234  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559238  38 A0 00 0C */	li r5, 0xc
/* 8055923C  38 C0 00 03 */	li r6, 3
/* 80559240  4B E0 8A A8 */	b __destroy_arr
/* 80559244  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80559248  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 8055924C  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559250  38 A0 00 0C */	li r5, 0xc
/* 80559254  38 C0 00 03 */	li r6, 3
/* 80559258  4B E0 8A 90 */	b __destroy_arr
/* 8055925C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80559260  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559264  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559268  38 A0 00 0C */	li r5, 0xc
/* 8055926C  38 C0 00 03 */	li r6, 3
/* 80559270  4B E0 8A 78 */	b __destroy_arr
/* 80559274  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80559278  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 8055927C  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559280  38 A0 00 0C */	li r5, 0xc
/* 80559284  38 C0 00 03 */	li r6, 3
/* 80559288  4B E0 8A 60 */	b __destroy_arr
/* 8055928C  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80559290  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559294  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559298  38 A0 00 0C */	li r5, 0xc
/* 8055929C  38 C0 00 03 */	li r6, 3
/* 805592A0  4B E0 8A 48 */	b __destroy_arr
/* 805592A4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 805592A8  41 82 00 10 */	beq lbl_805592B8
/* 805592AC  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 805592B0  38 03 B2 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 805592B4  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_805592B8:
/* 805592B8  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 805592BC  41 82 00 10 */	beq lbl_805592CC
/* 805592C0  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 805592C4  38 03 B2 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 805592C8  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_805592CC:
/* 805592CC  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 805592D0  41 82 00 10 */	beq lbl_805592E0
/* 805592D4  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 805592D8  38 03 B2 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 805592DC  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_805592E0:
/* 805592E0  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 805592E4  41 82 00 10 */	beq lbl_805592F4
/* 805592E8  3C 60 80 56 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 805592EC  38 03 B2 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 805592F0  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_805592F4:
/* 805592F4  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 805592F8  41 82 00 10 */	beq lbl_80559308
/* 805592FC  3C 60 80 56 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80559300  38 03 B2 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80559304  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80559308:
/* 80559308  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 8055930C  38 80 FF FF */	li r4, -1
/* 80559310  4B B1 E9 CC */	b __dt__11dBgS_LinChkFv
/* 80559314  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80559318  38 80 FF FF */	li r4, -1
/* 8055931C  4B B1 E2 D4 */	b __dt__11dBgS_GndChkFv
/* 80559320  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80559324  41 82 00 54 */	beq lbl_80559378
/* 80559328  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8055932C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80559330  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80559334  38 03 00 20 */	addi r0, r3, 0x20
/* 80559338  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8055933C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80559340  41 82 00 24 */	beq lbl_80559364
/* 80559344  3C 60 80 56 */	lis r3, __vt__10dCcD_GStts@ha
/* 80559348  38 03 B2 A0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8055934C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80559350  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80559354  41 82 00 10 */	beq lbl_80559364
/* 80559358  3C 60 80 56 */	lis r3, __vt__10cCcD_GStts@ha
/* 8055935C  38 03 B2 94 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80559360  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80559364:
/* 80559364  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80559368  41 82 00 10 */	beq lbl_80559378
/* 8055936C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80559370  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80559374  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80559378:
/* 80559378  38 7E 09 74 */	addi r3, r30, 0x974
/* 8055937C  38 80 FF FF */	li r4, -1
/* 80559380  4B CF 0B C8 */	b __dt__10dMsgFlow_cFv
/* 80559384  38 7E 09 30 */	addi r3, r30, 0x930
/* 80559388  38 80 FF FF */	li r4, -1
/* 8055938C  4B D0 E9 08 */	b __dt__11cBgS_GndChkFv
/* 80559390  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80559394  41 82 00 28 */	beq lbl_805593BC
/* 80559398  3C 60 80 56 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8055939C  38 03 B2 88 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 805593A0  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 805593A4  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 805593A8  38 80 FF FF */	li r4, -1
/* 805593AC  4B D1 5B 6C */	b __dt__8cM3dGCirFv
/* 805593B0  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 805593B4  38 80 00 00 */	li r4, 0
/* 805593B8  4B D0 EC F8 */	b __dt__13cBgS_PolyInfoFv
lbl_805593BC:
/* 805593BC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 805593C0  41 82 00 54 */	beq lbl_80559414
/* 805593C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805593C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805593CC  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 805593D0  38 03 00 20 */	addi r0, r3, 0x20
/* 805593D4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 805593D8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 805593DC  41 82 00 24 */	beq lbl_80559400
/* 805593E0  3C 60 80 56 */	lis r3, __vt__10dCcD_GStts@ha
/* 805593E4  38 03 B2 A0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805593E8  90 1E 08 80 */	stw r0, 0x880(r30)
/* 805593EC  34 1E 08 80 */	addic. r0, r30, 0x880
/* 805593F0  41 82 00 10 */	beq lbl_80559400
/* 805593F4  3C 60 80 56 */	lis r3, __vt__10cCcD_GStts@ha
/* 805593F8  38 03 B2 94 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805593FC  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80559400:
/* 80559400  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80559404  41 82 00 10 */	beq lbl_80559414
/* 80559408  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8055940C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80559410  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80559414:
/* 80559414  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80559418  41 82 00 2C */	beq lbl_80559444
/* 8055941C  3C 60 80 56 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80559420  38 63 B2 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80559424  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80559428  38 03 00 0C */	addi r0, r3, 0xc
/* 8055942C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80559430  38 03 00 18 */	addi r0, r3, 0x18
/* 80559434  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80559438  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8055943C  38 80 00 00 */	li r4, 0
/* 80559440  4B B1 CB 54 */	b __dt__9dBgS_AcchFv
lbl_80559444:
/* 80559444  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80559448  41 82 00 20 */	beq lbl_80559468
/* 8055944C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80559450  41 82 00 18 */	beq lbl_80559468
/* 80559454  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80559458  41 82 00 10 */	beq lbl_80559468
/* 8055945C  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80559460  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80559464  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80559468:
/* 80559468  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8055946C  41 82 00 20 */	beq lbl_8055948C
/* 80559470  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80559474  41 82 00 18 */	beq lbl_8055948C
/* 80559478  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8055947C  41 82 00 10 */	beq lbl_8055948C
/* 80559480  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80559484  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80559488  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_8055948C:
/* 8055948C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80559490  41 82 00 20 */	beq lbl_805594B0
/* 80559494  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80559498  41 82 00 18 */	beq lbl_805594B0
/* 8055949C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 805594A0  41 82 00 10 */	beq lbl_805594B0
/* 805594A4  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805594A8  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805594AC  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_805594B0:
/* 805594B0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 805594B4  41 82 00 20 */	beq lbl_805594D4
/* 805594B8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 805594BC  41 82 00 18 */	beq lbl_805594D4
/* 805594C0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 805594C4  41 82 00 10 */	beq lbl_805594D4
/* 805594C8  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805594CC  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805594D0  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_805594D4:
/* 805594D4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 805594D8  41 82 00 20 */	beq lbl_805594F8
/* 805594DC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 805594E0  41 82 00 18 */	beq lbl_805594F8
/* 805594E4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 805594E8  41 82 00 10 */	beq lbl_805594F8
/* 805594EC  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805594F0  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805594F4  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_805594F8:
/* 805594F8  38 7E 05 80 */	addi r3, r30, 0x580
/* 805594FC  38 80 FF FF */	li r4, -1
/* 80559500  4B D6 6F 20 */	b __dt__10Z2CreatureFv
/* 80559504  7F C3 F3 78 */	mr r3, r30
/* 80559508  38 80 00 00 */	li r4, 0
/* 8055950C  4B AB F7 80 */	b __dt__10fopAc_ac_cFv
/* 80559510  7F E0 07 35 */	extsh. r0, r31
/* 80559514  40 81 00 0C */	ble lbl_80559520
/* 80559518  7F C3 F3 78 */	mr r3, r30
/* 8055951C  4B D7 58 20 */	b __dl__FPv
lbl_80559520:
/* 80559520  7F C3 F3 78 */	mr r3, r30
/* 80559524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559528  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055952C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559530  7C 08 03 A6 */	mtlr r0
/* 80559534  38 21 00 10 */	addi r1, r1, 0x10
/* 80559538  4E 80 00 20 */	blr 
