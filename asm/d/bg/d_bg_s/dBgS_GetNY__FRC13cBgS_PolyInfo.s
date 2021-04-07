lbl_80075E5C:
/* 80075E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075E60  7C 08 02 A6 */	mflr r0
/* 80075E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075E68  7C 64 1B 78 */	mr r4, r3
/* 80075E6C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075E70  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075E74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80075E7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80075E80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80075E84  38 A1 00 08 */	addi r5, r1, 8
/* 80075E88  4B FF E8 BD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80075E8C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80075E90  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075E94  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075E98  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075E9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075EA0  7C 08 03 A6 */	mtlr r0
/* 80075EA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80075EA8  4E 80 00 20 */	blr 
