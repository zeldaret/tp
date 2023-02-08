lbl_80AE9EF8:
/* 80AE9EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE9EFC  7C 08 02 A6 */	mflr r0
/* 80AE9F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE9F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE9F08  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE9F0C  7C 7F 1B 78 */	mr r31, r3
/* 80AE9F10  4B 52 EC 55 */	bl __ct__10fopAc_ac_cFv
/* 80AE9F14  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80AE9F18  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80AE9F1C  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80AE9F20  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80AE9F24  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEA6A0@ha */
/* 80AE9F28  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEA6A0@l */
/* 80AE9F2C  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80AE9F30  7F C3 F3 78 */	mr r3, r30
/* 80AE9F34  38 80 00 00 */	li r4, 0
/* 80AE9F38  4B 83 E4 C5 */	bl init__12J3DFrameCtrlFs
/* 80AE9F3C  38 00 00 00 */	li r0, 0
/* 80AE9F40  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80AE9F44  3B DF 05 88 */	addi r30, r31, 0x588
/* 80AE9F48  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEA6A0@ha */
/* 80AE9F4C  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEA6A0@l */
/* 80AE9F50  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80AE9F54  7F C3 F3 78 */	mr r3, r30
/* 80AE9F58  38 80 00 00 */	li r4, 0
/* 80AE9F5C  4B 83 E4 A1 */	bl init__12J3DFrameCtrlFs
/* 80AE9F60  38 00 00 00 */	li r0, 0
/* 80AE9F64  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AE9F68  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80AE9F6C  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEA6A0@ha */
/* 80AE9F70  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEA6A0@l */
/* 80AE9F74  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80AE9F78  7F C3 F3 78 */	mr r3, r30
/* 80AE9F7C  38 80 00 00 */	li r4, 0
/* 80AE9F80  4B 83 E4 7D */	bl init__12J3DFrameCtrlFs
/* 80AE9F84  38 00 00 00 */	li r0, 0
/* 80AE9F88  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AE9F8C  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80AE9F90  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEA6A0@ha */
/* 80AE9F94  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEA6A0@l */
/* 80AE9F98  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80AE9F9C  7F C3 F3 78 */	mr r3, r30
/* 80AE9FA0  38 80 00 00 */	li r4, 0
/* 80AE9FA4  4B 83 E4 59 */	bl init__12J3DFrameCtrlFs
/* 80AE9FA8  38 00 00 00 */	li r0, 0
/* 80AE9FAC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AE9FB0  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80AE9FB4  7F C3 F3 78 */	mr r3, r30
/* 80AE9FB8  4B 58 C0 E9 */	bl __ct__9dBgS_AcchFv
/* 80AE9FBC  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AEA6AC@ha */
/* 80AE9FC0  38 63 A6 AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AEA6AC@l */
/* 80AE9FC4  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80AE9FC8  38 03 00 0C */	addi r0, r3, 0xc
/* 80AE9FCC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AE9FD0  38 03 00 18 */	addi r0, r3, 0x18
/* 80AE9FD4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AE9FD8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AE9FDC  4B 58 EE 8D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AE9FE0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AE9FE4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AE9FE8  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80AE9FEC  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80AE9FF0  4B 59 97 71 */	bl __ct__10dCcD_GSttsFv
/* 80AE9FF4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AE9FF8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AE9FFC  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80AEA000  38 03 00 20 */	addi r0, r3, 0x20
/* 80AEA004  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80AEA008  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80AEA00C  4B 58 BE A1 */	bl __ct__12dBgS_AcchCirFv
/* 80AEA010  3C 60 80 AF */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AEA6F4@ha */
/* 80AEA014  38 03 A6 F4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80AEA6F4@l */
/* 80AEA018  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80AEA01C  38 7F 08 24 */	addi r3, r31, 0x824
/* 80AEA020  4B 66 66 91 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AEA024  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80AEA028  3C 80 80 AF */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80AE9B20@ha */
/* 80AEA02C  38 84 9B 20 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80AE9B20@l */
/* 80AEA030  3C A0 80 AF */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AE9AD8@ha */
/* 80AEA034  38 A5 9A D8 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AE9AD8@l */
/* 80AEA038  38 C0 00 08 */	li r6, 8
/* 80AEA03C  38 E0 00 05 */	li r7, 5
/* 80AEA040  4B 87 7D 21 */	bl __construct_array
/* 80AEA044  38 7F 08 54 */	addi r3, r31, 0x854
/* 80AEA048  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AE9CA8@ha */
/* 80AEA04C  38 84 9C A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE9CA8@l */
/* 80AEA050  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AE9C6C@ha */
/* 80AEA054  38 A5 9C 6C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE9C6C@l */
/* 80AEA058  38 C0 00 0C */	li r6, 0xc
/* 80AEA05C  38 E0 00 03 */	li r7, 3
/* 80AEA060  4B 87 7D 01 */	bl __construct_array
/* 80AEA064  38 7F 09 08 */	addi r3, r31, 0x908
/* 80AEA068  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha /* 0x80AE9C68@ha */
/* 80AEA06C  38 84 9C 68 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE9C68@l */
/* 80AEA070  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AEA074  38 A5 9C 2C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AEA078  38 C0 00 06 */	li r6, 6
/* 80AEA07C  38 E0 00 03 */	li r7, 3
/* 80AEA080  4B 87 7C E1 */	bl __construct_array
/* 80AEA084  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80AEA088  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha /* 0x80AE9C68@ha */
/* 80AEA08C  38 84 9C 68 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE9C68@l */
/* 80AEA090  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AEA094  38 A5 9C 2C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AEA098  38 C0 00 06 */	li r6, 6
/* 80AEA09C  38 E0 00 03 */	li r7, 3
/* 80AEA0A0  4B 87 7C C1 */	bl __construct_array
/* 80AEA0A4  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80AEA0A8  4B 75 FE 59 */	bl __ct__10dMsgFlow_cFv
/* 80AEA0AC  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80AEA0B0  4B 77 DB 6D */	bl __ct__11cBgS_GndChkFv
/* 80AEA0B4  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80AEA0B8  4B 58 D4 C5 */	bl __ct__11dBgS_GndChkFv
/* 80AEA0BC  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80AEA0C0  4B 58 DB A9 */	bl __ct__11dBgS_LinChkFv
/* 80AEA0C4  7F E3 FB 78 */	mr r3, r31
/* 80AEA0C8  4B 66 88 01 */	bl initialize__8daNpcF_cFv
/* 80AEA0CC  7F E3 FB 78 */	mr r3, r31
/* 80AEA0D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEA0D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEA0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA0DC  7C 08 03 A6 */	mtlr r0
/* 80AEA0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA0E4  4E 80 00 20 */	blr 
