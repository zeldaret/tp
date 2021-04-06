lbl_8097156C:
/* 8097156C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80971570  7C 08 02 A6 */	mflr r0
/* 80971574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80971578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097157C  93 C1 00 08 */	stw r30, 8(r1)
/* 80971580  7C 7E 1B 79 */	or. r30, r3, r3
/* 80971584  7C 9F 23 78 */	mr r31, r4
/* 80971588  41 82 03 50 */	beq lbl_809718D8
/* 8097158C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80971590  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80971594  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80971598  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 8097159C  41 82 00 1C */	beq lbl_809715B8
/* 809715A0  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809715A4  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x80971930@ha */
/* 809715A8  38 84 19 30 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80971930@l */
/* 809715AC  38 A0 00 06 */	li r5, 6
/* 809715B0  38 C0 00 02 */	li r6, 2
/* 809715B4  4B 9F 07 35 */	bl __destroy_arr
lbl_809715B8:
/* 809715B8  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809715BC  41 82 00 B4 */	beq lbl_80971670
/* 809715C0  3C 60 80 97 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x8097333C@ha */
/* 809715C4  38 03 33 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x8097333C@l */
/* 809715C8  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 809715CC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809715D0  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x809718F4@ha */
/* 809715D4  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809718F4@l */
/* 809715D8  38 A0 00 0C */	li r5, 0xc
/* 809715DC  38 C0 00 03 */	li r6, 3
/* 809715E0  4B 9F 07 09 */	bl __destroy_arr
/* 809715E4  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 809715E8  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x809718F4@ha */
/* 809715EC  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809718F4@l */
/* 809715F0  38 A0 00 0C */	li r5, 0xc
/* 809715F4  38 C0 00 03 */	li r6, 3
/* 809715F8  4B 9F 06 F1 */	bl __destroy_arr
/* 809715FC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80971600  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x809718F4@ha */
/* 80971604  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809718F4@l */
/* 80971608  38 A0 00 0C */	li r5, 0xc
/* 8097160C  38 C0 00 03 */	li r6, 3
/* 80971610  4B 9F 06 D9 */	bl __destroy_arr
/* 80971614  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80971618  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x809718F4@ha */
/* 8097161C  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809718F4@l */
/* 80971620  38 A0 00 0C */	li r5, 0xc
/* 80971624  38 C0 00 03 */	li r6, 3
/* 80971628  4B 9F 06 C1 */	bl __destroy_arr
/* 8097162C  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80971630  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x809718F4@ha */
/* 80971634  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809718F4@l */
/* 80971638  38 A0 00 0C */	li r5, 0xc
/* 8097163C  38 C0 00 03 */	li r6, 3
/* 80971640  4B 9F 06 A9 */	bl __destroy_arr
/* 80971644  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80971648  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x809718F4@ha */
/* 8097164C  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809718F4@l */
/* 80971650  38 A0 00 0C */	li r5, 0xc
/* 80971654  38 C0 00 03 */	li r6, 3
/* 80971658  4B 9F 06 91 */	bl __destroy_arr
/* 8097165C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80971660  41 82 00 10 */	beq lbl_80971670
/* 80971664  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80973330@ha */
/* 80971668  38 03 33 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80973330@l */
/* 8097166C  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80971670:
/* 80971670  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80971674  41 82 00 10 */	beq lbl_80971684
/* 80971678  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80973330@ha */
/* 8097167C  38 03 33 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80973330@l */
/* 80971680  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80971684:
/* 80971684  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80971688  41 82 00 10 */	beq lbl_80971698
/* 8097168C  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80973330@ha */
/* 80971690  38 03 33 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80973330@l */
/* 80971694  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80971698:
/* 80971698  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 8097169C  41 82 00 10 */	beq lbl_809716AC
/* 809716A0  3C 60 80 97 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80973324@ha */
/* 809716A4  38 03 33 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80973324@l */
/* 809716A8  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_809716AC:
/* 809716AC  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 809716B0  41 82 00 10 */	beq lbl_809716C0
/* 809716B4  3C 60 80 97 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80973324@ha */
/* 809716B8  38 03 33 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80973324@l */
/* 809716BC  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_809716C0:
/* 809716C0  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 809716C4  38 80 FF FF */	li r4, -1
/* 809716C8  4B 70 66 15 */	bl __dt__11dBgS_LinChkFv
/* 809716CC  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 809716D0  38 80 FF FF */	li r4, -1
/* 809716D4  4B 70 5F 1D */	bl __dt__11dBgS_GndChkFv
/* 809716D8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809716DC  41 82 00 54 */	beq lbl_80971730
/* 809716E0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809716E4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809716E8  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 809716EC  38 03 00 20 */	addi r0, r3, 0x20
/* 809716F0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809716F4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809716F8  41 82 00 24 */	beq lbl_8097171C
/* 809716FC  3C 60 80 97 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80973318@ha */
/* 80971700  38 03 33 18 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80973318@l */
/* 80971704  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80971708  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8097170C  41 82 00 10 */	beq lbl_8097171C
/* 80971710  3C 60 80 97 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8097330C@ha */
/* 80971714  38 03 33 0C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8097330C@l */
/* 80971718  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_8097171C:
/* 8097171C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80971720  41 82 00 10 */	beq lbl_80971730
/* 80971724  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80971728  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8097172C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80971730:
/* 80971730  38 7E 09 74 */	addi r3, r30, 0x974
/* 80971734  38 80 FF FF */	li r4, -1
/* 80971738  4B 8D 88 11 */	bl __dt__10dMsgFlow_cFv
/* 8097173C  38 7E 09 30 */	addi r3, r30, 0x930
/* 80971740  38 80 FF FF */	li r4, -1
/* 80971744  4B 8F 65 51 */	bl __dt__11cBgS_GndChkFv
/* 80971748  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 8097174C  41 82 00 28 */	beq lbl_80971774
/* 80971750  3C 60 80 97 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80973300@ha */
/* 80971754  38 03 33 00 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80973300@l */
/* 80971758  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 8097175C  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80971760  38 80 FF FF */	li r4, -1
/* 80971764  4B 8F D7 B5 */	bl __dt__8cM3dGCirFv
/* 80971768  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 8097176C  38 80 00 00 */	li r4, 0
/* 80971770  4B 8F 69 41 */	bl __dt__13cBgS_PolyInfoFv
lbl_80971774:
/* 80971774  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80971778  41 82 00 54 */	beq lbl_809717CC
/* 8097177C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80971780  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80971784  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80971788  38 03 00 20 */	addi r0, r3, 0x20
/* 8097178C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80971790  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80971794  41 82 00 24 */	beq lbl_809717B8
/* 80971798  3C 60 80 97 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80973318@ha */
/* 8097179C  38 03 33 18 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80973318@l */
/* 809717A0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809717A4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809717A8  41 82 00 10 */	beq lbl_809717B8
/* 809717AC  3C 60 80 97 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8097330C@ha */
/* 809717B0  38 03 33 0C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8097330C@l */
/* 809717B4  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_809717B8:
/* 809717B8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809717BC  41 82 00 10 */	beq lbl_809717CC
/* 809717C0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809717C4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809717C8  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_809717CC:
/* 809717CC  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 809717D0  41 82 00 2C */	beq lbl_809717FC
/* 809717D4  3C 60 80 97 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809732DC@ha */
/* 809717D8  38 63 32 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809732DC@l */
/* 809717DC  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 809717E0  38 03 00 0C */	addi r0, r3, 0xc
/* 809717E4  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 809717E8  38 03 00 18 */	addi r0, r3, 0x18
/* 809717EC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 809717F0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 809717F4  38 80 00 00 */	li r4, 0
/* 809717F8  4B 70 47 9D */	bl __dt__9dBgS_AcchFv
lbl_809717FC:
/* 809717FC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80971800  41 82 00 20 */	beq lbl_80971820
/* 80971804  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80971808  41 82 00 18 */	beq lbl_80971820
/* 8097180C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80971810  41 82 00 10 */	beq lbl_80971820
/* 80971814  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809732D0@ha */
/* 80971818  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809732D0@l */
/* 8097181C  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80971820:
/* 80971820  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80971824  41 82 00 20 */	beq lbl_80971844
/* 80971828  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8097182C  41 82 00 18 */	beq lbl_80971844
/* 80971830  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80971834  41 82 00 10 */	beq lbl_80971844
/* 80971838  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809732D0@ha */
/* 8097183C  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809732D0@l */
/* 80971840  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80971844:
/* 80971844  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80971848  41 82 00 20 */	beq lbl_80971868
/* 8097184C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80971850  41 82 00 18 */	beq lbl_80971868
/* 80971854  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80971858  41 82 00 10 */	beq lbl_80971868
/* 8097185C  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809732D0@ha */
/* 80971860  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809732D0@l */
/* 80971864  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80971868:
/* 80971868  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8097186C  41 82 00 20 */	beq lbl_8097188C
/* 80971870  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80971874  41 82 00 18 */	beq lbl_8097188C
/* 80971878  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8097187C  41 82 00 10 */	beq lbl_8097188C
/* 80971880  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809732D0@ha */
/* 80971884  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809732D0@l */
/* 80971888  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_8097188C:
/* 8097188C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80971890  41 82 00 20 */	beq lbl_809718B0
/* 80971894  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80971898  41 82 00 18 */	beq lbl_809718B0
/* 8097189C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809718A0  41 82 00 10 */	beq lbl_809718B0
/* 809718A4  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809732D0@ha */
/* 809718A8  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809732D0@l */
/* 809718AC  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_809718B0:
/* 809718B0  38 7E 05 80 */	addi r3, r30, 0x580
/* 809718B4  38 80 FF FF */	li r4, -1
/* 809718B8  4B 94 EB 69 */	bl __dt__10Z2CreatureFv
/* 809718BC  7F C3 F3 78 */	mr r3, r30
/* 809718C0  38 80 00 00 */	li r4, 0
/* 809718C4  4B 6A 73 C9 */	bl __dt__10fopAc_ac_cFv
/* 809718C8  7F E0 07 35 */	extsh. r0, r31
/* 809718CC  40 81 00 0C */	ble lbl_809718D8
/* 809718D0  7F C3 F3 78 */	mr r3, r30
/* 809718D4  4B 95 D4 69 */	bl __dl__FPv
lbl_809718D8:
/* 809718D8  7F C3 F3 78 */	mr r3, r30
/* 809718DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809718E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809718E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809718E8  7C 08 03 A6 */	mtlr r0
/* 809718EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809718F0  4E 80 00 20 */	blr 
