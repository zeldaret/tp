lbl_80AD2944:
/* 80AD2944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD2948  7C 08 02 A6 */	mflr r0
/* 80AD294C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD2950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD2954  3B E0 00 00 */	li r31, 0
/* 80AD2958  3C 60 80 AD */	lis r3, d_a_npc_seira2__stringBase0@ha /* 0x80AD4B5C@ha */
/* 80AD295C  38 63 4B 5C */	addi r3, r3, d_a_npc_seira2__stringBase0@l /* 0x80AD4B5C@l */
/* 80AD2960  38 63 00 2B */	addi r3, r3, 0x2b
/* 80AD2964  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD2968  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD296C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80AD2970  4B 89 60 25 */	bl strcmp
/* 80AD2974  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2978  40 82 00 2C */	bne lbl_80AD29A4
/* 80AD297C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD2980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD2984  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AD2988  2C 00 00 01 */	cmpwi r0, 1
/* 80AD298C  40 82 00 18 */	bne lbl_80AD29A4
/* 80AD2990  38 60 00 00 */	li r3, 0
/* 80AD2994  4B 55 9F E9 */	bl getLayerNo__14dComIfG_play_cFi
/* 80AD2998  2C 03 00 00 */	cmpwi r3, 0
/* 80AD299C  40 82 00 08 */	bne lbl_80AD29A4
/* 80AD29A0  3B E0 00 01 */	li r31, 1
lbl_80AD29A4:
/* 80AD29A4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80AD29A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD29AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD29B0  7C 08 03 A6 */	mtlr r0
/* 80AD29B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD29B8  4E 80 00 20 */	blr 
