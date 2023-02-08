lbl_80AFB72C:
/* 80AFB72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFB730  7C 08 02 A6 */	mflr r0
/* 80AFB734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFB738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFB73C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AFB740  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AFB744  7C 9F 23 78 */	mr r31, r4
/* 80AFB748  41 82 02 14 */	beq lbl_80AFB95C
/* 80AFB74C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80AFB750  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80AFB754  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AFB758  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80AFB75C  38 80 FF FF */	li r4, -1
/* 80AFB760  4B 57 C5 7D */	bl __dt__11dBgS_LinChkFv
/* 80AFB764  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80AFB768  38 80 FF FF */	li r4, -1
/* 80AFB76C  4B 57 BE 85 */	bl __dt__11dBgS_GndChkFv
/* 80AFB770  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80AFB774  38 80 FF FF */	li r4, -1
/* 80AFB778  4B 76 C5 1D */	bl __dt__11cBgS_GndChkFv
/* 80AFB77C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80AFB780  38 80 FF FF */	li r4, -1
/* 80AFB784  4B 74 E7 C5 */	bl __dt__10dMsgFlow_cFv
/* 80AFB788  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80AFB78C  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha /* 0x80AFB6AC@ha */
/* 80AFB790  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AFB6AC@l */
/* 80AFB794  38 A0 00 06 */	li r5, 6
/* 80AFB798  38 C0 00 03 */	li r6, 3
/* 80AFB79C  4B 86 65 4D */	bl __destroy_arr
/* 80AFB7A0  38 7E 09 08 */	addi r3, r30, 0x908
/* 80AFB7A4  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha /* 0x80AFB6AC@ha */
/* 80AFB7A8  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AFB6AC@l */
/* 80AFB7AC  38 A0 00 06 */	li r5, 6
/* 80AFB7B0  38 C0 00 03 */	li r6, 3
/* 80AFB7B4  4B 86 65 35 */	bl __destroy_arr
/* 80AFB7B8  38 7E 08 54 */	addi r3, r30, 0x854
/* 80AFB7BC  3C 80 80 B0 */	lis r4, __dt__4cXyzFv@ha /* 0x80AFB6EC@ha */
/* 80AFB7C0  38 84 B6 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AFB6EC@l */
/* 80AFB7C4  38 A0 00 0C */	li r5, 0xc
/* 80AFB7C8  38 C0 00 03 */	li r6, 3
/* 80AFB7CC  4B 86 65 1D */	bl __destroy_arr
/* 80AFB7D0  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80AFB7D4  3C 80 80 B0 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AFB558@ha */
/* 80AFB7D8  38 84 B5 58 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AFB558@l */
/* 80AFB7DC  38 A0 00 08 */	li r5, 8
/* 80AFB7E0  38 C0 00 05 */	li r6, 5
/* 80AFB7E4  4B 86 65 05 */	bl __destroy_arr
/* 80AFB7E8  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80AFB7EC  41 82 00 10 */	beq lbl_80AFB7FC
/* 80AFB7F0  3C 60 80 B0 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AFC62C@ha */
/* 80AFB7F4  38 03 C6 2C */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80AFC62C@l */
/* 80AFB7F8  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80AFB7FC:
/* 80AFB7FC  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80AFB800  41 82 00 28 */	beq lbl_80AFB828
/* 80AFB804  3C 60 80 B0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AFC620@ha */
/* 80AFB808  38 03 C6 20 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AFC620@l */
/* 80AFB80C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80AFB810  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80AFB814  38 80 FF FF */	li r4, -1
/* 80AFB818  4B 77 37 01 */	bl __dt__8cM3dGCirFv
/* 80AFB81C  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AFB820  38 80 00 00 */	li r4, 0
/* 80AFB824  4B 76 C8 8D */	bl __dt__13cBgS_PolyInfoFv
lbl_80AFB828:
/* 80AFB828  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AFB82C  41 82 00 54 */	beq lbl_80AFB880
/* 80AFB830  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AFB834  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AFB838  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80AFB83C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AFB840  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AFB844  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AFB848  41 82 00 24 */	beq lbl_80AFB86C
/* 80AFB84C  3C 60 80 B0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AFC614@ha */
/* 80AFB850  38 03 C6 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AFC614@l */
/* 80AFB854  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AFB858  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AFB85C  41 82 00 10 */	beq lbl_80AFB86C
/* 80AFB860  3C 60 80 B0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AFC608@ha */
/* 80AFB864  38 03 C6 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AFC608@l */
/* 80AFB868  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80AFB86C:
/* 80AFB86C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AFB870  41 82 00 10 */	beq lbl_80AFB880
/* 80AFB874  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AFB878  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AFB87C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80AFB880:
/* 80AFB880  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80AFB884  41 82 00 2C */	beq lbl_80AFB8B0
/* 80AFB888  3C 60 80 B0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AFC5E4@ha */
/* 80AFB88C  38 63 C5 E4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AFC5E4@l */
/* 80AFB890  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80AFB894  38 03 00 0C */	addi r0, r3, 0xc
/* 80AFB898  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80AFB89C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AFB8A0  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80AFB8A4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AFB8A8  38 80 00 00 */	li r4, 0
/* 80AFB8AC  4B 57 A6 E9 */	bl __dt__9dBgS_AcchFv
lbl_80AFB8B0:
/* 80AFB8B0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AFB8B4  41 82 00 20 */	beq lbl_80AFB8D4
/* 80AFB8B8  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AFB8BC  41 82 00 18 */	beq lbl_80AFB8D4
/* 80AFB8C0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AFB8C4  41 82 00 10 */	beq lbl_80AFB8D4
/* 80AFB8C8  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AFC5D8@ha */
/* 80AFB8CC  38 03 C5 D8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AFC5D8@l */
/* 80AFB8D0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80AFB8D4:
/* 80AFB8D4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AFB8D8  41 82 00 20 */	beq lbl_80AFB8F8
/* 80AFB8DC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AFB8E0  41 82 00 18 */	beq lbl_80AFB8F8
/* 80AFB8E4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AFB8E8  41 82 00 10 */	beq lbl_80AFB8F8
/* 80AFB8EC  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AFC5D8@ha */
/* 80AFB8F0  38 03 C5 D8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AFC5D8@l */
/* 80AFB8F4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80AFB8F8:
/* 80AFB8F8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AFB8FC  41 82 00 20 */	beq lbl_80AFB91C
/* 80AFB900  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AFB904  41 82 00 18 */	beq lbl_80AFB91C
/* 80AFB908  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AFB90C  41 82 00 10 */	beq lbl_80AFB91C
/* 80AFB910  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AFC5D8@ha */
/* 80AFB914  38 03 C5 D8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AFC5D8@l */
/* 80AFB918  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80AFB91C:
/* 80AFB91C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AFB920  41 82 00 20 */	beq lbl_80AFB940
/* 80AFB924  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AFB928  41 82 00 18 */	beq lbl_80AFB940
/* 80AFB92C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AFB930  41 82 00 10 */	beq lbl_80AFB940
/* 80AFB934  3C 60 80 B0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AFC5D8@ha */
/* 80AFB938  38 03 C5 D8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AFC5D8@l */
/* 80AFB93C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80AFB940:
/* 80AFB940  7F C3 F3 78 */	mr r3, r30
/* 80AFB944  38 80 00 00 */	li r4, 0
/* 80AFB948  4B 51 D3 45 */	bl __dt__10fopAc_ac_cFv
/* 80AFB94C  7F E0 07 35 */	extsh. r0, r31
/* 80AFB950  40 81 00 0C */	ble lbl_80AFB95C
/* 80AFB954  7F C3 F3 78 */	mr r3, r30
/* 80AFB958  4B 7D 33 E5 */	bl __dl__FPv
lbl_80AFB95C:
/* 80AFB95C  7F C3 F3 78 */	mr r3, r30
/* 80AFB960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFB964  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AFB968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFB96C  7C 08 03 A6 */	mtlr r0
/* 80AFB970  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFB974  4E 80 00 20 */	blr 
