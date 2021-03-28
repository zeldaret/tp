lbl_801EE15C:
/* 801EE15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EE160  7C 08 02 A6 */	mflr r0
/* 801EE164  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EE168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE16C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE170  38 63 00 9C */	addi r3, r3, 0x9c
/* 801EE174  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 801EE178  38 A0 00 00 */	li r5, 0
/* 801EE17C  4B E4 4E B5 */	bl getItem__17dSv_player_item_cCFib
/* 801EE180  7C 64 1B 78 */	mr r4, r3
/* 801EE184  38 60 00 00 */	li r3, 0
/* 801EE188  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801EE18C  2C 00 00 53 */	cmpwi r0, 0x53
/* 801EE190  40 80 00 28 */	bge lbl_801EE1B8
/* 801EE194  2C 00 00 4B */	cmpwi r0, 0x4b
/* 801EE198  41 82 00 7C */	beq lbl_801EE214
/* 801EE19C  40 80 00 10 */	bge lbl_801EE1AC
/* 801EE1A0  2C 00 00 43 */	cmpwi r0, 0x43
/* 801EE1A4  41 82 00 60 */	beq lbl_801EE204
/* 801EE1A8  48 00 00 70 */	b lbl_801EE218
lbl_801EE1AC:
/* 801EE1AC  2C 00 00 50 */	cmpwi r0, 0x50
/* 801EE1B0  41 82 00 30 */	beq lbl_801EE1E0
/* 801EE1B4  48 00 00 64 */	b lbl_801EE218
lbl_801EE1B8:
/* 801EE1B8  2C 00 00 73 */	cmpwi r0, 0x73
/* 801EE1BC  40 80 00 18 */	bge lbl_801EE1D4
/* 801EE1C0  2C 00 00 70 */	cmpwi r0, 0x70
/* 801EE1C4  40 80 00 24 */	bge lbl_801EE1E8
/* 801EE1C8  2C 00 00 57 */	cmpwi r0, 0x57
/* 801EE1CC  40 80 00 4C */	bge lbl_801EE218
/* 801EE1D0  48 00 00 34 */	b lbl_801EE204
lbl_801EE1D4:
/* 801EE1D4  2C 00 00 76 */	cmpwi r0, 0x76
/* 801EE1D8  41 82 00 24 */	beq lbl_801EE1FC
/* 801EE1DC  48 00 00 3C */	b lbl_801EE218
lbl_801EE1E0:
/* 801EE1E0  38 60 00 01 */	li r3, 1
/* 801EE1E4  48 00 00 34 */	b lbl_801EE218
lbl_801EE1E8:
/* 801EE1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE1F0  38 63 00 F8 */	addi r3, r3, 0xf8
/* 801EE1F4  4B E4 5F 05 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 801EE1F8  48 00 00 20 */	b lbl_801EE218
lbl_801EE1FC:
/* 801EE1FC  4B E4 03 BD */	bl dComIfGs_getBottleMax__Fv
/* 801EE200  48 00 00 18 */	b lbl_801EE218
lbl_801EE204:
/* 801EE204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE20C  88 63 00 F8 */	lbz r3, 0xf8(r3)
/* 801EE210  48 00 00 08 */	b lbl_801EE218
lbl_801EE214:
/* 801EE214  38 60 00 32 */	li r3, 0x32
lbl_801EE218:
/* 801EE218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EE21C  7C 08 03 A6 */	mtlr r0
/* 801EE220  38 21 00 10 */	addi r1, r1, 0x10
/* 801EE224  4E 80 00 20 */	blr 
