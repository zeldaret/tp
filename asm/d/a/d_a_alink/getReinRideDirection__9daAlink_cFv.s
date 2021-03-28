lbl_800EC87C:
/* 800EC87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC880  7C 08 02 A6 */	mflr r0
/* 800EC884  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EC888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EC88C  7C 7F 1B 78 */	mr r31, r3
/* 800EC890  80 63 27 F4 */	lwz r3, 0x27f4(r3)
/* 800EC894  7F E4 FB 78 */	mr r4, r31
/* 800EC898  4B F2 DE 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800EC89C  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800EC8A0  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 800EC8A4  7C 00 18 50 */	subf r0, r0, r3
/* 800EC8A8  7C 1F 07 34 */	extsh r31, r0
/* 800EC8AC  A8 04 00 08 */	lha r0, 8(r4)
/* 800EC8B0  2C 00 00 EE */	cmpwi r0, 0xee
/* 800EC8B4  40 82 00 1C */	bne lbl_800EC8D0
/* 800EC8B8  7F E3 FB 78 */	mr r3, r31
/* 800EC8BC  48 27 88 15 */	bl abs
/* 800EC8C0  2C 03 68 00 */	cmpwi r3, 0x6800
/* 800EC8C4  40 81 00 0C */	ble lbl_800EC8D0
/* 800EC8C8  38 60 00 01 */	li r3, 1
/* 800EC8CC  48 00 00 18 */	b lbl_800EC8E4
lbl_800EC8D0:
/* 800EC8D0  7F E0 07 35 */	extsh. r0, r31
/* 800EC8D4  40 81 00 0C */	ble lbl_800EC8E0
/* 800EC8D8  38 60 00 02 */	li r3, 2
/* 800EC8DC  48 00 00 08 */	b lbl_800EC8E4
lbl_800EC8E0:
/* 800EC8E0  38 60 00 03 */	li r3, 3
lbl_800EC8E4:
/* 800EC8E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EC8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC8EC  7C 08 03 A6 */	mtlr r0
/* 800EC8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC8F4  4E 80 00 20 */	blr 
