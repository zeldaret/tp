lbl_8030AF24:
/* 8030AF24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030AF28  7C 08 02 A6 */	mflr r0
/* 8030AF2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030AF30  39 61 00 20 */	addi r11, r1, 0x20
/* 8030AF34  48 05 72 A9 */	bl _savegpr_29
/* 8030AF38  7C 7D 1B 78 */	mr r29, r3
/* 8030AF3C  7C 9E 23 79 */	or. r30, r4, r4
/* 8030AF40  41 82 00 70 */	beq lbl_8030AFB0
/* 8030AF44  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 8030AF48  28 00 00 00 */	cmplwi r0, 0
/* 8030AF4C  41 82 00 64 */	beq lbl_8030AFB0
/* 8030AF50  3B E0 00 00 */	li r31, 0
/* 8030AF54  48 00 00 4C */	b lbl_8030AFA0
lbl_8030AF58:
/* 8030AF58  38 7D 00 20 */	addi r3, r29, 0x20
/* 8030AF5C  7F E4 FB 78 */	mr r4, r31
/* 8030AF60  4B FD 3B 99 */	bl getName__10JUTNameTabCFUs
/* 8030AF64  7C 64 1B 78 */	mr r4, r3
/* 8030AF68  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 8030AF6C  4B FD 3A ED */	bl getIndex__10JUTNameTabCFPCc
/* 8030AF70  2C 03 FF FF */	cmpwi r3, -1
/* 8030AF74  41 82 00 14 */	beq lbl_8030AF88
/* 8030AF78  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 8030AF7C  57 E0 0B FC */	rlwinm r0, r31, 1, 0xf, 0x1e
/* 8030AF80  7C 64 03 2E */	sthx r3, r4, r0
/* 8030AF84  48 00 00 18 */	b lbl_8030AF9C
lbl_8030AF88:
/* 8030AF88  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8030AF8C  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8030AF90  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8030AF94  57 E0 0B FC */	rlwinm r0, r31, 1, 0xf, 0x1e
/* 8030AF98  7C 83 03 2E */	sthx r4, r3, r0
lbl_8030AF9C:
/* 8030AF9C  3B FF 00 01 */	addi r31, r31, 1
lbl_8030AFA0:
/* 8030AFA0  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8030AFA4  A0 1D 00 18 */	lhz r0, 0x18(r29)
/* 8030AFA8  7C 03 00 40 */	cmplw r3, r0
/* 8030AFAC  41 80 FF AC */	blt lbl_8030AF58
lbl_8030AFB0:
/* 8030AFB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8030AFB4  48 05 72 75 */	bl _restgpr_29
/* 8030AFB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030AFBC  7C 08 03 A6 */	mtlr r0
/* 8030AFC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8030AFC4  4E 80 00 20 */	blr 
