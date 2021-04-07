lbl_8073A99C:
/* 8073A99C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8073A9A0  7C 08 02 A6 */	mflr r0
/* 8073A9A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073A9A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8073A9AC  4B C2 78 25 */	bl _savegpr_26
/* 8073A9B0  7C 7A 1B 78 */	mr r26, r3
/* 8073A9B4  3B 60 00 00 */	li r27, 0
/* 8073A9B8  3B E0 00 00 */	li r31, 0
/* 8073A9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073A9C0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073A9C4  3C 60 80 74 */	lis r3, w_eff_id_4129@ha /* 0x8073D144@ha */
/* 8073A9C8  3B A3 D1 44 */	addi r29, r3, w_eff_id_4129@l /* 0x8073D144@l */
/* 8073A9CC  3C 60 80 74 */	lis r3, lit_3912@ha /* 0x8073CEB0@ha */
/* 8073A9D0  3B C3 CE B0 */	addi r30, r3, lit_3912@l /* 0x8073CEB0@l */
lbl_8073A9D4:
/* 8073A9D4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8073A9D8  38 80 00 00 */	li r4, 0
/* 8073A9DC  90 81 00 08 */	stw r4, 8(r1)
/* 8073A9E0  38 00 FF FF */	li r0, -1
/* 8073A9E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073A9E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8073A9EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8073A9F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073A9F4  38 80 00 00 */	li r4, 0
/* 8073A9F8  7C BD FA 2E */	lhzx r5, r29, r31
/* 8073A9FC  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 8073AA00  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8073AA04  39 00 00 00 */	li r8, 0
/* 8073AA08  39 20 00 00 */	li r9, 0
/* 8073AA0C  39 40 00 FF */	li r10, 0xff
/* 8073AA10  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8073AA14  4B 91 20 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073AA18  3B 7B 00 01 */	addi r27, r27, 1
/* 8073AA1C  2C 1B 00 02 */	cmpwi r27, 2
/* 8073AA20  3B FF 00 02 */	addi r31, r31, 2
/* 8073AA24  41 80 FF B0 */	blt lbl_8073A9D4
/* 8073AA28  39 61 00 40 */	addi r11, r1, 0x40
/* 8073AA2C  4B C2 77 F1 */	bl _restgpr_26
/* 8073AA30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073AA34  7C 08 03 A6 */	mtlr r0
/* 8073AA38  38 21 00 40 */	addi r1, r1, 0x40
/* 8073AA3C  4E 80 00 20 */	blr 
