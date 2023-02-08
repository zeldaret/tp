lbl_80961CB4:
/* 80961CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80961CB8  7C 08 02 A6 */	mflr r0
/* 80961CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80961CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80961CC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80961CC8  7C 7F 1B 78 */	mr r31, r3
/* 80961CCC  4B 6B 6E 99 */	bl __ct__10fopAc_ac_cFv
/* 80961CD0  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80961CD4  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80961CD8  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80961CDC  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80961CE0  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961CE4  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961CE8  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80961CEC  7F C3 F3 78 */	mr r3, r30
/* 80961CF0  38 80 00 00 */	li r4, 0
/* 80961CF4  4B 9C 67 09 */	bl init__12J3DFrameCtrlFs
/* 80961CF8  38 00 00 00 */	li r0, 0
/* 80961CFC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80961D00  3B DF 05 88 */	addi r30, r31, 0x588
/* 80961D04  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961D08  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961D0C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80961D10  7F C3 F3 78 */	mr r3, r30
/* 80961D14  38 80 00 00 */	li r4, 0
/* 80961D18  4B 9C 66 E5 */	bl init__12J3DFrameCtrlFs
/* 80961D1C  38 00 00 00 */	li r0, 0
/* 80961D20  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80961D24  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80961D28  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961D2C  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961D30  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80961D34  7F C3 F3 78 */	mr r3, r30
/* 80961D38  38 80 00 00 */	li r4, 0
/* 80961D3C  4B 9C 66 C1 */	bl init__12J3DFrameCtrlFs
/* 80961D40  38 00 00 00 */	li r0, 0
/* 80961D44  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80961D48  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80961D4C  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961D50  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961D54  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80961D58  7F C3 F3 78 */	mr r3, r30
/* 80961D5C  38 80 00 00 */	li r4, 0
/* 80961D60  4B 9C 66 9D */	bl init__12J3DFrameCtrlFs
/* 80961D64  38 00 00 00 */	li r0, 0
/* 80961D68  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80961D6C  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80961D70  7F C3 F3 78 */	mr r3, r30
/* 80961D74  4B 71 43 2D */	bl __ct__9dBgS_AcchFv
/* 80961D78  3C 60 80 96 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80962730@ha */
/* 80961D7C  38 63 27 30 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80962730@l */
/* 80961D80  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80961D84  38 03 00 0C */	addi r0, r3, 0xc
/* 80961D88  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80961D8C  38 03 00 18 */	addi r0, r3, 0x18
/* 80961D90  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80961D94  38 7E 00 14 */	addi r3, r30, 0x14
/* 80961D98  4B 71 70 D1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80961D9C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80961DA0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80961DA4  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80961DA8  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80961DAC  4B 72 19 B5 */	bl __ct__10dCcD_GSttsFv
/* 80961DB0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80961DB4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80961DB8  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80961DBC  38 03 00 20 */	addi r0, r3, 0x20
/* 80961DC0  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80961DC4  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80961DC8  4B 71 40 E5 */	bl __ct__12dBgS_AcchCirFv
/* 80961DCC  3C 60 80 96 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80962778@ha */
/* 80961DD0  38 03 27 78 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80962778@l */
/* 80961DD4  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80961DD8  38 7F 08 24 */	addi r3, r31, 0x824
/* 80961DDC  4B 7E E8 D5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80961DE0  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80961DE4  3C 80 80 96 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809618DC@ha */
/* 80961DE8  38 84 18 DC */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809618DC@l */
/* 80961DEC  3C A0 80 96 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80961894@ha */
/* 80961DF0  38 A5 18 94 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80961894@l */
/* 80961DF4  38 C0 00 08 */	li r6, 8
/* 80961DF8  38 E0 00 05 */	li r7, 5
/* 80961DFC  4B 9F FF 65 */	bl __construct_array
/* 80961E00  38 7F 08 54 */	addi r3, r31, 0x854
/* 80961E04  3C 80 80 96 */	lis r4, __ct__4cXyzFv@ha /* 0x80961A64@ha */
/* 80961E08  38 84 1A 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80961A64@l */
/* 80961E0C  3C A0 80 96 */	lis r5, __dt__4cXyzFv@ha /* 0x80961A28@ha */
/* 80961E10  38 A5 1A 28 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80961A28@l */
/* 80961E14  38 C0 00 0C */	li r6, 0xc
/* 80961E18  38 E0 00 03 */	li r7, 3
/* 80961E1C  4B 9F FF 45 */	bl __construct_array
/* 80961E20  38 7F 09 08 */	addi r3, r31, 0x908
/* 80961E24  3C 80 80 96 */	lis r4, __ct__5csXyzFv@ha /* 0x80961A24@ha */
/* 80961E28  38 84 1A 24 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80961A24@l */
/* 80961E2C  3C A0 80 96 */	lis r5, __dt__5csXyzFv@ha /* 0x809619E8@ha */
/* 80961E30  38 A5 19 E8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809619E8@l */
/* 80961E34  38 C0 00 06 */	li r6, 6
/* 80961E38  38 E0 00 03 */	li r7, 3
/* 80961E3C  4B 9F FF 25 */	bl __construct_array
/* 80961E40  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80961E44  3C 80 80 96 */	lis r4, __ct__5csXyzFv@ha /* 0x80961A24@ha */
/* 80961E48  38 84 1A 24 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80961A24@l */
/* 80961E4C  3C A0 80 96 */	lis r5, __dt__5csXyzFv@ha /* 0x809619E8@ha */
/* 80961E50  38 A5 19 E8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809619E8@l */
/* 80961E54  38 C0 00 06 */	li r6, 6
/* 80961E58  38 E0 00 03 */	li r7, 3
/* 80961E5C  4B 9F FF 05 */	bl __construct_array
/* 80961E60  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80961E64  4B 8E 80 9D */	bl __ct__10dMsgFlow_cFv
/* 80961E68  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80961E6C  4B 90 5D B1 */	bl __ct__11cBgS_GndChkFv
/* 80961E70  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80961E74  4B 71 57 09 */	bl __ct__11dBgS_GndChkFv
/* 80961E78  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80961E7C  4B 71 5D ED */	bl __ct__11dBgS_LinChkFv
/* 80961E80  7F E3 FB 78 */	mr r3, r31
/* 80961E84  4B 7F 0A 45 */	bl initialize__8daNpcF_cFv
/* 80961E88  7F E3 FB 78 */	mr r3, r31
/* 80961E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80961E90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80961E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80961E98  7C 08 03 A6 */	mtlr r0
/* 80961E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80961EA0  4E 80 00 20 */	blr 
