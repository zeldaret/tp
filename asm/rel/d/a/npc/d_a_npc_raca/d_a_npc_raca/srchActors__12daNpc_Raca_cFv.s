lbl_80AB6BB0:
/* 80AB6BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB6BB4  7C 08 02 A6 */	mflr r0
/* 80AB6BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB6BC0  7C 7F 1B 78 */	mr r31, r3
/* 80AB6BC4  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80AB6BC8  2C 00 00 00 */	cmpwi r0, 0
/* 80AB6BCC  41 82 00 08 */	beq lbl_80AB6BD4
/* 80AB6BD0  48 00 00 30 */	b lbl_80AB6C00
lbl_80AB6BD4:
/* 80AB6BD4  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AB6BD8  4B 68 EB 31 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AB6BDC  28 03 00 00 */	cmplwi r3, 0
/* 80AB6BE0  40 82 00 20 */	bne lbl_80AB6C00
/* 80AB6BE4  7F E3 FB 78 */	mr r3, r31
/* 80AB6BE8  38 80 00 0D */	li r4, 0xd
/* 80AB6BEC  38 A0 00 00 */	li r5, 0
/* 80AB6BF0  4B 69 52 F5 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80AB6BF4  7C 64 1B 78 */	mr r4, r3
/* 80AB6BF8  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AB6BFC  4B 68 EA E5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80AB6C00:
/* 80AB6C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB6C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB6C08  7C 08 03 A6 */	mtlr r0
/* 80AB6C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6C10  4E 80 00 20 */	blr 
