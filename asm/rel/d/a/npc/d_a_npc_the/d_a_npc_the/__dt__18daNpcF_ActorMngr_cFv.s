lbl_80AFB558:
/* 80AFB558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFB55C  7C 08 02 A6 */	mflr r0
/* 80AFB560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFB564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFB568  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFB56C  41 82 00 1C */	beq lbl_80AFB588
/* 80AFB570  3C A0 80 B0 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80AFB574  38 05 C6 2C */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80AFB578  90 1F 00 04 */	stw r0, 4(r31)
/* 80AFB57C  7C 80 07 35 */	extsh. r0, r4
/* 80AFB580  40 81 00 08 */	ble lbl_80AFB588
/* 80AFB584  4B 7D 37 B8 */	b __dl__FPv
lbl_80AFB588:
/* 80AFB588  7F E3 FB 78 */	mr r3, r31
/* 80AFB58C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFB590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFB594  7C 08 03 A6 */	mtlr r0
/* 80AFB598  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFB59C  4E 80 00 20 */	blr 
