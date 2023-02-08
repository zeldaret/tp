lbl_80B48464:
/* 80B48464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48468  7C 08 02 A6 */	mflr r0
/* 80B4846C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B48474  93 C1 00 08 */	stw r30, 8(r1)
/* 80B48478  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B4847C  7C 9F 23 78 */	mr r31, r4
/* 80B48480  41 82 03 50 */	beq lbl_80B487D0
/* 80B48484  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B48488  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B4848C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B48490  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B48494  41 82 00 1C */	beq lbl_80B484B0
/* 80B48498  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B4849C  3C 80 80 B5 */	lis r4, __dt__5csXyzFv@ha /* 0x80B48828@ha */
/* 80B484A0  38 84 88 28 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B48828@l */
/* 80B484A4  38 A0 00 06 */	li r5, 6
/* 80B484A8  38 C0 00 02 */	li r6, 2
/* 80B484AC  4B 81 98 3D */	bl __destroy_arr
lbl_80B484B0:
/* 80B484B0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B484B4  41 82 00 B4 */	beq lbl_80B48568
/* 80B484B8  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B499CC@ha */
/* 80B484BC  38 03 99 CC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B499CC@l */
/* 80B484C0  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B484C4  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B484C8  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha /* 0x80B487EC@ha */
/* 80B484CC  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B487EC@l */
/* 80B484D0  38 A0 00 0C */	li r5, 0xc
/* 80B484D4  38 C0 00 03 */	li r6, 3
/* 80B484D8  4B 81 98 11 */	bl __destroy_arr
/* 80B484DC  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B484E0  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha /* 0x80B487EC@ha */
/* 80B484E4  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B487EC@l */
/* 80B484E8  38 A0 00 0C */	li r5, 0xc
/* 80B484EC  38 C0 00 03 */	li r6, 3
/* 80B484F0  4B 81 97 F9 */	bl __destroy_arr
/* 80B484F4  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B484F8  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha /* 0x80B487EC@ha */
/* 80B484FC  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B487EC@l */
/* 80B48500  38 A0 00 0C */	li r5, 0xc
/* 80B48504  38 C0 00 03 */	li r6, 3
/* 80B48508  4B 81 97 E1 */	bl __destroy_arr
/* 80B4850C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B48510  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha /* 0x80B487EC@ha */
/* 80B48514  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B487EC@l */
/* 80B48518  38 A0 00 0C */	li r5, 0xc
/* 80B4851C  38 C0 00 03 */	li r6, 3
/* 80B48520  4B 81 97 C9 */	bl __destroy_arr
/* 80B48524  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B48528  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha /* 0x80B487EC@ha */
/* 80B4852C  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B487EC@l */
/* 80B48530  38 A0 00 0C */	li r5, 0xc
/* 80B48534  38 C0 00 03 */	li r6, 3
/* 80B48538  4B 81 97 B1 */	bl __destroy_arr
/* 80B4853C  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B48540  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha /* 0x80B487EC@ha */
/* 80B48544  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B487EC@l */
/* 80B48548  38 A0 00 0C */	li r5, 0xc
/* 80B4854C  38 C0 00 03 */	li r6, 3
/* 80B48550  4B 81 97 99 */	bl __destroy_arr
/* 80B48554  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B48558  41 82 00 10 */	beq lbl_80B48568
/* 80B4855C  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B499C0@ha */
/* 80B48560  38 03 99 C0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B499C0@l */
/* 80B48564  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B48568:
/* 80B48568  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B4856C  41 82 00 10 */	beq lbl_80B4857C
/* 80B48570  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B499C0@ha */
/* 80B48574  38 03 99 C0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B499C0@l */
/* 80B48578  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B4857C:
/* 80B4857C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B48580  41 82 00 10 */	beq lbl_80B48590
/* 80B48584  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B499C0@ha */
/* 80B48588  38 03 99 C0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B499C0@l */
/* 80B4858C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B48590:
/* 80B48590  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B48594  41 82 00 10 */	beq lbl_80B485A4
/* 80B48598  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B499B4@ha */
/* 80B4859C  38 03 99 B4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B499B4@l */
/* 80B485A0  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B485A4:
/* 80B485A4  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B485A8  41 82 00 10 */	beq lbl_80B485B8
/* 80B485AC  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B499B4@ha */
/* 80B485B0  38 03 99 B4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B499B4@l */
/* 80B485B4  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B485B8:
/* 80B485B8  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B485BC  38 80 FF FF */	li r4, -1
/* 80B485C0  4B 52 F7 1D */	bl __dt__11dBgS_LinChkFv
/* 80B485C4  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B485C8  38 80 FF FF */	li r4, -1
/* 80B485CC  4B 52 F0 25 */	bl __dt__11dBgS_GndChkFv
/* 80B485D0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B485D4  41 82 00 54 */	beq lbl_80B48628
/* 80B485D8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B485DC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B485E0  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B485E4  38 03 00 20 */	addi r0, r3, 0x20
/* 80B485E8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B485EC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B485F0  41 82 00 24 */	beq lbl_80B48614
/* 80B485F4  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B499A8@ha */
/* 80B485F8  38 03 99 A8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B499A8@l */
/* 80B485FC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B48600  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B48604  41 82 00 10 */	beq lbl_80B48614
/* 80B48608  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B4999C@ha */
/* 80B4860C  38 03 99 9C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B4999C@l */
/* 80B48610  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B48614:
/* 80B48614  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B48618  41 82 00 10 */	beq lbl_80B48628
/* 80B4861C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B48620  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B48624  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B48628:
/* 80B48628  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B4862C  38 80 FF FF */	li r4, -1
/* 80B48630  4B 70 19 19 */	bl __dt__10dMsgFlow_cFv
/* 80B48634  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B48638  38 80 FF FF */	li r4, -1
/* 80B4863C  4B 71 F6 59 */	bl __dt__11cBgS_GndChkFv
/* 80B48640  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B48644  41 82 00 28 */	beq lbl_80B4866C
/* 80B48648  3C 60 80 B5 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B49990@ha */
/* 80B4864C  38 03 99 90 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B49990@l */
/* 80B48650  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B48654  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B48658  38 80 FF FF */	li r4, -1
/* 80B4865C  4B 72 68 BD */	bl __dt__8cM3dGCirFv
/* 80B48660  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B48664  38 80 00 00 */	li r4, 0
/* 80B48668  4B 71 FA 49 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B4866C:
/* 80B4866C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B48670  41 82 00 54 */	beq lbl_80B486C4
/* 80B48674  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B48678  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B4867C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B48680  38 03 00 20 */	addi r0, r3, 0x20
/* 80B48684  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B48688  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B4868C  41 82 00 24 */	beq lbl_80B486B0
/* 80B48690  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B499A8@ha */
/* 80B48694  38 03 99 A8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B499A8@l */
/* 80B48698  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B4869C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B486A0  41 82 00 10 */	beq lbl_80B486B0
/* 80B486A4  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B4999C@ha */
/* 80B486A8  38 03 99 9C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B4999C@l */
/* 80B486AC  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B486B0:
/* 80B486B0  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B486B4  41 82 00 10 */	beq lbl_80B486C4
/* 80B486B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B486BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B486C0  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B486C4:
/* 80B486C4  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B486C8  41 82 00 2C */	beq lbl_80B486F4
/* 80B486CC  3C 60 80 B5 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B4996C@ha */
/* 80B486D0  38 63 99 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B4996C@l */
/* 80B486D4  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B486D8  38 03 00 0C */	addi r0, r3, 0xc
/* 80B486DC  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B486E0  38 03 00 18 */	addi r0, r3, 0x18
/* 80B486E4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B486E8  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B486EC  38 80 00 00 */	li r4, 0
/* 80B486F0  4B 52 D8 A5 */	bl __dt__9dBgS_AcchFv
lbl_80B486F4:
/* 80B486F4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B486F8  41 82 00 20 */	beq lbl_80B48718
/* 80B486FC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B48700  41 82 00 18 */	beq lbl_80B48718
/* 80B48704  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B48708  41 82 00 10 */	beq lbl_80B48718
/* 80B4870C  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B49960@ha */
/* 80B48710  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B49960@l */
/* 80B48714  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B48718:
/* 80B48718  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B4871C  41 82 00 20 */	beq lbl_80B4873C
/* 80B48720  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B48724  41 82 00 18 */	beq lbl_80B4873C
/* 80B48728  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B4872C  41 82 00 10 */	beq lbl_80B4873C
/* 80B48730  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B49960@ha */
/* 80B48734  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B49960@l */
/* 80B48738  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B4873C:
/* 80B4873C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B48740  41 82 00 20 */	beq lbl_80B48760
/* 80B48744  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B48748  41 82 00 18 */	beq lbl_80B48760
/* 80B4874C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B48750  41 82 00 10 */	beq lbl_80B48760
/* 80B48754  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B49960@ha */
/* 80B48758  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B49960@l */
/* 80B4875C  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B48760:
/* 80B48760  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B48764  41 82 00 20 */	beq lbl_80B48784
/* 80B48768  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B4876C  41 82 00 18 */	beq lbl_80B48784
/* 80B48770  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B48774  41 82 00 10 */	beq lbl_80B48784
/* 80B48778  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B49960@ha */
/* 80B4877C  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B49960@l */
/* 80B48780  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B48784:
/* 80B48784  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B48788  41 82 00 20 */	beq lbl_80B487A8
/* 80B4878C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B48790  41 82 00 18 */	beq lbl_80B487A8
/* 80B48794  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B48798  41 82 00 10 */	beq lbl_80B487A8
/* 80B4879C  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B49960@ha */
/* 80B487A0  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B49960@l */
/* 80B487A4  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B487A8:
/* 80B487A8  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B487AC  38 80 FF FF */	li r4, -1
/* 80B487B0  4B 77 7C 71 */	bl __dt__10Z2CreatureFv
/* 80B487B4  7F C3 F3 78 */	mr r3, r30
/* 80B487B8  38 80 00 00 */	li r4, 0
/* 80B487BC  4B 4D 04 D1 */	bl __dt__10fopAc_ac_cFv
/* 80B487C0  7F E0 07 35 */	extsh. r0, r31
/* 80B487C4  40 81 00 0C */	ble lbl_80B487D0
/* 80B487C8  7F C3 F3 78 */	mr r3, r30
/* 80B487CC  4B 78 65 71 */	bl __dl__FPv
lbl_80B487D0:
/* 80B487D0  7F C3 F3 78 */	mr r3, r30
/* 80B487D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B487D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B487DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B487E0  7C 08 03 A6 */	mtlr r0
/* 80B487E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B487E8  4E 80 00 20 */	blr 
