lbl_80B93DCC:
/* 80B93DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93DD0  7C 08 02 A6 */	mflr r0
/* 80B93DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B93DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B93DE0  7C 7F 1B 78 */	mr r31, r3
/* 80B93DE4  48 00 6C A1 */	bl __ct__8daNpcF_cFv
/* 80B93DE8  3C 60 80 BA */	lis r3, __vt__11daNpc_zrZ_c@ha /* 0x80B9B770@ha */
/* 80B93DEC  38 03 B7 70 */	addi r0, r3, __vt__11daNpc_zrZ_c@l /* 0x80B9B770@l */
/* 80B93DF0  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B93DF4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80B93DF8  4B 72 C5 D1 */	bl __ct__10Z2CreatureFv
/* 80B93DFC  3B DF 0B E4 */	addi r30, r31, 0xbe4
/* 80B93E00  3C 60 80 BA */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B9B848@ha */
/* 80B93E04  38 03 B8 48 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B9B848@l */
/* 80B93E08  90 1F 0C 7C */	stw r0, 0xc7c(r31)
/* 80B93E0C  7F C3 F3 78 */	mr r3, r30
/* 80B93E10  3C 80 80 BA */	lis r4, __ct__4cXyzFv@ha /* 0x80B9A834@ha */
/* 80B93E14  38 84 A8 34 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B9A834@l */
/* 80B93E18  3C A0 80 BA */	lis r5, __dt__4cXyzFv@ha /* 0x80B9A7F8@ha */
/* 80B93E1C  38 A5 A7 F8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B9A7F8@l */
/* 80B93E20  38 C0 00 0C */	li r6, 0xc
/* 80B93E24  38 E0 00 04 */	li r7, 4
/* 80B93E28  4B 7C DF 39 */	bl __construct_array
/* 80B93E2C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B93E30  3C 80 80 BA */	lis r4, __ct__5csXyzFv@ha /* 0x80B9A7F4@ha */
/* 80B93E34  38 84 A7 F4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B9A7F4@l */
/* 80B93E38  3C A0 80 BA */	lis r5, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B93E3C  38 A5 A7 B8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B93E40  38 C0 00 06 */	li r6, 6
/* 80B93E44  38 E0 00 04 */	li r7, 4
/* 80B93E48  4B 7C DF 19 */	bl __construct_array
/* 80B93E4C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B93E50  3C 80 80 BA */	lis r4, __ct__5csXyzFv@ha /* 0x80B9A7F4@ha */
/* 80B93E54  38 84 A7 F4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B9A7F4@l */
/* 80B93E58  3C A0 80 BA */	lis r5, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B93E5C  38 A5 A7 B8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B93E60  38 C0 00 06 */	li r6, 6
/* 80B93E64  38 E0 00 04 */	li r7, 4
/* 80B93E68  4B 7C DE F9 */	bl __construct_array
/* 80B93E6C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B93E70  3C 80 80 BA */	lis r4, __ct__5csXyzFv@ha /* 0x80B9A7F4@ha */
/* 80B93E74  38 84 A7 F4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B9A7F4@l */
/* 80B93E78  3C A0 80 BA */	lis r5, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B93E7C  38 A5 A7 B8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B93E80  38 C0 00 06 */	li r6, 6
/* 80B93E84  38 E0 00 04 */	li r7, 4
/* 80B93E88  4B 7C DE D9 */	bl __construct_array
/* 80B93E8C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B93E90  3C 80 80 BA */	lis r4, __ct__5csXyzFv@ha /* 0x80B9A7F4@ha */
/* 80B93E94  38 84 A7 F4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B9A7F4@l */
/* 80B93E98  3C A0 80 BA */	lis r5, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B93E9C  38 A5 A7 B8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B93EA0  38 C0 00 06 */	li r6, 6
/* 80B93EA4  38 E0 00 04 */	li r7, 4
/* 80B93EA8  4B 7C DE B9 */	bl __construct_array
/* 80B93EAC  7F C3 F3 78 */	mr r3, r30
/* 80B93EB0  4B 5B D1 89 */	bl initialize__15daNpcF_Lookat_cFv
/* 80B93EB4  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80B93EB8  3C 80 80 BA */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B9A6AC@ha */
/* 80B93EBC  38 84 A6 AC */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B9A6AC@l */
/* 80B93EC0  3C A0 80 BA */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B9A664@ha */
/* 80B93EC4  38 A5 A6 64 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B9A664@l */
/* 80B93EC8  38 C0 00 08 */	li r6, 8
/* 80B93ECC  38 E0 00 02 */	li r7, 2
/* 80B93ED0  4B 7C DE 91 */	bl __construct_array
/* 80B93ED4  3B DF 0C 90 */	addi r30, r31, 0xc90
/* 80B93ED8  3C 60 80 BA */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80B9B83C@ha */
/* 80B93EDC  38 03 B8 3C */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80B9B83C@l */
/* 80B93EE0  90 1F 12 BC */	stw r0, 0x12bc(r31)
/* 80B93EE4  3C 60 80 BA */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80B9B830@ha */
/* 80B93EE8  38 03 B8 30 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80B9B830@l */
/* 80B93EEC  90 1F 12 B8 */	stw r0, 0x12b8(r31)
/* 80B93EF0  38 7E 00 20 */	addi r3, r30, 0x20
/* 80B93EF4  38 80 00 00 */	li r4, 0
/* 80B93EF8  38 A0 00 00 */	li r5, 0
/* 80B93EFC  4B 5B C9 75 */	bl initialize__16daNpcF_SPCurve_cFP5dPathi
/* 80B93F00  7F C3 F3 78 */	mr r3, r30
/* 80B93F04  4B 5B C9 FD */	bl initialize__13daNpcF_Path_cFv
/* 80B93F08  3B DF 12 C4 */	addi r30, r31, 0x12c4
/* 80B93F0C  7F C3 F3 78 */	mr r3, r30
/* 80B93F10  4B 4E FB 19 */	bl __ct__12dCcD_GObjInfFv
/* 80B93F14  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B93F18  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B93F1C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B93F20  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha /* 0x80B9B824@ha */
/* 80B93F24  38 03 B8 24 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B9B824@l */
/* 80B93F28  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B93F2C  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B9B818@ha */
/* 80B93F30  38 03 B8 18 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B9B818@l */
/* 80B93F34  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B93F38  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B93F3C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B93F40  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B93F44  38 03 00 58 */	addi r0, r3, 0x58
/* 80B93F48  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B93F4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B93F50  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B93F54  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B93F58  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B93F5C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B93F60  38 03 00 84 */	addi r0, r3, 0x84
/* 80B93F64  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B93F68  7F E3 FB 78 */	mr r3, r31
/* 80B93F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B93F70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B93F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B93F78  7C 08 03 A6 */	mtlr r0
/* 80B93F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93F80  4E 80 00 20 */	blr 
