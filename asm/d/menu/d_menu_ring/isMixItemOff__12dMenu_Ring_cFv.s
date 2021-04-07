lbl_801EEC98:
/* 801EEC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EEC9C  7C 08 02 A6 */	mflr r0
/* 801EECA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EECA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EECA8  7C 7F 1B 78 */	mr r31, r3
/* 801EECAC  80 03 06 2C */	lwz r0, 0x62c(r3)
/* 801EECB0  28 00 00 00 */	cmplwi r0, 0
/* 801EECB4  40 82 00 B8 */	bne lbl_801EED6C
/* 801EECB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EECBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EECC0  38 63 00 9C */	addi r3, r3, 0x9c
/* 801EECC4  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801EECC8  7C 9F 02 14 */	add r4, r31, r0
/* 801EECCC  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EECD0  38 A0 00 00 */	li r5, 0
/* 801EECD4  4B E4 43 5D */	bl getItem__17dSv_player_item_cCFib
/* 801EECD8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EECDC  28 00 00 FF */	cmplwi r0, 0xff
/* 801EECE0  41 82 00 8C */	beq lbl_801EED6C
/* 801EECE4  38 60 00 00 */	li r3, 0
/* 801EECE8  4B E3 F0 E1 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EECEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EECF0  28 00 00 04 */	cmplwi r0, 4
/* 801EECF4  40 82 00 34 */	bne lbl_801EED28
/* 801EECF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EECFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EED00  38 80 00 00 */	li r4, 0
/* 801EED04  4B E4 3D 59 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EED08  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801EED0C  7C 9F 02 14 */	add r4, r31, r0
/* 801EED10  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EED14  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EED18  7C 04 00 40 */	cmplw r4, r0
/* 801EED1C  40 82 00 0C */	bne lbl_801EED28
/* 801EED20  38 60 00 01 */	li r3, 1
/* 801EED24  48 00 00 4C */	b lbl_801EED70
lbl_801EED28:
/* 801EED28  38 60 00 01 */	li r3, 1
/* 801EED2C  4B E3 F0 9D */	bl dComIfGs_getMixItemIndex__Fi
/* 801EED30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EED34  28 00 00 04 */	cmplwi r0, 4
/* 801EED38  40 82 00 34 */	bne lbl_801EED6C
/* 801EED3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EED40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EED44  38 80 00 01 */	li r4, 1
/* 801EED48  4B E4 3D 15 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EED4C  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801EED50  7C 9F 02 14 */	add r4, r31, r0
/* 801EED54  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EED58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EED5C  7C 04 00 40 */	cmplw r4, r0
/* 801EED60  40 82 00 0C */	bne lbl_801EED6C
/* 801EED64  38 60 00 01 */	li r3, 1
/* 801EED68  48 00 00 08 */	b lbl_801EED70
lbl_801EED6C:
/* 801EED6C  38 60 00 00 */	li r3, 0
lbl_801EED70:
/* 801EED70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EED74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EED78  7C 08 03 A6 */	mtlr r0
/* 801EED7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801EED80  4E 80 00 20 */	blr 
