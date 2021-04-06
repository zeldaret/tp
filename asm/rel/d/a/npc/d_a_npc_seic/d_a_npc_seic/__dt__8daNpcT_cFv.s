lbl_80AC84D4:
/* 80AC84D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC84D8  7C 08 02 A6 */	mflr r0
/* 80AC84DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC84E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC84E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC84E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC84EC  7C 9F 23 78 */	mr r31, r4
/* 80AC84F0  41 82 03 50 */	beq lbl_80AC8840
/* 80AC84F4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AC84F8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AC84FC  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AC8500  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AC8504  41 82 00 1C */	beq lbl_80AC8520
/* 80AC8508  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AC850C  3C 80 80 AD */	lis r4, __dt__5csXyzFv@ha /* 0x80AC8898@ha */
/* 80AC8510  38 84 88 98 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AC8898@l */
/* 80AC8514  38 A0 00 06 */	li r5, 6
/* 80AC8518  38 C0 00 02 */	li r6, 2
/* 80AC851C  4B 89 97 CD */	bl __destroy_arr
lbl_80AC8520:
/* 80AC8520  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AC8524  41 82 00 B4 */	beq lbl_80AC85D8
/* 80AC8528  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC949C@ha */
/* 80AC852C  38 03 94 9C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC949C@l */
/* 80AC8530  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AC8534  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AC8538  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC853C  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8540  38 A0 00 0C */	li r5, 0xc
/* 80AC8544  38 C0 00 03 */	li r6, 3
/* 80AC8548  4B 89 97 A1 */	bl __destroy_arr
/* 80AC854C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AC8550  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8554  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8558  38 A0 00 0C */	li r5, 0xc
/* 80AC855C  38 C0 00 03 */	li r6, 3
/* 80AC8560  4B 89 97 89 */	bl __destroy_arr
/* 80AC8564  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AC8568  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC856C  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8570  38 A0 00 0C */	li r5, 0xc
/* 80AC8574  38 C0 00 03 */	li r6, 3
/* 80AC8578  4B 89 97 71 */	bl __destroy_arr
/* 80AC857C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AC8580  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8584  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8588  38 A0 00 0C */	li r5, 0xc
/* 80AC858C  38 C0 00 03 */	li r6, 3
/* 80AC8590  4B 89 97 59 */	bl __destroy_arr
/* 80AC8594  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AC8598  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC859C  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC85A0  38 A0 00 0C */	li r5, 0xc
/* 80AC85A4  38 C0 00 03 */	li r6, 3
/* 80AC85A8  4B 89 97 41 */	bl __destroy_arr
/* 80AC85AC  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AC85B0  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC85B4  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC85B8  38 A0 00 0C */	li r5, 0xc
/* 80AC85BC  38 C0 00 03 */	li r6, 3
/* 80AC85C0  4B 89 97 29 */	bl __destroy_arr
/* 80AC85C4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AC85C8  41 82 00 10 */	beq lbl_80AC85D8
/* 80AC85CC  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC9490@ha */
/* 80AC85D0  38 03 94 90 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC9490@l */
/* 80AC85D4  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AC85D8:
/* 80AC85D8  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AC85DC  41 82 00 10 */	beq lbl_80AC85EC
/* 80AC85E0  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC9490@ha */
/* 80AC85E4  38 03 94 90 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC9490@l */
/* 80AC85E8  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AC85EC:
/* 80AC85EC  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AC85F0  41 82 00 10 */	beq lbl_80AC8600
/* 80AC85F4  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC9490@ha */
/* 80AC85F8  38 03 94 90 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC9490@l */
/* 80AC85FC  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AC8600:
/* 80AC8600  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AC8604  41 82 00 10 */	beq lbl_80AC8614
/* 80AC8608  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC9484@ha */
/* 80AC860C  38 03 94 84 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC9484@l */
/* 80AC8610  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AC8614:
/* 80AC8614  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AC8618  41 82 00 10 */	beq lbl_80AC8628
/* 80AC861C  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC9484@ha */
/* 80AC8620  38 03 94 84 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC9484@l */
/* 80AC8624  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AC8628:
/* 80AC8628  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AC862C  38 80 FF FF */	li r4, -1
/* 80AC8630  4B 5A F6 AD */	bl __dt__11dBgS_LinChkFv
/* 80AC8634  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AC8638  38 80 FF FF */	li r4, -1
/* 80AC863C  4B 5A EF B5 */	bl __dt__11dBgS_GndChkFv
/* 80AC8640  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AC8644  41 82 00 54 */	beq lbl_80AC8698
/* 80AC8648  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC864C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC8650  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AC8654  38 03 00 20 */	addi r0, r3, 0x20
/* 80AC8658  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AC865C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AC8660  41 82 00 24 */	beq lbl_80AC8684
/* 80AC8664  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AC9478@ha */
/* 80AC8668  38 03 94 78 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AC9478@l */
/* 80AC866C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AC8670  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AC8674  41 82 00 10 */	beq lbl_80AC8684
/* 80AC8678  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AC946C@ha */
/* 80AC867C  38 03 94 6C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AC946C@l */
/* 80AC8680  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AC8684:
/* 80AC8684  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AC8688  41 82 00 10 */	beq lbl_80AC8698
/* 80AC868C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC8690  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC8694  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AC8698:
/* 80AC8698  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AC869C  38 80 FF FF */	li r4, -1
/* 80AC86A0  4B 78 18 A9 */	bl __dt__10dMsgFlow_cFv
/* 80AC86A4  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AC86A8  38 80 FF FF */	li r4, -1
/* 80AC86AC  4B 79 F5 E9 */	bl __dt__11cBgS_GndChkFv
/* 80AC86B0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AC86B4  41 82 00 28 */	beq lbl_80AC86DC
/* 80AC86B8  3C 60 80 AD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AC9460@ha */
/* 80AC86BC  38 03 94 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AC9460@l */
/* 80AC86C0  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AC86C4  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AC86C8  38 80 FF FF */	li r4, -1
/* 80AC86CC  4B 7A 68 4D */	bl __dt__8cM3dGCirFv
/* 80AC86D0  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AC86D4  38 80 00 00 */	li r4, 0
/* 80AC86D8  4B 79 F9 D9 */	bl __dt__13cBgS_PolyInfoFv
lbl_80AC86DC:
/* 80AC86DC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AC86E0  41 82 00 54 */	beq lbl_80AC8734
/* 80AC86E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC86E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC86EC  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AC86F0  38 03 00 20 */	addi r0, r3, 0x20
/* 80AC86F4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AC86F8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AC86FC  41 82 00 24 */	beq lbl_80AC8720
/* 80AC8700  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AC9478@ha */
/* 80AC8704  38 03 94 78 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AC9478@l */
/* 80AC8708  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AC870C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AC8710  41 82 00 10 */	beq lbl_80AC8720
/* 80AC8714  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AC946C@ha */
/* 80AC8718  38 03 94 6C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AC946C@l */
/* 80AC871C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AC8720:
/* 80AC8720  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AC8724  41 82 00 10 */	beq lbl_80AC8734
/* 80AC8728  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC872C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC8730  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AC8734:
/* 80AC8734  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AC8738  41 82 00 2C */	beq lbl_80AC8764
/* 80AC873C  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AC943C@ha */
/* 80AC8740  38 63 94 3C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AC943C@l */
/* 80AC8744  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AC8748  38 03 00 0C */	addi r0, r3, 0xc
/* 80AC874C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AC8750  38 03 00 18 */	addi r0, r3, 0x18
/* 80AC8754  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AC8758  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC875C  38 80 00 00 */	li r4, 0
/* 80AC8760  4B 5A D8 35 */	bl __dt__9dBgS_AcchFv
lbl_80AC8764:
/* 80AC8764  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC8768  41 82 00 20 */	beq lbl_80AC8788
/* 80AC876C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC8770  41 82 00 18 */	beq lbl_80AC8788
/* 80AC8774  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC8778  41 82 00 10 */	beq lbl_80AC8788
/* 80AC877C  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC8780  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC8784  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AC8788:
/* 80AC8788  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC878C  41 82 00 20 */	beq lbl_80AC87AC
/* 80AC8790  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC8794  41 82 00 18 */	beq lbl_80AC87AC
/* 80AC8798  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC879C  41 82 00 10 */	beq lbl_80AC87AC
/* 80AC87A0  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC87A4  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC87A8  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AC87AC:
/* 80AC87AC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC87B0  41 82 00 20 */	beq lbl_80AC87D0
/* 80AC87B4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC87B8  41 82 00 18 */	beq lbl_80AC87D0
/* 80AC87BC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC87C0  41 82 00 10 */	beq lbl_80AC87D0
/* 80AC87C4  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC87C8  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC87CC  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AC87D0:
/* 80AC87D0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC87D4  41 82 00 20 */	beq lbl_80AC87F4
/* 80AC87D8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC87DC  41 82 00 18 */	beq lbl_80AC87F4
/* 80AC87E0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC87E4  41 82 00 10 */	beq lbl_80AC87F4
/* 80AC87E8  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC87EC  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC87F0  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AC87F4:
/* 80AC87F4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC87F8  41 82 00 20 */	beq lbl_80AC8818
/* 80AC87FC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC8800  41 82 00 18 */	beq lbl_80AC8818
/* 80AC8804  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC8808  41 82 00 10 */	beq lbl_80AC8818
/* 80AC880C  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC8810  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC8814  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AC8818:
/* 80AC8818  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AC881C  38 80 FF FF */	li r4, -1
/* 80AC8820  4B 7F 7C 01 */	bl __dt__10Z2CreatureFv
/* 80AC8824  7F C3 F3 78 */	mr r3, r30
/* 80AC8828  38 80 00 00 */	li r4, 0
/* 80AC882C  4B 55 04 61 */	bl __dt__10fopAc_ac_cFv
/* 80AC8830  7F E0 07 35 */	extsh. r0, r31
/* 80AC8834  40 81 00 0C */	ble lbl_80AC8840
/* 80AC8838  7F C3 F3 78 */	mr r3, r30
/* 80AC883C  4B 80 65 01 */	bl __dl__FPv
lbl_80AC8840:
/* 80AC8840  7F C3 F3 78 */	mr r3, r30
/* 80AC8844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8848  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC884C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8850  7C 08 03 A6 */	mtlr r0
/* 80AC8854  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8858  4E 80 00 20 */	blr 
