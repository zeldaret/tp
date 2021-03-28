lbl_80953C08:
/* 80953C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80953C0C  7C 08 02 A6 */	mflr r0
/* 80953C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80953C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80953C18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80953C1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80953C20  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80953C24  3C 80 80 95 */	lis r4, struct_8095781C+0x0@ha
/* 80953C28  38 84 78 1C */	addi r4, r4, struct_8095781C+0x0@l
/* 80953C2C  38 84 00 C1 */	addi r4, r4, 0xc1
/* 80953C30  4B A1 4D 64 */	b strcmp
/* 80953C34  2C 03 00 00 */	cmpwi r3, 0
/* 80953C38  40 82 00 34 */	bne lbl_80953C6C
/* 80953C3C  3B E0 00 00 */	li r31, 0
/* 80953C40  38 60 00 00 */	li r3, 0
/* 80953C44  4B 6D 8D 38 */	b getLayerNo__14dComIfG_play_cFi
/* 80953C48  2C 03 00 06 */	cmpwi r3, 6
/* 80953C4C  41 82 00 14 */	beq lbl_80953C60
/* 80953C50  38 60 00 00 */	li r3, 0
/* 80953C54  4B 6D 8D 28 */	b getLayerNo__14dComIfG_play_cFi
/* 80953C58  2C 03 00 07 */	cmpwi r3, 7
/* 80953C5C  40 82 00 08 */	bne lbl_80953C64
lbl_80953C60:
/* 80953C60  3B E0 00 01 */	li r31, 1
lbl_80953C64:
/* 80953C64  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80953C68  48 00 00 08 */	b lbl_80953C70
lbl_80953C6C:
/* 80953C6C  38 60 00 00 */	li r3, 0
lbl_80953C70:
/* 80953C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80953C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80953C78  7C 08 03 A6 */	mtlr r0
/* 80953C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80953C80  4E 80 00 20 */	blr 
