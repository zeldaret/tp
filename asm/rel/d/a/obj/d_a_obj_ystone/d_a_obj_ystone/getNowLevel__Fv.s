lbl_80D3E018:
/* 80D3E018  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3E01C  7C 08 02 A6 */	mflr r0
/* 80D3E020  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3E024  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3E028  4B 62 41 B1 */	bl _savegpr_28
/* 80D3E02C  3B 80 00 00 */	li r28, 0
/* 80D3E030  3B E0 00 00 */	li r31, 0
/* 80D3E034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3E038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3E03C  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 80D3E040  3C 60 80 D4 */	lis r3, l_stageName@ha /* 0x80D3ECD8@ha */
/* 80D3E044  3B C3 EC D8 */	addi r30, r3, l_stageName@l /* 0x80D3ECD8@l */
lbl_80D3E048:
/* 80D3E048  7F A3 EB 78 */	mr r3, r29
/* 80D3E04C  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80D3E050  4B 62 A9 45 */	bl strcmp
/* 80D3E054  2C 03 00 00 */	cmpwi r3, 0
/* 80D3E058  40 82 00 0C */	bne lbl_80D3E064
/* 80D3E05C  38 7C 00 01 */	addi r3, r28, 1
/* 80D3E060  48 00 00 18 */	b lbl_80D3E078
lbl_80D3E064:
/* 80D3E064  3B 9C 00 01 */	addi r28, r28, 1
/* 80D3E068  2C 1C 00 09 */	cmpwi r28, 9
/* 80D3E06C  3B FF 00 04 */	addi r31, r31, 4
/* 80D3E070  41 80 FF D8 */	blt lbl_80D3E048
/* 80D3E074  38 60 FF FF */	li r3, -1
lbl_80D3E078:
/* 80D3E078  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3E07C  4B 62 41 A9 */	bl _restgpr_28
/* 80D3E080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3E084  7C 08 03 A6 */	mtlr r0
/* 80D3E088  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3E08C  4E 80 00 20 */	blr 
