lbl_809BD348:
/* 809BD348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD34C  7C 08 02 A6 */	mflr r0
/* 809BD350  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BD358  93 C1 00 08 */	stw r30, 8(r1)
/* 809BD35C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BD360  7C 9F 23 78 */	mr r31, r4
/* 809BD364  41 82 03 50 */	beq lbl_809BD6B4
/* 809BD368  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 809BD36C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 809BD370  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809BD374  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 809BD378  41 82 00 1C */	beq lbl_809BD394
/* 809BD37C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809BD380  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha /* 0x809BD70C@ha */
/* 809BD384  38 84 D7 0C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809BD70C@l */
/* 809BD388  38 A0 00 06 */	li r5, 6
/* 809BD38C  38 C0 00 02 */	li r6, 2
/* 809BD390  4B 9A 49 59 */	bl __destroy_arr
lbl_809BD394:
/* 809BD394  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809BD398  41 82 00 B4 */	beq lbl_809BD44C
/* 809BD39C  3C 60 80 9C */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x809BE74C@ha */
/* 809BD3A0  38 03 E7 4C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x809BE74C@l */
/* 809BD3A4  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 809BD3A8  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809BD3AC  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD3B0  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD3B4  38 A0 00 0C */	li r5, 0xc
/* 809BD3B8  38 C0 00 03 */	li r6, 3
/* 809BD3BC  4B 9A 49 2D */	bl __destroy_arr
/* 809BD3C0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 809BD3C4  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD3C8  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD3CC  38 A0 00 0C */	li r5, 0xc
/* 809BD3D0  38 C0 00 03 */	li r6, 3
/* 809BD3D4  4B 9A 49 15 */	bl __destroy_arr
/* 809BD3D8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 809BD3DC  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD3E0  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD3E4  38 A0 00 0C */	li r5, 0xc
/* 809BD3E8  38 C0 00 03 */	li r6, 3
/* 809BD3EC  4B 9A 48 FD */	bl __destroy_arr
/* 809BD3F0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 809BD3F4  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD3F8  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD3FC  38 A0 00 0C */	li r5, 0xc
/* 809BD400  38 C0 00 03 */	li r6, 3
/* 809BD404  4B 9A 48 E5 */	bl __destroy_arr
/* 809BD408  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 809BD40C  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD410  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD414  38 A0 00 0C */	li r5, 0xc
/* 809BD418  38 C0 00 03 */	li r6, 3
/* 809BD41C  4B 9A 48 CD */	bl __destroy_arr
/* 809BD420  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 809BD424  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD428  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD42C  38 A0 00 0C */	li r5, 0xc
/* 809BD430  38 C0 00 03 */	li r6, 3
/* 809BD434  4B 9A 48 B5 */	bl __destroy_arr
/* 809BD438  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809BD43C  41 82 00 10 */	beq lbl_809BD44C
/* 809BD440  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BE740@ha */
/* 809BD444  38 03 E7 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BE740@l */
/* 809BD448  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_809BD44C:
/* 809BD44C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 809BD450  41 82 00 10 */	beq lbl_809BD460
/* 809BD454  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BE740@ha */
/* 809BD458  38 03 E7 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BE740@l */
/* 809BD45C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_809BD460:
/* 809BD460  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 809BD464  41 82 00 10 */	beq lbl_809BD474
/* 809BD468  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BE740@ha */
/* 809BD46C  38 03 E7 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BE740@l */
/* 809BD470  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_809BD474:
/* 809BD474  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 809BD478  41 82 00 10 */	beq lbl_809BD488
/* 809BD47C  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809BE734@ha */
/* 809BD480  38 03 E7 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809BE734@l */
/* 809BD484  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_809BD488:
/* 809BD488  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 809BD48C  41 82 00 10 */	beq lbl_809BD49C
/* 809BD490  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809BE734@ha */
/* 809BD494  38 03 E7 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809BE734@l */
/* 809BD498  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_809BD49C:
/* 809BD49C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 809BD4A0  38 80 FF FF */	li r4, -1
/* 809BD4A4  4B 6B A8 39 */	bl __dt__11dBgS_LinChkFv
/* 809BD4A8  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 809BD4AC  38 80 FF FF */	li r4, -1
/* 809BD4B0  4B 6B A1 41 */	bl __dt__11dBgS_GndChkFv
/* 809BD4B4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809BD4B8  41 82 00 54 */	beq lbl_809BD50C
/* 809BD4BC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809BD4C0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809BD4C4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 809BD4C8  38 03 00 20 */	addi r0, r3, 0x20
/* 809BD4CC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809BD4D0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809BD4D4  41 82 00 24 */	beq lbl_809BD4F8
/* 809BD4D8  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha /* 0x809BE728@ha */
/* 809BD4DC  38 03 E7 28 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809BE728@l */
/* 809BD4E0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809BD4E4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809BD4E8  41 82 00 10 */	beq lbl_809BD4F8
/* 809BD4EC  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha /* 0x809BE71C@ha */
/* 809BD4F0  38 03 E7 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809BE71C@l */
/* 809BD4F4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_809BD4F8:
/* 809BD4F8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809BD4FC  41 82 00 10 */	beq lbl_809BD50C
/* 809BD500  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809BD504  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809BD508  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_809BD50C:
/* 809BD50C  38 7E 09 74 */	addi r3, r30, 0x974
/* 809BD510  38 80 FF FF */	li r4, -1
/* 809BD514  4B 88 CA 35 */	bl __dt__10dMsgFlow_cFv
/* 809BD518  38 7E 09 30 */	addi r3, r30, 0x930
/* 809BD51C  38 80 FF FF */	li r4, -1
/* 809BD520  4B 8A A7 75 */	bl __dt__11cBgS_GndChkFv
/* 809BD524  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 809BD528  41 82 00 28 */	beq lbl_809BD550
/* 809BD52C  3C 60 80 9C */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809BE710@ha */
/* 809BD530  38 03 E7 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809BE710@l */
/* 809BD534  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 809BD538  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 809BD53C  38 80 FF FF */	li r4, -1
/* 809BD540  4B 8B 19 D9 */	bl __dt__8cM3dGCirFv
/* 809BD544  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 809BD548  38 80 00 00 */	li r4, 0
/* 809BD54C  4B 8A AB 65 */	bl __dt__13cBgS_PolyInfoFv
lbl_809BD550:
/* 809BD550  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809BD554  41 82 00 54 */	beq lbl_809BD5A8
/* 809BD558  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809BD55C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809BD560  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 809BD564  38 03 00 20 */	addi r0, r3, 0x20
/* 809BD568  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809BD56C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809BD570  41 82 00 24 */	beq lbl_809BD594
/* 809BD574  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha /* 0x809BE728@ha */
/* 809BD578  38 03 E7 28 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809BE728@l */
/* 809BD57C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809BD580  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809BD584  41 82 00 10 */	beq lbl_809BD594
/* 809BD588  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha /* 0x809BE71C@ha */
/* 809BD58C  38 03 E7 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809BE71C@l */
/* 809BD590  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_809BD594:
/* 809BD594  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809BD598  41 82 00 10 */	beq lbl_809BD5A8
/* 809BD59C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809BD5A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809BD5A4  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_809BD5A8:
/* 809BD5A8  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 809BD5AC  41 82 00 2C */	beq lbl_809BD5D8
/* 809BD5B0  3C 60 80 9C */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809BE6EC@ha */
/* 809BD5B4  38 63 E6 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809BE6EC@l */
/* 809BD5B8  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 809BD5BC  38 03 00 0C */	addi r0, r3, 0xc
/* 809BD5C0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 809BD5C4  38 03 00 18 */	addi r0, r3, 0x18
/* 809BD5C8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 809BD5CC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 809BD5D0  38 80 00 00 */	li r4, 0
/* 809BD5D4  4B 6B 89 C1 */	bl __dt__9dBgS_AcchFv
lbl_809BD5D8:
/* 809BD5D8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809BD5DC  41 82 00 20 */	beq lbl_809BD5FC
/* 809BD5E0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809BD5E4  41 82 00 18 */	beq lbl_809BD5FC
/* 809BD5E8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809BD5EC  41 82 00 10 */	beq lbl_809BD5FC
/* 809BD5F0  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD5F4  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD5F8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_809BD5FC:
/* 809BD5FC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809BD600  41 82 00 20 */	beq lbl_809BD620
/* 809BD604  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809BD608  41 82 00 18 */	beq lbl_809BD620
/* 809BD60C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809BD610  41 82 00 10 */	beq lbl_809BD620
/* 809BD614  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD618  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD61C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_809BD620:
/* 809BD620  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809BD624  41 82 00 20 */	beq lbl_809BD644
/* 809BD628  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809BD62C  41 82 00 18 */	beq lbl_809BD644
/* 809BD630  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809BD634  41 82 00 10 */	beq lbl_809BD644
/* 809BD638  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD63C  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD640  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_809BD644:
/* 809BD644  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809BD648  41 82 00 20 */	beq lbl_809BD668
/* 809BD64C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809BD650  41 82 00 18 */	beq lbl_809BD668
/* 809BD654  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809BD658  41 82 00 10 */	beq lbl_809BD668
/* 809BD65C  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD660  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD664  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_809BD668:
/* 809BD668  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809BD66C  41 82 00 20 */	beq lbl_809BD68C
/* 809BD670  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809BD674  41 82 00 18 */	beq lbl_809BD68C
/* 809BD678  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809BD67C  41 82 00 10 */	beq lbl_809BD68C
/* 809BD680  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD684  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD688  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_809BD68C:
/* 809BD68C  38 7E 05 80 */	addi r3, r30, 0x580
/* 809BD690  38 80 FF FF */	li r4, -1
/* 809BD694  4B 90 2D 8D */	bl __dt__10Z2CreatureFv
/* 809BD698  7F C3 F3 78 */	mr r3, r30
/* 809BD69C  38 80 00 00 */	li r4, 0
/* 809BD6A0  4B 65 B5 ED */	bl __dt__10fopAc_ac_cFv
/* 809BD6A4  7F E0 07 35 */	extsh. r0, r31
/* 809BD6A8  40 81 00 0C */	ble lbl_809BD6B4
/* 809BD6AC  7F C3 F3 78 */	mr r3, r30
/* 809BD6B0  4B 91 16 8D */	bl __dl__FPv
lbl_809BD6B4:
/* 809BD6B4  7F C3 F3 78 */	mr r3, r30
/* 809BD6B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BD6BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BD6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD6C4  7C 08 03 A6 */	mtlr r0
/* 809BD6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD6CC  4E 80 00 20 */	blr 
