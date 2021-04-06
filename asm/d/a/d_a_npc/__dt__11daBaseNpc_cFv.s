lbl_8014E89C:
/* 8014E89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014E8A0  7C 08 02 A6 */	mflr r0
/* 8014E8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014E8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014E8AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8014E8B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014E8B4  7C 9F 23 78 */	mr r31, r4
/* 8014E8B8  41 82 01 FC */	beq lbl_8014EAB4
/* 8014E8BC  3C 60 80 3B */	lis r3, __vt__11daBaseNpc_c@ha /* 0x803B39AC@ha */
/* 8014E8C0  38 03 39 AC */	addi r0, r3, __vt__11daBaseNpc_c@l /* 0x803B39AC@l */
/* 8014E8C4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8014E8C8  38 7E 09 D4 */	addi r3, r30, 0x9d4
/* 8014E8CC  38 80 FF FF */	li r4, -1
/* 8014E8D0  48 11 93 C5 */	bl __dt__11cBgS_GndChkFv
/* 8014E8D4  34 1E 09 20 */	addic. r0, r30, 0x920
/* 8014E8D8  41 82 00 88 */	beq lbl_8014E960
/* 8014E8DC  3C 60 80 3B */	lis r3, __vt__18daBaseNpc_lookat_c@ha /* 0x803B3A14@ha */
/* 8014E8E0  38 03 3A 14 */	addi r0, r3, __vt__18daBaseNpc_lookat_c@l /* 0x803B3A14@l */
/* 8014E8E4  90 1E 09 20 */	stw r0, 0x920(r30)
/* 8014E8E8  38 7E 09 9C */	addi r3, r30, 0x99c
/* 8014E8EC  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 8014E8F0  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 8014E8F4  38 A0 00 06 */	li r5, 6
/* 8014E8F8  38 C0 00 04 */	li r6, 4
/* 8014E8FC  48 21 33 ED */	bl __destroy_arr
/* 8014E900  38 7E 09 84 */	addi r3, r30, 0x984
/* 8014E904  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 8014E908  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 8014E90C  38 A0 00 06 */	li r5, 6
/* 8014E910  38 C0 00 04 */	li r6, 4
/* 8014E914  48 21 33 D5 */	bl __destroy_arr
/* 8014E918  38 7E 09 54 */	addi r3, r30, 0x954
/* 8014E91C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014E920  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014E924  38 A0 00 0C */	li r5, 0xc
/* 8014E928  38 C0 00 04 */	li r6, 4
/* 8014E92C  48 21 33 BD */	bl __destroy_arr
/* 8014E930  38 7E 09 3C */	addi r3, r30, 0x93c
/* 8014E934  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 8014E938  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 8014E93C  38 A0 00 06 */	li r5, 6
/* 8014E940  38 C0 00 04 */	li r6, 4
/* 8014E944  48 21 33 A5 */	bl __destroy_arr
/* 8014E948  38 7E 09 24 */	addi r3, r30, 0x924
/* 8014E94C  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 8014E950  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 8014E954  38 A0 00 06 */	li r5, 6
/* 8014E958  38 C0 00 04 */	li r6, 4
/* 8014E95C  48 21 33 8D */	bl __destroy_arr
lbl_8014E960:
/* 8014E960  34 1E 08 D8 */	addic. r0, r30, 0x8d8
/* 8014E964  41 82 00 28 */	beq lbl_8014E98C
/* 8014E968  3C 60 80 3B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x803AB664@ha */
/* 8014E96C  38 03 B6 64 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x803AB664@l */
/* 8014E970  90 1E 08 E4 */	stw r0, 0x8e4(r30)
/* 8014E974  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 8014E978  38 80 FF FF */	li r4, -1
/* 8014E97C  48 12 05 9D */	bl __dt__8cM3dGCirFv
/* 8014E980  38 7E 08 D8 */	addi r3, r30, 0x8d8
/* 8014E984  38 80 00 00 */	li r4, 0
/* 8014E988  48 11 97 29 */	bl __dt__13cBgS_PolyInfoFv
lbl_8014E98C:
/* 8014E98C  34 1E 08 9C */	addic. r0, r30, 0x89c
/* 8014E990  41 82 00 54 */	beq lbl_8014E9E4
/* 8014E994  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8014E998  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8014E99C  90 7E 08 B4 */	stw r3, 0x8b4(r30)
/* 8014E9A0  38 03 00 20 */	addi r0, r3, 0x20
/* 8014E9A4  90 1E 08 B8 */	stw r0, 0x8b8(r30)
/* 8014E9A8  34 1E 08 B8 */	addic. r0, r30, 0x8b8
/* 8014E9AC  41 82 00 24 */	beq lbl_8014E9D0
/* 8014E9B0  3C 60 80 3B */	lis r3, __vt__10dCcD_GStts@ha /* 0x803AC310@ha */
/* 8014E9B4  38 03 C3 10 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x803AC310@l */
/* 8014E9B8  90 1E 08 B8 */	stw r0, 0x8b8(r30)
/* 8014E9BC  34 1E 08 B8 */	addic. r0, r30, 0x8b8
/* 8014E9C0  41 82 00 10 */	beq lbl_8014E9D0
/* 8014E9C4  3C 60 80 3B */	lis r3, __vt__10cCcD_GStts@ha /* 0x803AC31C@ha */
/* 8014E9C8  38 03 C3 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x803AC31C@l */
/* 8014E9CC  90 1E 08 B8 */	stw r0, 0x8b8(r30)
lbl_8014E9D0:
/* 8014E9D0  34 1E 08 9C */	addic. r0, r30, 0x89c
/* 8014E9D4  41 82 00 10 */	beq lbl_8014E9E4
/* 8014E9D8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8014E9DC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8014E9E0  90 1E 08 B4 */	stw r0, 0x8b4(r30)
lbl_8014E9E4:
/* 8014E9E4  38 7E 08 4C */	addi r3, r30, 0x84c
/* 8014E9E8  38 80 FF FF */	li r4, -1
/* 8014E9EC  48 0F B5 5D */	bl __dt__10dMsgFlow_cFv
/* 8014E9F0  34 1E 08 20 */	addic. r0, r30, 0x820
/* 8014E9F4  41 82 00 20 */	beq lbl_8014EA14
/* 8014E9F8  34 1E 08 20 */	addic. r0, r30, 0x820
/* 8014E9FC  41 82 00 18 */	beq lbl_8014EA14
/* 8014EA00  34 1E 08 20 */	addic. r0, r30, 0x820
/* 8014EA04  41 82 00 10 */	beq lbl_8014EA14
/* 8014EA08  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014EA0C  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014EA10  90 1E 08 20 */	stw r0, 0x820(r30)
lbl_8014EA14:
/* 8014EA14  34 1E 08 08 */	addic. r0, r30, 0x808
/* 8014EA18  41 82 00 20 */	beq lbl_8014EA38
/* 8014EA1C  34 1E 08 08 */	addic. r0, r30, 0x808
/* 8014EA20  41 82 00 18 */	beq lbl_8014EA38
/* 8014EA24  34 1E 08 08 */	addic. r0, r30, 0x808
/* 8014EA28  41 82 00 10 */	beq lbl_8014EA38
/* 8014EA2C  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014EA30  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014EA34  90 1E 08 08 */	stw r0, 0x808(r30)
lbl_8014EA38:
/* 8014EA38  34 1E 07 EC */	addic. r0, r30, 0x7ec
/* 8014EA3C  41 82 00 20 */	beq lbl_8014EA5C
/* 8014EA40  34 1E 07 EC */	addic. r0, r30, 0x7ec
/* 8014EA44  41 82 00 18 */	beq lbl_8014EA5C
/* 8014EA48  34 1E 07 EC */	addic. r0, r30, 0x7ec
/* 8014EA4C  41 82 00 10 */	beq lbl_8014EA5C
/* 8014EA50  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014EA54  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014EA58  90 1E 07 EC */	stw r0, 0x7ec(r30)
lbl_8014EA5C:
/* 8014EA5C  38 7E 07 58 */	addi r3, r30, 0x758
/* 8014EA60  38 80 FF FF */	li r4, -1
/* 8014EA64  48 17 19 BD */	bl __dt__10Z2CreatureFv
/* 8014EA68  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8014EA6C  41 82 00 2C */	beq lbl_8014EA98
/* 8014EA70  3C 60 80 3B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x803B35C8@ha */
/* 8014EA74  38 63 35 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x803B35C8@l */
/* 8014EA78  90 7E 05 7C */	stw r3, 0x57c(r30)
/* 8014EA7C  38 03 00 0C */	addi r0, r3, 0xc
/* 8014EA80  90 1E 05 80 */	stw r0, 0x580(r30)
/* 8014EA84  38 03 00 18 */	addi r0, r3, 0x18
/* 8014EA88  90 1E 05 90 */	stw r0, 0x590(r30)
/* 8014EA8C  38 7E 05 6C */	addi r3, r30, 0x56c
/* 8014EA90  38 80 00 00 */	li r4, 0
/* 8014EA94  4B F2 75 01 */	bl __dt__9dBgS_AcchFv
lbl_8014EA98:
/* 8014EA98  7F C3 F3 78 */	mr r3, r30
/* 8014EA9C  38 80 00 00 */	li r4, 0
/* 8014EAA0  4B EC A1 ED */	bl __dt__10fopAc_ac_cFv
/* 8014EAA4  7F E0 07 35 */	extsh. r0, r31
/* 8014EAA8  40 81 00 0C */	ble lbl_8014EAB4
/* 8014EAAC  7F C3 F3 78 */	mr r3, r30
/* 8014EAB0  48 18 02 8D */	bl __dl__FPv
lbl_8014EAB4:
/* 8014EAB4  7F C3 F3 78 */	mr r3, r30
/* 8014EAB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014EABC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014EAC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014EAC4  7C 08 03 A6 */	mtlr r0
/* 8014EAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8014EACC  4E 80 00 20 */	blr 
