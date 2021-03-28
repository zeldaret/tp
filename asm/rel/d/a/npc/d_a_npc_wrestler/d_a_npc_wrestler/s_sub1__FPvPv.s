lbl_80B30B80:
/* 80B30B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B30B84  7C 08 02 A6 */	mflr r0
/* 80B30B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B30B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B30B90  93 C1 00 08 */	stw r30, 8(r1)
/* 80B30B94  7C 7E 1B 78 */	mr r30, r3
/* 80B30B98  7C 9F 23 78 */	mr r31, r4
/* 80B30B9C  4B 4E 81 44 */	b fopAc_IsActor__FPv
/* 80B30BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80B30BA4  41 82 00 2C */	beq lbl_80B30BD0
/* 80B30BA8  A8 1E 00 08 */	lha r0, 8(r30)
/* 80B30BAC  2C 00 02 4C */	cmpwi r0, 0x24c
/* 80B30BB0  40 82 00 20 */	bne lbl_80B30BD0
/* 80B30BB4  7F E3 FB 78 */	mr r3, r31
/* 80B30BB8  7F C4 F3 78 */	mr r4, r30
/* 80B30BBC  48 00 00 E9 */	bl checkArenaSub__15daNpcWrestler_cFP10fopAc_ac_c
/* 80B30BC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B30BC4  41 82 00 0C */	beq lbl_80B30BD0
/* 80B30BC8  7F C3 F3 78 */	mr r3, r30
/* 80B30BCC  48 00 00 08 */	b lbl_80B30BD4
lbl_80B30BD0:
/* 80B30BD0  38 60 00 00 */	li r3, 0
lbl_80B30BD4:
/* 80B30BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B30BD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B30BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B30BE0  7C 08 03 A6 */	mtlr r0
/* 80B30BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B30BE8  4E 80 00 20 */	blr 
