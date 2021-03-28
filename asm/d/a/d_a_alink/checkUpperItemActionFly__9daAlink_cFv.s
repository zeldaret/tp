lbl_800B74B4:
/* 800B74B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B74B8  7C 08 02 A6 */	mflr r0
/* 800B74BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B74C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B74C4  7C 7F 1B 78 */	mr r31, r3
/* 800B74C8  A0 83 2F DC */	lhz r4, 0x2fdc(r3)
/* 800B74CC  48 02 72 B5 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800B74D0  2C 03 00 00 */	cmpwi r3, 0
/* 800B74D4  41 82 00 10 */	beq lbl_800B74E4
/* 800B74D8  7F E3 FB 78 */	mr r3, r31
/* 800B74DC  48 02 82 BD */	bl checkUpperItemActionBowFly__9daAlink_cFv
/* 800B74E0  48 00 00 2C */	b lbl_800B750C
lbl_800B74E4:
/* 800B74E4  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B74E8  28 00 00 40 */	cmplwi r0, 0x40
/* 800B74EC  40 82 00 10 */	bne lbl_800B74FC
/* 800B74F0  7F E3 FB 78 */	mr r3, r31
/* 800B74F4  48 02 96 65 */	bl checkUpperItemActionBoomerangFly__9daAlink_cFv
/* 800B74F8  48 00 00 14 */	b lbl_800B750C
lbl_800B74FC:
/* 800B74FC  28 00 00 46 */	cmplwi r0, 0x46
/* 800B7500  40 82 00 0C */	bne lbl_800B750C
/* 800B7504  7F E3 FB 78 */	mr r3, r31
/* 800B7508  48 02 A6 AD */	bl checkUpperItemActionCopyRodFly__9daAlink_cFv
lbl_800B750C:
/* 800B750C  7F E3 FB 78 */	mr r3, r31
/* 800B7510  48 03 CA F9 */	bl checkCanoeJumpRide__9daAlink_cFv
/* 800B7514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B751C  7C 08 03 A6 */	mtlr r0
/* 800B7520  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7524  4E 80 00 20 */	blr 
