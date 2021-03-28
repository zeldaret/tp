lbl_80D56418:
/* 80D56418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5641C  7C 08 02 A6 */	mflr r0
/* 80D56420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D56428  7C 7F 1B 78 */	mr r31, r3
/* 80D5642C  88 03 05 76 */	lbz r0, 0x576(r3)
/* 80D56430  28 00 00 7D */	cmplwi r0, 0x7d
/* 80D56434  40 82 00 28 */	bne lbl_80D5645C
/* 80D56438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5643C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D56440  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D56444  38 80 00 02 */	li r4, 2
/* 80D56448  4B 2D E5 74 */	b isEventBit__11dSv_event_cCFUs
/* 80D5644C  2C 03 00 00 */	cmpwi r3, 0
/* 80D56450  41 82 00 0C */	beq lbl_80D5645C
/* 80D56454  38 00 00 7E */	li r0, 0x7e
/* 80D56458  98 1F 05 76 */	stb r0, 0x576(r31)
lbl_80D5645C:
/* 80D5645C  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D56460  28 00 00 7E */	cmplwi r0, 0x7e
/* 80D56464  40 82 00 28 */	bne lbl_80D5648C
/* 80D56468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5646C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D56470  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D56474  38 80 00 01 */	li r4, 1
/* 80D56478  4B 2D E5 44 */	b isEventBit__11dSv_event_cCFUs
/* 80D5647C  2C 03 00 00 */	cmpwi r3, 0
/* 80D56480  41 82 00 0C */	beq lbl_80D5648C
/* 80D56484  38 00 00 7F */	li r0, 0x7f
/* 80D56488  98 1F 05 76 */	stb r0, 0x576(r31)
lbl_80D5648C:
/* 80D5648C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D56490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56494  7C 08 03 A6 */	mtlr r0
/* 80D56498  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5649C  4E 80 00 20 */	blr 
