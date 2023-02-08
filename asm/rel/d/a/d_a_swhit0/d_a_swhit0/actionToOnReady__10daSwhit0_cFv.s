lbl_80486BC4:
/* 80486BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486BC8  7C 08 02 A6 */	mflr r0
/* 80486BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486BD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80486BD4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80486BD8  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80486BDC  28 00 00 00 */	cmplwi r0, 0
/* 80486BE0  41 82 00 0C */	beq lbl_80486BEC
/* 80486BE4  38 60 00 01 */	li r3, 1
/* 80486BE8  48 00 00 30 */	b lbl_80486C18
lbl_80486BEC:
/* 80486BEC  88 83 07 4E */	lbz r4, 0x74e(r3)
/* 80486BF0  28 04 00 00 */	cmplwi r4, 0
/* 80486BF4  41 82 00 10 */	beq lbl_80486C04
/* 80486BF8  38 04 FF FF */	addi r0, r4, -1
/* 80486BFC  98 03 07 4E */	stb r0, 0x74e(r3)
/* 80486C00  48 00 00 14 */	b lbl_80486C14
lbl_80486C04:
/* 80486C04  88 83 07 4D */	lbz r4, 0x74d(r3)
/* 80486C08  38 04 00 01 */	addi r0, r4, 1
/* 80486C0C  98 03 07 4D */	stb r0, 0x74d(r3)
/* 80486C10  4B FF FD B5 */	bl orderEvent__10daSwhit0_cFv
lbl_80486C14:
/* 80486C14  38 60 00 01 */	li r3, 1
lbl_80486C18:
/* 80486C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486C1C  7C 08 03 A6 */	mtlr r0
/* 80486C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80486C24  4E 80 00 20 */	blr 
