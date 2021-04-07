lbl_80A05410:
/* 80A05410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05414  7C 08 02 A6 */	mflr r0
/* 80A05418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0541C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05420  93 C1 00 08 */	stw r30, 8(r1)
/* 80A05424  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A05428  7C 9F 23 78 */	mr r31, r4
/* 80A0542C  41 82 03 50 */	beq lbl_80A0577C
/* 80A05430  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A05434  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A05438  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A0543C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A05440  41 82 00 1C */	beq lbl_80A0545C
/* 80A05444  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A05448  3C 80 80 A0 */	lis r4, __dt__5csXyzFv@ha /* 0x80A057D4@ha */
/* 80A0544C  38 84 57 D4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A057D4@l */
/* 80A05450  38 A0 00 06 */	li r5, 6
/* 80A05454  38 C0 00 02 */	li r6, 2
/* 80A05458  4B 95 C8 91 */	bl __destroy_arr
lbl_80A0545C:
/* 80A0545C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A05460  41 82 00 B4 */	beq lbl_80A05514
/* 80A05464  3C 60 80 A0 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A077E0@ha */
/* 80A05468  38 03 77 E0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A077E0@l */
/* 80A0546C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A05470  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A05474  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05478  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A0547C  38 A0 00 0C */	li r5, 0xc
/* 80A05480  38 C0 00 03 */	li r6, 3
/* 80A05484  4B 95 C8 65 */	bl __destroy_arr
/* 80A05488  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A0548C  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05490  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05494  38 A0 00 0C */	li r5, 0xc
/* 80A05498  38 C0 00 03 */	li r6, 3
/* 80A0549C  4B 95 C8 4D */	bl __destroy_arr
/* 80A054A0  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A054A4  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A054A8  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A054AC  38 A0 00 0C */	li r5, 0xc
/* 80A054B0  38 C0 00 03 */	li r6, 3
/* 80A054B4  4B 95 C8 35 */	bl __destroy_arr
/* 80A054B8  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A054BC  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A054C0  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A054C4  38 A0 00 0C */	li r5, 0xc
/* 80A054C8  38 C0 00 03 */	li r6, 3
/* 80A054CC  4B 95 C8 1D */	bl __destroy_arr
/* 80A054D0  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A054D4  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A054D8  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A054DC  38 A0 00 0C */	li r5, 0xc
/* 80A054E0  38 C0 00 03 */	li r6, 3
/* 80A054E4  4B 95 C8 05 */	bl __destroy_arr
/* 80A054E8  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A054EC  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A054F0  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A054F4  38 A0 00 0C */	li r5, 0xc
/* 80A054F8  38 C0 00 03 */	li r6, 3
/* 80A054FC  4B 95 C7 ED */	bl __destroy_arr
/* 80A05500  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A05504  41 82 00 10 */	beq lbl_80A05514
/* 80A05508  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A07804@ha */
/* 80A0550C  38 03 78 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A07804@l */
/* 80A05510  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A05514:
/* 80A05514  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A05518  41 82 00 10 */	beq lbl_80A05528
/* 80A0551C  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A07804@ha */
/* 80A05520  38 03 78 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A07804@l */
/* 80A05524  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A05528:
/* 80A05528  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A0552C  41 82 00 10 */	beq lbl_80A0553C
/* 80A05530  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A07804@ha */
/* 80A05534  38 03 78 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A07804@l */
/* 80A05538  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A0553C:
/* 80A0553C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A05540  41 82 00 10 */	beq lbl_80A05550
/* 80A05544  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A077D4@ha */
/* 80A05548  38 03 77 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A077D4@l */
/* 80A0554C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A05550:
/* 80A05550  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A05554  41 82 00 10 */	beq lbl_80A05564
/* 80A05558  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A077D4@ha */
/* 80A0555C  38 03 77 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A077D4@l */
/* 80A05560  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A05564:
/* 80A05564  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A05568  38 80 FF FF */	li r4, -1
/* 80A0556C  4B 67 27 71 */	bl __dt__11dBgS_LinChkFv
/* 80A05570  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A05574  38 80 FF FF */	li r4, -1
/* 80A05578  4B 67 20 79 */	bl __dt__11dBgS_GndChkFv
/* 80A0557C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A05580  41 82 00 54 */	beq lbl_80A055D4
/* 80A05584  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A05588  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A0558C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A05590  38 03 00 20 */	addi r0, r3, 0x20
/* 80A05594  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A05598  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A0559C  41 82 00 24 */	beq lbl_80A055C0
/* 80A055A0  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A077C8@ha */
/* 80A055A4  38 03 77 C8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A077C8@l */
/* 80A055A8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A055AC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A055B0  41 82 00 10 */	beq lbl_80A055C0
/* 80A055B4  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A077BC@ha */
/* 80A055B8  38 03 77 BC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A077BC@l */
/* 80A055BC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A055C0:
/* 80A055C0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A055C4  41 82 00 10 */	beq lbl_80A055D4
/* 80A055C8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A055CC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A055D0  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A055D4:
/* 80A055D4  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A055D8  38 80 FF FF */	li r4, -1
/* 80A055DC  4B 84 49 6D */	bl __dt__10dMsgFlow_cFv
/* 80A055E0  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A055E4  38 80 FF FF */	li r4, -1
/* 80A055E8  4B 86 26 AD */	bl __dt__11cBgS_GndChkFv
/* 80A055EC  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A055F0  41 82 00 28 */	beq lbl_80A05618
/* 80A055F4  3C 60 80 A0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A077B0@ha */
/* 80A055F8  38 03 77 B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A077B0@l */
/* 80A055FC  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A05600  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A05604  38 80 FF FF */	li r4, -1
/* 80A05608  4B 86 99 11 */	bl __dt__8cM3dGCirFv
/* 80A0560C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A05610  38 80 00 00 */	li r4, 0
/* 80A05614  4B 86 2A 9D */	bl __dt__13cBgS_PolyInfoFv
lbl_80A05618:
/* 80A05618  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A0561C  41 82 00 54 */	beq lbl_80A05670
/* 80A05620  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A05624  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A05628  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A0562C  38 03 00 20 */	addi r0, r3, 0x20
/* 80A05630  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A05634  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A05638  41 82 00 24 */	beq lbl_80A0565C
/* 80A0563C  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A077C8@ha */
/* 80A05640  38 03 77 C8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A077C8@l */
/* 80A05644  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A05648  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A0564C  41 82 00 10 */	beq lbl_80A0565C
/* 80A05650  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A077BC@ha */
/* 80A05654  38 03 77 BC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A077BC@l */
/* 80A05658  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A0565C:
/* 80A0565C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A05660  41 82 00 10 */	beq lbl_80A05670
/* 80A05664  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A05668  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A0566C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A05670:
/* 80A05670  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A05674  41 82 00 2C */	beq lbl_80A056A0
/* 80A05678  3C 60 80 A0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A0778C@ha */
/* 80A0567C  38 63 77 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A0778C@l */
/* 80A05680  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A05684  38 03 00 0C */	addi r0, r3, 0xc
/* 80A05688  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A0568C  38 03 00 18 */	addi r0, r3, 0x18
/* 80A05690  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A05694  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A05698  38 80 00 00 */	li r4, 0
/* 80A0569C  4B 67 08 F9 */	bl __dt__9dBgS_AcchFv
lbl_80A056A0:
/* 80A056A0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A056A4  41 82 00 20 */	beq lbl_80A056C4
/* 80A056A8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A056AC  41 82 00 18 */	beq lbl_80A056C4
/* 80A056B0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A056B4  41 82 00 10 */	beq lbl_80A056C4
/* 80A056B8  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A056BC  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A056C0  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A056C4:
/* 80A056C4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A056C8  41 82 00 20 */	beq lbl_80A056E8
/* 80A056CC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A056D0  41 82 00 18 */	beq lbl_80A056E8
/* 80A056D4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A056D8  41 82 00 10 */	beq lbl_80A056E8
/* 80A056DC  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A056E0  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A056E4  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A056E8:
/* 80A056E8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A056EC  41 82 00 20 */	beq lbl_80A0570C
/* 80A056F0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A056F4  41 82 00 18 */	beq lbl_80A0570C
/* 80A056F8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A056FC  41 82 00 10 */	beq lbl_80A0570C
/* 80A05700  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A05704  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A05708  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A0570C:
/* 80A0570C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A05710  41 82 00 20 */	beq lbl_80A05730
/* 80A05714  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A05718  41 82 00 18 */	beq lbl_80A05730
/* 80A0571C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A05720  41 82 00 10 */	beq lbl_80A05730
/* 80A05724  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A05728  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A0572C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A05730:
/* 80A05730  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A05734  41 82 00 20 */	beq lbl_80A05754
/* 80A05738  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A0573C  41 82 00 18 */	beq lbl_80A05754
/* 80A05740  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A05744  41 82 00 10 */	beq lbl_80A05754
/* 80A05748  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A0574C  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A05750  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A05754:
/* 80A05754  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A05758  38 80 FF FF */	li r4, -1
/* 80A0575C  4B 8B AC C5 */	bl __dt__10Z2CreatureFv
/* 80A05760  7F C3 F3 78 */	mr r3, r30
/* 80A05764  38 80 00 00 */	li r4, 0
/* 80A05768  4B 61 35 25 */	bl __dt__10fopAc_ac_cFv
/* 80A0576C  7F E0 07 35 */	extsh. r0, r31
/* 80A05770  40 81 00 0C */	ble lbl_80A0577C
/* 80A05774  7F C3 F3 78 */	mr r3, r30
/* 80A05778  4B 8C 95 C5 */	bl __dl__FPv
lbl_80A0577C:
/* 80A0577C  7F C3 F3 78 */	mr r3, r30
/* 80A05780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05784  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A05788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0578C  7C 08 03 A6 */	mtlr r0
/* 80A05790  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05794  4E 80 00 20 */	blr 
