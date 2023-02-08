lbl_80CF45B8:
/* 80CF45B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF45BC  7C 08 02 A6 */	mflr r0
/* 80CF45C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF45C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF45C8  7C 7F 1B 78 */	mr r31, r3
/* 80CF45CC  4B 32 47 15 */	bl fopAc_IsActor__FPv
/* 80CF45D0  2C 03 00 00 */	cmpwi r3, 0
/* 80CF45D4  41 82 00 60 */	beq lbl_80CF4634
/* 80CF45D8  A8 1F 00 08 */	lha r0, 8(r31)
/* 80CF45DC  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80CF45E0  40 82 00 54 */	bne lbl_80CF4634
/* 80CF45E4  38 00 00 00 */	li r0, 0
/* 80CF45E8  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 80CF45EC  2C 03 00 08 */	cmpwi r3, 8
/* 80CF45F0  41 82 00 0C */	beq lbl_80CF45FC
/* 80CF45F4  2C 03 00 09 */	cmpwi r3, 9
/* 80CF45F8  40 82 00 08 */	bne lbl_80CF4600
lbl_80CF45FC:
/* 80CF45FC  38 00 00 01 */	li r0, 1
lbl_80CF4600:
/* 80CF4600  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CF4604  41 82 00 30 */	beq lbl_80CF4634
/* 80CF4608  3C 60 80 CF */	lis r3, l_target_info_count@ha /* 0x80CF5B18@ha */
/* 80CF460C  38 83 5B 18 */	addi r4, r3, l_target_info_count@l /* 0x80CF5B18@l */
/* 80CF4610  80 A4 00 00 */	lwz r5, 0(r4)
/* 80CF4614  2C 05 00 02 */	cmpwi r5, 2
/* 80CF4618  40 80 00 1C */	bge lbl_80CF4634
/* 80CF461C  54 A0 10 3A */	slwi r0, r5, 2
/* 80CF4620  3C 60 80 CF */	lis r3, l_target_info@ha /* 0x80CF5B10@ha */
/* 80CF4624  38 63 5B 10 */	addi r3, r3, l_target_info@l /* 0x80CF5B10@l */
/* 80CF4628  7F E3 01 2E */	stwx r31, r3, r0
/* 80CF462C  38 05 00 01 */	addi r0, r5, 1
/* 80CF4630  90 04 00 00 */	stw r0, 0(r4)
lbl_80CF4634:
/* 80CF4634  38 60 00 00 */	li r3, 0
/* 80CF4638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF463C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4640  7C 08 03 A6 */	mtlr r0
/* 80CF4644  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4648  4E 80 00 20 */	blr 
