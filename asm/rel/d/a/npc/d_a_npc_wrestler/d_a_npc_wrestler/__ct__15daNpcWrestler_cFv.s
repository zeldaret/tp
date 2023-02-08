lbl_80B2F28C:
/* 80B2F28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2F290  7C 08 02 A6 */	mflr r0
/* 80B2F294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2F298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2F29C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2F2A0  7C 7F 1B 78 */	mr r31, r3
/* 80B2F2A4  48 01 1F B5 */	bl __ct__8daNpcF_cFv
/* 80B2F2A8  3C 60 80 B4 */	lis r3, __vt__15daNpcWrestler_c@ha /* 0x80B42D34@ha */
/* 80B2F2AC  38 03 2D 34 */	addi r0, r3, __vt__15daNpcWrestler_c@l /* 0x80B42D34@l */
/* 80B2F2B0  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B2F2B4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80B2F2B8  4B 79 11 11 */	bl __ct__10Z2CreatureFv
/* 80B2F2BC  3B DF 0B E4 */	addi r30, r31, 0xbe4
/* 80B2F2C0  3C 60 80 B4 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B42DF4@ha */
/* 80B2F2C4  38 03 2D F4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B42DF4@l */
/* 80B2F2C8  90 1F 0C 7C */	stw r0, 0xc7c(r31)
/* 80B2F2CC  7F C3 F3 78 */	mr r3, r30
/* 80B2F2D0  3C 80 80 B4 */	lis r4, __ct__4cXyzFv@ha /* 0x80B41008@ha */
/* 80B2F2D4  38 84 10 08 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B41008@l */
/* 80B2F2D8  3C A0 80 B4 */	lis r5, __dt__4cXyzFv@ha /* 0x80B40FCC@ha */
/* 80B2F2DC  38 A5 0F CC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B40FCC@l */
/* 80B2F2E0  38 C0 00 0C */	li r6, 0xc
/* 80B2F2E4  38 E0 00 04 */	li r7, 4
/* 80B2F2E8  4B 83 2A 79 */	bl __construct_array
/* 80B2F2EC  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B2F2F0  3C 80 80 B4 */	lis r4, __ct__5csXyzFv@ha /* 0x80B40FC8@ha */
/* 80B2F2F4  38 84 0F C8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B40FC8@l */
/* 80B2F2F8  3C A0 80 B4 */	lis r5, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F2FC  38 A5 0F 8C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F300  38 C0 00 06 */	li r6, 6
/* 80B2F304  38 E0 00 04 */	li r7, 4
/* 80B2F308  4B 83 2A 59 */	bl __construct_array
/* 80B2F30C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B2F310  3C 80 80 B4 */	lis r4, __ct__5csXyzFv@ha /* 0x80B40FC8@ha */
/* 80B2F314  38 84 0F C8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B40FC8@l */
/* 80B2F318  3C A0 80 B4 */	lis r5, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F31C  38 A5 0F 8C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F320  38 C0 00 06 */	li r6, 6
/* 80B2F324  38 E0 00 04 */	li r7, 4
/* 80B2F328  4B 83 2A 39 */	bl __construct_array
/* 80B2F32C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B2F330  3C 80 80 B4 */	lis r4, __ct__5csXyzFv@ha /* 0x80B40FC8@ha */
/* 80B2F334  38 84 0F C8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B40FC8@l */
/* 80B2F338  3C A0 80 B4 */	lis r5, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F33C  38 A5 0F 8C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F340  38 C0 00 06 */	li r6, 6
/* 80B2F344  38 E0 00 04 */	li r7, 4
/* 80B2F348  4B 83 2A 19 */	bl __construct_array
/* 80B2F34C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B2F350  3C 80 80 B4 */	lis r4, __ct__5csXyzFv@ha /* 0x80B40FC8@ha */
/* 80B2F354  38 84 0F C8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B40FC8@l */
/* 80B2F358  3C A0 80 B4 */	lis r5, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F35C  38 A5 0F 8C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F360  38 C0 00 06 */	li r6, 6
/* 80B2F364  38 E0 00 04 */	li r7, 4
/* 80B2F368  4B 83 29 F9 */	bl __construct_array
/* 80B2F36C  7F C3 F3 78 */	mr r3, r30
/* 80B2F370  4B 62 1C C9 */	bl initialize__15daNpcF_Lookat_cFv
/* 80B2F374  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80B2F378  3C 80 80 B4 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B40E80@ha */
/* 80B2F37C  38 84 0E 80 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B40E80@l */
/* 80B2F380  3C A0 80 B4 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B40E38@ha */
/* 80B2F384  38 A5 0E 38 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B40E38@l */
/* 80B2F388  38 C0 00 08 */	li r6, 8
/* 80B2F38C  38 E0 00 02 */	li r7, 2
/* 80B2F390  4B 83 29 D1 */	bl __construct_array
/* 80B2F394  3B DF 0C 90 */	addi r30, r31, 0xc90
/* 80B2F398  7F C3 F3 78 */	mr r3, r30
/* 80B2F39C  4B 55 46 8D */	bl __ct__12dCcD_GObjInfFv
/* 80B2F3A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B2F3A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B2F3A8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B2F3AC  3C 60 80 B4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B42DE8@ha */
/* 80B2F3B0  38 03 2D E8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B42DE8@l */
/* 80B2F3B4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B2F3B8  3C 60 80 B4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B42DDC@ha */
/* 80B2F3BC  38 03 2D DC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B42DDC@l */
/* 80B2F3C0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B2F3C4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B2F3C8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B2F3CC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B2F3D0  38 03 00 58 */	addi r0, r3, 0x58
/* 80B2F3D4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B2F3D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B2F3DC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B2F3E0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B2F3E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B2F3E8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B2F3EC  38 03 00 84 */	addi r0, r3, 0x84
/* 80B2F3F0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B2F3F4  7F E3 FB 78 */	mr r3, r31
/* 80B2F3F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2F3FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2F400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2F404  7C 08 03 A6 */	mtlr r0
/* 80B2F408  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2F40C  4E 80 00 20 */	blr 
