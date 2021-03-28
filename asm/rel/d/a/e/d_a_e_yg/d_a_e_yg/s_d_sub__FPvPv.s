lbl_807F8A68:
/* 807F8A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F8A6C  7C 08 02 A6 */	mflr r0
/* 807F8A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F8A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F8A78  7C 7F 1B 78 */	mr r31, r3
/* 807F8A7C  4B 82 02 64 */	b fopAc_IsActor__FPv
/* 807F8A80  2C 03 00 00 */	cmpwi r3, 0
/* 807F8A84  41 82 00 48 */	beq lbl_807F8ACC
/* 807F8A88  A8 1F 00 08 */	lha r0, 8(r31)
/* 807F8A8C  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 807F8A90  40 82 00 3C */	bne lbl_807F8ACC
/* 807F8A94  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 807F8A98  2C 00 00 05 */	cmpwi r0, 5
/* 807F8A9C  40 82 00 30 */	bne lbl_807F8ACC
/* 807F8AA0  3C 60 80 80 */	lis r3, target_info_count@ha
/* 807F8AA4  38 83 D1 24 */	addi r4, r3, target_info_count@l
/* 807F8AA8  80 A4 00 00 */	lwz r5, 0(r4)
/* 807F8AAC  2C 05 00 14 */	cmpwi r5, 0x14
/* 807F8AB0  40 80 00 1C */	bge lbl_807F8ACC
/* 807F8AB4  54 A0 10 3A */	slwi r0, r5, 2
/* 807F8AB8  3C 60 80 80 */	lis r3, target_info@ha
/* 807F8ABC  38 63 D0 D4 */	addi r3, r3, target_info@l
/* 807F8AC0  7F E3 01 2E */	stwx r31, r3, r0
/* 807F8AC4  38 05 00 01 */	addi r0, r5, 1
/* 807F8AC8  90 04 00 00 */	stw r0, 0(r4)
lbl_807F8ACC:
/* 807F8ACC  38 60 00 00 */	li r3, 0
/* 807F8AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F8AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F8AD8  7C 08 03 A6 */	mtlr r0
/* 807F8ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 807F8AE0  4E 80 00 20 */	blr 
