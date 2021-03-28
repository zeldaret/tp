lbl_800DC678:
/* 800DC678  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DC67C  7C 08 02 A6 */	mflr r0
/* 800DC680  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DC684  39 61 00 30 */	addi r11, r1, 0x30
/* 800DC688  48 28 5B 45 */	bl _savegpr_25
/* 800DC68C  7C 7E 1B 78 */	mr r30, r3
/* 800DC690  3B E0 00 00 */	li r31, 0
/* 800DC694  7F FC FB 78 */	mr r28, r31
/* 800DC698  7F FB FB 78 */	mr r27, r31
/* 800DC69C  7F FA FB 78 */	mr r26, r31
/* 800DC6A0  83 A3 27 E0 */	lwz r29, 0x27e0(r3)
/* 800DC6A4  3B 20 00 01 */	li r25, 1
/* 800DC6A8  7F A3 EB 78 */	mr r3, r29
/* 800DC6AC  4B F9 71 39 */	bl LockonTruth__12dAttention_cFv
/* 800DC6B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DC6B4  40 82 00 14 */	bne lbl_800DC6C8
/* 800DC6B8  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800DC6BC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DC6C0  40 82 00 08 */	bne lbl_800DC6C8
/* 800DC6C4  3B 20 00 00 */	li r25, 0
lbl_800DC6C8:
/* 800DC6C8  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 800DC6CC  41 82 00 14 */	beq lbl_800DC6E0
/* 800DC6D0  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800DC6D4  28 00 01 9C */	cmplwi r0, 0x19c
/* 800DC6D8  41 82 00 08 */	beq lbl_800DC6E0
/* 800DC6DC  3B 40 00 01 */	li r26, 1
lbl_800DC6E0:
/* 800DC6E0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 800DC6E4  41 82 00 18 */	beq lbl_800DC6FC
/* 800DC6E8  7F C3 F3 78 */	mr r3, r30
/* 800DC6EC  48 00 75 81 */	bl checkGrabAnime__9daAlink_cCFv
/* 800DC6F0  2C 03 00 00 */	cmpwi r3, 0
/* 800DC6F4  40 82 00 08 */	bne lbl_800DC6FC
/* 800DC6F8  3B 60 00 01 */	li r27, 1
lbl_800DC6FC:
/* 800DC6FC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800DC700  41 82 00 14 */	beq lbl_800DC714
/* 800DC704  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800DC708  28 00 02 02 */	cmplwi r0, 0x202
/* 800DC70C  41 82 00 08 */	beq lbl_800DC714
/* 800DC710  3B 80 00 01 */	li r28, 1
lbl_800DC714:
/* 800DC714  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800DC718  41 82 00 68 */	beq lbl_800DC780
/* 800DC71C  3B 20 00 00 */	li r25, 0
/* 800DC720  7F 3D CB 78 */	mr r29, r25
/* 800DC724  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800DC728  28 03 00 00 */	cmplwi r3, 0
/* 800DC72C  41 82 00 14 */	beq lbl_800DC740
/* 800DC730  4B FF FE 75 */	bl checkSpecialNpc__9daAlink_cFP10fopAc_ac_c
/* 800DC734  2C 03 00 00 */	cmpwi r3, 0
/* 800DC738  40 82 00 08 */	bne lbl_800DC740
/* 800DC73C  3B A0 00 01 */	li r29, 1
lbl_800DC740:
/* 800DC740  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800DC744  41 82 00 30 */	beq lbl_800DC774
/* 800DC748  38 80 00 01 */	li r4, 1
/* 800DC74C  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800DC750  88 03 04 96 */	lbz r0, 0x496(r3)
/* 800DC754  28 00 00 03 */	cmplwi r0, 3
/* 800DC758  41 82 00 10 */	beq lbl_800DC768
/* 800DC75C  28 00 00 04 */	cmplwi r0, 4
/* 800DC760  41 82 00 08 */	beq lbl_800DC768
/* 800DC764  38 80 00 00 */	li r4, 0
lbl_800DC768:
/* 800DC768  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800DC76C  41 82 00 08 */	beq lbl_800DC774
/* 800DC770  3B 20 00 01 */	li r25, 1
lbl_800DC774:
/* 800DC774  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 800DC778  40 82 00 08 */	bne lbl_800DC780
/* 800DC77C  3B E0 00 01 */	li r31, 1
lbl_800DC780:
/* 800DC780  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DC784  39 61 00 30 */	addi r11, r1, 0x30
/* 800DC788  48 28 5A 91 */	bl _restgpr_25
/* 800DC78C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DC790  7C 08 03 A6 */	mtlr r0
/* 800DC794  38 21 00 30 */	addi r1, r1, 0x30
/* 800DC798  4E 80 00 20 */	blr 
