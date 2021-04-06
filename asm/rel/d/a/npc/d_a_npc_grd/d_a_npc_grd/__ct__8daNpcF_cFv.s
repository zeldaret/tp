lbl_809D3530:
/* 809D3530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3534  7C 08 02 A6 */	mflr r0
/* 809D3538  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D353C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D3540  93 C1 00 08 */	stw r30, 8(r1)
/* 809D3544  7C 7F 1B 78 */	mr r31, r3
/* 809D3548  4B 64 56 1D */	bl __ct__10fopAc_ac_cFv
/* 809D354C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809D3550  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809D3554  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809D3558  3B DF 05 6C */	addi r30, r31, 0x56c
/* 809D355C  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D3E18@ha */
/* 809D3560  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D3E18@l */
/* 809D3564  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 809D3568  7F C3 F3 78 */	mr r3, r30
/* 809D356C  38 80 00 00 */	li r4, 0
/* 809D3570  4B 95 4E 8D */	bl init__12J3DFrameCtrlFs
/* 809D3574  38 00 00 00 */	li r0, 0
/* 809D3578  90 1E 00 18 */	stw r0, 0x18(r30)
/* 809D357C  3B DF 05 88 */	addi r30, r31, 0x588
/* 809D3580  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D3E18@ha */
/* 809D3584  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D3E18@l */
/* 809D3588  90 1F 05 88 */	stw r0, 0x588(r31)
/* 809D358C  7F C3 F3 78 */	mr r3, r30
/* 809D3590  38 80 00 00 */	li r4, 0
/* 809D3594  4B 95 4E 69 */	bl init__12J3DFrameCtrlFs
/* 809D3598  38 00 00 00 */	li r0, 0
/* 809D359C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809D35A0  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 809D35A4  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D3E18@ha */
/* 809D35A8  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D3E18@l */
/* 809D35AC  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 809D35B0  7F C3 F3 78 */	mr r3, r30
/* 809D35B4  38 80 00 00 */	li r4, 0
/* 809D35B8  4B 95 4E 45 */	bl init__12J3DFrameCtrlFs
/* 809D35BC  38 00 00 00 */	li r0, 0
/* 809D35C0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809D35C4  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 809D35C8  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D3E18@ha */
/* 809D35CC  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D3E18@l */
/* 809D35D0  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 809D35D4  7F C3 F3 78 */	mr r3, r30
/* 809D35D8  38 80 00 00 */	li r4, 0
/* 809D35DC  4B 95 4E 21 */	bl init__12J3DFrameCtrlFs
/* 809D35E0  38 00 00 00 */	li r0, 0
/* 809D35E4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809D35E8  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 809D35EC  7F C3 F3 78 */	mr r3, r30
/* 809D35F0  4B 6A 2A B1 */	bl __ct__9dBgS_AcchFv
/* 809D35F4  3C 60 80 9D */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809D3E24@ha */
/* 809D35F8  38 63 3E 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809D3E24@l */
/* 809D35FC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 809D3600  38 03 00 0C */	addi r0, r3, 0xc
/* 809D3604  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809D3608  38 03 00 18 */	addi r0, r3, 0x18
/* 809D360C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809D3610  38 7E 00 14 */	addi r3, r30, 0x14
/* 809D3614  4B 6A 58 55 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809D3618  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809D361C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809D3620  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 809D3624  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 809D3628  4B 6B 01 39 */	bl __ct__10dCcD_GSttsFv
/* 809D362C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809D3630  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809D3634  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 809D3638  38 03 00 20 */	addi r0, r3, 0x20
/* 809D363C  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 809D3640  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809D3644  4B 6A 28 69 */	bl __ct__12dBgS_AcchCirFv
/* 809D3648  3C 60 80 9D */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809D3E6C@ha */
/* 809D364C  38 03 3E 6C */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809D3E6C@l */
/* 809D3650  90 1F 08 28 */	stw r0, 0x828(r31)
/* 809D3654  38 7F 08 24 */	addi r3, r31, 0x824
/* 809D3658  4B 77 D0 59 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809D365C  38 7F 08 2C */	addi r3, r31, 0x82c
/* 809D3660  3C 80 80 9D */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809D3158@ha */
/* 809D3664  38 84 31 58 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809D3158@l */
/* 809D3668  3C A0 80 9D */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809D3110@ha */
/* 809D366C  38 A5 31 10 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809D3110@l */
/* 809D3670  38 C0 00 08 */	li r6, 8
/* 809D3674  38 E0 00 05 */	li r7, 5
/* 809D3678  4B 98 E6 E9 */	bl __construct_array
/* 809D367C  38 7F 08 54 */	addi r3, r31, 0x854
/* 809D3680  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D32E0@ha */
/* 809D3684  38 84 32 E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D32E0@l */
/* 809D3688  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D32A4@ha */
/* 809D368C  38 A5 32 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D32A4@l */
/* 809D3690  38 C0 00 0C */	li r6, 0xc
/* 809D3694  38 E0 00 03 */	li r7, 3
/* 809D3698  4B 98 E6 C9 */	bl __construct_array
/* 809D369C  38 7F 09 08 */	addi r3, r31, 0x908
/* 809D36A0  3C 80 80 9D */	lis r4, __ct__5csXyzFv@ha /* 0x809D32A0@ha */
/* 809D36A4  38 84 32 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809D32A0@l */
/* 809D36A8  3C A0 80 9D */	lis r5, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809D36AC  38 A5 32 64 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809D36B0  38 C0 00 06 */	li r6, 6
/* 809D36B4  38 E0 00 03 */	li r7, 3
/* 809D36B8  4B 98 E6 A9 */	bl __construct_array
/* 809D36BC  38 7F 09 1A */	addi r3, r31, 0x91a
/* 809D36C0  3C 80 80 9D */	lis r4, __ct__5csXyzFv@ha /* 0x809D32A0@ha */
/* 809D36C4  38 84 32 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809D32A0@l */
/* 809D36C8  3C A0 80 9D */	lis r5, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809D36CC  38 A5 32 64 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809D36D0  38 C0 00 06 */	li r6, 6
/* 809D36D4  38 E0 00 03 */	li r7, 3
/* 809D36D8  4B 98 E6 89 */	bl __construct_array
/* 809D36DC  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 809D36E0  4B 87 68 21 */	bl __ct__10dMsgFlow_cFv
/* 809D36E4  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 809D36E8  4B 89 45 35 */	bl __ct__11cBgS_GndChkFv
/* 809D36EC  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 809D36F0  4B 6A 3E 8D */	bl __ct__11dBgS_GndChkFv
/* 809D36F4  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 809D36F8  4B 6A 45 71 */	bl __ct__11dBgS_LinChkFv
/* 809D36FC  7F E3 FB 78 */	mr r3, r31
/* 809D3700  4B 77 F1 C9 */	bl initialize__8daNpcF_cFv
/* 809D3704  7F E3 FB 78 */	mr r3, r31
/* 809D3708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D370C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D3710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3714  7C 08 03 A6 */	mtlr r0
/* 809D3718  38 21 00 10 */	addi r1, r1, 0x10
/* 809D371C  4E 80 00 20 */	blr 
