lbl_80075DEC:
/* 80075DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075DF0  7C 08 02 A6 */	mflr r0
/* 80075DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075DF8  7C 64 1B 78 */	mr r4, r3
/* 80075DFC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075E00  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075E04  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075E08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80075E0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80075E10  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80075E14  38 A1 00 08 */	addi r5, r1, 8
/* 80075E18  4B FF E9 2D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80075E1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80075E20  40 82 00 18 */	bne lbl_80075E38
/* 80075E24  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075E28  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075E2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075E30  38 60 00 00 */	li r3, 0
/* 80075E34  48 00 00 18 */	b lbl_80075E4C
lbl_80075E38:
/* 80075E38  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80075E3C  48 1F 23 C1 */	bl cBgW_CheckBRoof__Ff
/* 80075E40  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075E44  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075E48  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80075E4C:
/* 80075E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075E50  7C 08 03 A6 */	mtlr r0
/* 80075E54  38 21 00 20 */	addi r1, r1, 0x20
/* 80075E58  4E 80 00 20 */	blr 
