lbl_800B33E4:
/* 800B33E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B33E8  7C 08 02 A6 */	mflr r0
/* 800B33EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B33F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B33F4  7C 7F 1B 78 */	mr r31, r3
/* 800B33F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800B33FC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 800B3400  7D 89 03 A6 */	mtctr r12
/* 800B3404  4E 80 04 21 */	bctrl 
/* 800B3408  2C 03 00 00 */	cmpwi r3, 0
/* 800B340C  40 82 00 70 */	bne lbl_800B347C
/* 800B3410  7F E3 FB 78 */	mr r3, r31
/* 800B3414  48 00 5E 41 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B3418  2C 03 00 00 */	cmpwi r3, 0
/* 800B341C  40 82 00 10 */	bne lbl_800B342C
/* 800B3420  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B3424  28 00 02 63 */	cmplwi r0, 0x263
/* 800B3428  40 82 00 54 */	bne lbl_800B347C
lbl_800B342C:
/* 800B342C  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B3430  28 00 00 00 */	cmplwi r0, 0
/* 800B3434  40 82 00 48 */	bne lbl_800B347C
/* 800B3438  7F E3 FB 78 */	mr r3, r31
/* 800B343C  4B FF 45 15 */	bl checkWindSpeedOnAngle__9daAlink_cCFv
/* 800B3440  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B3444  40 82 00 38 */	bne lbl_800B347C
/* 800B3448  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 800B344C  2C 00 00 00 */	cmpwi r0, 0
/* 800B3450  40 82 00 18 */	bne lbl_800B3468
/* 800B3454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B3458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B345C  A0 03 00 02 */	lhz r0, 2(r3)
/* 800B3460  28 00 00 04 */	cmplwi r0, 4
/* 800B3464  40 81 00 10 */	ble lbl_800B3474
lbl_800B3468:
/* 800B3468  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800B346C  28 00 00 12 */	cmplwi r0, 0x12
/* 800B3470  40 82 00 0C */	bne lbl_800B347C
lbl_800B3474:
/* 800B3474  38 60 00 01 */	li r3, 1
/* 800B3478  48 00 00 08 */	b lbl_800B3480
lbl_800B347C:
/* 800B347C  38 60 00 00 */	li r3, 0
lbl_800B3480:
/* 800B3480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B3484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B3488  7C 08 03 A6 */	mtlr r0
/* 800B348C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B3490  4E 80 00 20 */	blr 
