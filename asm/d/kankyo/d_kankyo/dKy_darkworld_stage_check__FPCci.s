lbl_801AC70C:
/* 801AC70C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AC710  7C 08 02 A6 */	mflr r0
/* 801AC714  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AC718  39 61 00 30 */	addi r11, r1, 0x30
/* 801AC71C  48 1B 5A B1 */	bl _savegpr_25
/* 801AC720  7C 79 1B 78 */	mr r25, r3
/* 801AC724  7C 9A 23 78 */	mr r26, r4
/* 801AC728  4B EA A3 49 */	bl dKyd_darkworld_tbl_getp__Fv
/* 801AC72C  7C 7E 1B 78 */	mr r30, r3
/* 801AC730  3B 80 00 00 */	li r28, 0
/* 801AC734  3B 60 00 00 */	li r27, 0
/* 801AC738  3B E0 00 00 */	li r31, 0
lbl_801AC73C:
/* 801AC73C  7F 23 CB 78 */	mr r3, r25
/* 801AC740  7F BE FA 14 */	add r29, r30, r31
/* 801AC744  80 9D 00 00 */	lwz r4, 0(r29)
/* 801AC748  48 1B C2 4D */	bl strcmp
/* 801AC74C  2C 03 00 00 */	cmpwi r3, 0
/* 801AC750  40 82 00 64 */	bne lbl_801AC7B4
/* 801AC754  88 1D 00 04 */	lbz r0, 4(r29)
/* 801AC758  28 00 00 08 */	cmplwi r0, 8
/* 801AC75C  41 82 00 50 */	beq lbl_801AC7AC
/* 801AC760  7F 23 CB 78 */	mr r3, r25
/* 801AC764  7F 44 D3 78 */	mr r4, r26
/* 801AC768  38 A1 00 08 */	addi r5, r1, 8
/* 801AC76C  7F 66 DB 78 */	mr r6, r27
/* 801AC770  4B FF FE 4D */	bl dKy_F_SP121Check__FPCciPUci
/* 801AC774  2C 03 00 00 */	cmpwi r3, 0
/* 801AC778  41 80 00 3C */	blt lbl_801AC7B4
/* 801AC77C  40 82 00 0C */	bne lbl_801AC788
/* 801AC780  88 1D 00 04 */	lbz r0, 4(r29)
/* 801AC784  98 01 00 08 */	stb r0, 8(r1)
lbl_801AC788:
/* 801AC788  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AC78C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AC790  38 63 00 28 */	addi r3, r3, 0x28
/* 801AC794  88 81 00 08 */	lbz r4, 8(r1)
/* 801AC798  4B E8 64 19 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 801AC79C  2C 03 00 00 */	cmpwi r3, 0
/* 801AC7A0  40 82 00 24 */	bne lbl_801AC7C4
/* 801AC7A4  3B 80 00 01 */	li r28, 1
/* 801AC7A8  48 00 00 1C */	b lbl_801AC7C4
lbl_801AC7AC:
/* 801AC7AC  3B 80 00 01 */	li r28, 1
/* 801AC7B0  48 00 00 14 */	b lbl_801AC7C4
lbl_801AC7B4:
/* 801AC7B4  3B 7B 00 01 */	addi r27, r27, 1
/* 801AC7B8  2C 1B 00 22 */	cmpwi r27, 0x22
/* 801AC7BC  3B FF 00 08 */	addi r31, r31, 8
/* 801AC7C0  41 80 FF 7C */	blt lbl_801AC73C
lbl_801AC7C4:
/* 801AC7C4  7F 83 E3 78 */	mr r3, r28
/* 801AC7C8  39 61 00 30 */	addi r11, r1, 0x30
/* 801AC7CC  48 1B 5A 4D */	bl _restgpr_25
/* 801AC7D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AC7D4  7C 08 03 A6 */	mtlr r0
/* 801AC7D8  38 21 00 30 */	addi r1, r1, 0x30
/* 801AC7DC  4E 80 00 20 */	blr 
