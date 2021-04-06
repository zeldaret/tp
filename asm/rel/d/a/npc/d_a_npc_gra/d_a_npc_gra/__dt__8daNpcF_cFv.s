lbl_809C94BC:
/* 809C94BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C94C0  7C 08 02 A6 */	mflr r0
/* 809C94C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C94C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C94CC  93 C1 00 08 */	stw r30, 8(r1)
/* 809C94D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809C94D4  7C 9F 23 78 */	mr r31, r4
/* 809C94D8  41 82 02 14 */	beq lbl_809C96EC
/* 809C94DC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809C94E0  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809C94E4  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809C94E8  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809C94EC  38 80 FF FF */	li r4, -1
/* 809C94F0  4B 6A E7 ED */	bl __dt__11dBgS_LinChkFv
/* 809C94F4  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809C94F8  38 80 FF FF */	li r4, -1
/* 809C94FC  4B 6A E0 F5 */	bl __dt__11dBgS_GndChkFv
/* 809C9500  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809C9504  38 80 FF FF */	li r4, -1
/* 809C9508  4B 89 E7 8D */	bl __dt__11cBgS_GndChkFv
/* 809C950C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809C9510  38 80 FF FF */	li r4, -1
/* 809C9514  4B 88 0A 35 */	bl __dt__10dMsgFlow_cFv
/* 809C9518  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809C951C  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809C943C@ha */
/* 809C9520  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809C943C@l */
/* 809C9524  38 A0 00 06 */	li r5, 6
/* 809C9528  38 C0 00 03 */	li r6, 3
/* 809C952C  4B 99 87 BD */	bl __destroy_arr
/* 809C9530  38 7E 09 08 */	addi r3, r30, 0x908
/* 809C9534  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809C943C@ha */
/* 809C9538  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809C943C@l */
/* 809C953C  38 A0 00 06 */	li r5, 6
/* 809C9540  38 C0 00 03 */	li r6, 3
/* 809C9544  4B 99 87 A5 */	bl __destroy_arr
/* 809C9548  38 7E 08 54 */	addi r3, r30, 0x854
/* 809C954C  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha /* 0x809C947C@ha */
/* 809C9550  38 84 94 7C */	addi r4, r4, __dt__4cXyzFv@l /* 0x809C947C@l */
/* 809C9554  38 A0 00 0C */	li r5, 0xc
/* 809C9558  38 C0 00 03 */	li r6, 3
/* 809C955C  4B 99 87 8D */	bl __destroy_arr
/* 809C9560  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809C9564  3C 80 80 9D */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809C92E8@ha */
/* 809C9568  38 84 92 E8 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809C92E8@l */
/* 809C956C  38 A0 00 08 */	li r5, 8
/* 809C9570  38 C0 00 05 */	li r6, 5
/* 809C9574  4B 99 87 75 */	bl __destroy_arr
/* 809C9578  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809C957C  41 82 00 10 */	beq lbl_809C958C
/* 809C9580  3C 60 80 9D */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809CB29C@ha */
/* 809C9584  38 03 B2 9C */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809CB29C@l */
/* 809C9588  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809C958C:
/* 809C958C  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809C9590  41 82 00 28 */	beq lbl_809C95B8
/* 809C9594  3C 60 80 9D */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809CB290@ha */
/* 809C9598  38 03 B2 90 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809CB290@l */
/* 809C959C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809C95A0  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809C95A4  38 80 FF FF */	li r4, -1
/* 809C95A8  4B 8A 59 71 */	bl __dt__8cM3dGCirFv
/* 809C95AC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809C95B0  38 80 00 00 */	li r4, 0
/* 809C95B4  4B 89 EA FD */	bl __dt__13cBgS_PolyInfoFv
lbl_809C95B8:
/* 809C95B8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809C95BC  41 82 00 54 */	beq lbl_809C9610
/* 809C95C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809C95C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809C95C8  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809C95CC  38 03 00 20 */	addi r0, r3, 0x20
/* 809C95D0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809C95D4  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809C95D8  41 82 00 24 */	beq lbl_809C95FC
/* 809C95DC  3C 60 80 9D */	lis r3, __vt__10dCcD_GStts@ha /* 0x809CB284@ha */
/* 809C95E0  38 03 B2 84 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809CB284@l */
/* 809C95E4  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809C95E8  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809C95EC  41 82 00 10 */	beq lbl_809C95FC
/* 809C95F0  3C 60 80 9D */	lis r3, __vt__10cCcD_GStts@ha /* 0x809CB278@ha */
/* 809C95F4  38 03 B2 78 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809CB278@l */
/* 809C95F8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809C95FC:
/* 809C95FC  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809C9600  41 82 00 10 */	beq lbl_809C9610
/* 809C9604  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809C9608  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809C960C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809C9610:
/* 809C9610  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809C9614  41 82 00 2C */	beq lbl_809C9640
/* 809C9618  3C 60 80 9D */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809CB254@ha */
/* 809C961C  38 63 B2 54 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809CB254@l */
/* 809C9620  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809C9624  38 03 00 0C */	addi r0, r3, 0xc
/* 809C9628  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809C962C  38 03 00 18 */	addi r0, r3, 0x18
/* 809C9630  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809C9634  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809C9638  38 80 00 00 */	li r4, 0
/* 809C963C  4B 6A C9 59 */	bl __dt__9dBgS_AcchFv
lbl_809C9640:
/* 809C9640  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809C9644  41 82 00 20 */	beq lbl_809C9664
/* 809C9648  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809C964C  41 82 00 18 */	beq lbl_809C9664
/* 809C9650  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809C9654  41 82 00 10 */	beq lbl_809C9664
/* 809C9658  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CB248@ha */
/* 809C965C  38 03 B2 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CB248@l */
/* 809C9660  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809C9664:
/* 809C9664  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809C9668  41 82 00 20 */	beq lbl_809C9688
/* 809C966C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809C9670  41 82 00 18 */	beq lbl_809C9688
/* 809C9674  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809C9678  41 82 00 10 */	beq lbl_809C9688
/* 809C967C  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CB248@ha */
/* 809C9680  38 03 B2 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CB248@l */
/* 809C9684  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809C9688:
/* 809C9688  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809C968C  41 82 00 20 */	beq lbl_809C96AC
/* 809C9690  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809C9694  41 82 00 18 */	beq lbl_809C96AC
/* 809C9698  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809C969C  41 82 00 10 */	beq lbl_809C96AC
/* 809C96A0  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CB248@ha */
/* 809C96A4  38 03 B2 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CB248@l */
/* 809C96A8  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809C96AC:
/* 809C96AC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809C96B0  41 82 00 20 */	beq lbl_809C96D0
/* 809C96B4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809C96B8  41 82 00 18 */	beq lbl_809C96D0
/* 809C96BC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809C96C0  41 82 00 10 */	beq lbl_809C96D0
/* 809C96C4  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CB248@ha */
/* 809C96C8  38 03 B2 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CB248@l */
/* 809C96CC  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809C96D0:
/* 809C96D0  7F C3 F3 78 */	mr r3, r30
/* 809C96D4  38 80 00 00 */	li r4, 0
/* 809C96D8  4B 64 F5 B5 */	bl __dt__10fopAc_ac_cFv
/* 809C96DC  7F E0 07 35 */	extsh. r0, r31
/* 809C96E0  40 81 00 0C */	ble lbl_809C96EC
/* 809C96E4  7F C3 F3 78 */	mr r3, r30
/* 809C96E8  4B 90 56 55 */	bl __dl__FPv
lbl_809C96EC:
/* 809C96EC  7F C3 F3 78 */	mr r3, r30
/* 809C96F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C96F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809C96F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C96FC  7C 08 03 A6 */	mtlr r0
/* 809C9700  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9704  4E 80 00 20 */	blr 
