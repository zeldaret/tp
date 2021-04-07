lbl_80B4100C:
/* 80B4100C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B41010  7C 08 02 A6 */	mflr r0
/* 80B41014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B41018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4101C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B41020  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B41024  7C 9F 23 78 */	mr r31, r4
/* 80B41028  41 82 02 14 */	beq lbl_80B4123C
/* 80B4102C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80B41030  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80B41034  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B41038  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80B4103C  38 80 FF FF */	li r4, -1
/* 80B41040  4B 53 6C 9D */	bl __dt__11dBgS_LinChkFv
/* 80B41044  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80B41048  38 80 FF FF */	li r4, -1
/* 80B4104C  4B 53 65 A5 */	bl __dt__11dBgS_GndChkFv
/* 80B41050  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80B41054  38 80 FF FF */	li r4, -1
/* 80B41058  4B 72 6C 3D */	bl __dt__11cBgS_GndChkFv
/* 80B4105C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80B41060  38 80 FF FF */	li r4, -1
/* 80B41064  4B 70 8E E5 */	bl __dt__10dMsgFlow_cFv
/* 80B41068  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80B4106C  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B41070  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B41074  38 A0 00 06 */	li r5, 6
/* 80B41078  38 C0 00 03 */	li r6, 3
/* 80B4107C  4B 82 0C 6D */	bl __destroy_arr
/* 80B41080  38 7E 09 08 */	addi r3, r30, 0x908
/* 80B41084  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B41088  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B4108C  38 A0 00 06 */	li r5, 6
/* 80B41090  38 C0 00 03 */	li r6, 3
/* 80B41094  4B 82 0C 55 */	bl __destroy_arr
/* 80B41098  38 7E 08 54 */	addi r3, r30, 0x854
/* 80B4109C  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B40FCC@ha */
/* 80B410A0  38 84 0F CC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B40FCC@l */
/* 80B410A4  38 A0 00 0C */	li r5, 0xc
/* 80B410A8  38 C0 00 03 */	li r6, 3
/* 80B410AC  4B 82 0C 3D */	bl __destroy_arr
/* 80B410B0  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80B410B4  3C 80 80 B4 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B40E38@ha */
/* 80B410B8  38 84 0E 38 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B40E38@l */
/* 80B410BC  38 A0 00 08 */	li r5, 8
/* 80B410C0  38 C0 00 05 */	li r6, 5
/* 80B410C4  4B 82 0C 25 */	bl __destroy_arr
/* 80B410C8  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80B410CC  41 82 00 10 */	beq lbl_80B410DC
/* 80B410D0  3C 60 80 B4 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B42DD0@ha */
/* 80B410D4  38 03 2D D0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80B42DD0@l */
/* 80B410D8  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80B410DC:
/* 80B410DC  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80B410E0  41 82 00 28 */	beq lbl_80B41108
/* 80B410E4  3C 60 80 B4 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B42DC4@ha */
/* 80B410E8  38 03 2D C4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B42DC4@l */
/* 80B410EC  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80B410F0  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80B410F4  38 80 FF FF */	li r4, -1
/* 80B410F8  4B 72 DE 21 */	bl __dt__8cM3dGCirFv
/* 80B410FC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B41100  38 80 00 00 */	li r4, 0
/* 80B41104  4B 72 6F AD */	bl __dt__13cBgS_PolyInfoFv
lbl_80B41108:
/* 80B41108  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B4110C  41 82 00 54 */	beq lbl_80B41160
/* 80B41110  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B41114  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B41118  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80B4111C  38 03 00 20 */	addi r0, r3, 0x20
/* 80B41120  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B41124  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B41128  41 82 00 24 */	beq lbl_80B4114C
/* 80B4112C  3C 60 80 B4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B42DB8@ha */
/* 80B41130  38 03 2D B8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B42DB8@l */
/* 80B41134  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B41138  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B4113C  41 82 00 10 */	beq lbl_80B4114C
/* 80B41140  3C 60 80 B4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B42DAC@ha */
/* 80B41144  38 03 2D AC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B42DAC@l */
/* 80B41148  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80B4114C:
/* 80B4114C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B41150  41 82 00 10 */	beq lbl_80B41160
/* 80B41154  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B41158  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B4115C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80B41160:
/* 80B41160  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80B41164  41 82 00 2C */	beq lbl_80B41190
/* 80B41168  3C 60 80 B4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B42D88@ha */
/* 80B4116C  38 63 2D 88 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B42D88@l */
/* 80B41170  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80B41174  38 03 00 0C */	addi r0, r3, 0xc
/* 80B41178  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80B4117C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B41180  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80B41184  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B41188  38 80 00 00 */	li r4, 0
/* 80B4118C  4B 53 4E 09 */	bl __dt__9dBgS_AcchFv
lbl_80B41190:
/* 80B41190  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B41194  41 82 00 20 */	beq lbl_80B411B4
/* 80B41198  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B4119C  41 82 00 18 */	beq lbl_80B411B4
/* 80B411A0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B411A4  41 82 00 10 */	beq lbl_80B411B4
/* 80B411A8  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B42D7C@ha */
/* 80B411AC  38 03 2D 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B42D7C@l */
/* 80B411B0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80B411B4:
/* 80B411B4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B411B8  41 82 00 20 */	beq lbl_80B411D8
/* 80B411BC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B411C0  41 82 00 18 */	beq lbl_80B411D8
/* 80B411C4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B411C8  41 82 00 10 */	beq lbl_80B411D8
/* 80B411CC  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B42D7C@ha */
/* 80B411D0  38 03 2D 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B42D7C@l */
/* 80B411D4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80B411D8:
/* 80B411D8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B411DC  41 82 00 20 */	beq lbl_80B411FC
/* 80B411E0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B411E4  41 82 00 18 */	beq lbl_80B411FC
/* 80B411E8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B411EC  41 82 00 10 */	beq lbl_80B411FC
/* 80B411F0  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B42D7C@ha */
/* 80B411F4  38 03 2D 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B42D7C@l */
/* 80B411F8  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80B411FC:
/* 80B411FC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B41200  41 82 00 20 */	beq lbl_80B41220
/* 80B41204  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B41208  41 82 00 18 */	beq lbl_80B41220
/* 80B4120C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B41210  41 82 00 10 */	beq lbl_80B41220
/* 80B41214  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B42D7C@ha */
/* 80B41218  38 03 2D 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B42D7C@l */
/* 80B4121C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80B41220:
/* 80B41220  7F C3 F3 78 */	mr r3, r30
/* 80B41224  38 80 00 00 */	li r4, 0
/* 80B41228  4B 4D 7A 65 */	bl __dt__10fopAc_ac_cFv
/* 80B4122C  7F E0 07 35 */	extsh. r0, r31
/* 80B41230  40 81 00 0C */	ble lbl_80B4123C
/* 80B41234  7F C3 F3 78 */	mr r3, r30
/* 80B41238  4B 78 DB 05 */	bl __dl__FPv
lbl_80B4123C:
/* 80B4123C  7F C3 F3 78 */	mr r3, r30
/* 80B41240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B41244  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B41248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4124C  7C 08 03 A6 */	mtlr r0
/* 80B41250  38 21 00 10 */	addi r1, r1, 0x10
/* 80B41254  4E 80 00 20 */	blr 
