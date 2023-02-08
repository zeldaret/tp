lbl_80B0084C:
/* 80B0084C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00850  7C 08 02 A6 */	mflr r0
/* 80B00854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0085C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B00860  7C 7F 1B 78 */	mr r31, r3
/* 80B00864  4B 51 83 01 */	bl __ct__10fopAc_ac_cFv
/* 80B00868  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80B0086C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80B00870  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B00874  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80B00878  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B01278@ha */
/* 80B0087C  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B01278@l */
/* 80B00880  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80B00884  7F C3 F3 78 */	mr r3, r30
/* 80B00888  38 80 00 00 */	li r4, 0
/* 80B0088C  4B 82 7B 71 */	bl init__12J3DFrameCtrlFs
/* 80B00890  38 00 00 00 */	li r0, 0
/* 80B00894  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80B00898  3B DF 05 88 */	addi r30, r31, 0x588
/* 80B0089C  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B01278@ha */
/* 80B008A0  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B01278@l */
/* 80B008A4  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80B008A8  7F C3 F3 78 */	mr r3, r30
/* 80B008AC  38 80 00 00 */	li r4, 0
/* 80B008B0  4B 82 7B 4D */	bl init__12J3DFrameCtrlFs
/* 80B008B4  38 00 00 00 */	li r0, 0
/* 80B008B8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B008BC  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80B008C0  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B01278@ha */
/* 80B008C4  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B01278@l */
/* 80B008C8  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80B008CC  7F C3 F3 78 */	mr r3, r30
/* 80B008D0  38 80 00 00 */	li r4, 0
/* 80B008D4  4B 82 7B 29 */	bl init__12J3DFrameCtrlFs
/* 80B008D8  38 00 00 00 */	li r0, 0
/* 80B008DC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B008E0  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80B008E4  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B01278@ha */
/* 80B008E8  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B01278@l */
/* 80B008EC  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80B008F0  7F C3 F3 78 */	mr r3, r30
/* 80B008F4  38 80 00 00 */	li r4, 0
/* 80B008F8  4B 82 7B 05 */	bl init__12J3DFrameCtrlFs
/* 80B008FC  38 00 00 00 */	li r0, 0
/* 80B00900  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B00904  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80B00908  7F C3 F3 78 */	mr r3, r30
/* 80B0090C  4B 57 57 95 */	bl __ct__9dBgS_AcchFv
/* 80B00910  3C 60 80 B0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B01284@ha */
/* 80B00914  38 63 12 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B01284@l */
/* 80B00918  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80B0091C  38 03 00 0C */	addi r0, r3, 0xc
/* 80B00920  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B00924  38 03 00 18 */	addi r0, r3, 0x18
/* 80B00928  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B0092C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B00930  4B 57 85 39 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B00934  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B00938  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B0093C  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80B00940  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80B00944  4B 58 2E 1D */	bl __ct__10dCcD_GSttsFv
/* 80B00948  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B0094C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B00950  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80B00954  38 03 00 20 */	addi r0, r3, 0x20
/* 80B00958  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80B0095C  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80B00960  4B 57 55 4D */	bl __ct__12dBgS_AcchCirFv
/* 80B00964  3C 60 80 B0 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B012CC@ha */
/* 80B00968  38 03 12 CC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80B012CC@l */
/* 80B0096C  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80B00970  38 7F 08 24 */	addi r3, r31, 0x824
/* 80B00974  4B 64 FD 3D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B00978  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80B0097C  3C 80 80 B0 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B00474@ha */
/* 80B00980  38 84 04 74 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B00474@l */
/* 80B00984  3C A0 80 B0 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B0042C@ha */
/* 80B00988  38 A5 04 2C */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B0042C@l */
/* 80B0098C  38 C0 00 08 */	li r6, 8
/* 80B00990  38 E0 00 05 */	li r7, 5
/* 80B00994  4B 86 13 CD */	bl __construct_array
/* 80B00998  38 7F 08 54 */	addi r3, r31, 0x854
/* 80B0099C  3C 80 80 B0 */	lis r4, __ct__4cXyzFv@ha /* 0x80B005FC@ha */
/* 80B009A0  38 84 05 FC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B005FC@l */
/* 80B009A4  3C A0 80 B0 */	lis r5, __dt__4cXyzFv@ha /* 0x80B005C0@ha */
/* 80B009A8  38 A5 05 C0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B005C0@l */
/* 80B009AC  38 C0 00 0C */	li r6, 0xc
/* 80B009B0  38 E0 00 03 */	li r7, 3
/* 80B009B4  4B 86 13 AD */	bl __construct_array
/* 80B009B8  38 7F 09 08 */	addi r3, r31, 0x908
/* 80B009BC  3C 80 80 B0 */	lis r4, __ct__5csXyzFv@ha /* 0x80B005BC@ha */
/* 80B009C0  38 84 05 BC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B005BC@l */
/* 80B009C4  3C A0 80 B0 */	lis r5, __dt__5csXyzFv@ha /* 0x80B00580@ha */
/* 80B009C8  38 A5 05 80 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B00580@l */
/* 80B009CC  38 C0 00 06 */	li r6, 6
/* 80B009D0  38 E0 00 03 */	li r7, 3
/* 80B009D4  4B 86 13 8D */	bl __construct_array
/* 80B009D8  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80B009DC  3C 80 80 B0 */	lis r4, __ct__5csXyzFv@ha /* 0x80B005BC@ha */
/* 80B009E0  38 84 05 BC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B005BC@l */
/* 80B009E4  3C A0 80 B0 */	lis r5, __dt__5csXyzFv@ha /* 0x80B00580@ha */
/* 80B009E8  38 A5 05 80 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B00580@l */
/* 80B009EC  38 C0 00 06 */	li r6, 6
/* 80B009F0  38 E0 00 03 */	li r7, 3
/* 80B009F4  4B 86 13 6D */	bl __construct_array
/* 80B009F8  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80B009FC  4B 74 95 05 */	bl __ct__10dMsgFlow_cFv
/* 80B00A00  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80B00A04  4B 76 72 19 */	bl __ct__11cBgS_GndChkFv
/* 80B00A08  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80B00A0C  4B 57 6B 71 */	bl __ct__11dBgS_GndChkFv
/* 80B00A10  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80B00A14  4B 57 72 55 */	bl __ct__11dBgS_LinChkFv
/* 80B00A18  7F E3 FB 78 */	mr r3, r31
/* 80B00A1C  4B 65 1E AD */	bl initialize__8daNpcF_cFv
/* 80B00A20  7F E3 FB 78 */	mr r3, r31
/* 80B00A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00A28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B00A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00A30  7C 08 03 A6 */	mtlr r0
/* 80B00A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00A38  4E 80 00 20 */	blr 
