lbl_802D66AC:
/* 802D66AC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D66B0  7C 08 02 A6 */	mflr r0
/* 802D66B4  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D66B8  39 61 01 20 */	addi r11, r1, 0x120
/* 802D66BC  48 08 BB 1D */	bl _savegpr_28
/* 802D66C0  7C 7C 1B 78 */	mr r28, r3
/* 802D66C4  83 C3 00 4C */	lwz r30, 0x4c(r3)
/* 802D66C8  38 61 00 08 */	addi r3, r1, 8
/* 802D66CC  48 00 01 29 */	bl store__Q210JKRArchive8CArcNameFPCc
/* 802D66D0  3B A0 00 00 */	li r29, 0
/* 802D66D4  83 FC 00 44 */	lwz r31, 0x44(r28)
/* 802D66D8  48 00 00 34 */	b lbl_802D670C
lbl_802D66DC:
/* 802D66DC  7F 83 E3 78 */	mr r3, r28
/* 802D66E0  38 81 00 08 */	addi r4, r1, 8
/* 802D66E4  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D66E8  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D66EC  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D66F0  4B FF FC A5 */	bl isSameName__10JKRArchiveCFRQ210JKRArchive8CArcNameUlUs
/* 802D66F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D66F8  41 82 00 0C */	beq lbl_802D6704
/* 802D66FC  7F C3 F3 78 */	mr r3, r30
/* 802D6700  48 00 00 1C */	b lbl_802D671C
lbl_802D6704:
/* 802D6704  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D6708  3B BD 00 01 */	addi r29, r29, 1
lbl_802D670C:
/* 802D670C  80 1F 00 08 */	lwz r0, 8(r31)
/* 802D6710  7C 1D 00 40 */	cmplw r29, r0
/* 802D6714  41 80 FF C8 */	blt lbl_802D66DC
/* 802D6718  38 60 00 00 */	li r3, 0
lbl_802D671C:
/* 802D671C  39 61 01 20 */	addi r11, r1, 0x120
/* 802D6720  48 08 BB 05 */	bl _restgpr_28
/* 802D6724  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D6728  7C 08 03 A6 */	mtlr r0
/* 802D672C  38 21 01 20 */	addi r1, r1, 0x120
/* 802D6730  4E 80 00 20 */	blr 
