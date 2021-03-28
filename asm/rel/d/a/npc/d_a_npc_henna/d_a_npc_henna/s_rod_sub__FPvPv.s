lbl_80543E68:
/* 80543E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80543E6C  7C 08 02 A6 */	mflr r0
/* 80543E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80543E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80543E78  7C 7F 1B 78 */	mr r31, r3
/* 80543E7C  4B AD 4E 64 */	b fopAc_IsActor__FPv
/* 80543E80  2C 03 00 00 */	cmpwi r3, 0
/* 80543E84  41 82 00 18 */	beq lbl_80543E9C
/* 80543E88  A8 1F 00 08 */	lha r0, 8(r31)
/* 80543E8C  2C 00 02 E4 */	cmpwi r0, 0x2e4
/* 80543E90  40 82 00 0C */	bne lbl_80543E9C
/* 80543E94  7F E3 FB 78 */	mr r3, r31
/* 80543E98  48 00 00 08 */	b lbl_80543EA0
lbl_80543E9C:
/* 80543E9C  38 60 00 00 */	li r3, 0
lbl_80543EA0:
/* 80543EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80543EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543EA8  7C 08 03 A6 */	mtlr r0
/* 80543EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80543EB0  4E 80 00 20 */	blr 
