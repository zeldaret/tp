lbl_8024AFF8:
/* 8024AFF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024AFFC  7C 08 02 A6 */	mflr r0
/* 8024B000  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024B004  39 61 00 20 */	addi r11, r1, 0x20
/* 8024B008  48 11 71 D5 */	bl _savegpr_29
/* 8024B00C  7C 7D 1B 78 */	mr r29, r3
/* 8024B010  7C BE 2B 78 */	mr r30, r5
/* 8024B014  7C 9F 23 78 */	mr r31, r4
/* 8024B018  38 60 00 01 */	li r3, 1
/* 8024B01C  38 00 00 00 */	li r0, 0
/* 8024B020  98 1D 00 47 */	stb r0, 0x47(r29)
/* 8024B024  38 00 00 FF */	li r0, 0xff
/* 8024B028  98 1D 00 42 */	stb r0, 0x42(r29)
/* 8024B02C  98 1D 00 43 */	stb r0, 0x43(r29)
/* 8024B030  98 1D 00 44 */	stb r0, 0x44(r29)
/* 8024B034  98 1D 00 45 */	stb r0, 0x45(r29)
/* 8024B038  48 00 00 88 */	b lbl_8024B0C0
lbl_8024B03C:
/* 8024B03C  28 1E 00 00 */	cmplwi r30, 0
/* 8024B040  41 82 00 10 */	beq lbl_8024B050
/* 8024B044  A0 1D 00 38 */	lhz r0, 0x38(r29)
/* 8024B048  54 00 10 3A */	slwi r0, r0, 2
/* 8024B04C  7F FE 00 2E */	lwzx r31, r30, r0
lbl_8024B050:
/* 8024B050  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8024B054  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 8024B058  54 00 18 38 */	slwi r0, r0, 3
/* 8024B05C  7C 04 00 AE */	lbzx r0, r4, r0
/* 8024B060  2C 00 00 02 */	cmpwi r0, 2
/* 8024B064  41 82 00 38 */	beq lbl_8024B09C
/* 8024B068  40 80 00 14 */	bge lbl_8024B07C
/* 8024B06C  2C 00 00 00 */	cmpwi r0, 0
/* 8024B070  41 82 00 50 */	beq lbl_8024B0C0
/* 8024B074  40 80 00 14 */	bge lbl_8024B088
/* 8024B078  48 00 00 48 */	b lbl_8024B0C0
lbl_8024B07C:
/* 8024B07C  2C 00 00 04 */	cmpwi r0, 4
/* 8024B080  40 80 00 40 */	bge lbl_8024B0C0
/* 8024B084  48 00 00 2C */	b lbl_8024B0B0
lbl_8024B088:
/* 8024B088  7F A3 EB 78 */	mr r3, r29
/* 8024B08C  7F E4 FB 78 */	mr r4, r31
/* 8024B090  7F C5 F3 78 */	mr r5, r30
/* 8024B094  4B FF FA 9D */	bl messageNodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c
/* 8024B098  48 00 00 28 */	b lbl_8024B0C0
lbl_8024B09C:
/* 8024B09C  7F A3 EB 78 */	mr r3, r29
/* 8024B0A0  7F E4 FB 78 */	mr r4, r31
/* 8024B0A4  7F C5 F3 78 */	mr r5, r30
/* 8024B0A8  4B FF FC AD */	bl branchNodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c
/* 8024B0AC  48 00 00 14 */	b lbl_8024B0C0
lbl_8024B0B0:
/* 8024B0B0  7F A3 EB 78 */	mr r3, r29
/* 8024B0B4  7F E4 FB 78 */	mr r4, r31
/* 8024B0B8  7F C5 F3 78 */	mr r5, r30
/* 8024B0BC  4B FF FD 31 */	bl eventNodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c
lbl_8024B0C0:
/* 8024B0C0  2C 03 00 00 */	cmpwi r3, 0
/* 8024B0C4  41 82 00 10 */	beq lbl_8024B0D4
/* 8024B0C8  88 1D 00 26 */	lbz r0, 0x26(r29)
/* 8024B0CC  28 00 00 00 */	cmplwi r0, 0
/* 8024B0D0  41 82 FF 6C */	beq lbl_8024B03C
lbl_8024B0D4:
/* 8024B0D4  38 60 00 00 */	li r3, 0
/* 8024B0D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8024B0DC  48 11 71 4D */	bl _restgpr_29
/* 8024B0E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024B0E4  7C 08 03 A6 */	mtlr r0
/* 8024B0E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8024B0EC  4E 80 00 20 */	blr 
