lbl_80033F9C:
/* 80033F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033FA0  7C 08 02 A6 */	mflr r0
/* 80033FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033FAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80033FB0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80033FB4  7F E3 02 14 */	add r31, r3, r0
/* 80033FB8  88 7F 00 04 */	lbz r3, 4(r31)
/* 80033FBC  7C A0 07 34 */	extsh r0, r5
/* 80033FC0  7F C3 02 14 */	add r30, r3, r0
/* 80033FC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033FC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033FCC  38 63 00 9C */	addi r3, r3, 0x9c
/* 80033FD0  38 04 00 0B */	addi r0, r4, 0xb
/* 80033FD4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033FD8  38 A0 00 01 */	li r5, 1
/* 80033FDC  4B FF F0 55 */	bl getItem__17dSv_player_item_cCFib
/* 80033FE0  2C 1E 00 00 */	cmpwi r30, 0
/* 80033FE4  40 80 00 10 */	bge lbl_80033FF4
/* 80033FE8  38 00 00 00 */	li r0, 0
/* 80033FEC  98 1F 00 04 */	stb r0, 4(r31)
/* 80033FF0  48 00 00 24 */	b lbl_80034014
lbl_80033FF4:
/* 80033FF4  4B FF A5 C5 */	bl dComIfGs_getBottleMax__Fv
/* 80033FF8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033FFC  7C 1E 00 00 */	cmpw r30, r0
/* 80034000  40 81 00 10 */	ble lbl_80034010
/* 80034004  4B FF A5 B5 */	bl dComIfGs_getBottleMax__Fv
/* 80034008  98 7F 00 04 */	stb r3, 4(r31)
/* 8003400C  48 00 00 08 */	b lbl_80034014
lbl_80034010:
/* 80034010  9B DF 00 04 */	stb r30, 4(r31)
lbl_80034014:
/* 80034014  88 7F 00 04 */	lbz r3, 4(r31)
/* 80034018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003401C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80034020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034024  7C 08 03 A6 */	mtlr r0
/* 80034028  38 21 00 10 */	addi r1, r1, 0x10
/* 8003402C  4E 80 00 20 */	blr 
