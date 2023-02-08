lbl_80B5C1C4:
/* 80B5C1C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C1C8  7C 08 02 A6 */	mflr r0
/* 80B5C1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C1D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C1D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5C1D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B5C1DC  7C 9F 23 78 */	mr r31, r4
/* 80B5C1E0  41 82 03 50 */	beq lbl_80B5C530
/* 80B5C1E4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B5C1E8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B5C1EC  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B5C1F0  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B5C1F4  41 82 00 1C */	beq lbl_80B5C210
/* 80B5C1F8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B5C1FC  3C 80 80 B6 */	lis r4, __dt__5csXyzFv@ha /* 0x80B5C588@ha */
/* 80B5C200  38 84 C5 88 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B5C588@l */
/* 80B5C204  38 A0 00 06 */	li r5, 6
/* 80B5C208  38 C0 00 02 */	li r6, 2
/* 80B5C20C  4B 80 5A DD */	bl __destroy_arr
lbl_80B5C210:
/* 80B5C210  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B5C214  41 82 00 B4 */	beq lbl_80B5C2C8
/* 80B5C218  3C 60 80 B6 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B5EC20@ha */
/* 80B5C21C  38 03 EC 20 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B5EC20@l */
/* 80B5C220  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B5C224  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B5C228  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5C22C  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5C230  38 A0 00 0C */	li r5, 0xc
/* 80B5C234  38 C0 00 03 */	li r6, 3
/* 80B5C238  4B 80 5A B1 */	bl __destroy_arr
/* 80B5C23C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B5C240  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5C244  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5C248  38 A0 00 0C */	li r5, 0xc
/* 80B5C24C  38 C0 00 03 */	li r6, 3
/* 80B5C250  4B 80 5A 99 */	bl __destroy_arr
/* 80B5C254  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B5C258  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5C25C  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5C260  38 A0 00 0C */	li r5, 0xc
/* 80B5C264  38 C0 00 03 */	li r6, 3
/* 80B5C268  4B 80 5A 81 */	bl __destroy_arr
/* 80B5C26C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B5C270  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5C274  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5C278  38 A0 00 0C */	li r5, 0xc
/* 80B5C27C  38 C0 00 03 */	li r6, 3
/* 80B5C280  4B 80 5A 69 */	bl __destroy_arr
/* 80B5C284  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B5C288  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5C28C  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5C290  38 A0 00 0C */	li r5, 0xc
/* 80B5C294  38 C0 00 03 */	li r6, 3
/* 80B5C298  4B 80 5A 51 */	bl __destroy_arr
/* 80B5C29C  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B5C2A0  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5C2A4  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5C2A8  38 A0 00 0C */	li r5, 0xc
/* 80B5C2AC  38 C0 00 03 */	li r6, 3
/* 80B5C2B0  4B 80 5A 39 */	bl __destroy_arr
/* 80B5C2B4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B5C2B8  41 82 00 10 */	beq lbl_80B5C2C8
/* 80B5C2BC  3C 60 80 B6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B5EC14@ha */
/* 80B5C2C0  38 03 EC 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B5EC14@l */
/* 80B5C2C4  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B5C2C8:
/* 80B5C2C8  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B5C2CC  41 82 00 10 */	beq lbl_80B5C2DC
/* 80B5C2D0  3C 60 80 B6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B5EC14@ha */
/* 80B5C2D4  38 03 EC 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B5EC14@l */
/* 80B5C2D8  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B5C2DC:
/* 80B5C2DC  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B5C2E0  41 82 00 10 */	beq lbl_80B5C2F0
/* 80B5C2E4  3C 60 80 B6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B5EC14@ha */
/* 80B5C2E8  38 03 EC 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B5EC14@l */
/* 80B5C2EC  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B5C2F0:
/* 80B5C2F0  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B5C2F4  41 82 00 10 */	beq lbl_80B5C304
/* 80B5C2F8  3C 60 80 B6 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B5EC08@ha */
/* 80B5C2FC  38 03 EC 08 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B5EC08@l */
/* 80B5C300  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B5C304:
/* 80B5C304  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B5C308  41 82 00 10 */	beq lbl_80B5C318
/* 80B5C30C  3C 60 80 B6 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B5EC08@ha */
/* 80B5C310  38 03 EC 08 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B5EC08@l */
/* 80B5C314  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B5C318:
/* 80B5C318  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B5C31C  38 80 FF FF */	li r4, -1
/* 80B5C320  4B 51 B9 BD */	bl __dt__11dBgS_LinChkFv
/* 80B5C324  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B5C328  38 80 FF FF */	li r4, -1
/* 80B5C32C  4B 51 B2 C5 */	bl __dt__11dBgS_GndChkFv
/* 80B5C330  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B5C334  41 82 00 54 */	beq lbl_80B5C388
/* 80B5C338  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B5C33C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B5C340  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B5C344  38 03 00 20 */	addi r0, r3, 0x20
/* 80B5C348  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B5C34C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B5C350  41 82 00 24 */	beq lbl_80B5C374
/* 80B5C354  3C 60 80 B6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B5EBFC@ha */
/* 80B5C358  38 03 EB FC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B5EBFC@l */
/* 80B5C35C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B5C360  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B5C364  41 82 00 10 */	beq lbl_80B5C374
/* 80B5C368  3C 60 80 B6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B5EBF0@ha */
/* 80B5C36C  38 03 EB F0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B5EBF0@l */
/* 80B5C370  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B5C374:
/* 80B5C374  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B5C378  41 82 00 10 */	beq lbl_80B5C388
/* 80B5C37C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B5C380  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B5C384  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B5C388:
/* 80B5C388  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B5C38C  38 80 FF FF */	li r4, -1
/* 80B5C390  4B 6E DB B9 */	bl __dt__10dMsgFlow_cFv
/* 80B5C394  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B5C398  38 80 FF FF */	li r4, -1
/* 80B5C39C  4B 70 B8 F9 */	bl __dt__11cBgS_GndChkFv
/* 80B5C3A0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B5C3A4  41 82 00 28 */	beq lbl_80B5C3CC
/* 80B5C3A8  3C 60 80 B6 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B5EBE4@ha */
/* 80B5C3AC  38 03 EB E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B5EBE4@l */
/* 80B5C3B0  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B5C3B4  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B5C3B8  38 80 FF FF */	li r4, -1
/* 80B5C3BC  4B 71 2B 5D */	bl __dt__8cM3dGCirFv
/* 80B5C3C0  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B5C3C4  38 80 00 00 */	li r4, 0
/* 80B5C3C8  4B 70 BC E9 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B5C3CC:
/* 80B5C3CC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B5C3D0  41 82 00 54 */	beq lbl_80B5C424
/* 80B5C3D4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B5C3D8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B5C3DC  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B5C3E0  38 03 00 20 */	addi r0, r3, 0x20
/* 80B5C3E4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B5C3E8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B5C3EC  41 82 00 24 */	beq lbl_80B5C410
/* 80B5C3F0  3C 60 80 B6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B5EBFC@ha */
/* 80B5C3F4  38 03 EB FC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B5EBFC@l */
/* 80B5C3F8  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B5C3FC  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B5C400  41 82 00 10 */	beq lbl_80B5C410
/* 80B5C404  3C 60 80 B6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B5EBF0@ha */
/* 80B5C408  38 03 EB F0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B5EBF0@l */
/* 80B5C40C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B5C410:
/* 80B5C410  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B5C414  41 82 00 10 */	beq lbl_80B5C424
/* 80B5C418  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B5C41C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B5C420  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B5C424:
/* 80B5C424  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B5C428  41 82 00 2C */	beq lbl_80B5C454
/* 80B5C42C  3C 60 80 B6 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B5EBC0@ha */
/* 80B5C430  38 63 EB C0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B5EBC0@l */
/* 80B5C434  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B5C438  38 03 00 0C */	addi r0, r3, 0xc
/* 80B5C43C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B5C440  38 03 00 18 */	addi r0, r3, 0x18
/* 80B5C444  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B5C448  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B5C44C  38 80 00 00 */	li r4, 0
/* 80B5C450  4B 51 9B 45 */	bl __dt__9dBgS_AcchFv
lbl_80B5C454:
/* 80B5C454  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B5C458  41 82 00 20 */	beq lbl_80B5C478
/* 80B5C45C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B5C460  41 82 00 18 */	beq lbl_80B5C478
/* 80B5C464  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B5C468  41 82 00 10 */	beq lbl_80B5C478
/* 80B5C46C  3C 60 80 B6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5EBB4@ha */
/* 80B5C470  38 03 EB B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5EBB4@l */
/* 80B5C474  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B5C478:
/* 80B5C478  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B5C47C  41 82 00 20 */	beq lbl_80B5C49C
/* 80B5C480  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B5C484  41 82 00 18 */	beq lbl_80B5C49C
/* 80B5C488  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B5C48C  41 82 00 10 */	beq lbl_80B5C49C
/* 80B5C490  3C 60 80 B6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5EBB4@ha */
/* 80B5C494  38 03 EB B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5EBB4@l */
/* 80B5C498  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B5C49C:
/* 80B5C49C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B5C4A0  41 82 00 20 */	beq lbl_80B5C4C0
/* 80B5C4A4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B5C4A8  41 82 00 18 */	beq lbl_80B5C4C0
/* 80B5C4AC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B5C4B0  41 82 00 10 */	beq lbl_80B5C4C0
/* 80B5C4B4  3C 60 80 B6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5EBB4@ha */
/* 80B5C4B8  38 03 EB B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5EBB4@l */
/* 80B5C4BC  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B5C4C0:
/* 80B5C4C0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B5C4C4  41 82 00 20 */	beq lbl_80B5C4E4
/* 80B5C4C8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B5C4CC  41 82 00 18 */	beq lbl_80B5C4E4
/* 80B5C4D0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B5C4D4  41 82 00 10 */	beq lbl_80B5C4E4
/* 80B5C4D8  3C 60 80 B6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5EBB4@ha */
/* 80B5C4DC  38 03 EB B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5EBB4@l */
/* 80B5C4E0  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B5C4E4:
/* 80B5C4E4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B5C4E8  41 82 00 20 */	beq lbl_80B5C508
/* 80B5C4EC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B5C4F0  41 82 00 18 */	beq lbl_80B5C508
/* 80B5C4F4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B5C4F8  41 82 00 10 */	beq lbl_80B5C508
/* 80B5C4FC  3C 60 80 B6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5EBB4@ha */
/* 80B5C500  38 03 EB B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5EBB4@l */
/* 80B5C504  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B5C508:
/* 80B5C508  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B5C50C  38 80 FF FF */	li r4, -1
/* 80B5C510  4B 76 3F 11 */	bl __dt__10Z2CreatureFv
/* 80B5C514  7F C3 F3 78 */	mr r3, r30
/* 80B5C518  38 80 00 00 */	li r4, 0
/* 80B5C51C  4B 4B C7 71 */	bl __dt__10fopAc_ac_cFv
/* 80B5C520  7F E0 07 35 */	extsh. r0, r31
/* 80B5C524  40 81 00 0C */	ble lbl_80B5C530
/* 80B5C528  7F C3 F3 78 */	mr r3, r30
/* 80B5C52C  4B 77 28 11 */	bl __dl__FPv
lbl_80B5C530:
/* 80B5C530  7F C3 F3 78 */	mr r3, r30
/* 80B5C534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C538  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5C53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C540  7C 08 03 A6 */	mtlr r0
/* 80B5C544  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C548  4E 80 00 20 */	blr 
