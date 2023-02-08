lbl_8032F880:
/* 8032F880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F884  7C 08 02 A6 */	mflr r0
/* 8032F888  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F88C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F890  48 03 29 41 */	bl _savegpr_26
/* 8032F894  7C 7B 1B 78 */	mr r27, r3
/* 8032F898  7C 9C 23 78 */	mr r28, r4
/* 8032F89C  3B C0 00 00 */	li r30, 0
/* 8032F8A0  A3 44 00 0C */	lhz r26, 0xc(r4)
/* 8032F8A4  A3 E4 00 0E */	lhz r31, 0xe(r4)
/* 8032F8A8  3B A0 00 00 */	li r29, 0
/* 8032F8AC  48 00 00 6C */	b lbl_8032F918
lbl_8032F8B0:
/* 8032F8B0  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8032F8B4  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8032F8B8  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8032F8BC  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032F8C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032F8C4  41 82 00 50 */	beq lbl_8032F914
/* 8032F8C8  80 7B 00 08 */	lwz r3, 8(r27)
/* 8032F8CC  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032F8D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032F8D4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032F8D8  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F8DC  7C 03 00 40 */	cmplw r3, r0
/* 8032F8E0  40 80 00 08 */	bge lbl_8032F8E8
/* 8032F8E4  48 00 00 08 */	b lbl_8032F8EC
lbl_8032F8E8:
/* 8032F8E8  38 60 00 00 */	li r3, 0
lbl_8032F8EC:
/* 8032F8EC  80 BC 00 48 */	lwz r5, 0x48(r28)
/* 8032F8F0  1C 84 00 1C */	mulli r4, r4, 0x1c
/* 8032F8F4  38 04 00 18 */	addi r0, r4, 0x18
/* 8032F8F8  7C 85 00 AE */	lbzx r4, r5, r0
/* 8032F8FC  28 03 00 00 */	cmplwi r3, 0
/* 8032F900  40 82 00 0C */	bne lbl_8032F90C
/* 8032F904  3B C0 00 01 */	li r30, 1
/* 8032F908  48 00 00 0C */	b lbl_8032F914
lbl_8032F90C:
/* 8032F90C  38 A0 00 00 */	li r5, 0
/* 8032F910  4B FF CD 55 */	bl setTevColorAnm__14J3DMaterialAnmFiP14J3DTevColorAnm
lbl_8032F914:
/* 8032F914  3B BD 00 01 */	addi r29, r29, 1
lbl_8032F918:
/* 8032F918  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8032F91C  7C 00 D0 40 */	cmplw r0, r26
/* 8032F920  41 80 FF 90 */	blt lbl_8032F8B0
/* 8032F924  3B A0 00 00 */	li r29, 0
/* 8032F928  57 FF 04 3E */	clrlwi r31, r31, 0x10
/* 8032F92C  48 00 00 6C */	b lbl_8032F998
lbl_8032F930:
/* 8032F930  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 8032F934  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8032F938  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8032F93C  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032F940  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032F944  41 82 00 50 */	beq lbl_8032F994
/* 8032F948  80 7B 00 08 */	lwz r3, 8(r27)
/* 8032F94C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032F950  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032F954  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032F958  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F95C  7C 03 00 40 */	cmplw r3, r0
/* 8032F960  40 80 00 08 */	bge lbl_8032F968
/* 8032F964  48 00 00 08 */	b lbl_8032F96C
lbl_8032F968:
/* 8032F968  38 60 00 00 */	li r3, 0
lbl_8032F96C:
/* 8032F96C  80 BC 00 4C */	lwz r5, 0x4c(r28)
/* 8032F970  1C 84 00 1C */	mulli r4, r4, 0x1c
/* 8032F974  38 04 00 18 */	addi r0, r4, 0x18
/* 8032F978  7C 85 00 AE */	lbzx r4, r5, r0
/* 8032F97C  28 03 00 00 */	cmplwi r3, 0
/* 8032F980  40 82 00 0C */	bne lbl_8032F98C
/* 8032F984  3B C0 00 01 */	li r30, 1
/* 8032F988  48 00 00 0C */	b lbl_8032F994
lbl_8032F98C:
/* 8032F98C  38 A0 00 00 */	li r5, 0
/* 8032F990  4B FF CD 15 */	bl setTevKColorAnm__14J3DMaterialAnmFiP15J3DTevKColorAnm
lbl_8032F994:
/* 8032F994  3B BD 00 01 */	addi r29, r29, 1
lbl_8032F998:
/* 8032F998  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8032F99C  7C 00 F8 40 */	cmplw r0, r31
/* 8032F9A0  41 80 FF 90 */	blt lbl_8032F930
/* 8032F9A4  7F C3 F3 78 */	mr r3, r30
/* 8032F9A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F9AC  48 03 28 71 */	bl _restgpr_26
/* 8032F9B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F9B4  7C 08 03 A6 */	mtlr r0
/* 8032F9B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F9BC  4E 80 00 20 */	blr 
