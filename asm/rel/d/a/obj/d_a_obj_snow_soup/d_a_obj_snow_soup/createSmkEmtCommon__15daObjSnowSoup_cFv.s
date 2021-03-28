lbl_80CDFF14:
/* 80CDFF14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CDFF18  7C 08 02 A6 */	mflr r0
/* 80CDFF1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CDFF20  39 61 00 60 */	addi r11, r1, 0x60
/* 80CDFF24  4B 68 22 A8 */	b _savegpr_25
/* 80CDFF28  7C 79 1B 78 */	mr r25, r3
/* 80CDFF2C  3C 60 80 CE */	lis r3, SOUP_MODEL_OFFSET@ha
/* 80CDFF30  3B 63 02 3C */	addi r27, r3, SOUP_MODEL_OFFSET@l
/* 80CDFF34  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 80CDFF38  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CDFF3C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CDFF40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CDFF44  38 61 00 20 */	addi r3, r1, 0x20
/* 80CDFF48  38 80 00 00 */	li r4, 0
/* 80CDFF4C  38 A0 00 00 */	li r5, 0
/* 80CDFF50  38 C0 00 00 */	li r6, 0
/* 80CDFF54  4B 58 74 A0 */	b __ct__5csXyzFsss
/* 80CDFF58  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80CDFF5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CDFF60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CDFF64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CDFF68  3B 40 00 00 */	li r26, 0
/* 80CDFF6C  3B E0 00 00 */	li r31, 0
/* 80CDFF70  3B C0 00 00 */	li r30, 0
/* 80CDFF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDFF78  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80CDFF7C  3B BB 00 24 */	addi r29, r27, 0x24
lbl_80CDFF80:
/* 80CDFF80  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CDFF84  38 80 00 00 */	li r4, 0
/* 80CDFF88  90 81 00 08 */	stw r4, 8(r1)
/* 80CDFF8C  38 00 FF FF */	li r0, -1
/* 80CDFF90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDFF94  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CDFF98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CDFF9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CDFFA0  38 80 00 00 */	li r4, 0
/* 80CDFFA4  7C BD F2 2E */	lhzx r5, r29, r30
/* 80CDFFA8  38 C1 00 34 */	addi r6, r1, 0x34
/* 80CDFFAC  38 E0 00 00 */	li r7, 0
/* 80CDFFB0  39 01 00 20 */	addi r8, r1, 0x20
/* 80CDFFB4  39 21 00 28 */	addi r9, r1, 0x28
/* 80CDFFB8  39 40 00 FF */	li r10, 0xff
/* 80CDFFBC  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 80CDFFC0  4B 36 CA D0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CDFFC4  38 1F 05 8C */	addi r0, r31, 0x58c
/* 80CDFFC8  7C 79 01 2E */	stwx r3, r25, r0
/* 80CDFFCC  3B 5A 00 01 */	addi r26, r26, 1
/* 80CDFFD0  2C 1A 00 04 */	cmpwi r26, 4
/* 80CDFFD4  3B FF 00 04 */	addi r31, r31, 4
/* 80CDFFD8  3B DE 00 02 */	addi r30, r30, 2
/* 80CDFFDC  41 80 FF A4 */	blt lbl_80CDFF80
/* 80CDFFE0  39 61 00 60 */	addi r11, r1, 0x60
/* 80CDFFE4  4B 68 22 34 */	b _restgpr_25
/* 80CDFFE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CDFFEC  7C 08 03 A6 */	mtlr r0
/* 80CDFFF0  38 21 00 60 */	addi r1, r1, 0x60
/* 80CDFFF4  4E 80 00 20 */	blr 
