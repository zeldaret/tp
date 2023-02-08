lbl_80AC62DC:
/* 80AC62DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC62E0  7C 08 02 A6 */	mflr r0
/* 80AC62E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC62E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC62EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC62F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC62F4  7C 9F 23 78 */	mr r31, r4
/* 80AC62F8  41 82 03 50 */	beq lbl_80AC6648
/* 80AC62FC  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AC6300  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AC6304  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AC6308  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AC630C  41 82 00 1C */	beq lbl_80AC6328
/* 80AC6310  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AC6314  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha /* 0x80AC66A0@ha */
/* 80AC6318  38 84 66 A0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AC66A0@l */
/* 80AC631C  38 A0 00 06 */	li r5, 6
/* 80AC6320  38 C0 00 02 */	li r6, 2
/* 80AC6324  4B 89 B9 C5 */	bl __destroy_arr
lbl_80AC6328:
/* 80AC6328  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AC632C  41 82 00 B4 */	beq lbl_80AC63E0
/* 80AC6330  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC7358@ha */
/* 80AC6334  38 03 73 58 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC7358@l */
/* 80AC6338  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AC633C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AC6340  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6344  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6348  38 A0 00 0C */	li r5, 0xc
/* 80AC634C  38 C0 00 03 */	li r6, 3
/* 80AC6350  4B 89 B9 99 */	bl __destroy_arr
/* 80AC6354  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AC6358  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC635C  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6360  38 A0 00 0C */	li r5, 0xc
/* 80AC6364  38 C0 00 03 */	li r6, 3
/* 80AC6368  4B 89 B9 81 */	bl __destroy_arr
/* 80AC636C  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AC6370  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6374  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6378  38 A0 00 0C */	li r5, 0xc
/* 80AC637C  38 C0 00 03 */	li r6, 3
/* 80AC6380  4B 89 B9 69 */	bl __destroy_arr
/* 80AC6384  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AC6388  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC638C  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6390  38 A0 00 0C */	li r5, 0xc
/* 80AC6394  38 C0 00 03 */	li r6, 3
/* 80AC6398  4B 89 B9 51 */	bl __destroy_arr
/* 80AC639C  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AC63A0  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC63A4  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC63A8  38 A0 00 0C */	li r5, 0xc
/* 80AC63AC  38 C0 00 03 */	li r6, 3
/* 80AC63B0  4B 89 B9 39 */	bl __destroy_arr
/* 80AC63B4  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AC63B8  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC63BC  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC63C0  38 A0 00 0C */	li r5, 0xc
/* 80AC63C4  38 C0 00 03 */	li r6, 3
/* 80AC63C8  4B 89 B9 21 */	bl __destroy_arr
/* 80AC63CC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AC63D0  41 82 00 10 */	beq lbl_80AC63E0
/* 80AC63D4  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC63D8  38 03 73 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC63DC  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AC63E0:
/* 80AC63E0  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AC63E4  41 82 00 10 */	beq lbl_80AC63F4
/* 80AC63E8  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC63EC  38 03 73 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC63F0  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AC63F4:
/* 80AC63F4  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AC63F8  41 82 00 10 */	beq lbl_80AC6408
/* 80AC63FC  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC6400  38 03 73 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC6404  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AC6408:
/* 80AC6408  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AC640C  41 82 00 10 */	beq lbl_80AC641C
/* 80AC6410  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC7340@ha */
/* 80AC6414  38 03 73 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC7340@l */
/* 80AC6418  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AC641C:
/* 80AC641C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AC6420  41 82 00 10 */	beq lbl_80AC6430
/* 80AC6424  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC7340@ha */
/* 80AC6428  38 03 73 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC7340@l */
/* 80AC642C  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AC6430:
/* 80AC6430  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AC6434  38 80 FF FF */	li r4, -1
/* 80AC6438  4B 5B 18 A5 */	bl __dt__11dBgS_LinChkFv
/* 80AC643C  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AC6440  38 80 FF FF */	li r4, -1
/* 80AC6444  4B 5B 11 AD */	bl __dt__11dBgS_GndChkFv
/* 80AC6448  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AC644C  41 82 00 54 */	beq lbl_80AC64A0
/* 80AC6450  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC6454  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC6458  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AC645C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AC6460  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AC6464  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AC6468  41 82 00 24 */	beq lbl_80AC648C
/* 80AC646C  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AC7334@ha */
/* 80AC6470  38 03 73 34 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AC7334@l */
/* 80AC6474  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AC6478  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AC647C  41 82 00 10 */	beq lbl_80AC648C
/* 80AC6480  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AC7328@ha */
/* 80AC6484  38 03 73 28 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AC7328@l */
/* 80AC6488  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AC648C:
/* 80AC648C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AC6490  41 82 00 10 */	beq lbl_80AC64A0
/* 80AC6494  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC6498  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC649C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AC64A0:
/* 80AC64A0  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AC64A4  38 80 FF FF */	li r4, -1
/* 80AC64A8  4B 78 3A A1 */	bl __dt__10dMsgFlow_cFv
/* 80AC64AC  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AC64B0  38 80 FF FF */	li r4, -1
/* 80AC64B4  4B 7A 17 E1 */	bl __dt__11cBgS_GndChkFv
/* 80AC64B8  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AC64BC  41 82 00 28 */	beq lbl_80AC64E4
/* 80AC64C0  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AC731C@ha */
/* 80AC64C4  38 03 73 1C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AC731C@l */
/* 80AC64C8  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AC64CC  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AC64D0  38 80 FF FF */	li r4, -1
/* 80AC64D4  4B 7A 8A 45 */	bl __dt__8cM3dGCirFv
/* 80AC64D8  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AC64DC  38 80 00 00 */	li r4, 0
/* 80AC64E0  4B 7A 1B D1 */	bl __dt__13cBgS_PolyInfoFv
lbl_80AC64E4:
/* 80AC64E4  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AC64E8  41 82 00 54 */	beq lbl_80AC653C
/* 80AC64EC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC64F0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC64F4  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AC64F8  38 03 00 20 */	addi r0, r3, 0x20
/* 80AC64FC  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AC6500  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AC6504  41 82 00 24 */	beq lbl_80AC6528
/* 80AC6508  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AC7334@ha */
/* 80AC650C  38 03 73 34 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AC7334@l */
/* 80AC6510  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AC6514  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AC6518  41 82 00 10 */	beq lbl_80AC6528
/* 80AC651C  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AC7328@ha */
/* 80AC6520  38 03 73 28 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AC7328@l */
/* 80AC6524  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AC6528:
/* 80AC6528  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AC652C  41 82 00 10 */	beq lbl_80AC653C
/* 80AC6530  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC6534  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC6538  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AC653C:
/* 80AC653C  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AC6540  41 82 00 2C */	beq lbl_80AC656C
/* 80AC6544  3C 60 80 AC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AC72F8@ha */
/* 80AC6548  38 63 72 F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AC72F8@l */
/* 80AC654C  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AC6550  38 03 00 0C */	addi r0, r3, 0xc
/* 80AC6554  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AC6558  38 03 00 18 */	addi r0, r3, 0x18
/* 80AC655C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AC6560  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC6564  38 80 00 00 */	li r4, 0
/* 80AC6568  4B 5A FA 2D */	bl __dt__9dBgS_AcchFv
lbl_80AC656C:
/* 80AC656C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC6570  41 82 00 20 */	beq lbl_80AC6590
/* 80AC6574  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC6578  41 82 00 18 */	beq lbl_80AC6590
/* 80AC657C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AC6580  41 82 00 10 */	beq lbl_80AC6590
/* 80AC6584  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC6588  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC658C  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AC6590:
/* 80AC6590  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC6594  41 82 00 20 */	beq lbl_80AC65B4
/* 80AC6598  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC659C  41 82 00 18 */	beq lbl_80AC65B4
/* 80AC65A0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AC65A4  41 82 00 10 */	beq lbl_80AC65B4
/* 80AC65A8  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC65AC  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC65B0  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AC65B4:
/* 80AC65B4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC65B8  41 82 00 20 */	beq lbl_80AC65D8
/* 80AC65BC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC65C0  41 82 00 18 */	beq lbl_80AC65D8
/* 80AC65C4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AC65C8  41 82 00 10 */	beq lbl_80AC65D8
/* 80AC65CC  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC65D0  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC65D4  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AC65D8:
/* 80AC65D8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC65DC  41 82 00 20 */	beq lbl_80AC65FC
/* 80AC65E0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC65E4  41 82 00 18 */	beq lbl_80AC65FC
/* 80AC65E8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AC65EC  41 82 00 10 */	beq lbl_80AC65FC
/* 80AC65F0  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC65F4  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC65F8  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AC65FC:
/* 80AC65FC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC6600  41 82 00 20 */	beq lbl_80AC6620
/* 80AC6604  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC6608  41 82 00 18 */	beq lbl_80AC6620
/* 80AC660C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AC6610  41 82 00 10 */	beq lbl_80AC6620
/* 80AC6614  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC6618  38 03 72 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC661C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AC6620:
/* 80AC6620  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AC6624  38 80 FF FF */	li r4, -1
/* 80AC6628  4B 7F 9D F9 */	bl __dt__10Z2CreatureFv
/* 80AC662C  7F C3 F3 78 */	mr r3, r30
/* 80AC6630  38 80 00 00 */	li r4, 0
/* 80AC6634  4B 55 26 59 */	bl __dt__10fopAc_ac_cFv
/* 80AC6638  7F E0 07 35 */	extsh. r0, r31
/* 80AC663C  40 81 00 0C */	ble lbl_80AC6648
/* 80AC6640  7F C3 F3 78 */	mr r3, r30
/* 80AC6644  4B 80 86 F9 */	bl __dl__FPv
lbl_80AC6648:
/* 80AC6648  7F C3 F3 78 */	mr r3, r30
/* 80AC664C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6650  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC6654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6658  7C 08 03 A6 */	mtlr r0
/* 80AC665C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6660  4E 80 00 20 */	blr 
