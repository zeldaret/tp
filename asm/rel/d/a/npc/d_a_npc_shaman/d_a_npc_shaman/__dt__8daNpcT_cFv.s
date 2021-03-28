lbl_80AE5520:
/* 80AE5520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5524  7C 08 02 A6 */	mflr r0
/* 80AE5528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE552C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE5530  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE5534  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE5538  7C 9F 23 78 */	mr r31, r4
/* 80AE553C  41 82 03 50 */	beq lbl_80AE588C
/* 80AE5540  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80AE5544  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80AE5548  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AE554C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AE5550  41 82 00 1C */	beq lbl_80AE556C
/* 80AE5554  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AE5558  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha
/* 80AE555C  38 84 58 E4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE5560  38 A0 00 06 */	li r5, 6
/* 80AE5564  38 C0 00 02 */	li r6, 2
/* 80AE5568  4B 87 C7 80 */	b __destroy_arr
lbl_80AE556C:
/* 80AE556C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AE5570  41 82 00 B4 */	beq lbl_80AE5624
/* 80AE5574  3C 60 80 AE */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AE5578  38 03 77 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AE557C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AE5580  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AE5584  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5588  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE558C  38 A0 00 0C */	li r5, 0xc
/* 80AE5590  38 C0 00 03 */	li r6, 3
/* 80AE5594  4B 87 C7 54 */	b __destroy_arr
/* 80AE5598  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AE559C  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE55A0  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE55A4  38 A0 00 0C */	li r5, 0xc
/* 80AE55A8  38 C0 00 03 */	li r6, 3
/* 80AE55AC  4B 87 C7 3C */	b __destroy_arr
/* 80AE55B0  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AE55B4  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE55B8  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE55BC  38 A0 00 0C */	li r5, 0xc
/* 80AE55C0  38 C0 00 03 */	li r6, 3
/* 80AE55C4  4B 87 C7 24 */	b __destroy_arr
/* 80AE55C8  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AE55CC  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE55D0  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE55D4  38 A0 00 0C */	li r5, 0xc
/* 80AE55D8  38 C0 00 03 */	li r6, 3
/* 80AE55DC  4B 87 C7 0C */	b __destroy_arr
/* 80AE55E0  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AE55E4  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE55E8  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE55EC  38 A0 00 0C */	li r5, 0xc
/* 80AE55F0  38 C0 00 03 */	li r6, 3
/* 80AE55F4  4B 87 C6 F4 */	b __destroy_arr
/* 80AE55F8  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AE55FC  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5600  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE5604  38 A0 00 0C */	li r5, 0xc
/* 80AE5608  38 C0 00 03 */	li r6, 3
/* 80AE560C  4B 87 C6 DC */	b __destroy_arr
/* 80AE5610  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AE5614  41 82 00 10 */	beq lbl_80AE5624
/* 80AE5618  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AE561C  38 03 77 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AE5620  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AE5624:
/* 80AE5624  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AE5628  41 82 00 10 */	beq lbl_80AE5638
/* 80AE562C  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AE5630  38 03 77 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AE5634  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AE5638:
/* 80AE5638  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AE563C  41 82 00 10 */	beq lbl_80AE564C
/* 80AE5640  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AE5644  38 03 77 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AE5648  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AE564C:
/* 80AE564C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AE5650  41 82 00 10 */	beq lbl_80AE5660
/* 80AE5654  3C 60 80 AE */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AE5658  38 03 77 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AE565C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AE5660:
/* 80AE5660  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AE5664  41 82 00 10 */	beq lbl_80AE5674
/* 80AE5668  3C 60 80 AE */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AE566C  38 03 77 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AE5670  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AE5674:
/* 80AE5674  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AE5678  38 80 FF FF */	li r4, -1
/* 80AE567C  4B 59 26 60 */	b __dt__11dBgS_LinChkFv
/* 80AE5680  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AE5684  38 80 FF FF */	li r4, -1
/* 80AE5688  4B 59 1F 68 */	b __dt__11dBgS_GndChkFv
/* 80AE568C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AE5690  41 82 00 54 */	beq lbl_80AE56E4
/* 80AE5694  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AE5698  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AE569C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AE56A0  38 03 00 20 */	addi r0, r3, 0x20
/* 80AE56A4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AE56A8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AE56AC  41 82 00 24 */	beq lbl_80AE56D0
/* 80AE56B0  3C 60 80 AE */	lis r3, __vt__10dCcD_GStts@ha
/* 80AE56B4  38 03 77 18 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AE56B8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AE56BC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AE56C0  41 82 00 10 */	beq lbl_80AE56D0
/* 80AE56C4  3C 60 80 AE */	lis r3, __vt__10cCcD_GStts@ha
/* 80AE56C8  38 03 77 0C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AE56CC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AE56D0:
/* 80AE56D0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AE56D4  41 82 00 10 */	beq lbl_80AE56E4
/* 80AE56D8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AE56DC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AE56E0  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AE56E4:
/* 80AE56E4  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AE56E8  38 80 FF FF */	li r4, -1
/* 80AE56EC  4B 76 48 5C */	b __dt__10dMsgFlow_cFv
/* 80AE56F0  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AE56F4  38 80 FF FF */	li r4, -1
/* 80AE56F8  4B 78 25 9C */	b __dt__11cBgS_GndChkFv
/* 80AE56FC  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AE5700  41 82 00 28 */	beq lbl_80AE5728
/* 80AE5704  3C 60 80 AE */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AE5708  38 03 77 00 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AE570C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AE5710  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AE5714  38 80 FF FF */	li r4, -1
/* 80AE5718  4B 78 98 00 */	b __dt__8cM3dGCirFv
/* 80AE571C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AE5720  38 80 00 00 */	li r4, 0
/* 80AE5724  4B 78 29 8C */	b __dt__13cBgS_PolyInfoFv
lbl_80AE5728:
/* 80AE5728  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AE572C  41 82 00 54 */	beq lbl_80AE5780
/* 80AE5730  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AE5734  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AE5738  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AE573C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AE5740  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AE5744  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AE5748  41 82 00 24 */	beq lbl_80AE576C
/* 80AE574C  3C 60 80 AE */	lis r3, __vt__10dCcD_GStts@ha
/* 80AE5750  38 03 77 18 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AE5754  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AE5758  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AE575C  41 82 00 10 */	beq lbl_80AE576C
/* 80AE5760  3C 60 80 AE */	lis r3, __vt__10cCcD_GStts@ha
/* 80AE5764  38 03 77 0C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AE5768  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AE576C:
/* 80AE576C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AE5770  41 82 00 10 */	beq lbl_80AE5780
/* 80AE5774  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AE5778  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AE577C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AE5780:
/* 80AE5780  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AE5784  41 82 00 2C */	beq lbl_80AE57B0
/* 80AE5788  3C 60 80 AE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AE578C  38 63 76 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AE5790  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AE5794  38 03 00 0C */	addi r0, r3, 0xc
/* 80AE5798  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AE579C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AE57A0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AE57A4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AE57A8  38 80 00 00 */	li r4, 0
/* 80AE57AC  4B 59 07 E8 */	b __dt__9dBgS_AcchFv
lbl_80AE57B0:
/* 80AE57B0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AE57B4  41 82 00 20 */	beq lbl_80AE57D4
/* 80AE57B8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AE57BC  41 82 00 18 */	beq lbl_80AE57D4
/* 80AE57C0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AE57C4  41 82 00 10 */	beq lbl_80AE57D4
/* 80AE57C8  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE57CC  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE57D0  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AE57D4:
/* 80AE57D4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AE57D8  41 82 00 20 */	beq lbl_80AE57F8
/* 80AE57DC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AE57E0  41 82 00 18 */	beq lbl_80AE57F8
/* 80AE57E4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AE57E8  41 82 00 10 */	beq lbl_80AE57F8
/* 80AE57EC  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE57F0  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE57F4  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AE57F8:
/* 80AE57F8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AE57FC  41 82 00 20 */	beq lbl_80AE581C
/* 80AE5800  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AE5804  41 82 00 18 */	beq lbl_80AE581C
/* 80AE5808  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AE580C  41 82 00 10 */	beq lbl_80AE581C
/* 80AE5810  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE5814  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE5818  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AE581C:
/* 80AE581C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AE5820  41 82 00 20 */	beq lbl_80AE5840
/* 80AE5824  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AE5828  41 82 00 18 */	beq lbl_80AE5840
/* 80AE582C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AE5830  41 82 00 10 */	beq lbl_80AE5840
/* 80AE5834  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE5838  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE583C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AE5840:
/* 80AE5840  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AE5844  41 82 00 20 */	beq lbl_80AE5864
/* 80AE5848  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AE584C  41 82 00 18 */	beq lbl_80AE5864
/* 80AE5850  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AE5854  41 82 00 10 */	beq lbl_80AE5864
/* 80AE5858  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE585C  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE5860  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AE5864:
/* 80AE5864  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AE5868  38 80 FF FF */	li r4, -1
/* 80AE586C  4B 7D AB B4 */	b __dt__10Z2CreatureFv
/* 80AE5870  7F C3 F3 78 */	mr r3, r30
/* 80AE5874  38 80 00 00 */	li r4, 0
/* 80AE5878  4B 53 34 14 */	b __dt__10fopAc_ac_cFv
/* 80AE587C  7F E0 07 35 */	extsh. r0, r31
/* 80AE5880  40 81 00 0C */	ble lbl_80AE588C
/* 80AE5884  7F C3 F3 78 */	mr r3, r30
/* 80AE5888  4B 7E 94 B4 */	b __dl__FPv
lbl_80AE588C:
/* 80AE588C  7F C3 F3 78 */	mr r3, r30
/* 80AE5890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5894  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE5898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE589C  7C 08 03 A6 */	mtlr r0
/* 80AE58A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE58A4  4E 80 00 20 */	blr 
