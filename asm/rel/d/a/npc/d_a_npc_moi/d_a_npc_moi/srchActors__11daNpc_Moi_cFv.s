lbl_80A755C8:
/* 80A755C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A755CC  7C 08 02 A6 */	mflr r0
/* 80A755D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A755D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A755D8  7C 7F 1B 78 */	mr r31, r3
/* 80A755DC  88 03 15 C4 */	lbz r0, 0x15c4(r3)
/* 80A755E0  2C 00 00 02 */	cmpwi r0, 2
/* 80A755E4  41 82 00 18 */	beq lbl_80A755FC
/* 80A755E8  40 80 00 08 */	bge lbl_80A755F0
/* 80A755EC  48 00 00 64 */	b lbl_80A75650
lbl_80A755F0:
/* 80A755F0  2C 00 00 05 */	cmpwi r0, 5
/* 80A755F4  41 82 00 34 */	beq lbl_80A75628
/* 80A755F8  48 00 00 58 */	b lbl_80A75650
lbl_80A755FC:
/* 80A755FC  38 7F 15 D8 */	addi r3, r31, 0x15d8
/* 80A75600  4B 6D 01 09 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A75604  28 03 00 00 */	cmplwi r3, 0
/* 80A75608  40 82 00 48 */	bne lbl_80A75650
/* 80A7560C  7F E3 FB 78 */	mr r3, r31
/* 80A75610  38 80 01 5A */	li r4, 0x15a
/* 80A75614  4B 6D 68 19 */	bl getNearestActorP__8daNpcT_cFs
/* 80A75618  7C 64 1B 78 */	mr r4, r3
/* 80A7561C  38 7F 15 D8 */	addi r3, r31, 0x15d8
/* 80A75620  4B 6D 00 C1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A75624  48 00 00 2C */	b lbl_80A75650
lbl_80A75628:
/* 80A75628  38 7F 15 E0 */	addi r3, r31, 0x15e0
/* 80A7562C  4B 6D 00 DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A75630  28 03 00 00 */	cmplwi r3, 0
/* 80A75634  40 82 00 1C */	bne lbl_80A75650
/* 80A75638  7F E3 FB 78 */	mr r3, r31
/* 80A7563C  38 80 02 6E */	li r4, 0x26e
/* 80A75640  4B 6D 67 ED */	bl getNearestActorP__8daNpcT_cFs
/* 80A75644  7C 64 1B 78 */	mr r4, r3
/* 80A75648  38 7F 15 E0 */	addi r3, r31, 0x15e0
/* 80A7564C  4B 6D 00 95 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A75650:
/* 80A75650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A75654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A75658  7C 08 03 A6 */	mtlr r0
/* 80A7565C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A75660  4E 80 00 20 */	blr 
