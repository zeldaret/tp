lbl_809AD2A4:
/* 809AD2A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD2A8  7C 08 02 A6 */	mflr r0
/* 809AD2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD2B4  93 C1 00 08 */	stw r30, 8(r1)
/* 809AD2B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AD2BC  7C 9F 23 78 */	mr r31, r4
/* 809AD2C0  41 82 02 14 */	beq lbl_809AD4D4
/* 809AD2C4  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809AD2C8  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809AD2CC  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809AD2D0  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809AD2D4  38 80 FF FF */	li r4, -1
/* 809AD2D8  4B 6C AA 05 */	bl __dt__11dBgS_LinChkFv
/* 809AD2DC  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809AD2E0  38 80 FF FF */	li r4, -1
/* 809AD2E4  4B 6C A3 0D */	bl __dt__11dBgS_GndChkFv
/* 809AD2E8  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809AD2EC  38 80 FF FF */	li r4, -1
/* 809AD2F0  4B 8B A9 A5 */	bl __dt__11cBgS_GndChkFv
/* 809AD2F4  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809AD2F8  38 80 FF FF */	li r4, -1
/* 809AD2FC  4B 89 CC 4D */	bl __dt__10dMsgFlow_cFv
/* 809AD300  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809AD304  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha /* 0x809AD224@ha */
/* 809AD308  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809AD224@l */
/* 809AD30C  38 A0 00 06 */	li r5, 6
/* 809AD310  38 C0 00 03 */	li r6, 3
/* 809AD314  4B 9B 49 D5 */	bl __destroy_arr
/* 809AD318  38 7E 09 08 */	addi r3, r30, 0x908
/* 809AD31C  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha /* 0x809AD224@ha */
/* 809AD320  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809AD224@l */
/* 809AD324  38 A0 00 06 */	li r5, 6
/* 809AD328  38 C0 00 03 */	li r6, 3
/* 809AD32C  4B 9B 49 BD */	bl __destroy_arr
/* 809AD330  38 7E 08 54 */	addi r3, r30, 0x854
/* 809AD334  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809AD264@ha */
/* 809AD338  38 84 D2 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809AD264@l */
/* 809AD33C  38 A0 00 0C */	li r5, 0xc
/* 809AD340  38 C0 00 03 */	li r6, 3
/* 809AD344  4B 9B 49 A5 */	bl __destroy_arr
/* 809AD348  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809AD34C  3C 80 80 9B */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809AD0D0@ha */
/* 809AD350  38 84 D0 D0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809AD0D0@l */
/* 809AD354  38 A0 00 08 */	li r5, 8
/* 809AD358  38 C0 00 05 */	li r6, 5
/* 809AD35C  4B 9B 49 8D */	bl __destroy_arr
/* 809AD360  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809AD364  41 82 00 10 */	beq lbl_809AD374
/* 809AD368  3C 60 80 9B */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809ADD10@ha */
/* 809AD36C  38 03 DD 10 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809ADD10@l */
/* 809AD370  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809AD374:
/* 809AD374  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809AD378  41 82 00 28 */	beq lbl_809AD3A0
/* 809AD37C  3C 60 80 9B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809ADD04@ha */
/* 809AD380  38 03 DD 04 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809ADD04@l */
/* 809AD384  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809AD388  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809AD38C  38 80 FF FF */	li r4, -1
/* 809AD390  4B 8C 1B 89 */	bl __dt__8cM3dGCirFv
/* 809AD394  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809AD398  38 80 00 00 */	li r4, 0
/* 809AD39C  4B 8B AD 15 */	bl __dt__13cBgS_PolyInfoFv
lbl_809AD3A0:
/* 809AD3A0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809AD3A4  41 82 00 54 */	beq lbl_809AD3F8
/* 809AD3A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809AD3AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809AD3B0  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809AD3B4  38 03 00 20 */	addi r0, r3, 0x20
/* 809AD3B8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809AD3BC  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809AD3C0  41 82 00 24 */	beq lbl_809AD3E4
/* 809AD3C4  3C 60 80 9B */	lis r3, __vt__10dCcD_GStts@ha /* 0x809ADCF8@ha */
/* 809AD3C8  38 03 DC F8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809ADCF8@l */
/* 809AD3CC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809AD3D0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809AD3D4  41 82 00 10 */	beq lbl_809AD3E4
/* 809AD3D8  3C 60 80 9B */	lis r3, __vt__10cCcD_GStts@ha /* 0x809ADCEC@ha */
/* 809AD3DC  38 03 DC EC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809ADCEC@l */
/* 809AD3E0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809AD3E4:
/* 809AD3E4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809AD3E8  41 82 00 10 */	beq lbl_809AD3F8
/* 809AD3EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809AD3F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809AD3F4  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809AD3F8:
/* 809AD3F8  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809AD3FC  41 82 00 2C */	beq lbl_809AD428
/* 809AD400  3C 60 80 9B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809ADCC8@ha */
/* 809AD404  38 63 DC C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809ADCC8@l */
/* 809AD408  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809AD40C  38 03 00 0C */	addi r0, r3, 0xc
/* 809AD410  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809AD414  38 03 00 18 */	addi r0, r3, 0x18
/* 809AD418  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809AD41C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809AD420  38 80 00 00 */	li r4, 0
/* 809AD424  4B 6C 8B 71 */	bl __dt__9dBgS_AcchFv
lbl_809AD428:
/* 809AD428  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809AD42C  41 82 00 20 */	beq lbl_809AD44C
/* 809AD430  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809AD434  41 82 00 18 */	beq lbl_809AD44C
/* 809AD438  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809AD43C  41 82 00 10 */	beq lbl_809AD44C
/* 809AD440  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809ADCBC@ha */
/* 809AD444  38 03 DC BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809ADCBC@l */
/* 809AD448  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809AD44C:
/* 809AD44C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809AD450  41 82 00 20 */	beq lbl_809AD470
/* 809AD454  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809AD458  41 82 00 18 */	beq lbl_809AD470
/* 809AD45C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809AD460  41 82 00 10 */	beq lbl_809AD470
/* 809AD464  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809ADCBC@ha */
/* 809AD468  38 03 DC BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809ADCBC@l */
/* 809AD46C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809AD470:
/* 809AD470  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809AD474  41 82 00 20 */	beq lbl_809AD494
/* 809AD478  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809AD47C  41 82 00 18 */	beq lbl_809AD494
/* 809AD480  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809AD484  41 82 00 10 */	beq lbl_809AD494
/* 809AD488  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809ADCBC@ha */
/* 809AD48C  38 03 DC BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809ADCBC@l */
/* 809AD490  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809AD494:
/* 809AD494  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809AD498  41 82 00 20 */	beq lbl_809AD4B8
/* 809AD49C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809AD4A0  41 82 00 18 */	beq lbl_809AD4B8
/* 809AD4A4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809AD4A8  41 82 00 10 */	beq lbl_809AD4B8
/* 809AD4AC  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809ADCBC@ha */
/* 809AD4B0  38 03 DC BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809ADCBC@l */
/* 809AD4B4  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809AD4B8:
/* 809AD4B8  7F C3 F3 78 */	mr r3, r30
/* 809AD4BC  38 80 00 00 */	li r4, 0
/* 809AD4C0  4B 66 B7 CD */	bl __dt__10fopAc_ac_cFv
/* 809AD4C4  7F E0 07 35 */	extsh. r0, r31
/* 809AD4C8  40 81 00 0C */	ble lbl_809AD4D4
/* 809AD4CC  7F C3 F3 78 */	mr r3, r30
/* 809AD4D0  4B 92 18 6D */	bl __dl__FPv
lbl_809AD4D4:
/* 809AD4D4  7F C3 F3 78 */	mr r3, r30
/* 809AD4D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD4DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AD4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD4E4  7C 08 03 A6 */	mtlr r0
/* 809AD4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD4EC  4E 80 00 20 */	blr 
