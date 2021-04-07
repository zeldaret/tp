lbl_80D6486C:
/* 80D6486C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D64870  7C 08 02 A6 */	mflr r0
/* 80D64874  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D64878  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D6487C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D64880  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80D64884  C0 04 00 D8 */	lfs f0, 0xd8(r4)
/* 80D64888  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D6488C  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 80D64890  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D64894  C0 04 00 E0 */	lfs f0, 0xe0(r4)
/* 80D64898  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D6489C  38 81 00 08 */	addi r4, r1, 8
/* 80D648A0  4B FF FE C9 */	bl checkHitWaterFall__16daTagWaterFall_cF4cXyz
/* 80D648A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D648A8  7C 08 03 A6 */	mtlr r0
/* 80D648AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D648B0  4E 80 00 20 */	blr 
