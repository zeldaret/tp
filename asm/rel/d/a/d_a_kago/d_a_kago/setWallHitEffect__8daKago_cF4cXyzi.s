lbl_80853460:
/* 80853460  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80853464  7C 08 02 A6 */	mflr r0
/* 80853468  90 01 00 44 */	stw r0, 0x44(r1)
/* 8085346C  39 61 00 40 */	addi r11, r1, 0x40
/* 80853470  4B B0 ED 5D */	bl _savegpr_25
/* 80853474  7C 79 1B 78 */	mr r25, r3
/* 80853478  7C 9A 23 78 */	mr r26, r4
/* 8085347C  3B 60 00 00 */	li r27, 0
/* 80853480  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80853484  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80853488  1F 85 00 03 */	mulli r28, r5, 3
/* 8085348C  3C 60 80 85 */	lis r3, kago_wall_hit_id@ha /* 0x80854E78@ha */
/* 80853490  3B C3 4E 78 */	addi r30, r3, kago_wall_hit_id@l /* 0x80854E78@l */
/* 80853494  3C 60 80 85 */	lis r3, lit_3932@ha /* 0x80854B10@ha */
/* 80853498  3B E3 4B 10 */	addi r31, r3, lit_3932@l /* 0x80854B10@l */
lbl_8085349C:
/* 8085349C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 808534A0  38 80 00 00 */	li r4, 0
/* 808534A4  90 81 00 08 */	stw r4, 8(r1)
/* 808534A8  38 00 FF FF */	li r0, -1
/* 808534AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 808534B0  90 81 00 10 */	stw r4, 0x10(r1)
/* 808534B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 808534B8  90 81 00 18 */	stw r4, 0x18(r1)
/* 808534BC  38 80 00 00 */	li r4, 0
/* 808534C0  7C 1B E2 14 */	add r0, r27, r28
/* 808534C4  54 00 08 3C */	slwi r0, r0, 1
/* 808534C8  7C BE 02 2E */	lhzx r5, r30, r0
/* 808534CC  7F 46 D3 78 */	mr r6, r26
/* 808534D0  38 F9 01 0C */	addi r7, r25, 0x10c
/* 808534D4  39 00 00 00 */	li r8, 0
/* 808534D8  39 20 00 00 */	li r9, 0
/* 808534DC  39 40 00 FF */	li r10, 0xff
/* 808534E0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 808534E4  4B 7F 95 AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808534E8  3B 7B 00 01 */	addi r27, r27, 1
/* 808534EC  2C 1B 00 03 */	cmpwi r27, 3
/* 808534F0  41 80 FF AC */	blt lbl_8085349C
/* 808534F4  39 61 00 40 */	addi r11, r1, 0x40
/* 808534F8  4B B0 ED 21 */	bl _restgpr_25
/* 808534FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80853500  7C 08 03 A6 */	mtlr r0
/* 80853504  38 21 00 40 */	addi r1, r1, 0x40
/* 80853508  4E 80 00 20 */	blr 
