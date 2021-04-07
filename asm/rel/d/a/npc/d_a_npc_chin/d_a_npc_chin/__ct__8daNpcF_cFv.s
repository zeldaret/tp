lbl_809912EC:
/* 809912EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809912F0  7C 08 02 A6 */	mflr r0
/* 809912F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809912F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809912FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80991300  7C 7F 1B 78 */	mr r31, r3
/* 80991304  4B 68 78 61 */	bl __ct__10fopAc_ac_cFv
/* 80991308  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 8099130C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80991310  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80991314  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80991318  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809923D4@ha */
/* 8099131C  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809923D4@l */
/* 80991320  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80991324  7F C3 F3 78 */	mr r3, r30
/* 80991328  38 80 00 00 */	li r4, 0
/* 8099132C  4B 99 70 D1 */	bl init__12J3DFrameCtrlFs
/* 80991330  38 00 00 00 */	li r0, 0
/* 80991334  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80991338  3B DF 05 88 */	addi r30, r31, 0x588
/* 8099133C  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809923D4@ha */
/* 80991340  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809923D4@l */
/* 80991344  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80991348  7F C3 F3 78 */	mr r3, r30
/* 8099134C  38 80 00 00 */	li r4, 0
/* 80991350  4B 99 70 AD */	bl init__12J3DFrameCtrlFs
/* 80991354  38 00 00 00 */	li r0, 0
/* 80991358  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8099135C  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80991360  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809923D4@ha */
/* 80991364  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809923D4@l */
/* 80991368  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 8099136C  7F C3 F3 78 */	mr r3, r30
/* 80991370  38 80 00 00 */	li r4, 0
/* 80991374  4B 99 70 89 */	bl init__12J3DFrameCtrlFs
/* 80991378  38 00 00 00 */	li r0, 0
/* 8099137C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80991380  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80991384  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809923D4@ha */
/* 80991388  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809923D4@l */
/* 8099138C  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80991390  7F C3 F3 78 */	mr r3, r30
/* 80991394  38 80 00 00 */	li r4, 0
/* 80991398  4B 99 70 65 */	bl init__12J3DFrameCtrlFs
/* 8099139C  38 00 00 00 */	li r0, 0
/* 809913A0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809913A4  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 809913A8  7F C3 F3 78 */	mr r3, r30
/* 809913AC  4B 6E 4C F5 */	bl __ct__9dBgS_AcchFv
/* 809913B0  3C 60 80 99 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80992380@ha */
/* 809913B4  38 63 23 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80992380@l */
/* 809913B8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 809913BC  38 03 00 0C */	addi r0, r3, 0xc
/* 809913C0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809913C4  38 03 00 18 */	addi r0, r3, 0x18
/* 809913C8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809913CC  38 7E 00 14 */	addi r3, r30, 0x14
/* 809913D0  4B 6E 7A 99 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809913D4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809913D8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809913DC  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 809913E0  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 809913E4  4B 6F 23 7D */	bl __ct__10dCcD_GSttsFv
/* 809913E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809913EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809913F0  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 809913F4  38 03 00 20 */	addi r0, r3, 0x20
/* 809913F8  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 809913FC  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80991400  4B 6E 4A AD */	bl __ct__12dBgS_AcchCirFv
/* 80991404  3C 60 80 99 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809923C8@ha */
/* 80991408  38 03 23 C8 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809923C8@l */
/* 8099140C  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80991410  38 7F 08 24 */	addi r3, r31, 0x824
/* 80991414  4B 7B F2 9D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80991418  38 7F 08 2C */	addi r3, r31, 0x82c
/* 8099141C  3C 80 80 99 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80990F14@ha */
/* 80991420  38 84 0F 14 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80990F14@l */
/* 80991424  3C A0 80 99 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80990ECC@ha */
/* 80991428  38 A5 0E CC */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80990ECC@l */
/* 8099142C  38 C0 00 08 */	li r6, 8
/* 80991430  38 E0 00 05 */	li r7, 5
/* 80991434  4B 9D 09 2D */	bl __construct_array
/* 80991438  38 7F 08 54 */	addi r3, r31, 0x854
/* 8099143C  3C 80 80 99 */	lis r4, __ct__4cXyzFv@ha /* 0x8099109C@ha */
/* 80991440  38 84 10 9C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8099109C@l */
/* 80991444  3C A0 80 99 */	lis r5, __dt__4cXyzFv@ha /* 0x80991060@ha */
/* 80991448  38 A5 10 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80991060@l */
/* 8099144C  38 C0 00 0C */	li r6, 0xc
/* 80991450  38 E0 00 03 */	li r7, 3
/* 80991454  4B 9D 09 0D */	bl __construct_array
/* 80991458  38 7F 09 08 */	addi r3, r31, 0x908
/* 8099145C  3C 80 80 99 */	lis r4, __ct__5csXyzFv@ha /* 0x8099105C@ha */
/* 80991460  38 84 10 5C */	addi r4, r4, __ct__5csXyzFv@l /* 0x8099105C@l */
/* 80991464  3C A0 80 99 */	lis r5, __dt__5csXyzFv@ha /* 0x80991020@ha */
/* 80991468  38 A5 10 20 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80991020@l */
/* 8099146C  38 C0 00 06 */	li r6, 6
/* 80991470  38 E0 00 03 */	li r7, 3
/* 80991474  4B 9D 08 ED */	bl __construct_array
/* 80991478  38 7F 09 1A */	addi r3, r31, 0x91a
/* 8099147C  3C 80 80 99 */	lis r4, __ct__5csXyzFv@ha /* 0x8099105C@ha */
/* 80991480  38 84 10 5C */	addi r4, r4, __ct__5csXyzFv@l /* 0x8099105C@l */
/* 80991484  3C A0 80 99 */	lis r5, __dt__5csXyzFv@ha /* 0x80991020@ha */
/* 80991488  38 A5 10 20 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80991020@l */
/* 8099148C  38 C0 00 06 */	li r6, 6
/* 80991490  38 E0 00 03 */	li r7, 3
/* 80991494  4B 9D 08 CD */	bl __construct_array
/* 80991498  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 8099149C  4B 8B 8A 65 */	bl __ct__10dMsgFlow_cFv
/* 809914A0  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 809914A4  4B 8D 67 79 */	bl __ct__11cBgS_GndChkFv
/* 809914A8  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 809914AC  4B 6E 60 D1 */	bl __ct__11dBgS_GndChkFv
/* 809914B0  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 809914B4  4B 6E 67 B5 */	bl __ct__11dBgS_LinChkFv
/* 809914B8  7F E3 FB 78 */	mr r3, r31
/* 809914BC  4B 7C 14 0D */	bl initialize__8daNpcF_cFv
/* 809914C0  7F E3 FB 78 */	mr r3, r31
/* 809914C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809914C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809914CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809914D0  7C 08 03 A6 */	mtlr r0
/* 809914D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809914D8  4E 80 00 20 */	blr 
