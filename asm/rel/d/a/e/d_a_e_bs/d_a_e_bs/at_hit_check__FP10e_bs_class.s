lbl_8068EF2C:
/* 8068EF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068EF30  7C 08 02 A6 */	mflr r0
/* 8068EF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068EF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068EF3C  7C 7F 1B 78 */	mr r31, r3
/* 8068EF40  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8068EF44  2C 00 00 0A */	cmpwi r0, 0xa
/* 8068EF48  41 80 00 0C */	blt lbl_8068EF54
/* 8068EF4C  38 60 00 00 */	li r3, 0
/* 8068EF50  48 00 00 28 */	b lbl_8068EF78
lbl_8068EF54:
/* 8068EF54  38 7F 0B 9C */	addi r3, r31, 0xb9c
/* 8068EF58  4B 9F 53 68 */	b ChkAtHit__12dCcD_GObjInfFv
/* 8068EF5C  28 03 00 00 */	cmplwi r3, 0
/* 8068EF60  41 82 00 14 */	beq lbl_8068EF74
/* 8068EF64  38 7F 0B 9C */	addi r3, r31, 0xb9c
/* 8068EF68  4B 9F 53 F0 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 8068EF6C  4B BD 4A DC */	b GetAc__8cCcD_ObjFv
/* 8068EF70  48 00 00 08 */	b lbl_8068EF78
lbl_8068EF74:
/* 8068EF74  38 60 00 00 */	li r3, 0
lbl_8068EF78:
/* 8068EF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068EF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068EF80  7C 08 03 A6 */	mtlr r0
/* 8068EF84  38 21 00 10 */	addi r1, r1, 0x10
/* 8068EF88  4E 80 00 20 */	blr 
