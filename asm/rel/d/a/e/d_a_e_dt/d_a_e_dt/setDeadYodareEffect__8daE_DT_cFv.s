lbl_806AF9D8:
/* 806AF9D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806AF9DC  7C 08 02 A6 */	mflr r0
/* 806AF9E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806AF9E4  39 61 00 40 */	addi r11, r1, 0x40
/* 806AF9E8  4B CB 27 E1 */	bl _savegpr_24
/* 806AF9EC  7C 7D 1B 78 */	mr r29, r3
/* 806AF9F0  3B C0 00 00 */	li r30, 0
/* 806AF9F4  3B 80 00 00 */	li r28, 0
/* 806AF9F8  3B 60 00 00 */	li r27, 0
/* 806AF9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AFA00  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AFA04  3C 60 80 6B */	lis r3, w_eff_id_4737@ha /* 0x806B6098@ha */
/* 806AFA08  3B 03 60 98 */	addi r24, r3, w_eff_id_4737@l /* 0x806B6098@l */
/* 806AFA0C  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AFA10  3B 23 5C FC */	addi r25, r3, lit_3868@l /* 0x806B5CFC@l */
lbl_806AFA14:
/* 806AFA14  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AFA18  38 00 00 FF */	li r0, 0xff
/* 806AFA1C  90 01 00 08 */	stw r0, 8(r1)
/* 806AFA20  38 80 00 00 */	li r4, 0
/* 806AFA24  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AFA28  38 00 FF FF */	li r0, -1
/* 806AFA2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AFA30  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AFA34  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AFA38  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AFA3C  3B 5B 11 4C */	addi r26, r27, 0x114c
/* 806AFA40  7C 9D D0 2E */	lwzx r4, r29, r26
/* 806AFA44  38 A0 00 00 */	li r5, 0
/* 806AFA48  7C D8 E2 2E */	lhzx r6, r24, r28
/* 806AFA4C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 806AFA50  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806AFA54  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 806AFA58  39 40 00 00 */	li r10, 0
/* 806AFA5C  C0 39 00 00 */	lfs f1, 0(r25)
/* 806AFA60  4B 99 DA 6D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AFA64  7C 7D D1 2E */	stwx r3, r29, r26
/* 806AFA68  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AFA6C  38 63 02 10 */	addi r3, r3, 0x210
/* 806AFA70  7C 9D D0 2E */	lwzx r4, r29, r26
/* 806AFA74  4B 99 BE A5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806AFA78  7C 7A 1B 79 */	or. r26, r3, r3
/* 806AFA7C  41 82 00 38 */	beq lbl_806AFAB4
/* 806AFA80  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806AFA84  80 63 00 04 */	lwz r3, 4(r3)
/* 806AFA88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AFA8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AFA90  38 63 04 20 */	addi r3, r3, 0x420
/* 806AFA94  38 9A 00 68 */	addi r4, r26, 0x68
/* 806AFA98  38 BA 00 98 */	addi r5, r26, 0x98
/* 806AFA9C  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 806AFAA0  4B BD 0D 69 */	bl func_80280808
/* 806AFAA4  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 806AFAA8  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 806AFAAC  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 806AFAB0  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
lbl_806AFAB4:
/* 806AFAB4  3B DE 00 01 */	addi r30, r30, 1
/* 806AFAB8  2C 1E 00 04 */	cmpwi r30, 4
/* 806AFABC  3B 9C 00 02 */	addi r28, r28, 2
/* 806AFAC0  3B 7B 00 04 */	addi r27, r27, 4
/* 806AFAC4  41 80 FF 50 */	blt lbl_806AFA14
/* 806AFAC8  39 61 00 40 */	addi r11, r1, 0x40
/* 806AFACC  4B CB 27 49 */	bl _restgpr_24
/* 806AFAD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806AFAD4  7C 08 03 A6 */	mtlr r0
/* 806AFAD8  38 21 00 40 */	addi r1, r1, 0x40
/* 806AFADC  4E 80 00 20 */	blr 
