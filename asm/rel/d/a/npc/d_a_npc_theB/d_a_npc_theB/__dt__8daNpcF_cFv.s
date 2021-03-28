lbl_80B00600:
/* 80B00600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00604  7C 08 02 A6 */	mflr r0
/* 80B00608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0060C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00610  93 C1 00 08 */	stw r30, 8(r1)
/* 80B00614  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B00618  7C 9F 23 78 */	mr r31, r4
/* 80B0061C  41 82 02 14 */	beq lbl_80B00830
/* 80B00620  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80B00624  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80B00628  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B0062C  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80B00630  38 80 FF FF */	li r4, -1
/* 80B00634  4B 57 76 A8 */	b __dt__11dBgS_LinChkFv
/* 80B00638  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80B0063C  38 80 FF FF */	li r4, -1
/* 80B00640  4B 57 6F B0 */	b __dt__11dBgS_GndChkFv
/* 80B00644  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80B00648  38 80 FF FF */	li r4, -1
/* 80B0064C  4B 76 76 48 */	b __dt__11cBgS_GndChkFv
/* 80B00650  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80B00654  38 80 FF FF */	li r4, -1
/* 80B00658  4B 74 98 F0 */	b __dt__10dMsgFlow_cFv
/* 80B0065C  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80B00660  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80B00664  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B00668  38 A0 00 06 */	li r5, 6
/* 80B0066C  38 C0 00 03 */	li r6, 3
/* 80B00670  4B 86 16 78 */	b __destroy_arr
/* 80B00674  38 7E 09 08 */	addi r3, r30, 0x908
/* 80B00678  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80B0067C  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B00680  38 A0 00 06 */	li r5, 6
/* 80B00684  38 C0 00 03 */	li r6, 3
/* 80B00688  4B 86 16 60 */	b __destroy_arr
/* 80B0068C  38 7E 08 54 */	addi r3, r30, 0x854
/* 80B00690  3C 80 80 B0 */	lis r4, __dt__4cXyzFv@ha
/* 80B00694  38 84 05 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B00698  38 A0 00 0C */	li r5, 0xc
/* 80B0069C  38 C0 00 03 */	li r6, 3
/* 80B006A0  4B 86 16 48 */	b __destroy_arr
/* 80B006A4  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80B006A8  3C 80 80 B0 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80B006AC  38 84 04 2C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80B006B0  38 A0 00 08 */	li r5, 8
/* 80B006B4  38 C0 00 05 */	li r6, 5
/* 80B006B8  4B 86 16 30 */	b __destroy_arr
/* 80B006BC  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80B006C0  41 82 00 10 */	beq lbl_80B006D0
/* 80B006C4  3C 60 80 B0 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80B006C8  38 03 12 CC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80B006CC  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80B006D0:
/* 80B006D0  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80B006D4  41 82 00 28 */	beq lbl_80B006FC
/* 80B006D8  3C 60 80 B0 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B006DC  38 03 12 C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B006E0  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80B006E4  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80B006E8  38 80 FF FF */	li r4, -1
/* 80B006EC  4B 76 E8 2C */	b __dt__8cM3dGCirFv
/* 80B006F0  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B006F4  38 80 00 00 */	li r4, 0
/* 80B006F8  4B 76 79 B8 */	b __dt__13cBgS_PolyInfoFv
lbl_80B006FC:
/* 80B006FC  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B00700  41 82 00 54 */	beq lbl_80B00754
/* 80B00704  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B00708  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B0070C  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80B00710  38 03 00 20 */	addi r0, r3, 0x20
/* 80B00714  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B00718  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B0071C  41 82 00 24 */	beq lbl_80B00740
/* 80B00720  3C 60 80 B0 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B00724  38 03 12 B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B00728  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B0072C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B00730  41 82 00 10 */	beq lbl_80B00740
/* 80B00734  3C 60 80 B0 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B00738  38 03 12 A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B0073C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80B00740:
/* 80B00740  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B00744  41 82 00 10 */	beq lbl_80B00754
/* 80B00748  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B0074C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B00750  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80B00754:
/* 80B00754  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80B00758  41 82 00 2C */	beq lbl_80B00784
/* 80B0075C  3C 60 80 B0 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B00760  38 63 12 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B00764  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80B00768  38 03 00 0C */	addi r0, r3, 0xc
/* 80B0076C  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80B00770  38 03 00 18 */	addi r0, r3, 0x18
/* 80B00774  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80B00778  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B0077C  38 80 00 00 */	li r4, 0
/* 80B00780  4B 57 58 14 */	b __dt__9dBgS_AcchFv
lbl_80B00784:
/* 80B00784  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B00788  41 82 00 20 */	beq lbl_80B007A8
/* 80B0078C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B00790  41 82 00 18 */	beq lbl_80B007A8
/* 80B00794  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B00798  41 82 00 10 */	beq lbl_80B007A8
/* 80B0079C  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B007A0  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B007A4  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80B007A8:
/* 80B007A8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B007AC  41 82 00 20 */	beq lbl_80B007CC
/* 80B007B0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B007B4  41 82 00 18 */	beq lbl_80B007CC
/* 80B007B8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B007BC  41 82 00 10 */	beq lbl_80B007CC
/* 80B007C0  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B007C4  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B007C8  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80B007CC:
/* 80B007CC  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B007D0  41 82 00 20 */	beq lbl_80B007F0
/* 80B007D4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B007D8  41 82 00 18 */	beq lbl_80B007F0
/* 80B007DC  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B007E0  41 82 00 10 */	beq lbl_80B007F0
/* 80B007E4  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B007E8  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B007EC  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80B007F0:
/* 80B007F0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B007F4  41 82 00 20 */	beq lbl_80B00814
/* 80B007F8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B007FC  41 82 00 18 */	beq lbl_80B00814
/* 80B00800  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B00804  41 82 00 10 */	beq lbl_80B00814
/* 80B00808  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B0080C  38 03 12 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B00810  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80B00814:
/* 80B00814  7F C3 F3 78 */	mr r3, r30
/* 80B00818  38 80 00 00 */	li r4, 0
/* 80B0081C  4B 51 84 70 */	b __dt__10fopAc_ac_cFv
/* 80B00820  7F E0 07 35 */	extsh. r0, r31
/* 80B00824  40 81 00 0C */	ble lbl_80B00830
/* 80B00828  7F C3 F3 78 */	mr r3, r30
/* 80B0082C  4B 7C E5 10 */	b __dl__FPv
lbl_80B00830:
/* 80B00830  7F C3 F3 78 */	mr r3, r30
/* 80B00834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00838  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0083C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00840  7C 08 03 A6 */	mtlr r0
/* 80B00844  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00848  4E 80 00 20 */	blr 
