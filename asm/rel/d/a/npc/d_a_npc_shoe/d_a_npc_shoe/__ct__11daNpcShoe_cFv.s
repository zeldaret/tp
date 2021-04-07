lbl_80AE794C:
/* 80AE794C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE7950  7C 08 02 A6 */	mflr r0
/* 80AE7954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE7958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE795C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE7960  7C 7F 1B 78 */	mr r31, r3
/* 80AE7964  48 00 25 95 */	bl __ct__8daNpcF_cFv
/* 80AE7968  3C 60 80 AF */	lis r3, __vt__11daNpcShoe_c@ha /* 0x80AEA658@ha */
/* 80AE796C  38 03 A6 58 */	addi r0, r3, __vt__11daNpcShoe_c@l /* 0x80AEA658@l */
/* 80AE7970  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80AE7974  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AE7978  4B 7D 92 99 */	bl __ct__17Z2CreatureCitizenFv
/* 80AE797C  3B DF 0B F8 */	addi r30, r31, 0xbf8
/* 80AE7980  3C 60 80 AF */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AEA718@ha */
/* 80AE7984  38 03 A7 18 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AEA718@l */
/* 80AE7988  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 80AE798C  7F C3 F3 78 */	mr r3, r30
/* 80AE7990  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AE9CA8@ha */
/* 80AE7994  38 84 9C A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE9CA8@l */
/* 80AE7998  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AE9C6C@ha */
/* 80AE799C  38 A5 9C 6C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE9C6C@l */
/* 80AE79A0  38 C0 00 0C */	li r6, 0xc
/* 80AE79A4  38 E0 00 04 */	li r7, 4
/* 80AE79A8  4B 87 A3 B9 */	bl __construct_array
/* 80AE79AC  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AE79B0  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha /* 0x80AE9C68@ha */
/* 80AE79B4  38 84 9C 68 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE9C68@l */
/* 80AE79B8  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE79BC  38 A5 9C 2C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE79C0  38 C0 00 06 */	li r6, 6
/* 80AE79C4  38 E0 00 04 */	li r7, 4
/* 80AE79C8  4B 87 A3 99 */	bl __construct_array
/* 80AE79CC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AE79D0  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha /* 0x80AE9C68@ha */
/* 80AE79D4  38 84 9C 68 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE9C68@l */
/* 80AE79D8  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE79DC  38 A5 9C 2C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE79E0  38 C0 00 06 */	li r6, 6
/* 80AE79E4  38 E0 00 04 */	li r7, 4
/* 80AE79E8  4B 87 A3 79 */	bl __construct_array
/* 80AE79EC  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AE79F0  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha /* 0x80AE9C68@ha */
/* 80AE79F4  38 84 9C 68 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE9C68@l */
/* 80AE79F8  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE79FC  38 A5 9C 2C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE7A00  38 C0 00 06 */	li r6, 6
/* 80AE7A04  38 E0 00 04 */	li r7, 4
/* 80AE7A08  4B 87 A3 59 */	bl __construct_array
/* 80AE7A0C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AE7A10  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha /* 0x80AE9C68@ha */
/* 80AE7A14  38 84 9C 68 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE9C68@l */
/* 80AE7A18  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE7A1C  38 A5 9C 2C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE7A20  38 C0 00 06 */	li r6, 6
/* 80AE7A24  38 E0 00 04 */	li r7, 4
/* 80AE7A28  4B 87 A3 39 */	bl __construct_array
/* 80AE7A2C  7F C3 F3 78 */	mr r3, r30
/* 80AE7A30  4B 66 96 09 */	bl initialize__15daNpcF_Lookat_cFv
/* 80AE7A34  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80AE7A38  3C 80 80 AF */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80AE9B20@ha */
/* 80AE7A3C  38 84 9B 20 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80AE9B20@l */
/* 80AE7A40  3C A0 80 AF */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AE9AD8@ha */
/* 80AE7A44  38 A5 9A D8 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AE9AD8@l */
/* 80AE7A48  38 C0 00 08 */	li r6, 8
/* 80AE7A4C  38 E0 00 01 */	li r7, 1
/* 80AE7A50  4B 87 A3 11 */	bl __construct_array
/* 80AE7A54  3B DF 0C A0 */	addi r30, r31, 0xca0
/* 80AE7A58  7F C3 F3 78 */	mr r3, r30
/* 80AE7A5C  4B 59 BF CD */	bl __ct__12dCcD_GObjInfFv
/* 80AE7A60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AE7A64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AE7A68  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AE7A6C  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha /* 0x80AEA70C@ha */
/* 80AE7A70  38 03 A7 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AEA70C@l */
/* 80AE7A74  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AE7A78  3C 60 80 AF */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AEA700@ha */
/* 80AE7A7C  38 03 A7 00 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AEA700@l */
/* 80AE7A80  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AE7A84  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AE7A88  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AE7A8C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AE7A90  38 03 00 58 */	addi r0, r3, 0x58
/* 80AE7A94  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AE7A98  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AE7A9C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AE7AA0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AE7AA4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AE7AA8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AE7AAC  38 03 00 84 */	addi r0, r3, 0x84
/* 80AE7AB0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AE7AB4  7F E3 FB 78 */	mr r3, r31
/* 80AE7AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE7ABC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE7AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE7AC4  7C 08 03 A6 */	mtlr r0
/* 80AE7AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE7ACC  4E 80 00 20 */	blr 
