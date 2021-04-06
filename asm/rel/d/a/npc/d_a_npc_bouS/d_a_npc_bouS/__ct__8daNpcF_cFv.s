lbl_80977FE0:
/* 80977FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80977FE4  7C 08 02 A6 */	mflr r0
/* 80977FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80977FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80977FF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80977FF4  7C 7F 1B 78 */	mr r31, r3
/* 80977FF8  4B 6A 0B 6D */	bl __ct__10fopAc_ac_cFv
/* 80977FFC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80978000  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80978004  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80978008  3B DF 05 6C */	addi r30, r31, 0x56c
/* 8097800C  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80978AE0@ha */
/* 80978010  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80978AE0@l */
/* 80978014  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80978018  7F C3 F3 78 */	mr r3, r30
/* 8097801C  38 80 00 00 */	li r4, 0
/* 80978020  4B 9B 03 DD */	bl init__12J3DFrameCtrlFs
/* 80978024  38 00 00 00 */	li r0, 0
/* 80978028  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8097802C  3B DF 05 88 */	addi r30, r31, 0x588
/* 80978030  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80978AE0@ha */
/* 80978034  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80978AE0@l */
/* 80978038  90 1F 05 88 */	stw r0, 0x588(r31)
/* 8097803C  7F C3 F3 78 */	mr r3, r30
/* 80978040  38 80 00 00 */	li r4, 0
/* 80978044  4B 9B 03 B9 */	bl init__12J3DFrameCtrlFs
/* 80978048  38 00 00 00 */	li r0, 0
/* 8097804C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80978050  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80978054  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80978AE0@ha */
/* 80978058  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80978AE0@l */
/* 8097805C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80978060  7F C3 F3 78 */	mr r3, r30
/* 80978064  38 80 00 00 */	li r4, 0
/* 80978068  4B 9B 03 95 */	bl init__12J3DFrameCtrlFs
/* 8097806C  38 00 00 00 */	li r0, 0
/* 80978070  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80978074  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80978078  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80978AE0@ha */
/* 8097807C  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80978AE0@l */
/* 80978080  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80978084  7F C3 F3 78 */	mr r3, r30
/* 80978088  38 80 00 00 */	li r4, 0
/* 8097808C  4B 9B 03 71 */	bl init__12J3DFrameCtrlFs
/* 80978090  38 00 00 00 */	li r0, 0
/* 80978094  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80978098  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 8097809C  7F C3 F3 78 */	mr r3, r30
/* 809780A0  4B 6F E0 01 */	bl __ct__9dBgS_AcchFv
/* 809780A4  3C 60 80 98 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80978AEC@ha */
/* 809780A8  38 63 8A EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80978AEC@l */
/* 809780AC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 809780B0  38 03 00 0C */	addi r0, r3, 0xc
/* 809780B4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809780B8  38 03 00 18 */	addi r0, r3, 0x18
/* 809780BC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809780C0  38 7E 00 14 */	addi r3, r30, 0x14
/* 809780C4  4B 70 0D A5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809780C8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809780CC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809780D0  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 809780D4  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 809780D8  4B 70 B6 89 */	bl __ct__10dCcD_GSttsFv
/* 809780DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809780E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809780E4  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 809780E8  38 03 00 20 */	addi r0, r3, 0x20
/* 809780EC  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 809780F0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809780F4  4B 6F DD B9 */	bl __ct__12dBgS_AcchCirFv
/* 809780F8  3C 60 80 98 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80978B34@ha */
/* 809780FC  38 03 8B 34 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80978B34@l */
/* 80978100  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80978104  38 7F 08 24 */	addi r3, r31, 0x824
/* 80978108  4B 7D 85 A9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 8097810C  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80978110  3C 80 80 97 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80977C08@ha */
/* 80978114  38 84 7C 08 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80977C08@l */
/* 80978118  3C A0 80 97 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80977BC0@ha */
/* 8097811C  38 A5 7B C0 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80977BC0@l */
/* 80978120  38 C0 00 08 */	li r6, 8
/* 80978124  38 E0 00 05 */	li r7, 5
/* 80978128  4B 9E 9C 39 */	bl __construct_array
/* 8097812C  38 7F 08 54 */	addi r3, r31, 0x854
/* 80978130  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha /* 0x80977D90@ha */
/* 80978134  38 84 7D 90 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80977D90@l */
/* 80978138  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha /* 0x80977D54@ha */
/* 8097813C  38 A5 7D 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80977D54@l */
/* 80978140  38 C0 00 0C */	li r6, 0xc
/* 80978144  38 E0 00 03 */	li r7, 3
/* 80978148  4B 9E 9C 19 */	bl __construct_array
/* 8097814C  38 7F 09 08 */	addi r3, r31, 0x908
/* 80978150  3C 80 80 97 */	lis r4, __ct__5csXyzFv@ha /* 0x80977D50@ha */
/* 80978154  38 84 7D 50 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80977D50@l */
/* 80978158  3C A0 80 97 */	lis r5, __dt__5csXyzFv@ha /* 0x80977D14@ha */
/* 8097815C  38 A5 7D 14 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80977D14@l */
/* 80978160  38 C0 00 06 */	li r6, 6
/* 80978164  38 E0 00 03 */	li r7, 3
/* 80978168  4B 9E 9B F9 */	bl __construct_array
/* 8097816C  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80978170  3C 80 80 97 */	lis r4, __ct__5csXyzFv@ha /* 0x80977D50@ha */
/* 80978174  38 84 7D 50 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80977D50@l */
/* 80978178  3C A0 80 97 */	lis r5, __dt__5csXyzFv@ha /* 0x80977D14@ha */
/* 8097817C  38 A5 7D 14 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80977D14@l */
/* 80978180  38 C0 00 06 */	li r6, 6
/* 80978184  38 E0 00 03 */	li r7, 3
/* 80978188  4B 9E 9B D9 */	bl __construct_array
/* 8097818C  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80978190  4B 8D 1D 71 */	bl __ct__10dMsgFlow_cFv
/* 80978194  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80978198  4B 8E FA 85 */	bl __ct__11cBgS_GndChkFv
/* 8097819C  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 809781A0  4B 6F F3 DD */	bl __ct__11dBgS_GndChkFv
/* 809781A4  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 809781A8  4B 6F FA C1 */	bl __ct__11dBgS_LinChkFv
/* 809781AC  7F E3 FB 78 */	mr r3, r31
/* 809781B0  4B 7D A7 19 */	bl initialize__8daNpcF_cFv
/* 809781B4  7F E3 FB 78 */	mr r3, r31
/* 809781B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809781BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809781C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809781C4  7C 08 03 A6 */	mtlr r0
/* 809781C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809781CC  4E 80 00 20 */	blr 
