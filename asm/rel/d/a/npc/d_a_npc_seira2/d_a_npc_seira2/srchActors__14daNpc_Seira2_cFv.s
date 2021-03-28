lbl_80AD1BF8:
/* 80AD1BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD1BFC  7C 08 02 A6 */	mflr r0
/* 80AD1C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD1C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD1C08  7C 7F 1B 78 */	mr r31, r3
/* 80AD1C0C  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80AD1C10  2C 00 00 03 */	cmpwi r0, 3
/* 80AD1C14  40 80 00 38 */	bge lbl_80AD1C4C
/* 80AD1C18  2C 00 00 01 */	cmpwi r0, 1
/* 80AD1C1C  40 80 00 08 */	bge lbl_80AD1C24
/* 80AD1C20  48 00 00 2C */	b lbl_80AD1C4C
lbl_80AD1C24:
/* 80AD1C24  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80AD1C28  4B 67 3A E0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AD1C2C  28 03 00 00 */	cmplwi r3, 0
/* 80AD1C30  40 82 00 1C */	bne lbl_80AD1C4C
/* 80AD1C34  7F E3 FB 78 */	mr r3, r31
/* 80AD1C38  38 80 01 0D */	li r4, 0x10d
/* 80AD1C3C  4B 67 A1 F0 */	b getNearestActorP__8daNpcT_cFs
/* 80AD1C40  7C 64 1B 78 */	mr r4, r3
/* 80AD1C44  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80AD1C48  4B 67 3A 98 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80AD1C4C:
/* 80AD1C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD1C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD1C54  7C 08 03 A6 */	mtlr r0
/* 80AD1C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD1C5C  4E 80 00 20 */	blr 
