lbl_80D0F28C:
/* 80D0F28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F290  7C 08 02 A6 */	mflr r0
/* 80D0F294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0F29C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0F2A0  7C 7F 1B 78 */	mr r31, r3
/* 80D0F2A4  48 00 30 2D */	bl __ct__8daNpcF_cFv
/* 80D0F2A8  3C 60 80 D1 */	lis r3, __vt__10daObjTks_c@ha /* 0x80D12A18@ha */
/* 80D0F2AC  38 03 2A 18 */	addi r0, r3, __vt__10daObjTks_c@l /* 0x80D12A18@l */
/* 80D0F2B0  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80D0F2B4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80D0F2B8  4B 5B 11 11 */	bl __ct__10Z2CreatureFv
/* 80D0F2BC  3B DF 0B DC */	addi r30, r31, 0xbdc
/* 80D0F2C0  3C 60 80 D1 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80D12AD8@ha */
/* 80D0F2C4  38 03 2A D8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80D12AD8@l */
/* 80D0F2C8  90 1F 0C 74 */	stw r0, 0xc74(r31)
/* 80D0F2CC  7F C3 F3 78 */	mr r3, r30
/* 80D0F2D0  3C 80 80 D1 */	lis r4, __ct__4cXyzFv@ha /* 0x80D12038@ha */
/* 80D0F2D4  38 84 20 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D12038@l */
/* 80D0F2D8  3C A0 80 D1 */	lis r5, __dt__4cXyzFv@ha /* 0x80D11FFC@ha */
/* 80D0F2DC  38 A5 1F FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D11FFC@l */
/* 80D0F2E0  38 C0 00 0C */	li r6, 0xc
/* 80D0F2E4  38 E0 00 04 */	li r7, 4
/* 80D0F2E8  4B 65 2A 79 */	bl __construct_array
/* 80D0F2EC  38 7E 00 34 */	addi r3, r30, 0x34
/* 80D0F2F0  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha /* 0x80D11FF8@ha */
/* 80D0F2F4  38 84 1F F8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D11FF8@l */
/* 80D0F2F8  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F2FC  38 A5 1F BC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F300  38 C0 00 06 */	li r6, 6
/* 80D0F304  38 E0 00 04 */	li r7, 4
/* 80D0F308  4B 65 2A 59 */	bl __construct_array
/* 80D0F30C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80D0F310  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha /* 0x80D11FF8@ha */
/* 80D0F314  38 84 1F F8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D11FF8@l */
/* 80D0F318  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F31C  38 A5 1F BC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F320  38 C0 00 06 */	li r6, 6
/* 80D0F324  38 E0 00 04 */	li r7, 4
/* 80D0F328  4B 65 2A 39 */	bl __construct_array
/* 80D0F32C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80D0F330  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha /* 0x80D11FF8@ha */
/* 80D0F334  38 84 1F F8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D11FF8@l */
/* 80D0F338  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F33C  38 A5 1F BC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F340  38 C0 00 06 */	li r6, 6
/* 80D0F344  38 E0 00 04 */	li r7, 4
/* 80D0F348  4B 65 2A 19 */	bl __construct_array
/* 80D0F34C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80D0F350  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha /* 0x80D11FF8@ha */
/* 80D0F354  38 84 1F F8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D11FF8@l */
/* 80D0F358  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F35C  38 A5 1F BC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F360  38 C0 00 06 */	li r6, 6
/* 80D0F364  38 E0 00 04 */	li r7, 4
/* 80D0F368  4B 65 29 F9 */	bl __construct_array
/* 80D0F36C  7F C3 F3 78 */	mr r3, r30
/* 80D0F370  4B 44 1C C9 */	bl initialize__15daNpcF_Lookat_cFv
/* 80D0F374  3B DF 0C 7C */	addi r30, r31, 0xc7c
/* 80D0F378  7F C3 F3 78 */	mr r3, r30
/* 80D0F37C  4B 37 46 AD */	bl __ct__12dCcD_GObjInfFv
/* 80D0F380  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D0F384  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D0F388  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D0F38C  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D12ACC@ha */
/* 80D0F390  38 03 2A CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D12ACC@l */
/* 80D0F394  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D0F398  3C 60 80 D1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D12AC0@ha */
/* 80D0F39C  38 03 2A C0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D12AC0@l */
/* 80D0F3A0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D0F3A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D0F3A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D0F3AC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D0F3B0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0F3B4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D0F3B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D0F3BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D0F3C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D0F3C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0F3C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D0F3CC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0F3D0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D0F3D4  7F E3 FB 78 */	mr r3, r31
/* 80D0F3D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0F3DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0F3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F3E4  7C 08 03 A6 */	mtlr r0
/* 80D0F3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F3EC  4E 80 00 20 */	blr 
