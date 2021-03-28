lbl_806762A4:
/* 806762A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806762A8  7C 08 02 A6 */	mflr r0
/* 806762AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806762B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806762B4  93 C1 00 08 */	stw r30, 8(r1)
/* 806762B8  7C 7E 1B 78 */	mr r30, r3
/* 806762BC  48 00 06 E9 */	bl checkMBossRoom__12daMBdoorL1_cFv
/* 806762C0  2C 03 00 00 */	cmpwi r3, 0
/* 806762C4  41 82 00 0C */	beq lbl_806762D0
/* 806762C8  38 60 00 00 */	li r3, 0
/* 806762CC  48 00 00 24 */	b lbl_806762F0
lbl_806762D0:
/* 806762D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806762D4  7C 1F 07 74 */	extsb r31, r0
/* 806762D8  7F C3 F3 78 */	mr r3, r30
/* 806762DC  4B 9C 3E DC */	b getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 806762E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 806762E4  7C 1F 00 50 */	subf r0, r31, r0
/* 806762E8  7C 00 00 34 */	cntlzw r0, r0
/* 806762EC  54 03 D9 7E */	srwi r3, r0, 5
lbl_806762F0:
/* 806762F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806762F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 806762F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806762FC  7C 08 03 A6 */	mtlr r0
/* 80676300  38 21 00 10 */	addi r1, r1, 0x10
/* 80676304  4E 80 00 20 */	blr 
