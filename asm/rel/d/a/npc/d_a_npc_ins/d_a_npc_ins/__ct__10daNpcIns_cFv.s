lbl_80A0E24C:
/* 80A0E24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0E250  7C 08 02 A6 */	mflr r0
/* 80A0E254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0E258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0E25C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A0E260  7C 7F 1B 78 */	mr r31, r3
/* 80A0E264  48 00 57 15 */	bl __ct__8daNpcF_cFv
/* 80A0E268  3C 60 80 A1 */	lis r3, __vt__10daNpcIns_c@ha /* 0x80A14518@ha */
/* 80A0E26C  38 03 45 18 */	addi r0, r3, __vt__10daNpcIns_c@l /* 0x80A14518@l */
/* 80A0E270  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80A0E274  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A0E278  4B 8B 21 51 */	bl __ct__10Z2CreatureFv
/* 80A0E27C  3B DF 0B E4 */	addi r30, r31, 0xbe4
/* 80A0E280  3C 60 80 A1 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A145D8@ha */
/* 80A0E284  38 03 45 D8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A145D8@l */
/* 80A0E288  90 1F 0C 7C */	stw r0, 0xc7c(r31)
/* 80A0E28C  7F C3 F3 78 */	mr r3, r30
/* 80A0E290  3C 80 80 A1 */	lis r4, __ct__4cXyzFv@ha /* 0x80A13728@ha */
/* 80A0E294  38 84 37 28 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A13728@l */
/* 80A0E298  3C A0 80 A1 */	lis r5, __dt__4cXyzFv@ha /* 0x80A136EC@ha */
/* 80A0E29C  38 A5 36 EC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A136EC@l */
/* 80A0E2A0  38 C0 00 0C */	li r6, 0xc
/* 80A0E2A4  38 E0 00 04 */	li r7, 4
/* 80A0E2A8  4B 95 3A B9 */	bl __construct_array
/* 80A0E2AC  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A0E2B0  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A136E8@ha */
/* 80A0E2B4  38 84 36 E8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A136E8@l */
/* 80A0E2B8  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A0E2BC  38 A5 36 AC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A0E2C0  38 C0 00 06 */	li r6, 6
/* 80A0E2C4  38 E0 00 04 */	li r7, 4
/* 80A0E2C8  4B 95 3A 99 */	bl __construct_array
/* 80A0E2CC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A0E2D0  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A136E8@ha */
/* 80A0E2D4  38 84 36 E8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A136E8@l */
/* 80A0E2D8  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A0E2DC  38 A5 36 AC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A0E2E0  38 C0 00 06 */	li r6, 6
/* 80A0E2E4  38 E0 00 04 */	li r7, 4
/* 80A0E2E8  4B 95 3A 79 */	bl __construct_array
/* 80A0E2EC  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A0E2F0  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A136E8@ha */
/* 80A0E2F4  38 84 36 E8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A136E8@l */
/* 80A0E2F8  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A0E2FC  38 A5 36 AC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A0E300  38 C0 00 06 */	li r6, 6
/* 80A0E304  38 E0 00 04 */	li r7, 4
/* 80A0E308  4B 95 3A 59 */	bl __construct_array
/* 80A0E30C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A0E310  3C 80 80 A1 */	lis r4, __ct__5csXyzFv@ha /* 0x80A136E8@ha */
/* 80A0E314  38 84 36 E8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A136E8@l */
/* 80A0E318  3C A0 80 A1 */	lis r5, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A0E31C  38 A5 36 AC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A0E320  38 C0 00 06 */	li r6, 6
/* 80A0E324  38 E0 00 04 */	li r7, 4
/* 80A0E328  4B 95 3A 39 */	bl __construct_array
/* 80A0E32C  7F C3 F3 78 */	mr r3, r30
/* 80A0E330  4B 74 2D 09 */	bl initialize__15daNpcF_Lookat_cFv
/* 80A0E334  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A0E338  3C 80 80 A1 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80A135A0@ha */
/* 80A0E33C  38 84 35 A0 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80A135A0@l */
/* 80A0E340  3C A0 80 A1 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A13558@ha */
/* 80A0E344  38 A5 35 58 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A13558@l */
/* 80A0E348  38 C0 00 08 */	li r6, 8
/* 80A0E34C  38 E0 00 01 */	li r7, 1
/* 80A0E350  4B 95 3A 11 */	bl __construct_array
/* 80A0E354  3B DF 0C 8C */	addi r30, r31, 0xc8c
/* 80A0E358  7F C3 F3 78 */	mr r3, r30
/* 80A0E35C  4B 67 56 CD */	bl __ct__12dCcD_GObjInfFv
/* 80A0E360  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A0E364  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A0E368  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A0E36C  3C 60 80 A1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A145CC@ha */
/* 80A0E370  38 03 45 CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A145CC@l */
/* 80A0E374  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A0E378  3C 60 80 A1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A145C0@ha */
/* 80A0E37C  38 03 45 C0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A145C0@l */
/* 80A0E380  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A0E384  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A0E388  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A0E38C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A0E390  38 03 00 58 */	addi r0, r3, 0x58
/* 80A0E394  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A0E398  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A0E39C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A0E3A0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A0E3A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A0E3A8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A0E3AC  38 03 00 84 */	addi r0, r3, 0x84
/* 80A0E3B0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A0E3B4  7F E3 FB 78 */	mr r3, r31
/* 80A0E3B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0E3BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A0E3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0E3C4  7C 08 03 A6 */	mtlr r0
/* 80A0E3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0E3CC  4E 80 00 20 */	blr 
