lbl_80980A60:
/* 80980A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80980A64  7C 08 02 A6 */	mflr r0
/* 80980A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80980A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80980A70  93 C1 00 08 */	stw r30, 8(r1)
/* 80980A74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80980A78  7C 9F 23 78 */	mr r31, r4
/* 80980A7C  41 82 01 84 */	beq lbl_80980C00
/* 80980A80  3C 80 80 99 */	lis r4, __vt__11daNpcChat_c@ha /* 0x8098B99C@ha */
/* 80980A84  38 04 B9 9C */	addi r0, r4, __vt__11daNpcChat_c@l /* 0x8098B99C@l */
/* 80980A88  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80980A8C  88 9E 0E 10 */	lbz r4, 0xe10(r30)
/* 80980A90  80 BE 0E 14 */	lwz r5, 0xe14(r30)
/* 80980A94  48 00 09 55 */	bl removeResrc__11daNpcChat_cFii
/* 80980A98  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80980A9C  28 00 00 00 */	cmplwi r0, 0
/* 80980AA0  41 82 00 0C */	beq lbl_80980AAC
/* 80980AA4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80980AA8  4B 69 08 69 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80980AAC:
/* 80980AAC  34 1E 0C 9C */	addic. r0, r30, 0xc9c
/* 80980AB0  41 82 00 84 */	beq lbl_80980B34
/* 80980AB4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80980AB8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80980ABC  90 7E 0C D8 */	stw r3, 0xcd8(r30)
/* 80980AC0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80980AC4  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80980AC8  38 03 00 84 */	addi r0, r3, 0x84
/* 80980ACC  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80980AD0  34 1E 0D A0 */	addic. r0, r30, 0xda0
/* 80980AD4  41 82 00 54 */	beq lbl_80980B28
/* 80980AD8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80980ADC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80980AE0  90 7E 0D BC */	stw r3, 0xdbc(r30)
/* 80980AE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80980AE8  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80980AEC  34 1E 0D C0 */	addic. r0, r30, 0xdc0
/* 80980AF0  41 82 00 10 */	beq lbl_80980B00
/* 80980AF4  3C 60 80 99 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8098BA44@ha */
/* 80980AF8  38 03 BA 44 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8098BA44@l */
/* 80980AFC  90 1E 0D D4 */	stw r0, 0xdd4(r30)
lbl_80980B00:
/* 80980B00  34 1E 0D A0 */	addic. r0, r30, 0xda0
/* 80980B04  41 82 00 24 */	beq lbl_80980B28
/* 80980B08  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80980B0C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80980B10  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80980B14  34 1E 0D A0 */	addic. r0, r30, 0xda0
/* 80980B18  41 82 00 10 */	beq lbl_80980B28
/* 80980B1C  3C 60 80 99 */	lis r3, __vt__8cM3dGAab@ha /* 0x8098BA50@ha */
/* 80980B20  38 03 BA 50 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8098BA50@l */
/* 80980B24  90 1E 0D B8 */	stw r0, 0xdb8(r30)
lbl_80980B28:
/* 80980B28  38 7E 0C 9C */	addi r3, r30, 0xc9c
/* 80980B2C  38 80 00 00 */	li r4, 0
/* 80980B30  4B 70 35 B5 */	bl __dt__12dCcD_GObjInfFv
lbl_80980B34:
/* 80980B34  38 7E 0C 90 */	addi r3, r30, 0xc90
/* 80980B38  3C 80 80 98 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80985C54@ha */
/* 80980B3C  38 84 5C 54 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80985C54@l */
/* 80980B40  38 A0 00 08 */	li r5, 8
/* 80980B44  38 C0 00 01 */	li r6, 1
/* 80980B48  4B 9E 11 A1 */	bl __destroy_arr
/* 80980B4C  34 1E 0B F4 */	addic. r0, r30, 0xbf4
/* 80980B50  41 82 00 88 */	beq lbl_80980BD8
/* 80980B54  3C 60 80 99 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x8098BA5C@ha */
/* 80980B58  38 03 BA 5C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x8098BA5C@l */
/* 80980B5C  90 1E 0C 8C */	stw r0, 0xc8c(r30)
/* 80980B60  38 7E 0C 70 */	addi r3, r30, 0xc70
/* 80980B64  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80980B68  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80980B6C  38 A0 00 06 */	li r5, 6
/* 80980B70  38 C0 00 04 */	li r6, 4
/* 80980B74  4B 9E 11 75 */	bl __destroy_arr
/* 80980B78  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80980B7C  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80980B80  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80980B84  38 A0 00 06 */	li r5, 6
/* 80980B88  38 C0 00 04 */	li r6, 4
/* 80980B8C  4B 9E 11 5D */	bl __destroy_arr
/* 80980B90  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80980B94  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80980B98  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80980B9C  38 A0 00 06 */	li r5, 6
/* 80980BA0  38 C0 00 04 */	li r6, 4
/* 80980BA4  4B 9E 11 45 */	bl __destroy_arr
/* 80980BA8  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80980BAC  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80980BB0  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80980BB4  38 A0 00 06 */	li r5, 6
/* 80980BB8  38 C0 00 04 */	li r6, 4
/* 80980BBC  4B 9E 11 2D */	bl __destroy_arr
/* 80980BC0  38 7E 0B F4 */	addi r3, r30, 0xbf4
/* 80980BC4  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80980BC8  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80980BCC  38 A0 00 0C */	li r5, 0xc
/* 80980BD0  38 C0 00 04 */	li r6, 4
/* 80980BD4  4B 9E 11 15 */	bl __destroy_arr
lbl_80980BD8:
/* 80980BD8  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80980BDC  38 80 FF FF */	li r4, -1
/* 80980BE0  4B 94 00 8D */	bl __dt__17Z2CreatureCitizenFv
/* 80980BE4  7F C3 F3 78 */	mr r3, r30
/* 80980BE8  38 80 00 00 */	li r4, 0
/* 80980BEC  48 00 52 3D */	bl __dt__8daNpcF_cFv
/* 80980BF0  7F E0 07 35 */	extsh. r0, r31
/* 80980BF4  40 81 00 0C */	ble lbl_80980C00
/* 80980BF8  7F C3 F3 78 */	mr r3, r30
/* 80980BFC  4B 94 E1 41 */	bl __dl__FPv
lbl_80980C00:
/* 80980C00  7F C3 F3 78 */	mr r3, r30
/* 80980C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80980C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80980C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80980C10  7C 08 03 A6 */	mtlr r0
/* 80980C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80980C18  4E 80 00 20 */	blr 
