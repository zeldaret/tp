lbl_8078A67C:
/* 8078A67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078A680  7C 08 02 A6 */	mflr r0
/* 8078A684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078A688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078A68C  7C 7F 1B 78 */	mr r31, r3
/* 8078A690  4B 88 E6 51 */	bl fopAc_IsActor__FPv
/* 8078A694  2C 03 00 00 */	cmpwi r3, 0
/* 8078A698  41 82 00 3C */	beq lbl_8078A6D4
/* 8078A69C  A8 1F 00 08 */	lha r0, 8(r31)
/* 8078A6A0  2C 00 02 EF */	cmpwi r0, 0x2ef
/* 8078A6A4  40 82 00 30 */	bne lbl_8078A6D4
/* 8078A6A8  3C 60 80 79 */	lis r3, target_info_count@ha /* 0x8078E1C0@ha */
/* 8078A6AC  38 83 E1 C0 */	addi r4, r3, target_info_count@l /* 0x8078E1C0@l */
/* 8078A6B0  80 A4 00 00 */	lwz r5, 0(r4)
/* 8078A6B4  2C 05 00 0A */	cmpwi r5, 0xa
/* 8078A6B8  40 80 00 1C */	bge lbl_8078A6D4
/* 8078A6BC  54 A0 10 3A */	slwi r0, r5, 2
/* 8078A6C0  3C 60 80 79 */	lis r3, target_info@ha /* 0x8078E108@ha */
/* 8078A6C4  38 63 E1 08 */	addi r3, r3, target_info@l /* 0x8078E108@l */
/* 8078A6C8  7F E3 01 2E */	stwx r31, r3, r0
/* 8078A6CC  38 05 00 01 */	addi r0, r5, 1
/* 8078A6D0  90 04 00 00 */	stw r0, 0(r4)
lbl_8078A6D4:
/* 8078A6D4  38 60 00 00 */	li r3, 0
/* 8078A6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078A6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078A6E0  7C 08 03 A6 */	mtlr r0
/* 8078A6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8078A6E8  4E 80 00 20 */	blr 
