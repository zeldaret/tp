lbl_80075D7C:
/* 80075D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075D80  7C 08 02 A6 */	mflr r0
/* 80075D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075D88  7C 64 1B 78 */	mr r4, r3
/* 80075D8C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80075D90  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80075D94  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80075D9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80075DA0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80075DA4  38 A1 00 08 */	addi r5, r1, 8
/* 80075DA8  4B FF E9 9D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80075DAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80075DB0  40 82 00 18 */	bne lbl_80075DC8
/* 80075DB4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80075DB8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80075DBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075DC0  38 60 00 00 */	li r3, 0
/* 80075DC4  48 00 00 18 */	b lbl_80075DDC
lbl_80075DC8:
/* 80075DC8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80075DCC  48 1F 24 19 */	bl cBgW_CheckBGround__Ff
/* 80075DD0  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 80075DD4  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 80075DD8  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80075DDC:
/* 80075DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075DE0  7C 08 03 A6 */	mtlr r0
/* 80075DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80075DE8  4E 80 00 20 */	blr 
