lbl_809E3440:
/* 809E3440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E3444  7C 08 02 A6 */	mflr r0
/* 809E3448  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E344C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E3450  93 C1 00 08 */	stw r30, 8(r1)
/* 809E3454  7C 7F 1B 78 */	mr r31, r3
/* 809E3458  4B 63 57 0D */	bl __ct__10fopAc_ac_cFv
/* 809E345C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809E3460  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809E3464  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809E3468  3B DF 05 6C */	addi r30, r31, 0x56c
/* 809E346C  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E3470  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E3474  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 809E3478  7F C3 F3 78 */	mr r3, r30
/* 809E347C  38 80 00 00 */	li r4, 0
/* 809E3480  4B 94 4F 7D */	bl init__12J3DFrameCtrlFs
/* 809E3484  38 00 00 00 */	li r0, 0
/* 809E3488  90 1E 00 18 */	stw r0, 0x18(r30)
/* 809E348C  3B DF 05 88 */	addi r30, r31, 0x588
/* 809E3490  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E3494  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E3498  90 1F 05 88 */	stw r0, 0x588(r31)
/* 809E349C  7F C3 F3 78 */	mr r3, r30
/* 809E34A0  38 80 00 00 */	li r4, 0
/* 809E34A4  4B 94 4F 59 */	bl init__12J3DFrameCtrlFs
/* 809E34A8  38 00 00 00 */	li r0, 0
/* 809E34AC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809E34B0  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 809E34B4  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E34B8  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E34BC  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 809E34C0  7F C3 F3 78 */	mr r3, r30
/* 809E34C4  38 80 00 00 */	li r4, 0
/* 809E34C8  4B 94 4F 35 */	bl init__12J3DFrameCtrlFs
/* 809E34CC  38 00 00 00 */	li r0, 0
/* 809E34D0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809E34D4  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 809E34D8  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E34DC  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E34E0  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 809E34E4  7F C3 F3 78 */	mr r3, r30
/* 809E34E8  38 80 00 00 */	li r4, 0
/* 809E34EC  4B 94 4F 11 */	bl init__12J3DFrameCtrlFs
/* 809E34F0  38 00 00 00 */	li r0, 0
/* 809E34F4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809E34F8  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 809E34FC  7F C3 F3 78 */	mr r3, r30
/* 809E3500  4B 69 2B A1 */	bl __ct__9dBgS_AcchFv
/* 809E3504  3C 60 80 9E */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809E3E68@ha */
/* 809E3508  38 63 3E 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809E3E68@l */
/* 809E350C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 809E3510  38 03 00 0C */	addi r0, r3, 0xc
/* 809E3514  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809E3518  38 03 00 18 */	addi r0, r3, 0x18
/* 809E351C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809E3520  38 7E 00 14 */	addi r3, r30, 0x14
/* 809E3524  4B 69 59 45 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809E3528  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809E352C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809E3530  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 809E3534  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 809E3538  4B 6A 02 29 */	bl __ct__10dCcD_GSttsFv
/* 809E353C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809E3540  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809E3544  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 809E3548  38 03 00 20 */	addi r0, r3, 0x20
/* 809E354C  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 809E3550  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809E3554  4B 69 29 59 */	bl __ct__12dBgS_AcchCirFv
/* 809E3558  3C 60 80 9E */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809E3EB0@ha */
/* 809E355C  38 03 3E B0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809E3EB0@l */
/* 809E3560  90 1F 08 28 */	stw r0, 0x828(r31)
/* 809E3564  38 7F 08 24 */	addi r3, r31, 0x824
/* 809E3568  4B 76 D1 49 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809E356C  38 7F 08 2C */	addi r3, r31, 0x82c
/* 809E3570  3C 80 80 9E */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809E3068@ha */
/* 809E3574  38 84 30 68 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809E3068@l */
/* 809E3578  3C A0 80 9E */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809E3020@ha */
/* 809E357C  38 A5 30 20 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809E3020@l */
/* 809E3580  38 C0 00 08 */	li r6, 8
/* 809E3584  38 E0 00 05 */	li r7, 5
/* 809E3588  4B 97 E7 D9 */	bl __construct_array
/* 809E358C  38 7F 08 54 */	addi r3, r31, 0x854
/* 809E3590  3C 80 80 9E */	lis r4, __ct__4cXyzFv@ha /* 0x809E31F0@ha */
/* 809E3594  38 84 31 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809E31F0@l */
/* 809E3598  3C A0 80 9E */	lis r5, __dt__4cXyzFv@ha /* 0x809E31B4@ha */
/* 809E359C  38 A5 31 B4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809E31B4@l */
/* 809E35A0  38 C0 00 0C */	li r6, 0xc
/* 809E35A4  38 E0 00 03 */	li r7, 3
/* 809E35A8  4B 97 E7 B9 */	bl __construct_array
/* 809E35AC  38 7F 09 08 */	addi r3, r31, 0x908
/* 809E35B0  3C 80 80 9E */	lis r4, __ct__5csXyzFv@ha /* 0x809E31B0@ha */
/* 809E35B4  38 84 31 B0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809E31B0@l */
/* 809E35B8  3C A0 80 9E */	lis r5, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E35BC  38 A5 31 74 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E35C0  38 C0 00 06 */	li r6, 6
/* 809E35C4  38 E0 00 03 */	li r7, 3
/* 809E35C8  4B 97 E7 99 */	bl __construct_array
/* 809E35CC  38 7F 09 1A */	addi r3, r31, 0x91a
/* 809E35D0  3C 80 80 9E */	lis r4, __ct__5csXyzFv@ha /* 0x809E31B0@ha */
/* 809E35D4  38 84 31 B0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809E31B0@l */
/* 809E35D8  3C A0 80 9E */	lis r5, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E35DC  38 A5 31 74 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E35E0  38 C0 00 06 */	li r6, 6
/* 809E35E4  38 E0 00 03 */	li r7, 3
/* 809E35E8  4B 97 E7 79 */	bl __construct_array
/* 809E35EC  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 809E35F0  4B 86 69 11 */	bl __ct__10dMsgFlow_cFv
/* 809E35F4  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 809E35F8  4B 88 46 25 */	bl __ct__11cBgS_GndChkFv
/* 809E35FC  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 809E3600  4B 69 3F 7D */	bl __ct__11dBgS_GndChkFv
/* 809E3604  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 809E3608  4B 69 46 61 */	bl __ct__11dBgS_LinChkFv
/* 809E360C  7F E3 FB 78 */	mr r3, r31
/* 809E3610  4B 76 F2 B9 */	bl initialize__8daNpcF_cFv
/* 809E3614  7F E3 FB 78 */	mr r3, r31
/* 809E3618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E361C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E3620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E3624  7C 08 03 A6 */	mtlr r0
/* 809E3628  38 21 00 10 */	addi r1, r1, 0x10
/* 809E362C  4E 80 00 20 */	blr 
