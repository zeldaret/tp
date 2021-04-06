lbl_80CCAB24:
/* 80CCAB24  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CCAB28  7C 08 02 A6 */	mflr r0
/* 80CCAB2C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CCAB30  39 61 00 70 */	addi r11, r1, 0x70
/* 80CCAB34  4B 69 76 91 */	bl _savegpr_23
/* 80CCAB38  7C BD 2B 78 */	mr r29, r5
/* 80CCAB3C  7C DE 33 78 */	mr r30, r6
/* 80CCAB40  7C FF 3B 78 */	mr r31, r7
/* 80CCAB44  80 A3 06 00 */	lwz r5, 0x600(r3)
/* 80CCAB48  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 80CCAB4C  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80CCAB50  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80CCAB54  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80CCAB58  7F 05 02 15 */	add. r24, r5, r0
/* 80CCAB5C  41 82 00 D4 */	beq lbl_80CCAC30
/* 80CCAB60  C0 58 00 2C */	lfs f2, 0x2c(r24)
/* 80CCAB64  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CCAB68  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 80CCAB6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CCAB70  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CCAB74  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80CCAB78  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80CCAB7C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CCAB80  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80CCAB84  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80CCAB88  3C 60 80 CD */	lis r3, lit_3952@ha /* 0x80CCB0AC@ha */
/* 80CCAB8C  3B 23 B0 AC */	addi r25, r3, lit_3952@l /* 0x80CCB0AC@l */
/* 80CCAB90  C0 19 00 00 */	lfs f0, 0(r25)
/* 80CCAB94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CCAB98  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CCAB9C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CCABA0  3A E0 00 00 */	li r23, 0
/* 80CCABA4  3B 80 00 00 */	li r28, 0
/* 80CCABA8  3B 60 00 00 */	li r27, 0
/* 80CCABAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCABB0  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCABB4  48 00 00 74 */	b lbl_80CCAC28
lbl_80CCABB8:
/* 80CCABB8  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CCABBC  38 80 00 00 */	li r4, 0
/* 80CCABC0  90 81 00 08 */	stw r4, 8(r1)
/* 80CCABC4  38 00 FF FF */	li r0, -1
/* 80CCABC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCABCC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CCABD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CCABD4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CCABD8  38 80 00 00 */	li r4, 0
/* 80CCABDC  7C BE DA 2E */	lhzx r5, r30, r27
/* 80CCABE0  38 C1 00 34 */	addi r6, r1, 0x34
/* 80CCABE4  38 E0 00 00 */	li r7, 0
/* 80CCABE8  39 01 00 20 */	addi r8, r1, 0x20
/* 80CCABEC  39 21 00 28 */	addi r9, r1, 0x28
/* 80CCABF0  39 40 00 FF */	li r10, 0xff
/* 80CCABF4  C0 39 00 00 */	lfs f1, 0(r25)
/* 80CCABF8  4B 38 1E 99 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CCABFC  7C 7F E1 2E */	stwx r3, r31, r28
/* 80CCAC00  7C BF E0 2E */	lwzx r5, r31, r28
/* 80CCAC04  28 05 00 00 */	cmplwi r5, 0
/* 80CCAC08  41 82 00 14 */	beq lbl_80CCAC1C
/* 80CCAC0C  7F 03 C3 78 */	mr r3, r24
/* 80CCAC10  38 85 00 68 */	addi r4, r5, 0x68
/* 80CCAC14  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80CCAC18  4B 5B 5B C9 */	bl func_802807E0
lbl_80CCAC1C:
/* 80CCAC1C  3A F7 00 01 */	addi r23, r23, 1
/* 80CCAC20  3B 9C 00 04 */	addi r28, r28, 4
/* 80CCAC24  3B 7B 00 02 */	addi r27, r27, 2
lbl_80CCAC28:
/* 80CCAC28  7C 17 E8 00 */	cmpw r23, r29
/* 80CCAC2C  41 80 FF 8C */	blt lbl_80CCABB8
lbl_80CCAC30:
/* 80CCAC30  39 61 00 70 */	addi r11, r1, 0x70
/* 80CCAC34  4B 69 75 DD */	bl _restgpr_23
/* 80CCAC38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CCAC3C  7C 08 03 A6 */	mtlr r0
/* 80CCAC40  38 21 00 70 */	addi r1, r1, 0x70
/* 80CCAC44  4E 80 00 20 */	blr 
