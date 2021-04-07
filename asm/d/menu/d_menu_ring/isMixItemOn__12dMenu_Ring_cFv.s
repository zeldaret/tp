lbl_801EEB58:
/* 801EEB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EEB5C  7C 08 02 A6 */	mflr r0
/* 801EEB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EEB64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EEB68  93 C1 00 08 */	stw r30, 8(r1)
/* 801EEB6C  7C 7E 1B 78 */	mr r30, r3
/* 801EEB70  80 03 06 2C */	lwz r0, 0x62c(r3)
/* 801EEB74  28 00 00 00 */	cmplwi r0, 0
/* 801EEB78  40 82 01 04 */	bne lbl_801EEC7C
/* 801EEB7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EEB80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EEB84  3B E3 00 9C */	addi r31, r3, 0x9c
/* 801EEB88  7F E3 FB 78 */	mr r3, r31
/* 801EEB8C  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EEB90  7C 9E 02 14 */	add r4, r30, r0
/* 801EEB94  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EEB98  38 A0 00 00 */	li r5, 0
/* 801EEB9C  4B E4 44 95 */	bl getItem__17dSv_player_item_cCFib
/* 801EEBA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEBA4  28 00 00 FF */	cmplwi r0, 0xff
/* 801EEBA8  41 82 00 D4 */	beq lbl_801EEC7C
/* 801EEBAC  7F E3 FB 78 */	mr r3, r31
/* 801EEBB0  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EEBB4  7C 9E 02 14 */	add r4, r30, r0
/* 801EEBB8  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EEBBC  38 A0 00 00 */	li r5, 0
/* 801EEBC0  4B E4 44 71 */	bl getItem__17dSv_player_item_cCFib
/* 801EEBC4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEBC8  2C 00 00 70 */	cmpwi r0, 0x70
/* 801EEBCC  40 80 00 10 */	bge lbl_801EEBDC
/* 801EEBD0  2C 00 00 3E */	cmpwi r0, 0x3e
/* 801EEBD4  41 82 00 10 */	beq lbl_801EEBE4
/* 801EEBD8  48 00 00 A4 */	b lbl_801EEC7C
lbl_801EEBDC:
/* 801EEBDC  2C 00 00 73 */	cmpwi r0, 0x73
/* 801EEBE0  40 80 00 9C */	bge lbl_801EEC7C
lbl_801EEBE4:
/* 801EEBE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EEBE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EEBEC  38 80 00 00 */	li r4, 0
/* 801EEBF0  4B E4 3E 6D */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EEBF4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEBF8  28 00 00 04 */	cmplwi r0, 4
/* 801EEBFC  40 82 00 18 */	bne lbl_801EEC14
/* 801EEC00  38 60 00 00 */	li r3, 0
/* 801EEC04  4B E3 F1 C5 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EEC08  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEC0C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EEC10  41 82 00 18 */	beq lbl_801EEC28
lbl_801EEC14:
/* 801EEC14  38 60 00 00 */	li r3, 0
/* 801EEC18  4B E3 F1 B1 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EEC1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEC20  28 00 00 04 */	cmplwi r0, 4
/* 801EEC24  40 82 00 0C */	bne lbl_801EEC30
lbl_801EEC28:
/* 801EEC28  38 60 00 01 */	li r3, 1
/* 801EEC2C  48 00 00 54 */	b lbl_801EEC80
lbl_801EEC30:
/* 801EEC30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EEC34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EEC38  38 80 00 01 */	li r4, 1
/* 801EEC3C  4B E4 3E 21 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EEC40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEC44  28 00 00 04 */	cmplwi r0, 4
/* 801EEC48  40 82 00 18 */	bne lbl_801EEC60
/* 801EEC4C  38 60 00 01 */	li r3, 1
/* 801EEC50  4B E3 F1 79 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EEC54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEC58  28 00 00 FF */	cmplwi r0, 0xff
/* 801EEC5C  41 82 00 18 */	beq lbl_801EEC74
lbl_801EEC60:
/* 801EEC60  38 60 00 01 */	li r3, 1
/* 801EEC64  4B E3 F1 65 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EEC68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EEC6C  28 00 00 04 */	cmplwi r0, 4
/* 801EEC70  40 82 00 0C */	bne lbl_801EEC7C
lbl_801EEC74:
/* 801EEC74  38 60 00 01 */	li r3, 1
/* 801EEC78  48 00 00 08 */	b lbl_801EEC80
lbl_801EEC7C:
/* 801EEC7C  38 60 00 00 */	li r3, 0
lbl_801EEC80:
/* 801EEC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EEC84  83 C1 00 08 */	lwz r30, 8(r1)
/* 801EEC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EEC8C  7C 08 03 A6 */	mtlr r0
/* 801EEC90  38 21 00 10 */	addi r1, r1, 0x10
/* 801EEC94  4E 80 00 20 */	blr 
