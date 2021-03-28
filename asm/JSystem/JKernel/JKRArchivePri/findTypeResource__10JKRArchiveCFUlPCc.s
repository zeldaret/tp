lbl_802D64F4:
/* 802D64F4  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D64F8  7C 08 02 A6 */	mflr r0
/* 802D64FC  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D6500  39 61 01 20 */	addi r11, r1, 0x120
/* 802D6504  48 08 BC D5 */	bl _savegpr_28
/* 802D6508  7C 7C 1B 78 */	mr r28, r3
/* 802D650C  7C 9D 23 79 */	or. r29, r4, r4
/* 802D6510  41 82 00 78 */	beq lbl_802D6588
/* 802D6514  38 61 00 08 */	addi r3, r1, 8
/* 802D6518  7C A4 2B 78 */	mr r4, r5
/* 802D651C  48 00 02 D9 */	bl store__Q210JKRArchive8CArcNameFPCc
/* 802D6520  7F 83 E3 78 */	mr r3, r28
/* 802D6524  7F A4 EB 78 */	mr r4, r29
/* 802D6528  4B FF FE B9 */	bl findResType__10JKRArchiveCFUl
/* 802D652C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D6530  41 82 00 58 */	beq lbl_802D6588
/* 802D6534  80 7C 00 4C */	lwz r3, 0x4c(r28)
/* 802D6538  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802D653C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802D6540  7F C3 02 14 */	add r30, r3, r0
/* 802D6544  3B A0 00 00 */	li r29, 0
/* 802D6548  48 00 00 34 */	b lbl_802D657C
lbl_802D654C:
/* 802D654C  7F 83 E3 78 */	mr r3, r28
/* 802D6550  38 81 00 08 */	addi r4, r1, 8
/* 802D6554  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6558  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D655C  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D6560  4B FF FE 35 */	bl isSameName__10JKRArchiveCFRQ210JKRArchive8CArcNameUlUs
/* 802D6564  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6568  41 82 00 0C */	beq lbl_802D6574
/* 802D656C  7F C3 F3 78 */	mr r3, r30
/* 802D6570  48 00 00 1C */	b lbl_802D658C
lbl_802D6574:
/* 802D6574  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D6578  3B BD 00 01 */	addi r29, r29, 1
lbl_802D657C:
/* 802D657C  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D6580  7C 1D 00 00 */	cmpw r29, r0
/* 802D6584  41 80 FF C8 */	blt lbl_802D654C
lbl_802D6588:
/* 802D6588  38 60 00 00 */	li r3, 0
lbl_802D658C:
/* 802D658C  39 61 01 20 */	addi r11, r1, 0x120
/* 802D6590  48 08 BC 95 */	bl _restgpr_28
/* 802D6594  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D6598  7C 08 03 A6 */	mtlr r0
/* 802D659C  38 21 01 20 */	addi r1, r1, 0x120
/* 802D65A0  4E 80 00 20 */	blr 
