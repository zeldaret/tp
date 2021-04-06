lbl_8019F2E8:
/* 8019F2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019F2EC  7C 08 02 A6 */	mflr r0
/* 8019F2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019F2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019F2F8  7C 7F 1B 78 */	mr r31, r3
/* 8019F2FC  3C 60 80 3C */	lis r3, __vt__18dScnKy_env_light_c@ha /* 0x803BC13C@ha */
/* 8019F300  38 03 C1 3C */	addi r0, r3, __vt__18dScnKy_env_light_c@l /* 0x803BC13C@l */
/* 8019F304  90 1F 00 00 */	stw r0, 0(r31)
/* 8019F308  38 7F 00 38 */	addi r3, r31, 0x38
/* 8019F30C  3C 80 80 1A */	lis r4, __ct__15LIGHT_INFLUENCEFv@ha /* 0x8019F4F8@ha */
/* 8019F310  38 84 F4 F8 */	addi r4, r4, __ct__15LIGHT_INFLUENCEFv@l /* 0x8019F4F8@l */
/* 8019F314  3C A0 80 0D */	lis r5, __dt__15LIGHT_INFLUENCEFv@ha /* 0x800CFC7C@ha */
/* 8019F318  38 A5 FC 7C */	addi r5, r5, __dt__15LIGHT_INFLUENCEFv@l /* 0x800CFC7C@l */
/* 8019F31C  38 C0 00 20 */	li r6, 0x20
/* 8019F320  38 E0 00 1E */	li r7, 0x1e
/* 8019F324  48 1C 2A 3D */	bl __construct_array
/* 8019F328  38 7F 07 64 */	addi r3, r31, 0x764
/* 8019F32C  3C 80 80 1A */	lis r4, __ct__15LIGHT_INFLUENCEFv@ha /* 0x8019F4F8@ha */
/* 8019F330  38 84 F4 F8 */	addi r4, r4, __ct__15LIGHT_INFLUENCEFv@l /* 0x8019F4F8@l */
/* 8019F334  3C A0 80 0D */	lis r5, __dt__15LIGHT_INFLUENCEFv@ha /* 0x800CFC7C@ha */
/* 8019F338  38 A5 FC 7C */	addi r5, r5, __dt__15LIGHT_INFLUENCEFv@l /* 0x800CFC7C@l */
/* 8019F33C  38 C0 00 20 */	li r6, 0x20
/* 8019F340  38 E0 00 02 */	li r7, 2
/* 8019F344  48 1C 2A 1D */	bl __construct_array
/* 8019F348  38 7F 08 48 */	addi r3, r31, 0x848
/* 8019F34C  3C 80 80 1A */	lis r4, __ct__15WIND_INF_ENTITYFv@ha /* 0x8019F4F4@ha */
/* 8019F350  38 84 F4 F4 */	addi r4, r4, __ct__15WIND_INF_ENTITYFv@l /* 0x8019F4F4@l */
/* 8019F354  3C A0 80 1A */	lis r5, __dt__15WIND_INF_ENTITYFv@ha /* 0x8019F4B8@ha */
/* 8019F358  38 A5 F4 B8 */	addi r5, r5, __dt__15WIND_INF_ENTITYFv@l /* 0x8019F4B8@l */
/* 8019F35C  38 C0 00 3C */	li r6, 0x3c
/* 8019F360  38 E0 00 05 */	li r7, 5
/* 8019F364  48 1C 29 FD */	bl __construct_array
/* 8019F368  38 7F 09 B8 */	addi r3, r31, 0x9b8
/* 8019F36C  3C 80 80 1A */	lis r4, __ct__13DUNGEON_LIGHTFv@ha /* 0x8019F4B4@ha */
/* 8019F370  38 84 F4 B4 */	addi r4, r4, __ct__13DUNGEON_LIGHTFv@l /* 0x8019F4B4@l */
/* 8019F374  3C A0 80 1A */	lis r5, __dt__13DUNGEON_LIGHTFv@ha /* 0x8019F478@ha */
/* 8019F378  38 A5 F4 78 */	addi r5, r5, __dt__13DUNGEON_LIGHTFv@l /* 0x8019F478@l */
/* 8019F37C  38 C0 00 4C */	li r6, 0x4c
/* 8019F380  38 E0 00 08 */	li r7, 8
/* 8019F384  48 1C 29 DD */	bl __construct_array
/* 8019F388  38 7F 0C 18 */	addi r3, r31, 0xc18
/* 8019F38C  3C 80 80 1A */	lis r4, __ct__10BOSS_LIGHTFv@ha /* 0x8019F474@ha */
/* 8019F390  38 84 F4 74 */	addi r4, r4, __ct__10BOSS_LIGHTFv@l /* 0x8019F474@l */
/* 8019F394  3C A0 80 1A */	lis r5, __dt__10BOSS_LIGHTFv@ha /* 0x8019F438@ha */
/* 8019F398  38 A5 F4 38 */	addi r5, r5, __dt__10BOSS_LIGHTFv@l /* 0x8019F438@l */
/* 8019F39C  38 C0 00 28 */	li r6, 0x28
/* 8019F3A0  38 E0 00 08 */	li r7, 8
/* 8019F3A4  48 1C 29 BD */	bl __construct_array
/* 8019F3A8  38 7F 0D 58 */	addi r3, r31, 0xd58
/* 8019F3AC  3C 80 80 1A */	lis r4, __ct__10BOSS_LIGHTFv@ha /* 0x8019F474@ha */
/* 8019F3B0  38 84 F4 74 */	addi r4, r4, __ct__10BOSS_LIGHTFv@l /* 0x8019F474@l */
/* 8019F3B4  3C A0 80 1A */	lis r5, __dt__10BOSS_LIGHTFv@ha /* 0x8019F438@ha */
/* 8019F3B8  38 A5 F4 38 */	addi r5, r5, __dt__10BOSS_LIGHTFv@l /* 0x8019F438@l */
/* 8019F3BC  38 C0 00 28 */	li r6, 0x28
/* 8019F3C0  38 E0 00 06 */	li r7, 6
/* 8019F3C4  48 1C 29 9D */	bl __construct_array
/* 8019F3C8  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 8019F3CC  3C 80 80 1A */	lis r4, __ct__19GB_MAPLE_COL_CHANGEFv@ha /* 0x8019F400@ha */
/* 8019F3D0  38 84 F4 00 */	addi r4, r4, __ct__19GB_MAPLE_COL_CHANGEFv@l /* 0x8019F400@l */
/* 8019F3D4  38 A0 00 00 */	li r5, 0
/* 8019F3D8  38 C0 00 74 */	li r6, 0x74
/* 8019F3DC  38 E0 00 02 */	li r7, 2
/* 8019F3E0  48 1C 29 81 */	bl __construct_array
/* 8019F3E4  4B FF FE 81 */	bl dKy_clear_game_init__Fv
/* 8019F3E8  7F E3 FB 78 */	mr r3, r31
/* 8019F3EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019F3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019F3F4  7C 08 03 A6 */	mtlr r0
/* 8019F3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019F3FC  4E 80 00 20 */	blr 
