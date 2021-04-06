lbl_80BA9844:
/* 80BA9844  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BA9848  7C 08 02 A6 */	mflr r0
/* 80BA984C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BA9850  39 61 00 40 */	addi r11, r1, 0x40
/* 80BA9854  4B 7B 89 7D */	bl _savegpr_26
/* 80BA9858  7C 7A 1B 78 */	mr r26, r3
/* 80BA985C  3B 60 00 00 */	li r27, 0
/* 80BA9860  3B E0 00 00 */	li r31, 0
/* 80BA9864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA9868  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA986C  3C 60 80 BB */	lis r3, particle_id@ha /* 0x80BA9BB0@ha */
/* 80BA9870  3B A3 9B B0 */	addi r29, r3, particle_id@l /* 0x80BA9BB0@l */
/* 80BA9874  3C 60 80 BB */	lis r3, lit_3861@ha /* 0x80BA9BA4@ha */
/* 80BA9878  3B C3 9B A4 */	addi r30, r3, lit_3861@l /* 0x80BA9BA4@l */
lbl_80BA987C:
/* 80BA987C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80BA9880  38 80 00 00 */	li r4, 0
/* 80BA9884  90 81 00 08 */	stw r4, 8(r1)
/* 80BA9888  38 00 FF FF */	li r0, -1
/* 80BA988C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA9890  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BA9894  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA9898  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA989C  38 80 00 00 */	li r4, 0
/* 80BA98A0  7C BD FA 2E */	lhzx r5, r29, r31
/* 80BA98A4  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80BA98A8  38 E0 00 00 */	li r7, 0
/* 80BA98AC  39 00 00 00 */	li r8, 0
/* 80BA98B0  39 3A 04 EC */	addi r9, r26, 0x4ec
/* 80BA98B4  39 40 00 FF */	li r10, 0xff
/* 80BA98B8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BA98BC  4B 4A 31 D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA98C0  3B 7B 00 01 */	addi r27, r27, 1
/* 80BA98C4  2C 1B 00 02 */	cmpwi r27, 2
/* 80BA98C8  3B FF 00 02 */	addi r31, r31, 2
/* 80BA98CC  41 80 FF B0 */	blt lbl_80BA987C
/* 80BA98D0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BA98D4  4B 7B 89 49 */	bl _restgpr_26
/* 80BA98D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BA98DC  7C 08 03 A6 */	mtlr r0
/* 80BA98E0  38 21 00 40 */	addi r1, r1, 0x40
/* 80BA98E4  4E 80 00 20 */	blr 
