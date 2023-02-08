lbl_80D1D2E8:
/* 80D1D2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D2EC  7C 08 02 A6 */	mflr r0
/* 80D1D2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1D2F8  7C 7F 1B 78 */	mr r31, r3
/* 80D1D2FC  38 00 00 00 */	li r0, 0
/* 80D1D300  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1D304  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 80D1D308  98 04 0E 6D */	stb r0, 0xe6d(r4)
/* 80D1D30C  4B FF F2 41 */	bl cutPntWind__12daObjTrnd2_cFv
/* 80D1D310  7F E3 FB 78 */	mr r3, r31
/* 80D1D314  4B FF FF 01 */	bl endParticle__12daObjTrnd2_cFv
/* 80D1D318  38 60 00 01 */	li r3, 1
/* 80D1D31C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1D320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D324  7C 08 03 A6 */	mtlr r0
/* 80D1D328  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D32C  4E 80 00 20 */	blr 
