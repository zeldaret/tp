lbl_80961A68:
/* 80961A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80961A6C  7C 08 02 A6 */	mflr r0
/* 80961A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80961A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80961A78  93 C1 00 08 */	stw r30, 8(r1)
/* 80961A7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80961A80  7C 9F 23 78 */	mr r31, r4
/* 80961A84  41 82 02 14 */	beq lbl_80961C98
/* 80961A88  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80961A8C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80961A90  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80961A94  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80961A98  38 80 FF FF */	li r4, -1
/* 80961A9C  4B 71 62 41 */	bl __dt__11dBgS_LinChkFv
/* 80961AA0  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80961AA4  38 80 FF FF */	li r4, -1
/* 80961AA8  4B 71 5B 49 */	bl __dt__11dBgS_GndChkFv
/* 80961AAC  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80961AB0  38 80 FF FF */	li r4, -1
/* 80961AB4  4B 90 61 E1 */	bl __dt__11cBgS_GndChkFv
/* 80961AB8  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80961ABC  38 80 FF FF */	li r4, -1
/* 80961AC0  4B 8E 84 89 */	bl __dt__10dMsgFlow_cFv
/* 80961AC4  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80961AC8  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha /* 0x809619E8@ha */
/* 80961ACC  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809619E8@l */
/* 80961AD0  38 A0 00 06 */	li r5, 6
/* 80961AD4  38 C0 00 03 */	li r6, 3
/* 80961AD8  4B A0 02 11 */	bl __destroy_arr
/* 80961ADC  38 7E 09 08 */	addi r3, r30, 0x908
/* 80961AE0  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha /* 0x809619E8@ha */
/* 80961AE4  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809619E8@l */
/* 80961AE8  38 A0 00 06 */	li r5, 6
/* 80961AEC  38 C0 00 03 */	li r6, 3
/* 80961AF0  4B A0 01 F9 */	bl __destroy_arr
/* 80961AF4  38 7E 08 54 */	addi r3, r30, 0x854
/* 80961AF8  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha /* 0x80961A28@ha */
/* 80961AFC  38 84 1A 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80961A28@l */
/* 80961B00  38 A0 00 0C */	li r5, 0xc
/* 80961B04  38 C0 00 03 */	li r6, 3
/* 80961B08  4B A0 01 E1 */	bl __destroy_arr
/* 80961B0C  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80961B10  3C 80 80 96 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80961894@ha */
/* 80961B14  38 84 18 94 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80961894@l */
/* 80961B18  38 A0 00 08 */	li r5, 8
/* 80961B1C  38 C0 00 05 */	li r6, 5
/* 80961B20  4B A0 01 C9 */	bl __destroy_arr
/* 80961B24  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80961B28  41 82 00 10 */	beq lbl_80961B38
/* 80961B2C  3C 60 80 96 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80962778@ha */
/* 80961B30  38 03 27 78 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80962778@l */
/* 80961B34  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80961B38:
/* 80961B38  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80961B3C  41 82 00 28 */	beq lbl_80961B64
/* 80961B40  3C 60 80 96 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8096276C@ha */
/* 80961B44  38 03 27 6C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8096276C@l */
/* 80961B48  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80961B4C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80961B50  38 80 FF FF */	li r4, -1
/* 80961B54  4B 90 D3 C5 */	bl __dt__8cM3dGCirFv
/* 80961B58  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80961B5C  38 80 00 00 */	li r4, 0
/* 80961B60  4B 90 65 51 */	bl __dt__13cBgS_PolyInfoFv
lbl_80961B64:
/* 80961B64  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80961B68  41 82 00 54 */	beq lbl_80961BBC
/* 80961B6C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80961B70  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80961B74  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80961B78  38 03 00 20 */	addi r0, r3, 0x20
/* 80961B7C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80961B80  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80961B84  41 82 00 24 */	beq lbl_80961BA8
/* 80961B88  3C 60 80 96 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80962760@ha */
/* 80961B8C  38 03 27 60 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80962760@l */
/* 80961B90  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80961B94  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80961B98  41 82 00 10 */	beq lbl_80961BA8
/* 80961B9C  3C 60 80 96 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80962754@ha */
/* 80961BA0  38 03 27 54 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80962754@l */
/* 80961BA4  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80961BA8:
/* 80961BA8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80961BAC  41 82 00 10 */	beq lbl_80961BBC
/* 80961BB0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80961BB4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80961BB8  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80961BBC:
/* 80961BBC  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80961BC0  41 82 00 2C */	beq lbl_80961BEC
/* 80961BC4  3C 60 80 96 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80962730@ha */
/* 80961BC8  38 63 27 30 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80962730@l */
/* 80961BCC  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80961BD0  38 03 00 0C */	addi r0, r3, 0xc
/* 80961BD4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80961BD8  38 03 00 18 */	addi r0, r3, 0x18
/* 80961BDC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80961BE0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80961BE4  38 80 00 00 */	li r4, 0
/* 80961BE8  4B 71 43 AD */	bl __dt__9dBgS_AcchFv
lbl_80961BEC:
/* 80961BEC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80961BF0  41 82 00 20 */	beq lbl_80961C10
/* 80961BF4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80961BF8  41 82 00 18 */	beq lbl_80961C10
/* 80961BFC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80961C00  41 82 00 10 */	beq lbl_80961C10
/* 80961C04  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961C08  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961C0C  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80961C10:
/* 80961C10  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80961C14  41 82 00 20 */	beq lbl_80961C34
/* 80961C18  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80961C1C  41 82 00 18 */	beq lbl_80961C34
/* 80961C20  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80961C24  41 82 00 10 */	beq lbl_80961C34
/* 80961C28  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961C2C  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961C30  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80961C34:
/* 80961C34  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80961C38  41 82 00 20 */	beq lbl_80961C58
/* 80961C3C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80961C40  41 82 00 18 */	beq lbl_80961C58
/* 80961C44  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80961C48  41 82 00 10 */	beq lbl_80961C58
/* 80961C4C  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961C50  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961C54  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80961C58:
/* 80961C58  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80961C5C  41 82 00 20 */	beq lbl_80961C7C
/* 80961C60  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80961C64  41 82 00 18 */	beq lbl_80961C7C
/* 80961C68  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80961C6C  41 82 00 10 */	beq lbl_80961C7C
/* 80961C70  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80962724@ha */
/* 80961C74  38 03 27 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80962724@l */
/* 80961C78  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80961C7C:
/* 80961C7C  7F C3 F3 78 */	mr r3, r30
/* 80961C80  38 80 00 00 */	li r4, 0
/* 80961C84  4B 6B 70 09 */	bl __dt__10fopAc_ac_cFv
/* 80961C88  7F E0 07 35 */	extsh. r0, r31
/* 80961C8C  40 81 00 0C */	ble lbl_80961C98
/* 80961C90  7F C3 F3 78 */	mr r3, r30
/* 80961C94  4B 96 D0 A9 */	bl __dl__FPv
lbl_80961C98:
/* 80961C98  7F C3 F3 78 */	mr r3, r30
/* 80961C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80961CA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80961CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80961CA8  7C 08 03 A6 */	mtlr r0
/* 80961CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80961CB0  4E 80 00 20 */	blr 
