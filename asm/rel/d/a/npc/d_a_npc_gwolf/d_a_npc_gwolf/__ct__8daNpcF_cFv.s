lbl_809F7FD0:
/* 809F7FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7FD4  7C 08 02 A6 */	mflr r0
/* 809F7FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7FDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F7FE0  93 C1 00 08 */	stw r30, 8(r1)
/* 809F7FE4  7C 7F 1B 78 */	mr r31, r3
/* 809F7FE8  4B 62 0B 7D */	bl __ct__10fopAc_ac_cFv
/* 809F7FEC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809F7FF0  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809F7FF4  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809F7FF8  3B DF 05 6C */	addi r30, r31, 0x56c
/* 809F7FFC  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F8000  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F8004  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 809F8008  7F C3 F3 78 */	mr r3, r30
/* 809F800C  38 80 00 00 */	li r4, 0
/* 809F8010  4B 93 03 ED */	bl init__12J3DFrameCtrlFs
/* 809F8014  38 00 00 00 */	li r0, 0
/* 809F8018  90 1E 00 18 */	stw r0, 0x18(r30)
/* 809F801C  3B DF 05 88 */	addi r30, r31, 0x588
/* 809F8020  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F8024  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F8028  90 1F 05 88 */	stw r0, 0x588(r31)
/* 809F802C  7F C3 F3 78 */	mr r3, r30
/* 809F8030  38 80 00 00 */	li r4, 0
/* 809F8034  4B 93 03 C9 */	bl init__12J3DFrameCtrlFs
/* 809F8038  38 00 00 00 */	li r0, 0
/* 809F803C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809F8040  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 809F8044  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F8048  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F804C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 809F8050  7F C3 F3 78 */	mr r3, r30
/* 809F8054  38 80 00 00 */	li r4, 0
/* 809F8058  4B 93 03 A5 */	bl init__12J3DFrameCtrlFs
/* 809F805C  38 00 00 00 */	li r0, 0
/* 809F8060  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809F8064  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 809F8068  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F806C  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F8070  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 809F8074  7F C3 F3 78 */	mr r3, r30
/* 809F8078  38 80 00 00 */	li r4, 0
/* 809F807C  4B 93 03 81 */	bl init__12J3DFrameCtrlFs
/* 809F8080  38 00 00 00 */	li r0, 0
/* 809F8084  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809F8088  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 809F808C  7F C3 F3 78 */	mr r3, r30
/* 809F8090  4B 67 E0 11 */	bl __ct__9dBgS_AcchFv
/* 809F8094  3C 60 80 A0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809F8E38@ha */
/* 809F8098  38 63 8E 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809F8E38@l */
/* 809F809C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 809F80A0  38 03 00 0C */	addi r0, r3, 0xc
/* 809F80A4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809F80A8  38 03 00 18 */	addi r0, r3, 0x18
/* 809F80AC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809F80B0  38 7E 00 14 */	addi r3, r30, 0x14
/* 809F80B4  4B 68 0D B5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809F80B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809F80BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809F80C0  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 809F80C4  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 809F80C8  4B 68 B6 99 */	bl __ct__10dCcD_GSttsFv
/* 809F80CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809F80D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809F80D4  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 809F80D8  38 03 00 20 */	addi r0, r3, 0x20
/* 809F80DC  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 809F80E0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809F80E4  4B 67 DD C9 */	bl __ct__12dBgS_AcchCirFv
/* 809F80E8  3C 60 80 A0 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809F8E80@ha */
/* 809F80EC  38 03 8E 80 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809F8E80@l */
/* 809F80F0  90 1F 08 28 */	stw r0, 0x828(r31)
/* 809F80F4  38 7F 08 24 */	addi r3, r31, 0x824
/* 809F80F8  4B 75 85 B9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809F80FC  38 7F 08 2C */	addi r3, r31, 0x82c
/* 809F8100  3C 80 80 9F */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809F7BF8@ha */
/* 809F8104  38 84 7B F8 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809F7BF8@l */
/* 809F8108  3C A0 80 9F */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809F7BB0@ha */
/* 809F810C  38 A5 7B B0 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809F7BB0@l */
/* 809F8110  38 C0 00 08 */	li r6, 8
/* 809F8114  38 E0 00 05 */	li r7, 5
/* 809F8118  4B 96 9C 49 */	bl __construct_array
/* 809F811C  38 7F 08 54 */	addi r3, r31, 0x854
/* 809F8120  3C 80 80 9F */	lis r4, __ct__4cXyzFv@ha /* 0x809F7D80@ha */
/* 809F8124  38 84 7D 80 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809F7D80@l */
/* 809F8128  3C A0 80 9F */	lis r5, __dt__4cXyzFv@ha /* 0x809F7D44@ha */
/* 809F812C  38 A5 7D 44 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809F7D44@l */
/* 809F8130  38 C0 00 0C */	li r6, 0xc
/* 809F8134  38 E0 00 03 */	li r7, 3
/* 809F8138  4B 96 9C 29 */	bl __construct_array
/* 809F813C  38 7F 09 08 */	addi r3, r31, 0x908
/* 809F8140  3C 80 80 9F */	lis r4, __ct__5csXyzFv@ha /* 0x809F7D40@ha */
/* 809F8144  38 84 7D 40 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809F7D40@l */
/* 809F8148  3C A0 80 9F */	lis r5, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F814C  38 A5 7D 04 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F8150  38 C0 00 06 */	li r6, 6
/* 809F8154  38 E0 00 03 */	li r7, 3
/* 809F8158  4B 96 9C 09 */	bl __construct_array
/* 809F815C  38 7F 09 1A */	addi r3, r31, 0x91a
/* 809F8160  3C 80 80 9F */	lis r4, __ct__5csXyzFv@ha /* 0x809F7D40@ha */
/* 809F8164  38 84 7D 40 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809F7D40@l */
/* 809F8168  3C A0 80 9F */	lis r5, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F816C  38 A5 7D 04 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F8170  38 C0 00 06 */	li r6, 6
/* 809F8174  38 E0 00 03 */	li r7, 3
/* 809F8178  4B 96 9B E9 */	bl __construct_array
/* 809F817C  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 809F8180  4B 85 1D 81 */	bl __ct__10dMsgFlow_cFv
/* 809F8184  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 809F8188  4B 86 FA 95 */	bl __ct__11cBgS_GndChkFv
/* 809F818C  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 809F8190  4B 67 F3 ED */	bl __ct__11dBgS_GndChkFv
/* 809F8194  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 809F8198  4B 67 FA D1 */	bl __ct__11dBgS_LinChkFv
/* 809F819C  7F E3 FB 78 */	mr r3, r31
/* 809F81A0  4B 75 A7 29 */	bl initialize__8daNpcF_cFv
/* 809F81A4  7F E3 FB 78 */	mr r3, r31
/* 809F81A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F81AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F81B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F81B4  7C 08 03 A6 */	mtlr r0
/* 809F81B8  38 21 00 10 */	addi r1, r1, 0x10
/* 809F81BC  4E 80 00 20 */	blr 
