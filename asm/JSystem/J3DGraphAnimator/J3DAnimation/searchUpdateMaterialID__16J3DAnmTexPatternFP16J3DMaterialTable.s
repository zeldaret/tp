lbl_8032B004:
/* 8032B004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032B008  7C 08 02 A6 */	mflr r0
/* 8032B00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032B010  39 61 00 20 */	addi r11, r1, 0x20
/* 8032B014  48 03 71 C5 */	bl _savegpr_28
/* 8032B018  7C 7C 1B 78 */	mr r28, r3
/* 8032B01C  7C 9D 23 78 */	mr r29, r4
/* 8032B020  3B C0 00 00 */	li r30, 0
/* 8032B024  48 00 00 50 */	b lbl_8032B074
lbl_8032B028:
/* 8032B028  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 8032B02C  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8032B030  7F C4 F3 78 */	mr r4, r30
/* 8032B034  4B FB 3A C5 */	bl getName__10JUTNameTabCFUs
/* 8032B038  7C 64 1B 78 */	mr r4, r3
/* 8032B03C  7F E3 FB 78 */	mr r3, r31
/* 8032B040  4B FB 3A 19 */	bl getIndex__10JUTNameTabCFPCc
/* 8032B044  2C 03 FF FF */	cmpwi r3, -1
/* 8032B048  41 82 00 14 */	beq lbl_8032B05C
/* 8032B04C  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 8032B050  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 8032B054  7C 64 03 2E */	sthx r3, r4, r0
/* 8032B058  48 00 00 18 */	b lbl_8032B070
lbl_8032B05C:
/* 8032B05C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8032B060  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8032B064  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8032B068  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 8032B06C  7C 83 03 2E */	sthx r4, r3, r0
lbl_8032B070:
/* 8032B070  3B DE 00 01 */	addi r30, r30, 1
lbl_8032B074:
/* 8032B074  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8032B078  A0 1C 00 16 */	lhz r0, 0x16(r28)
/* 8032B07C  7C 03 00 40 */	cmplw r3, r0
/* 8032B080  41 80 FF A8 */	blt lbl_8032B028
/* 8032B084  39 61 00 20 */	addi r11, r1, 0x20
/* 8032B088  48 03 71 9D */	bl _restgpr_28
/* 8032B08C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032B090  7C 08 03 A6 */	mtlr r0
/* 8032B094  38 21 00 20 */	addi r1, r1, 0x20
/* 8032B098  4E 80 00 20 */	blr 
