lbl_802BE714:
/* 802BE714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE718  7C 08 02 A6 */	mflr r0
/* 802BE71C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE720  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE724  48 0A 3A B9 */	bl _savegpr_29
/* 802BE728  7C 7D 1B 78 */	mr r29, r3
/* 802BE72C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 802BE730  38 00 00 00 */	li r0, 0
/* 802BE734  90 03 00 18 */	stw r0, 0x18(r3)
/* 802BE738  80 04 00 00 */	lwz r0, 0(r4)
/* 802BE73C  90 01 00 08 */	stw r0, 8(r1)
/* 802BE740  38 81 00 08 */	addi r4, r1, 8
/* 802BE744  4B FF FA 01 */	bl startSound__14Z2SoundObjBaseF10JAISoundIDUlSc
/* 802BE748  7C 7E 1B 78 */	mr r30, r3
/* 802BE74C  28 1F 00 00 */	cmplwi r31, 0
/* 802BE750  41 82 00 3C */	beq lbl_802BE78C
/* 802BE754  28 1E 00 00 */	cmplwi r30, 0
/* 802BE758  41 82 00 34 */	beq lbl_802BE78C
/* 802BE75C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802BE760  28 03 00 00 */	cmplwi r3, 0
/* 802BE764  41 82 00 28 */	beq lbl_802BE78C
/* 802BE768  4B FE 3C E5 */	bl acceptsNewAudible__8JAISoundCFv
/* 802BE76C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BE770  41 82 00 1C */	beq lbl_802BE78C
/* 802BE774  80 7E 00 00 */	lwz r3, 0(r30)
/* 802BE778  7F E4 FB 78 */	mr r4, r31
/* 802BE77C  38 BD 00 20 */	addi r5, r29, 0x20
/* 802BE780  38 C0 00 00 */	li r6, 0
/* 802BE784  38 E0 00 00 */	li r7, 0
/* 802BE788  4B FE 3C ED */	bl func_802A2474
lbl_802BE78C:
/* 802BE78C  93 FD 00 18 */	stw r31, 0x18(r29)
/* 802BE790  7F C3 F3 78 */	mr r3, r30
/* 802BE794  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE798  48 0A 3A 91 */	bl _restgpr_29
/* 802BE79C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE7A0  7C 08 03 A6 */	mtlr r0
/* 802BE7A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE7A8  4E 80 00 20 */	blr 
