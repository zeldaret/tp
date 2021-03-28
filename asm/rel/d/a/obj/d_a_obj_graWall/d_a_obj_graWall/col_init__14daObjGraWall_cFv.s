lbl_80C10E80:
/* 80C10E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10E84  7C 08 02 A6 */	mflr r0
/* 80C10E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10E8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C10E90  7C 7F 1B 78 */	mr r31, r3
/* 80C10E94  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C10E98  38 80 00 FF */	li r4, 0xff
/* 80C10E9C  38 A0 00 FF */	li r5, 0xff
/* 80C10EA0  7F E6 FB 78 */	mr r6, r31
/* 80C10EA4  4B 47 29 BC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C10EA8  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80C10EAC  3C 80 80 C1 */	lis r4, l_cyl_src@ha
/* 80C10EB0  38 84 0F B8 */	addi r4, r4, l_cyl_src@l
/* 80C10EB4  4B 47 3A 00 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C10EB8  38 1F 05 68 */	addi r0, r31, 0x568
/* 80C10EBC  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80C10EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C10EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10EC8  7C 08 03 A6 */	mtlr r0
/* 80C10ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10ED0  4E 80 00 20 */	blr 
