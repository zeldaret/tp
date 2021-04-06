lbl_80607C20:
/* 80607C20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80607C24  7C 08 02 A6 */	mflr r0
/* 80607C28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80607C2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80607C30  4B D5 A5 A5 */	bl _savegpr_27
/* 80607C34  7C 7B 1B 78 */	mr r27, r3
/* 80607C38  3B 80 00 00 */	li r28, 0
/* 80607C3C  3B E0 00 00 */	li r31, 0
lbl_80607C40:
/* 80607C40  7F DB FA 14 */	add r30, r27, r31
/* 80607C44  3B BE 0D 70 */	addi r29, r30, 0xd70
/* 80607C48  7F A3 EB 78 */	mr r3, r29
/* 80607C4C  4B A7 C6 75 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80607C50  28 03 00 00 */	cmplwi r3, 0
/* 80607C54  41 82 00 30 */	beq lbl_80607C84
/* 80607C58  80 1E 0D CC */	lwz r0, 0xdcc(r30)
/* 80607C5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80607C60  40 82 00 24 */	bne lbl_80607C84
/* 80607C64  7F A3 EB 78 */	mr r3, r29
/* 80607C68  4B A7 C6 F1 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80607C6C  4B C5 BD DD */	bl GetAc__8cCcD_ObjFv
/* 80607C70  A8 03 00 08 */	lha r0, 8(r3)
/* 80607C74  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80607C78  40 82 00 0C */	bne lbl_80607C84
/* 80607C7C  38 60 00 01 */	li r3, 1
/* 80607C80  48 00 00 18 */	b lbl_80607C98
lbl_80607C84:
/* 80607C84  3B 9C 00 01 */	addi r28, r28, 1
/* 80607C88  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80607C8C  3B FF 01 38 */	addi r31, r31, 0x138
/* 80607C90  41 80 FF B0 */	blt lbl_80607C40
/* 80607C94  38 60 00 00 */	li r3, 0
lbl_80607C98:
/* 80607C98  39 61 00 20 */	addi r11, r1, 0x20
/* 80607C9C  4B D5 A5 85 */	bl _restgpr_27
/* 80607CA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80607CA4  7C 08 03 A6 */	mtlr r0
/* 80607CA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80607CAC  4E 80 00 20 */	blr 
