lbl_8024CE40:
/* 8024CE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024CE44  7C 08 02 A6 */	mflr r0
/* 8024CE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024CE4C  38 84 00 04 */	addi r4, r4, 4
/* 8024CE50  4B FF E2 E1 */	bl getParam__10dMsgFlow_cFPUc
/* 8024CE54  28 03 00 07 */	cmplwi r3, 7
/* 8024CE58  41 81 00 C0 */	bgt lbl_8024CF18
/* 8024CE5C  3C 80 80 3C */	lis r4, lit_6324@ha /* 0x803C1ED0@ha */
/* 8024CE60  38 84 1E D0 */	addi r4, r4, lit_6324@l /* 0x803C1ED0@l */
/* 8024CE64  54 60 10 3A */	slwi r0, r3, 2
/* 8024CE68  7C 04 00 2E */	lwzx r0, r4, r0
/* 8024CE6C  7C 09 03 A6 */	mtctr r0
/* 8024CE70  4E 80 04 20 */	bctr 
/* 8024CE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CE78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CE7C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024CE80  38 80 00 61 */	li r4, 0x61
/* 8024CE84  4B DE 65 CD */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 8024CE88  48 00 00 90 */	b lbl_8024CF18
/* 8024CE8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CE90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CE94  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024CE98  38 80 00 62 */	li r4, 0x62
/* 8024CE9C  4B DE 65 B5 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 8024CEA0  48 00 00 78 */	b lbl_8024CF18
/* 8024CEA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CEA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CEAC  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024CEB0  38 80 00 63 */	li r4, 0x63
/* 8024CEB4  4B DE 65 9D */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 8024CEB8  48 00 00 60 */	b lbl_8024CF18
/* 8024CEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CEC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CEC4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024CEC8  38 80 00 64 */	li r4, 0x64
/* 8024CECC  4B DE 65 85 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 8024CED0  48 00 00 48 */	b lbl_8024CF18
/* 8024CED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CEDC  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024CEE0  38 80 00 65 */	li r4, 0x65
/* 8024CEE4  4B DE 65 6D */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 8024CEE8  48 00 00 30 */	b lbl_8024CF18
/* 8024CEEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CEF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CEF4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024CEF8  38 80 00 66 */	li r4, 0x66
/* 8024CEFC  4B DE 65 55 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 8024CF00  48 00 00 18 */	b lbl_8024CF18
/* 8024CF04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CF08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CF0C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024CF10  38 80 00 6B */	li r4, 0x6b
/* 8024CF14  4B DE 65 3D */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
lbl_8024CF18:
/* 8024CF18  38 60 00 01 */	li r3, 1
/* 8024CF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024CF20  7C 08 03 A6 */	mtlr r0
/* 8024CF24  38 21 00 10 */	addi r1, r1, 0x10
/* 8024CF28  4E 80 00 20 */	blr 
