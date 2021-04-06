lbl_8096C3B0:
/* 8096C3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C3B4  7C 08 02 A6 */	mflr r0
/* 8096C3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C3C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8096C3C4  7C 7F 1B 78 */	mr r31, r3
/* 8096C3C8  4B 6A C7 9D */	bl __ct__10fopAc_ac_cFv
/* 8096C3CC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 8096C3D0  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 8096C3D4  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 8096C3D8  3B DF 05 6C */	addi r30, r31, 0x56c
/* 8096C3DC  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C3E0  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C3E4  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 8096C3E8  7F C3 F3 78 */	mr r3, r30
/* 8096C3EC  38 80 00 00 */	li r4, 0
/* 8096C3F0  4B 9B C0 0D */	bl init__12J3DFrameCtrlFs
/* 8096C3F4  38 00 00 00 */	li r0, 0
/* 8096C3F8  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8096C3FC  3B DF 05 88 */	addi r30, r31, 0x588
/* 8096C400  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C404  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C408  90 1F 05 88 */	stw r0, 0x588(r31)
/* 8096C40C  7F C3 F3 78 */	mr r3, r30
/* 8096C410  38 80 00 00 */	li r4, 0
/* 8096C414  4B 9B BF E9 */	bl init__12J3DFrameCtrlFs
/* 8096C418  38 00 00 00 */	li r0, 0
/* 8096C41C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8096C420  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 8096C424  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C428  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C42C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 8096C430  7F C3 F3 78 */	mr r3, r30
/* 8096C434  38 80 00 00 */	li r4, 0
/* 8096C438  4B 9B BF C5 */	bl init__12J3DFrameCtrlFs
/* 8096C43C  38 00 00 00 */	li r0, 0
/* 8096C440  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8096C444  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 8096C448  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C44C  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C450  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8096C454  7F C3 F3 78 */	mr r3, r30
/* 8096C458  38 80 00 00 */	li r4, 0
/* 8096C45C  4B 9B BF A1 */	bl init__12J3DFrameCtrlFs
/* 8096C460  38 00 00 00 */	li r0, 0
/* 8096C464  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8096C468  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 8096C46C  7F C3 F3 78 */	mr r3, r30
/* 8096C470  4B 70 9C 31 */	bl __ct__9dBgS_AcchFv
/* 8096C474  3C 60 80 97 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8096CDFC@ha */
/* 8096C478  38 63 CD FC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8096CDFC@l */
/* 8096C47C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8096C480  38 03 00 0C */	addi r0, r3, 0xc
/* 8096C484  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8096C488  38 03 00 18 */	addi r0, r3, 0x18
/* 8096C48C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8096C490  38 7E 00 14 */	addi r3, r30, 0x14
/* 8096C494  4B 70 C9 D5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8096C498  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8096C49C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8096C4A0  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 8096C4A4  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8096C4A8  4B 71 72 B9 */	bl __ct__10dCcD_GSttsFv
/* 8096C4AC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8096C4B0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8096C4B4  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 8096C4B8  38 03 00 20 */	addi r0, r3, 0x20
/* 8096C4BC  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 8096C4C0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 8096C4C4  4B 70 99 E9 */	bl __ct__12dBgS_AcchCirFv
/* 8096C4C8  3C 60 80 97 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x8096CE44@ha */
/* 8096C4CC  38 03 CE 44 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x8096CE44@l */
/* 8096C4D0  90 1F 08 28 */	stw r0, 0x828(r31)
/* 8096C4D4  38 7F 08 24 */	addi r3, r31, 0x824
/* 8096C4D8  4B 7E 41 D9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 8096C4DC  38 7F 08 2C */	addi r3, r31, 0x82c
/* 8096C4E0  3C 80 80 97 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x8096BFD8@ha */
/* 8096C4E4  38 84 BF D8 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x8096BFD8@l */
/* 8096C4E8  3C A0 80 97 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x8096BF90@ha */
/* 8096C4EC  38 A5 BF 90 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x8096BF90@l */
/* 8096C4F0  38 C0 00 08 */	li r6, 8
/* 8096C4F4  38 E0 00 05 */	li r7, 5
/* 8096C4F8  4B 9F 58 69 */	bl __construct_array
/* 8096C4FC  38 7F 08 54 */	addi r3, r31, 0x854
/* 8096C500  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha /* 0x8096C160@ha */
/* 8096C504  38 84 C1 60 */	addi r4, r4, __ct__4cXyzFv@l /* 0x8096C160@l */
/* 8096C508  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha /* 0x8096C124@ha */
/* 8096C50C  38 A5 C1 24 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8096C124@l */
/* 8096C510  38 C0 00 0C */	li r6, 0xc
/* 8096C514  38 E0 00 03 */	li r7, 3
/* 8096C518  4B 9F 58 49 */	bl __construct_array
/* 8096C51C  38 7F 09 08 */	addi r3, r31, 0x908
/* 8096C520  3C 80 80 97 */	lis r4, __ct__5csXyzFv@ha /* 0x8096C120@ha */
/* 8096C524  38 84 C1 20 */	addi r4, r4, __ct__5csXyzFv@l /* 0x8096C120@l */
/* 8096C528  3C A0 80 97 */	lis r5, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C52C  38 A5 C0 E4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C530  38 C0 00 06 */	li r6, 6
/* 8096C534  38 E0 00 03 */	li r7, 3
/* 8096C538  4B 9F 58 29 */	bl __construct_array
/* 8096C53C  38 7F 09 1A */	addi r3, r31, 0x91a
/* 8096C540  3C 80 80 97 */	lis r4, __ct__5csXyzFv@ha /* 0x8096C120@ha */
/* 8096C544  38 84 C1 20 */	addi r4, r4, __ct__5csXyzFv@l /* 0x8096C120@l */
/* 8096C548  3C A0 80 97 */	lis r5, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C54C  38 A5 C0 E4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C550  38 C0 00 06 */	li r6, 6
/* 8096C554  38 E0 00 03 */	li r7, 3
/* 8096C558  4B 9F 58 09 */	bl __construct_array
/* 8096C55C  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 8096C560  4B 8D D9 A1 */	bl __ct__10dMsgFlow_cFv
/* 8096C564  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 8096C568  4B 8F B6 B5 */	bl __ct__11cBgS_GndChkFv
/* 8096C56C  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 8096C570  4B 70 B0 0D */	bl __ct__11dBgS_GndChkFv
/* 8096C574  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 8096C578  4B 70 B6 F1 */	bl __ct__11dBgS_LinChkFv
/* 8096C57C  7F E3 FB 78 */	mr r3, r31
/* 8096C580  4B 7E 63 49 */	bl initialize__8daNpcF_cFv
/* 8096C584  7F E3 FB 78 */	mr r3, r31
/* 8096C588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C58C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096C590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C594  7C 08 03 A6 */	mtlr r0
/* 8096C598  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C59C  4E 80 00 20 */	blr 
