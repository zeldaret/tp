lbl_80A079EC:
/* 80A079EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A079F0  7C 08 02 A6 */	mflr r0
/* 80A079F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A079F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A079FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A07A00  7C 7F 1B 78 */	mr r31, r3
/* 80A07A04  48 00 44 39 */	bl __ct__8daNpcF_cFv
/* 80A07A08  3C 60 80 A1 */	lis r3, __vt__12daNpcImpal_c@ha /* 0x80A0C814@ha */
/* 80A07A0C  38 03 C8 14 */	addi r0, r3, __vt__12daNpcImpal_c@l /* 0x80A0C814@l */
/* 80A07A10  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80A07A14  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A07A18  4B 8B 89 B1 */	bl __ct__10Z2CreatureFv
/* 80A07A1C  3B DF 0B DC */	addi r30, r31, 0xbdc
/* 80A07A20  3C 60 80 A1 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A0C8D4@ha */
/* 80A07A24  38 03 C8 D4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A0C8D4@l */
/* 80A07A28  90 1F 0C 74 */	stw r0, 0xc74(r31)
/* 80A07A2C  7F C3 F3 78 */	mr r3, r30
/* 80A07A30  3C 80 80 A1 */	lis r4, __ct__4cXyzFv@ha /* 0x80A0BBEC@ha */
/* 80A07A34  38 84 BB EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A0BBEC@l */
/* 80A07A38  3C A0 80 A1 */	lis r5, __dt__4cXyzFv@ha /* 0x80A0BBB0@ha */
/* 80A07A3C  38 A5 BB B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A0BBB0@l */
/* 80A07A40  38 C0 00 0C */	li r6, 0xc
/* 80A07A44  38 E0 00 04 */	li r7, 4
/* 80A07A48  4B 95 A3 19 */	bl __construct_array
/* 80A07A4C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A07A50  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A0BBAC@ha */
/* 80A07A54  38 84 BB AC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A0BBAC@l */
/* 80A07A58  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A07A5C  38 A5 BB 70 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A07A60  38 C0 00 06 */	li r6, 6
/* 80A07A64  38 E0 00 04 */	li r7, 4
/* 80A07A68  4B 95 A2 F9 */	bl __construct_array
/* 80A07A6C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A07A70  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A0BBAC@ha */
/* 80A07A74  38 84 BB AC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A0BBAC@l */
/* 80A07A78  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A07A7C  38 A5 BB 70 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A07A80  38 C0 00 06 */	li r6, 6
/* 80A07A84  38 E0 00 04 */	li r7, 4
/* 80A07A88  4B 95 A2 D9 */	bl __construct_array
/* 80A07A8C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A07A90  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A0BBAC@ha */
/* 80A07A94  38 84 BB AC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A0BBAC@l */
/* 80A07A98  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A07A9C  38 A5 BB 70 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A07AA0  38 C0 00 06 */	li r6, 6
/* 80A07AA4  38 E0 00 04 */	li r7, 4
/* 80A07AA8  4B 95 A2 B9 */	bl __construct_array
/* 80A07AAC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A07AB0  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A0BBAC@ha */
/* 80A07AB4  38 84 BB AC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A0BBAC@l */
/* 80A07AB8  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A07ABC  38 A5 BB 70 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A07AC0  38 C0 00 06 */	li r6, 6
/* 80A07AC4  38 E0 00 04 */	li r7, 4
/* 80A07AC8  4B 95 A2 99 */	bl __construct_array
/* 80A07ACC  7F C3 F3 78 */	mr r3, r30
/* 80A07AD0  4B 74 95 69 */	bl initialize__15daNpcF_Lookat_cFv
/* 80A07AD4  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A07AD8  3C 80 80 A1 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80A0BA64@ha */
/* 80A07ADC  38 84 BA 64 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80A0BA64@l */
/* 80A07AE0  3C A0 80 A1 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A0BA1C@ha */
/* 80A07AE4  38 A5 BA 1C */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A0BA1C@l */
/* 80A07AE8  38 C0 00 08 */	li r6, 8
/* 80A07AEC  38 E0 00 01 */	li r7, 1
/* 80A07AF0  4B 95 A2 71 */	bl __construct_array
/* 80A07AF4  3B DF 0C 84 */	addi r30, r31, 0xc84
/* 80A07AF8  7F C3 F3 78 */	mr r3, r30
/* 80A07AFC  4B 67 BF 2D */	bl __ct__12dCcD_GObjInfFv
/* 80A07B00  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A07B04  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A07B08  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A07B0C  3C 60 80 A1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A0C8C8@ha */
/* 80A07B10  38 03 C8 C8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A0C8C8@l */
/* 80A07B14  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A07B18  3C 60 80 A1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A0C8BC@ha */
/* 80A07B1C  38 03 C8 BC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A0C8BC@l */
/* 80A07B20  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A07B24  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A07B28  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A07B2C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A07B30  38 03 00 58 */	addi r0, r3, 0x58
/* 80A07B34  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A07B38  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A07B3C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A07B40  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A07B44  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A07B48  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A07B4C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A07B50  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A07B54  7F E3 FB 78 */	mr r3, r31
/* 80A07B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A07B5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A07B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A07B64  7C 08 03 A6 */	mtlr r0
/* 80A07B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80A07B6C  4E 80 00 20 */	blr 
