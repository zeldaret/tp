lbl_80C114C0:
/* 80C114C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C114C4  7C 08 02 A6 */	mflr r0
/* 80C114C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C114CC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C114D0  4B 75 0C F9 */	bl _savegpr_24
/* 80C114D4  7C 78 1B 78 */	mr r24, r3
/* 80C114D8  3B 20 00 00 */	li r25, 0
/* 80C114DC  3B E0 00 00 */	li r31, 0
/* 80C114E0  3B C0 00 00 */	li r30, 0
/* 80C114E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C114E8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C114EC  3C 60 80 C1 */	lis r3, l_prticles_id@ha /* 0x80C12424@ha */
/* 80C114F0  3B 83 24 24 */	addi r28, r3, l_prticles_id@l /* 0x80C12424@l */
/* 80C114F4  3C 60 80 C1 */	lis r3, lit_3860@ha /* 0x80C1240C@ha */
/* 80C114F8  3B A3 24 0C */	addi r29, r3, lit_3860@l /* 0x80C1240C@l */
lbl_80C114FC:
/* 80C114FC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C11500  38 00 00 FF */	li r0, 0xff
/* 80C11504  90 01 00 08 */	stw r0, 8(r1)
/* 80C11508  38 80 00 00 */	li r4, 0
/* 80C1150C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C11510  38 00 FF FF */	li r0, -1
/* 80C11514  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C11518  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1151C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C11520  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C11524  3B 5E 09 C0 */	addi r26, r30, 0x9c0
/* 80C11528  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80C1152C  38 A0 00 00 */	li r5, 0
/* 80C11530  7C DC FA 2E */	lhzx r6, r28, r31
/* 80C11534  38 F8 04 D0 */	addi r7, r24, 0x4d0
/* 80C11538  39 00 00 00 */	li r8, 0
/* 80C1153C  39 38 04 DC */	addi r9, r24, 0x4dc
/* 80C11540  39 58 04 EC */	addi r10, r24, 0x4ec
/* 80C11544  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C11548  4B 43 BF 85 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C1154C  7C 78 D1 2E */	stwx r3, r24, r26
/* 80C11550  3B 39 00 01 */	addi r25, r25, 1
/* 80C11554  2C 19 00 02 */	cmpwi r25, 2
/* 80C11558  3B FF 00 02 */	addi r31, r31, 2
/* 80C1155C  3B DE 00 04 */	addi r30, r30, 4
/* 80C11560  41 80 FF 9C */	blt lbl_80C114FC
/* 80C11564  39 61 00 40 */	addi r11, r1, 0x40
/* 80C11568  4B 75 0C AD */	bl _restgpr_24
/* 80C1156C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C11570  7C 08 03 A6 */	mtlr r0
/* 80C11574  38 21 00 40 */	addi r1, r1, 0x40
/* 80C11578  4E 80 00 20 */	blr 
