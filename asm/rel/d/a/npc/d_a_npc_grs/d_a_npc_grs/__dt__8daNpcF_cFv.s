lbl_809E76C8:
/* 809E76C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E76CC  7C 08 02 A6 */	mflr r0
/* 809E76D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E76D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E76D8  93 C1 00 08 */	stw r30, 8(r1)
/* 809E76DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E76E0  7C 9F 23 78 */	mr r31, r4
/* 809E76E4  41 82 02 14 */	beq lbl_809E78F8
/* 809E76E8  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 809E76EC  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 809E76F0  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809E76F4  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809E76F8  38 80 FF FF */	li r4, -1
/* 809E76FC  4B 69 05 E0 */	b __dt__11dBgS_LinChkFv
/* 809E7700  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809E7704  38 80 FF FF */	li r4, -1
/* 809E7708  4B 68 FE E8 */	b __dt__11dBgS_GndChkFv
/* 809E770C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809E7710  38 80 FF FF */	li r4, -1
/* 809E7714  4B 88 05 80 */	b __dt__11cBgS_GndChkFv
/* 809E7718  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809E771C  38 80 FF FF */	li r4, -1
/* 809E7720  4B 86 28 28 */	b __dt__10dMsgFlow_cFv
/* 809E7724  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809E7728  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E772C  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E7730  38 A0 00 06 */	li r5, 6
/* 809E7734  38 C0 00 03 */	li r6, 3
/* 809E7738  4B 97 A5 B0 */	b __destroy_arr
/* 809E773C  38 7E 09 08 */	addi r3, r30, 0x908
/* 809E7740  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E7744  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E7748  38 A0 00 06 */	li r5, 6
/* 809E774C  38 C0 00 03 */	li r6, 3
/* 809E7750  4B 97 A5 98 */	b __destroy_arr
/* 809E7754  38 7E 08 54 */	addi r3, r30, 0x854
/* 809E7758  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809E775C  38 84 76 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 809E7760  38 A0 00 0C */	li r5, 0xc
/* 809E7764  38 C0 00 03 */	li r6, 3
/* 809E7768  4B 97 A5 80 */	b __destroy_arr
/* 809E776C  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809E7770  3C 80 80 9E */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809E7774  38 84 74 F4 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809E7778  38 A0 00 08 */	li r5, 8
/* 809E777C  38 C0 00 05 */	li r6, 5
/* 809E7780  4B 97 A5 68 */	b __destroy_arr
/* 809E7784  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809E7788  41 82 00 10 */	beq lbl_809E7798
/* 809E778C  3C 60 80 9F */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 809E7790  38 03 81 F4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 809E7794  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809E7798:
/* 809E7798  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809E779C  41 82 00 28 */	beq lbl_809E77C4
/* 809E77A0  3C 60 80 9F */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809E77A4  38 03 81 E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809E77A8  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809E77AC  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809E77B0  38 80 FF FF */	li r4, -1
/* 809E77B4  4B 88 77 64 */	b __dt__8cM3dGCirFv
/* 809E77B8  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809E77BC  38 80 00 00 */	li r4, 0
/* 809E77C0  4B 88 08 F0 */	b __dt__13cBgS_PolyInfoFv
lbl_809E77C4:
/* 809E77C4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809E77C8  41 82 00 54 */	beq lbl_809E781C
/* 809E77CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809E77D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809E77D4  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809E77D8  38 03 00 20 */	addi r0, r3, 0x20
/* 809E77DC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809E77E0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809E77E4  41 82 00 24 */	beq lbl_809E7808
/* 809E77E8  3C 60 80 9F */	lis r3, __vt__10dCcD_GStts@ha
/* 809E77EC  38 03 81 DC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809E77F0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809E77F4  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809E77F8  41 82 00 10 */	beq lbl_809E7808
/* 809E77FC  3C 60 80 9F */	lis r3, __vt__10cCcD_GStts@ha
/* 809E7800  38 03 81 D0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809E7804  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809E7808:
/* 809E7808  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809E780C  41 82 00 10 */	beq lbl_809E781C
/* 809E7810  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809E7814  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809E7818  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809E781C:
/* 809E781C  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809E7820  41 82 00 2C */	beq lbl_809E784C
/* 809E7824  3C 60 80 9F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809E7828  38 63 81 AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809E782C  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809E7830  38 03 00 0C */	addi r0, r3, 0xc
/* 809E7834  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809E7838  38 03 00 18 */	addi r0, r3, 0x18
/* 809E783C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809E7840  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809E7844  38 80 00 00 */	li r4, 0
/* 809E7848  4B 68 E7 4C */	b __dt__9dBgS_AcchFv
lbl_809E784C:
/* 809E784C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809E7850  41 82 00 20 */	beq lbl_809E7870
/* 809E7854  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809E7858  41 82 00 18 */	beq lbl_809E7870
/* 809E785C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809E7860  41 82 00 10 */	beq lbl_809E7870
/* 809E7864  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809E7868  38 03 81 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809E786C  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809E7870:
/* 809E7870  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809E7874  41 82 00 20 */	beq lbl_809E7894
/* 809E7878  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809E787C  41 82 00 18 */	beq lbl_809E7894
/* 809E7880  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809E7884  41 82 00 10 */	beq lbl_809E7894
/* 809E7888  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809E788C  38 03 81 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809E7890  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809E7894:
/* 809E7894  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809E7898  41 82 00 20 */	beq lbl_809E78B8
/* 809E789C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809E78A0  41 82 00 18 */	beq lbl_809E78B8
/* 809E78A4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809E78A8  41 82 00 10 */	beq lbl_809E78B8
/* 809E78AC  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809E78B0  38 03 81 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809E78B4  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809E78B8:
/* 809E78B8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809E78BC  41 82 00 20 */	beq lbl_809E78DC
/* 809E78C0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809E78C4  41 82 00 18 */	beq lbl_809E78DC
/* 809E78C8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809E78CC  41 82 00 10 */	beq lbl_809E78DC
/* 809E78D0  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809E78D4  38 03 81 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809E78D8  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809E78DC:
/* 809E78DC  7F C3 F3 78 */	mr r3, r30
/* 809E78E0  38 80 00 00 */	li r4, 0
/* 809E78E4  4B 63 13 A8 */	b __dt__10fopAc_ac_cFv
/* 809E78E8  7F E0 07 35 */	extsh. r0, r31
/* 809E78EC  40 81 00 0C */	ble lbl_809E78F8
/* 809E78F0  7F C3 F3 78 */	mr r3, r30
/* 809E78F4  4B 8E 74 48 */	b __dl__FPv
lbl_809E78F8:
/* 809E78F8  7F C3 F3 78 */	mr r3, r30
/* 809E78FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7900  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E7904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7908  7C 08 03 A6 */	mtlr r0
/* 809E790C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7910  4E 80 00 20 */	blr 
