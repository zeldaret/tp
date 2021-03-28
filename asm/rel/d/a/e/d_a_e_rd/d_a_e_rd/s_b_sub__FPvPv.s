lbl_80505D80:
/* 80505D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505D84  7C 08 02 A6 */	mflr r0
/* 80505D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80505D90  7C 7F 1B 78 */	mr r31, r3
/* 80505D94  4B B1 2F 4C */	b fopAc_IsActor__FPv
/* 80505D98  2C 03 00 00 */	cmpwi r3, 0
/* 80505D9C  41 82 00 48 */	beq lbl_80505DE4
/* 80505DA0  A8 1F 00 08 */	lha r0, 8(r31)
/* 80505DA4  2C 00 02 21 */	cmpwi r0, 0x221
/* 80505DA8  40 82 00 3C */	bne lbl_80505DE4
/* 80505DAC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80505DB0  28 00 00 00 */	cmplwi r0, 0
/* 80505DB4  41 82 00 30 */	beq lbl_80505DE4
/* 80505DB8  3C 60 80 52 */	lis r3, target_info_count@ha
/* 80505DBC  38 83 92 2C */	addi r4, r3, target_info_count@l
/* 80505DC0  80 A4 00 00 */	lwz r5, 0(r4)
/* 80505DC4  2C 05 00 0A */	cmpwi r5, 0xa
/* 80505DC8  40 80 00 1C */	bge lbl_80505DE4
/* 80505DCC  54 A0 10 3A */	slwi r0, r5, 2
/* 80505DD0  3C 60 80 52 */	lis r3, target_info@ha
/* 80505DD4  38 63 92 04 */	addi r3, r3, target_info@l
/* 80505DD8  7F E3 01 2E */	stwx r31, r3, r0
/* 80505DDC  38 05 00 01 */	addi r0, r5, 1
/* 80505DE0  90 04 00 00 */	stw r0, 0(r4)
lbl_80505DE4:
/* 80505DE4  38 60 00 00 */	li r3, 0
/* 80505DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80505DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505DF0  7C 08 03 A6 */	mtlr r0
/* 80505DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80505DF8  4E 80 00 20 */	blr 
