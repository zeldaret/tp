lbl_80C3F4D4:
/* 80C3F4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3F4D8  7C 08 02 A6 */	mflr r0
/* 80C3F4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3F4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3F4E4  7C 7F 1B 78 */	mr r31, r3
/* 80C3F4E8  4B 3D 97 F9 */	bl fopAc_IsActor__FPv
/* 80C3F4EC  2C 03 00 00 */	cmpwi r3, 0
/* 80C3F4F0  41 82 00 38 */	beq lbl_80C3F528
/* 80C3F4F4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80C3F4F8  2C 00 01 13 */	cmpwi r0, 0x113
/* 80C3F4FC  40 82 00 2C */	bne lbl_80C3F528
/* 80C3F500  A8 1F 05 60 */	lha r0, 0x560(r31)
/* 80C3F504  2C 00 00 00 */	cmpwi r0, 0
/* 80C3F508  41 82 00 20 */	beq lbl_80C3F528
/* 80C3F50C  3C 60 80 C4 */	lis r3, target_info_count@ha /* 0x80C41158@ha */
/* 80C3F510  38 83 11 58 */	addi r4, r3, target_info_count@l /* 0x80C41158@l */
/* 80C3F514  A8 04 00 00 */	lha r0, 0(r4)
/* 80C3F518  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80C3F51C  A8 64 00 00 */	lha r3, 0(r4)
/* 80C3F520  38 03 00 01 */	addi r0, r3, 1
/* 80C3F524  B0 04 00 00 */	sth r0, 0(r4)
lbl_80C3F528:
/* 80C3F528  38 60 00 00 */	li r3, 0
/* 80C3F52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3F530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3F534  7C 08 03 A6 */	mtlr r0
/* 80C3F538  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3F53C  4E 80 00 20 */	blr 
