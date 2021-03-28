lbl_8012E2DC:
/* 8012E2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012E2E0  7C 08 02 A6 */	mflr r0
/* 8012E2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012E2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012E2EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8012E2F0  7C 7E 1B 78 */	mr r30, r3
/* 8012E2F4  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012E2F8  88 03 2F CC */	lbz r0, 0x2fcc(r3)
/* 8012E2FC  28 00 00 00 */	cmplwi r0, 0
/* 8012E300  41 82 00 0C */	beq lbl_8012E30C
/* 8012E304  38 00 00 0A */	li r0, 0xa
/* 8012E308  98 1E 2F CC */	stb r0, 0x2fcc(r30)
lbl_8012E30C:
/* 8012E30C  7F C3 F3 78 */	mr r3, r30
/* 8012E310  4B FF AC 4D */	bl setWolfAtnMoveDirection__9daAlink_cFv
/* 8012E314  7F C3 F3 78 */	mr r3, r30
/* 8012E318  4B FF DF F1 */	bl checkWolfAtnDoCharge__9daAlink_cFv
/* 8012E31C  7F E3 FB 78 */	mr r3, r31
/* 8012E320  48 03 01 AD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012E324  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012E328  41 82 00 38 */	beq lbl_8012E360
/* 8012E32C  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8012E330  28 00 00 10 */	cmplwi r0, 0x10
/* 8012E334  40 82 00 1C */	bne lbl_8012E350
/* 8012E338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012E33C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8012E340  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8012E344  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8012E348  4B F1 9E 35 */	bl cutEnd__16dEvent_manager_cFi
/* 8012E34C  48 00 00 30 */	b lbl_8012E37C
lbl_8012E350:
/* 8012E350  7F C3 F3 78 */	mr r3, r30
/* 8012E354  38 80 00 00 */	li r4, 0
/* 8012E358  4B FF B7 ED */	bl checkNextActionWolf__9daAlink_cFi
/* 8012E35C  48 00 00 20 */	b lbl_8012E37C
lbl_8012E360:
/* 8012E360  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012E364  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 8012E368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012E36C  40 81 00 10 */	ble lbl_8012E37C
/* 8012E370  7F C3 F3 78 */	mr r3, r30
/* 8012E374  38 80 00 01 */	li r4, 1
/* 8012E378  4B FF B7 CD */	bl checkNextActionWolf__9daAlink_cFi
lbl_8012E37C:
/* 8012E37C  38 60 00 01 */	li r3, 1
/* 8012E380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012E384  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012E388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012E38C  7C 08 03 A6 */	mtlr r0
/* 8012E390  38 21 00 10 */	addi r1, r1, 0x10
/* 8012E394  4E 80 00 20 */	blr 
