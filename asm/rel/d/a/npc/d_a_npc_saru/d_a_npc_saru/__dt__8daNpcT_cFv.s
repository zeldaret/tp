lbl_80AC3284:
/* 80AC3284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3288  7C 08 02 A6 */	mflr r0
/* 80AC328C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3294  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC3298  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC329C  7C 9F 23 78 */	mr r31, r4
/* 80AC32A0  41 82 03 50 */	beq lbl_80AC35F0
/* 80AC32A4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AC32A8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AC32AC  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AC32B0  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AC32B4  41 82 00 1C */	beq lbl_80AC32D0
/* 80AC32B8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AC32BC  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha /* 0x80AC3648@ha */
/* 80AC32C0  38 84 36 48 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AC3648@l */
/* 80AC32C4  38 A0 00 06 */	li r5, 6
/* 80AC32C8  38 C0 00 02 */	li r6, 2
/* 80AC32CC  4B 89 EA 1D */	bl __destroy_arr
lbl_80AC32D0:
/* 80AC32D0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AC32D4  41 82 00 B4 */	beq lbl_80AC3388
/* 80AC32D8  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC4EE0@ha */
/* 80AC32DC  38 03 4E E0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC4EE0@l */
/* 80AC32E0  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AC32E4  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AC32E8  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC32EC  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC32F0  38 A0 00 0C */	li r5, 0xc
/* 80AC32F4  38 C0 00 03 */	li r6, 3
/* 80AC32F8  4B 89 E9 F1 */	bl __destroy_arr
/* 80AC32FC  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AC3300  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3304  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3308  38 A0 00 0C */	li r5, 0xc
/* 80AC330C  38 C0 00 03 */	li r6, 3
/* 80AC3310  4B 89 E9 D9 */	bl __destroy_arr
/* 80AC3314  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AC3318  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC331C  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3320  38 A0 00 0C */	li r5, 0xc
/* 80AC3324  38 C0 00 03 */	li r6, 3
/* 80AC3328  4B 89 E9 C1 */	bl __destroy_arr
/* 80AC332C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AC3330  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3334  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3338  38 A0 00 0C */	li r5, 0xc
/* 80AC333C  38 C0 00 03 */	li r6, 3
/* 80AC3340  4B 89 E9 A9 */	bl __destroy_arr
/* 80AC3344  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AC3348  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC334C  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3350  38 A0 00 0C */	li r5, 0xc
/* 80AC3354  38 C0 00 03 */	li r6, 3
/* 80AC3358  4B 89 E9 91 */	bl __destroy_arr
/* 80AC335C  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AC3360  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3364  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3368  38 A0 00 0C */	li r5, 0xc
/* 80AC336C  38 C0 00 03 */	li r6, 3
/* 80AC3370  4B 89 E9 79 */	bl __destroy_arr
/* 80AC3374  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AC3378  41 82 00 10 */	beq lbl_80AC3388
/* 80AC337C  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC3380  38 03 4E D4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC3384  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AC3388:
/* 80AC3388  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AC338C  41 82 00 10 */	beq lbl_80AC339C
/* 80AC3390  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC3394  38 03 4E D4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC3398  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AC339C:
/* 80AC339C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AC33A0  41 82 00 10 */	beq lbl_80AC33B0
/* 80AC33A4  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC33A8  38 03 4E D4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC33AC  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AC33B0:
/* 80AC33B0  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AC33B4  41 82 00 10 */	beq lbl_80AC33C4
/* 80AC33B8  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC4EC8@ha */
/* 80AC33BC  38 03 4E C8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC4EC8@l */
/* 80AC33C0  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AC33C4:
/* 80AC33C4  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AC33C8  41 82 00 10 */	beq lbl_80AC33D8
/* 80AC33CC  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC4EC8@ha */
/* 80AC33D0  38 03 4E C8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC4EC8@l */
/* 80AC33D4  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AC33D8:
/* 80AC33D8  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AC33DC  38 80 FF FF */	li r4, -1
/* 80AC33E0  4B 5B 48 FD */	bl __dt__11dBgS_LinChkFv
/* 80AC33E4  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AC33E8  38 80 FF FF */	li r4, -1
/* 80AC33EC  4B 5B 42 05 */	bl __dt__11dBgS_GndChkFv
/* 80AC33F0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AC33F4  41 82 00 54 */	beq lbl_80AC3448
/* 80AC33F8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC33FC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC3400  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AC3404  38 03 00 20 */	addi r0, r3, 0x20
/* 80AC3408  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AC340C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AC3410  41 82 00 24 */	beq lbl_80AC3434
/* 80AC3414  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AC4EBC@ha */
/* 80AC3418  38 03 4E BC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AC4EBC@l */
/* 80AC341C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AC3420  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AC3424  41 82 00 10 */	beq lbl_80AC3434
/* 80AC3428  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AC4EB0@ha */
/* 80AC342C  38 03 4E B0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AC4EB0@l */
/* 80AC3430  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AC3434:
/* 80AC3434  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AC3438  41 82 00 10 */	beq lbl_80AC3448
/* 80AC343C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC3440  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC3444  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AC3448:
/* 80AC3448  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AC344C  38 80 FF FF */	li r4, -1
/* 80AC3450  4B 78 6A F9 */	bl __dt__10dMsgFlow_cFv
/* 80AC3454  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AC3458  38 80 FF FF */	li r4, -1
/* 80AC345C  4B 7A 48 39 */	bl __dt__11cBgS_GndChkFv
/* 80AC3460  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AC3464  41 82 00 28 */	beq lbl_80AC348C
/* 80AC3468  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AC4EA4@ha */
/* 80AC346C  38 03 4E A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AC4EA4@l */
/* 80AC3470  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AC3474  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AC3478  38 80 FF FF */	li r4, -1
/* 80AC347C  4B 7A BA 9D */	bl __dt__8cM3dGCirFv
/* 80AC3480  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AC3484  38 80 00 00 */	li r4, 0
/* 80AC3488  4B 7A 4C 29 */	bl __dt__13cBgS_PolyInfoFv
lbl_80AC348C:
/* 80AC348C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AC3490  41 82 00 54 */	beq lbl_80AC34E4
/* 80AC3494  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC3498  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC349C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AC34A0  38 03 00 20 */	addi r0, r3, 0x20
/* 80AC34A4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AC34A8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AC34AC  41 82 00 24 */	beq lbl_80AC34D0
/* 80AC34B0  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AC4EBC@ha */
/* 80AC34B4  38 03 4E BC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AC4EBC@l */
/* 80AC34B8  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AC34BC  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AC34C0  41 82 00 10 */	beq lbl_80AC34D0
/* 80AC34C4  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AC4EB0@ha */
/* 80AC34C8  38 03 4E B0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AC4EB0@l */
/* 80AC34CC  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AC34D0:
/* 80AC34D0  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AC34D4  41 82 00 10 */	beq lbl_80AC34E4
/* 80AC34D8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC34DC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC34E0  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AC34E4:
/* 80AC34E4  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AC34E8  41 82 00 2C */	beq lbl_80AC3514
/* 80AC34EC  3C 60 80 AC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AC4E80@ha */
/* 80AC34F0  38 63 4E 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AC4E80@l */
/* 80AC34F4  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AC34F8  38 03 00 0C */	addi r0, r3, 0xc
/* 80AC34FC  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AC3500  38 03 00 18 */	addi r0, r3, 0x18
/* 80AC3504  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AC3508  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC350C  38 80 00 00 */	li r4, 0
/* 80AC3510  4B 5B 2A 85 */	bl __dt__9dBgS_AcchFv
lbl_80AC3514:
/* 80AC3514  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC3518  41 82 00 20 */	beq lbl_80AC3538
/* 80AC351C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC3520  41 82 00 18 */	beq lbl_80AC3538
/* 80AC3524  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC3528  41 82 00 10 */	beq lbl_80AC3538
/* 80AC352C  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC3530  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC3534  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AC3538:
/* 80AC3538  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC353C  41 82 00 20 */	beq lbl_80AC355C
/* 80AC3540  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC3544  41 82 00 18 */	beq lbl_80AC355C
/* 80AC3548  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC354C  41 82 00 10 */	beq lbl_80AC355C
/* 80AC3550  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC3554  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC3558  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AC355C:
/* 80AC355C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC3560  41 82 00 20 */	beq lbl_80AC3580
/* 80AC3564  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC3568  41 82 00 18 */	beq lbl_80AC3580
/* 80AC356C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC3570  41 82 00 10 */	beq lbl_80AC3580
/* 80AC3574  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC3578  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC357C  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AC3580:
/* 80AC3580  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC3584  41 82 00 20 */	beq lbl_80AC35A4
/* 80AC3588  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC358C  41 82 00 18 */	beq lbl_80AC35A4
/* 80AC3590  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC3594  41 82 00 10 */	beq lbl_80AC35A4
/* 80AC3598  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC359C  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC35A0  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AC35A4:
/* 80AC35A4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC35A8  41 82 00 20 */	beq lbl_80AC35C8
/* 80AC35AC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC35B0  41 82 00 18 */	beq lbl_80AC35C8
/* 80AC35B4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC35B8  41 82 00 10 */	beq lbl_80AC35C8
/* 80AC35BC  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC35C0  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC35C4  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AC35C8:
/* 80AC35C8  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AC35CC  38 80 FF FF */	li r4, -1
/* 80AC35D0  4B 7F CE 51 */	bl __dt__10Z2CreatureFv
/* 80AC35D4  7F C3 F3 78 */	mr r3, r30
/* 80AC35D8  38 80 00 00 */	li r4, 0
/* 80AC35DC  4B 55 56 B1 */	bl __dt__10fopAc_ac_cFv
/* 80AC35E0  7F E0 07 35 */	extsh. r0, r31
/* 80AC35E4  40 81 00 0C */	ble lbl_80AC35F0
/* 80AC35E8  7F C3 F3 78 */	mr r3, r30
/* 80AC35EC  4B 80 B7 51 */	bl __dl__FPv
lbl_80AC35F0:
/* 80AC35F0  7F C3 F3 78 */	mr r3, r30
/* 80AC35F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC35F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC35FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3600  7C 08 03 A6 */	mtlr r0
/* 80AC3604  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3608  4E 80 00 20 */	blr 
