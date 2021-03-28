lbl_8018D68C:
/* 8018D68C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018D690  7C 08 02 A6 */	mflr r0
/* 8018D694  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018D698  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D69C  48 1D 4B 35 */	bl _savegpr_26
/* 8018D6A0  7C 7A 1B 78 */	mr r26, r3
/* 8018D6A4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8018D6A8  28 00 00 FF */	cmplwi r0, 0xff
/* 8018D6AC  40 82 00 0C */	bne lbl_8018D6B8
/* 8018D6B0  38 60 00 01 */	li r3, 1
/* 8018D6B4  48 00 00 98 */	b lbl_8018D74C
lbl_8018D6B8:
/* 8018D6B8  3B 60 00 00 */	li r27, 0
/* 8018D6BC  54 9C 15 BA */	rlwinm r28, r4, 2, 0x16, 0x1d
/* 8018D6C0  7C 7A E2 14 */	add r3, r26, r28
/* 8018D6C4  80 63 01 64 */	lwz r3, 0x164(r3)
/* 8018D6C8  7F BA 02 14 */	add r29, r26, r0
/* 8018D6CC  88 9D 01 9A */	lbz r4, 0x19a(r29)
/* 8018D6D0  88 BD 01 94 */	lbz r5, 0x194(r29)
/* 8018D6D4  88 DD 01 97 */	lbz r6, 0x197(r29)
/* 8018D6D8  38 E0 00 00 */	li r7, 0
/* 8018D6DC  48 0C 81 9D */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D6E0  7C 7E 1B 78 */	mr r30, r3
/* 8018D6E4  7C 7A E2 14 */	add r3, r26, r28
/* 8018D6E8  80 63 01 70 */	lwz r3, 0x170(r3)
/* 8018D6EC  88 9D 01 9A */	lbz r4, 0x19a(r29)
/* 8018D6F0  88 BD 01 94 */	lbz r5, 0x194(r29)
/* 8018D6F4  88 DD 01 97 */	lbz r6, 0x197(r29)
/* 8018D6F8  38 E0 00 00 */	li r7, 0
/* 8018D6FC  48 0C 81 7D */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D700  7C 7F 1B 78 */	mr r31, r3
/* 8018D704  7C 7A E2 14 */	add r3, r26, r28
/* 8018D708  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8018D70C  88 9D 01 9A */	lbz r4, 0x19a(r29)
/* 8018D710  88 BD 01 94 */	lbz r5, 0x194(r29)
/* 8018D714  88 DD 01 97 */	lbz r6, 0x197(r29)
/* 8018D718  38 E0 00 00 */	li r7, 0
/* 8018D71C  48 0C 81 5D */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D720  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018D724  28 00 00 01 */	cmplwi r0, 1
/* 8018D728  40 82 00 20 */	bne lbl_8018D748
/* 8018D72C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018D730  28 00 00 01 */	cmplwi r0, 1
/* 8018D734  40 82 00 14 */	bne lbl_8018D748
/* 8018D738  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018D73C  28 00 00 01 */	cmplwi r0, 1
/* 8018D740  40 82 00 08 */	bne lbl_8018D748
/* 8018D744  3B 60 00 01 */	li r27, 1
lbl_8018D748:
/* 8018D748  7F 63 DB 78 */	mr r3, r27
lbl_8018D74C:
/* 8018D74C  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D750  48 1D 4A CD */	bl _restgpr_26
/* 8018D754  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018D758  7C 08 03 A6 */	mtlr r0
/* 8018D75C  38 21 00 20 */	addi r1, r1, 0x20
/* 8018D760  4E 80 00 20 */	blr 
