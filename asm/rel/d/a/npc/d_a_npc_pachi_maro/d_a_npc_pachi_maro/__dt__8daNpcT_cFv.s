lbl_80A9A638:
/* 80A9A638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A63C  7C 08 02 A6 */	mflr r0
/* 80A9A640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9A648  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9A64C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A9A650  7C 9F 23 78 */	mr r31, r4
/* 80A9A654  41 82 03 50 */	beq lbl_80A9A9A4
/* 80A9A658  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A9A65C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A9A660  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A9A664  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A9A668  41 82 00 1C */	beq lbl_80A9A684
/* 80A9A66C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A9A670  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80A9A9FC@ha */
/* 80A9A674  38 84 A9 FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A9A9FC@l */
/* 80A9A678  38 A0 00 06 */	li r5, 6
/* 80A9A67C  38 C0 00 02 */	li r6, 2
/* 80A9A680  4B 8C 76 69 */	bl __destroy_arr
lbl_80A9A684:
/* 80A9A684  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A9A688  41 82 00 B4 */	beq lbl_80A9A73C
/* 80A9A68C  3C 60 80 AA */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A9C084@ha */
/* 80A9A690  38 03 C0 84 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A9C084@l */
/* 80A9A694  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A9A698  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A9A69C  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9A6A0  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9A6A4  38 A0 00 0C */	li r5, 0xc
/* 80A9A6A8  38 C0 00 03 */	li r6, 3
/* 80A9A6AC  4B 8C 76 3D */	bl __destroy_arr
/* 80A9A6B0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A9A6B4  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9A6B8  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9A6BC  38 A0 00 0C */	li r5, 0xc
/* 80A9A6C0  38 C0 00 03 */	li r6, 3
/* 80A9A6C4  4B 8C 76 25 */	bl __destroy_arr
/* 80A9A6C8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A9A6CC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9A6D0  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9A6D4  38 A0 00 0C */	li r5, 0xc
/* 80A9A6D8  38 C0 00 03 */	li r6, 3
/* 80A9A6DC  4B 8C 76 0D */	bl __destroy_arr
/* 80A9A6E0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A9A6E4  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9A6E8  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9A6EC  38 A0 00 0C */	li r5, 0xc
/* 80A9A6F0  38 C0 00 03 */	li r6, 3
/* 80A9A6F4  4B 8C 75 F5 */	bl __destroy_arr
/* 80A9A6F8  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A9A6FC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9A700  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9A704  38 A0 00 0C */	li r5, 0xc
/* 80A9A708  38 C0 00 03 */	li r6, 3
/* 80A9A70C  4B 8C 75 DD */	bl __destroy_arr
/* 80A9A710  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A9A714  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9A718  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9A71C  38 A0 00 0C */	li r5, 0xc
/* 80A9A720  38 C0 00 03 */	li r6, 3
/* 80A9A724  4B 8C 75 C5 */	bl __destroy_arr
/* 80A9A728  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A9A72C  41 82 00 10 */	beq lbl_80A9A73C
/* 80A9A730  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A9C078@ha */
/* 80A9A734  38 03 C0 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A9C078@l */
/* 80A9A738  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A9A73C:
/* 80A9A73C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A9A740  41 82 00 10 */	beq lbl_80A9A750
/* 80A9A744  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A9C078@ha */
/* 80A9A748  38 03 C0 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A9C078@l */
/* 80A9A74C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A9A750:
/* 80A9A750  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A9A754  41 82 00 10 */	beq lbl_80A9A764
/* 80A9A758  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A9C078@ha */
/* 80A9A75C  38 03 C0 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A9C078@l */
/* 80A9A760  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A9A764:
/* 80A9A764  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A9A768  41 82 00 10 */	beq lbl_80A9A778
/* 80A9A76C  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A9C06C@ha */
/* 80A9A770  38 03 C0 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A9C06C@l */
/* 80A9A774  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A9A778:
/* 80A9A778  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A9A77C  41 82 00 10 */	beq lbl_80A9A78C
/* 80A9A780  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A9C06C@ha */
/* 80A9A784  38 03 C0 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A9C06C@l */
/* 80A9A788  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A9A78C:
/* 80A9A78C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A9A790  38 80 FF FF */	li r4, -1
/* 80A9A794  4B 5D D5 49 */	bl __dt__11dBgS_LinChkFv
/* 80A9A798  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A9A79C  38 80 FF FF */	li r4, -1
/* 80A9A7A0  4B 5D CE 51 */	bl __dt__11dBgS_GndChkFv
/* 80A9A7A4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A9A7A8  41 82 00 54 */	beq lbl_80A9A7FC
/* 80A9A7AC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A9A7B0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A9A7B4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A9A7B8  38 03 00 20 */	addi r0, r3, 0x20
/* 80A9A7BC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A9A7C0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A9A7C4  41 82 00 24 */	beq lbl_80A9A7E8
/* 80A9A7C8  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A9C060@ha */
/* 80A9A7CC  38 03 C0 60 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A9C060@l */
/* 80A9A7D0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A9A7D4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A9A7D8  41 82 00 10 */	beq lbl_80A9A7E8
/* 80A9A7DC  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A9C054@ha */
/* 80A9A7E0  38 03 C0 54 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A9C054@l */
/* 80A9A7E4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A9A7E8:
/* 80A9A7E8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A9A7EC  41 82 00 10 */	beq lbl_80A9A7FC
/* 80A9A7F0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A9A7F4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A9A7F8  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A9A7FC:
/* 80A9A7FC  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A9A800  38 80 FF FF */	li r4, -1
/* 80A9A804  4B 7A F7 45 */	bl __dt__10dMsgFlow_cFv
/* 80A9A808  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A9A80C  38 80 FF FF */	li r4, -1
/* 80A9A810  4B 7C D4 85 */	bl __dt__11cBgS_GndChkFv
/* 80A9A814  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A9A818  41 82 00 28 */	beq lbl_80A9A840
/* 80A9A81C  3C 60 80 AA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A9C048@ha */
/* 80A9A820  38 03 C0 48 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A9C048@l */
/* 80A9A824  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A9A828  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A9A82C  38 80 FF FF */	li r4, -1
/* 80A9A830  4B 7D 46 E9 */	bl __dt__8cM3dGCirFv
/* 80A9A834  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A9A838  38 80 00 00 */	li r4, 0
/* 80A9A83C  4B 7C D8 75 */	bl __dt__13cBgS_PolyInfoFv
lbl_80A9A840:
/* 80A9A840  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A9A844  41 82 00 54 */	beq lbl_80A9A898
/* 80A9A848  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A9A84C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A9A850  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A9A854  38 03 00 20 */	addi r0, r3, 0x20
/* 80A9A858  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A9A85C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A9A860  41 82 00 24 */	beq lbl_80A9A884
/* 80A9A864  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A9C060@ha */
/* 80A9A868  38 03 C0 60 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A9C060@l */
/* 80A9A86C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A9A870  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A9A874  41 82 00 10 */	beq lbl_80A9A884
/* 80A9A878  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A9C054@ha */
/* 80A9A87C  38 03 C0 54 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A9C054@l */
/* 80A9A880  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A9A884:
/* 80A9A884  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A9A888  41 82 00 10 */	beq lbl_80A9A898
/* 80A9A88C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A9A890  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A9A894  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A9A898:
/* 80A9A898  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A9A89C  41 82 00 2C */	beq lbl_80A9A8C8
/* 80A9A8A0  3C 60 80 AA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A9C024@ha */
/* 80A9A8A4  38 63 C0 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A9C024@l */
/* 80A9A8A8  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A9A8AC  38 03 00 0C */	addi r0, r3, 0xc
/* 80A9A8B0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A9A8B4  38 03 00 18 */	addi r0, r3, 0x18
/* 80A9A8B8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A9A8BC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A9A8C0  38 80 00 00 */	li r4, 0
/* 80A9A8C4  4B 5D B6 D1 */	bl __dt__9dBgS_AcchFv
lbl_80A9A8C8:
/* 80A9A8C8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A9A8CC  41 82 00 20 */	beq lbl_80A9A8EC
/* 80A9A8D0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A9A8D4  41 82 00 18 */	beq lbl_80A9A8EC
/* 80A9A8D8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A9A8DC  41 82 00 10 */	beq lbl_80A9A8EC
/* 80A9A8E0  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9A8E4  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9A8E8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A9A8EC:
/* 80A9A8EC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A9A8F0  41 82 00 20 */	beq lbl_80A9A910
/* 80A9A8F4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A9A8F8  41 82 00 18 */	beq lbl_80A9A910
/* 80A9A8FC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A9A900  41 82 00 10 */	beq lbl_80A9A910
/* 80A9A904  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9A908  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9A90C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A9A910:
/* 80A9A910  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A9A914  41 82 00 20 */	beq lbl_80A9A934
/* 80A9A918  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A9A91C  41 82 00 18 */	beq lbl_80A9A934
/* 80A9A920  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A9A924  41 82 00 10 */	beq lbl_80A9A934
/* 80A9A928  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9A92C  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9A930  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A9A934:
/* 80A9A934  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A9A938  41 82 00 20 */	beq lbl_80A9A958
/* 80A9A93C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A9A940  41 82 00 18 */	beq lbl_80A9A958
/* 80A9A944  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A9A948  41 82 00 10 */	beq lbl_80A9A958
/* 80A9A94C  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9A950  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9A954  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A9A958:
/* 80A9A958  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A9A95C  41 82 00 20 */	beq lbl_80A9A97C
/* 80A9A960  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A9A964  41 82 00 18 */	beq lbl_80A9A97C
/* 80A9A968  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A9A96C  41 82 00 10 */	beq lbl_80A9A97C
/* 80A9A970  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9A974  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9A978  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A9A97C:
/* 80A9A97C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A9A980  38 80 FF FF */	li r4, -1
/* 80A9A984  4B 82 5A 9D */	bl __dt__10Z2CreatureFv
/* 80A9A988  7F C3 F3 78 */	mr r3, r30
/* 80A9A98C  38 80 00 00 */	li r4, 0
/* 80A9A990  4B 57 E2 FD */	bl __dt__10fopAc_ac_cFv
/* 80A9A994  7F E0 07 35 */	extsh. r0, r31
/* 80A9A998  40 81 00 0C */	ble lbl_80A9A9A4
/* 80A9A99C  7F C3 F3 78 */	mr r3, r30
/* 80A9A9A0  4B 83 43 9D */	bl __dl__FPv
lbl_80A9A9A4:
/* 80A9A9A4  7F C3 F3 78 */	mr r3, r30
/* 80A9A9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9A9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9A9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A9B4  7C 08 03 A6 */	mtlr r0
/* 80A9A9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A9BC  4E 80 00 20 */	blr 
