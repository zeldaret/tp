lbl_8004BDFC:
/* 8004BDFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004BE00  7C 08 02 A6 */	mflr r0
/* 8004BE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004BE08  39 61 00 20 */	addi r11, r1, 0x20
/* 8004BE0C  48 31 63 D1 */	bl _savegpr_29
/* 8004BE10  7C 7D 1B 78 */	mr r29, r3
/* 8004BE14  7C 9E 23 78 */	mr r30, r4
/* 8004BE18  7C BF 2B 78 */	mr r31, r5
/* 8004BE1C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8004BE20  28 03 00 FF */	cmplwi r3, 0xff
/* 8004BE24  41 82 00 10 */	beq lbl_8004BE34
/* 8004BE28  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8004BE2C  7C 03 00 40 */	cmplw r3, r0
/* 8004BE30  40 82 00 0C */	bne lbl_8004BE3C
lbl_8004BE34:
/* 8004BE34  38 60 00 00 */	li r3, 0
/* 8004BE38  48 00 00 60 */	b lbl_8004BE98
lbl_8004BE3C:
/* 8004BE3C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8004BE40  28 03 00 00 */	cmplwi r3, 0
/* 8004BE44  41 82 00 14 */	beq lbl_8004BE58
/* 8004BE48  38 80 00 00 */	li r4, 0
/* 8004BE4C  48 28 26 B5 */	bl free__7JKRHeapFPvP7JKRHeap
/* 8004BE50  38 00 00 00 */	li r0, 0
/* 8004BE54  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_8004BE58:
/* 8004BE58  9B DD 00 18 */	stb r30, 0x18(r29)
/* 8004BE5C  3C 60 80 42 */	lis r3, jpcName@ha
/* 8004BE60  38 63 48 AC */	addi r3, r3, jpcName@l
/* 8004BE64  3C 80 80 38 */	lis r4, d_particle_d_particle__stringBase0@ha
/* 8004BE68  38 84 A1 2C */	addi r4, r4, d_particle_d_particle__stringBase0@l
/* 8004BE6C  38 84 00 06 */	addi r4, r4, 6
/* 8004BE70  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8004BE74  4C C6 31 82 */	crclr 6
/* 8004BE78  48 31 A6 65 */	bl sprintf
/* 8004BE7C  3C 60 80 42 */	lis r3, jpcName@ha
/* 8004BE80  38 63 48 AC */	addi r3, r3, jpcName@l
/* 8004BE84  38 80 00 00 */	li r4, 0
/* 8004BE88  80 BD 00 08 */	lwz r5, 8(r29)
/* 8004BE8C  4B FC A5 09 */	bl create__21mDoDvdThd_toMainRam_cFPCcUcP7JKRHeap
/* 8004BE90  90 7F 00 00 */	stw r3, 0(r31)
/* 8004BE94  38 60 00 01 */	li r3, 1
lbl_8004BE98:
/* 8004BE98  39 61 00 20 */	addi r11, r1, 0x20
/* 8004BE9C  48 31 63 8D */	bl _restgpr_29
/* 8004BEA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004BEA4  7C 08 03 A6 */	mtlr r0
/* 8004BEA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8004BEAC  4E 80 00 20 */	blr 
