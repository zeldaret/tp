lbl_80CFC114:
/* 80CFC114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFC118  7C 08 02 A6 */	mflr r0
/* 80CFC11C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFC120  7C 65 1B 78 */	mr r5, r3
/* 80CFC124  80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 80CFC128  54 80 3F FF */	rlwinm. r0, r4, 7, 0x1f, 0x1f
/* 80CFC12C  40 82 00 2C */	bne lbl_80CFC158
/* 80CFC130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFC134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFC138  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80CFC13C  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80CFC140  7C 05 07 74 */	extsb r5, r0
/* 80CFC144  4B 33 92 1C */	b isSwitch__10dSv_info_cCFii
/* 80CFC148  2C 03 00 00 */	cmpwi r3, 0
/* 80CFC14C  41 82 00 34 */	beq lbl_80CFC180
/* 80CFC150  38 60 00 01 */	li r3, 1
/* 80CFC154  48 00 00 30 */	b lbl_80CFC184
lbl_80CFC158:
/* 80CFC158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFC15C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFC160  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80CFC164  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80CFC168  7C 05 07 74 */	extsb r5, r0
/* 80CFC16C  4B 33 91 F4 */	b isSwitch__10dSv_info_cCFii
/* 80CFC170  2C 03 00 00 */	cmpwi r3, 0
/* 80CFC174  40 82 00 0C */	bne lbl_80CFC180
/* 80CFC178  38 60 00 01 */	li r3, 1
/* 80CFC17C  48 00 00 08 */	b lbl_80CFC184
lbl_80CFC180:
/* 80CFC180  38 60 00 00 */	li r3, 0
lbl_80CFC184:
/* 80CFC184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFC188  7C 08 03 A6 */	mtlr r0
/* 80CFC18C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFC190  4E 80 00 20 */	blr 
