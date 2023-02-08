lbl_80742FB4:
/* 80742FB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80742FB8  7C 08 02 A6 */	mflr r0
/* 80742FBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80742FC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80742FC4  4B C1 F2 05 */	bl _savegpr_24
/* 80742FC8  7C 7C 1B 78 */	mr r28, r3
/* 80742FCC  3B A0 00 00 */	li r29, 0
/* 80742FD0  3B 60 00 00 */	li r27, 0
/* 80742FD4  3B 40 00 00 */	li r26, 0
/* 80742FD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80742FDC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80742FE0  3C 60 80 75 */	lis r3, gakki_eff_id_4453@ha /* 0x8074C188@ha */
/* 80742FE4  3B E3 C1 88 */	addi r31, r3, gakki_eff_id_4453@l /* 0x8074C188@l */
/* 80742FE8  3C 60 80 75 */	lis r3, lit_3912@ha /* 0x8074BF44@ha */
/* 80742FEC  3B 03 BF 44 */	addi r24, r3, lit_3912@l /* 0x8074BF44@l */
lbl_80742FF0:
/* 80742FF0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80742FF4  38 00 00 FF */	li r0, 0xff
/* 80742FF8  90 01 00 08 */	stw r0, 8(r1)
/* 80742FFC  38 80 00 00 */	li r4, 0
/* 80743000  90 81 00 0C */	stw r4, 0xc(r1)
/* 80743004  38 00 FF FF */	li r0, -1
/* 80743008  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074300C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80743010  90 81 00 18 */	stw r4, 0x18(r1)
/* 80743014  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80743018  3B 3A 06 2C */	addi r25, r26, 0x62c
/* 8074301C  7C 9C C8 2E */	lwzx r4, r28, r25
/* 80743020  38 A0 00 00 */	li r5, 0
/* 80743024  7C DF DA 2E */	lhzx r6, r31, r27
/* 80743028  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 8074302C  39 00 00 00 */	li r8, 0
/* 80743030  39 20 00 00 */	li r9, 0
/* 80743034  39 40 00 00 */	li r10, 0
/* 80743038  C0 38 00 00 */	lfs f1, 0(r24)
/* 8074303C  4B 90 A4 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80743040  7C 7C C9 2E */	stwx r3, r28, r25
/* 80743044  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80743048  38 63 02 10 */	addi r3, r3, 0x210
/* 8074304C  7C 9C C8 2E */	lwzx r4, r28, r25
/* 80743050  4B 90 88 C9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80743054  7C 79 1B 79 */	or. r25, r3, r3
/* 80743058  41 82 00 40 */	beq lbl_80743098
/* 8074305C  80 7C 07 08 */	lwz r3, 0x708(r28)
/* 80743060  80 63 00 04 */	lwz r3, 4(r3)
/* 80743064  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80743068  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074306C  38 63 00 60 */	addi r3, r3, 0x60
/* 80743070  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80743074  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80743078  80 84 00 00 */	lwz r4, 0(r4)
/* 8074307C  4B C0 34 35 */	bl PSMTXCopy
/* 80743080  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80743084  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80743088  80 63 00 00 */	lwz r3, 0(r3)
/* 8074308C  38 99 00 68 */	addi r4, r25, 0x68
/* 80743090  38 B9 00 A4 */	addi r5, r25, 0xa4
/* 80743094  4B B3 D7 4D */	bl func_802807E0
lbl_80743098:
/* 80743098  3B BD 00 01 */	addi r29, r29, 1
/* 8074309C  2C 1D 00 03 */	cmpwi r29, 3
/* 807430A0  3B 7B 00 02 */	addi r27, r27, 2
/* 807430A4  3B 5A 00 04 */	addi r26, r26, 4
/* 807430A8  41 80 FF 48 */	blt lbl_80742FF0
/* 807430AC  39 61 00 40 */	addi r11, r1, 0x40
/* 807430B0  4B C1 F1 65 */	bl _restgpr_24
/* 807430B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807430B8  7C 08 03 A6 */	mtlr r0
/* 807430BC  38 21 00 40 */	addi r1, r1, 0x40
/* 807430C0  4E 80 00 20 */	blr 
