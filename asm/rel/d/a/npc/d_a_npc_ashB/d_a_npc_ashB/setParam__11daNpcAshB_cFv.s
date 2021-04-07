lbl_80960A60:
/* 80960A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80960A64  7C 08 02 A6 */	mflr r0
/* 80960A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80960A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80960A70  7C 7F 1B 78 */	mr r31, r3
/* 80960A74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80960A78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80960A7C  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80960A80  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80960A84  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 80960A88  7C 80 00 D0 */	neg r4, r0
/* 80960A8C  38 00 00 0A */	li r0, 0xa
/* 80960A90  7C 00 20 78 */	andc r0, r0, r4
/* 80960A94  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80960A98  3C 80 80 96 */	lis r4, m__17daNpcAshB_Param_c@ha /* 0x809620E4@ha */
/* 80960A9C  38 A4 20 E4 */	addi r5, r4, m__17daNpcAshB_Param_c@l /* 0x809620E4@l */
/* 80960AA0  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80960AA4  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80960AA8  4B 7F 37 D1 */	bl getDistTableIdx__8daNpcF_cFii
/* 80960AAC  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80960AB0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80960AB4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80960AB8  7F E3 FB 78 */	mr r3, r31
/* 80960ABC  3C 80 80 96 */	lis r4, m__17daNpcAshB_Param_c@ha /* 0x809620E4@ha */
/* 80960AC0  38 A4 20 E4 */	addi r5, r4, m__17daNpcAshB_Param_c@l /* 0x809620E4@l */
/* 80960AC4  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80960AC8  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80960ACC  4B 7F 37 AD */	bl getDistTableIdx__8daNpcF_cFii
/* 80960AD0  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80960AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80960AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80960ADC  7C 08 03 A6 */	mtlr r0
/* 80960AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80960AE4  4E 80 00 20 */	blr 
