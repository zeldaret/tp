lbl_80075D0C:
/* 80075D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075D10  7C 08 02 A6 */	mflr r0
/* 80075D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075D18  7C 64 1B 78 */	mr r4, r3
/* 80075D1C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075D20  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075D24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80075D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80075D30  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80075D34  38 A1 00 08 */	addi r5, r1, 8
/* 80075D38  4B FF EA 0D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80075D3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80075D40  40 82 00 18 */	bne lbl_80075D58
/* 80075D44  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075D48  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075D4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80075D50  38 60 00 00 */	li r3, 0
/* 80075D54  48 00 00 18 */	b lbl_80075D6C
lbl_80075D58:
/* 80075D58  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80075D5C  48 1F 24 B5 */	bl cBgW_CheckBWall__Ff
/* 80075D60  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80075D64  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80075D68  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80075D6C:
/* 80075D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075D70  7C 08 03 A6 */	mtlr r0
/* 80075D74  38 21 00 20 */	addi r1, r1, 0x20
/* 80075D78  4E 80 00 20 */	blr 
