lbl_80D2EC18:
/* 80D2EC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2EC1C  7C 08 02 A6 */	mflr r0
/* 80D2EC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2EC24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2EC28  7C 7F 1B 78 */	mr r31, r3
/* 80D2EC2C  4B 2E A0 B4 */	b fopAc_IsActor__FPv
/* 80D2EC30  2C 03 00 00 */	cmpwi r3, 0
/* 80D2EC34  41 82 00 58 */	beq lbl_80D2EC8C
/* 80D2EC38  A8 1F 00 08 */	lha r0, 8(r31)
/* 80D2EC3C  2C 00 02 21 */	cmpwi r0, 0x221
/* 80D2EC40  40 82 00 4C */	bne lbl_80D2EC8C
/* 80D2EC44  7F E3 FB 78 */	mr r3, r31
/* 80D2EC48  4B 30 33 AC */	b checkWaterBomb__7dBomb_cFP10fopAc_ac_c
/* 80D2EC4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2EC50  40 82 00 3C */	bne lbl_80D2EC8C
/* 80D2EC54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D2EC58  28 00 00 00 */	cmplwi r0, 0
/* 80D2EC5C  41 82 00 30 */	beq lbl_80D2EC8C
/* 80D2EC60  3C 60 80 D3 */	lis r3, target_info_count@ha
/* 80D2EC64  38 83 FE 78 */	addi r4, r3, target_info_count@l
/* 80D2EC68  80 A4 00 00 */	lwz r5, 0(r4)
/* 80D2EC6C  2C 05 00 0A */	cmpwi r5, 0xa
/* 80D2EC70  40 80 00 1C */	bge lbl_80D2EC8C
/* 80D2EC74  54 A0 10 3A */	slwi r0, r5, 2
/* 80D2EC78  3C 60 80 D3 */	lis r3, target_info@ha
/* 80D2EC7C  38 63 FE 50 */	addi r3, r3, target_info@l
/* 80D2EC80  7F E3 01 2E */	stwx r31, r3, r0
/* 80D2EC84  38 05 00 01 */	addi r0, r5, 1
/* 80D2EC88  90 04 00 00 */	stw r0, 0(r4)
lbl_80D2EC8C:
/* 80D2EC8C  38 60 00 00 */	li r3, 0
/* 80D2EC90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2EC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2EC98  7C 08 03 A6 */	mtlr r0
/* 80D2EC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2ECA0  4E 80 00 20 */	blr 
