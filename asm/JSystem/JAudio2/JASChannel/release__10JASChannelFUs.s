lbl_8029AAD0:
/* 8029AAD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029AAD4  7C 08 02 A6 */	mflr r0
/* 8029AAD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029AADC  39 61 00 20 */	addi r11, r1, 0x20
/* 8029AAE0  48 0C 76 FD */	bl _savegpr_29
/* 8029AAE4  7C 7D 1B 78 */	mr r29, r3
/* 8029AAE8  80 03 00 00 */	lwz r0, 0(r3)
/* 8029AAEC  2C 00 00 01 */	cmpwi r0, 1
/* 8029AAF0  40 82 00 5C */	bne lbl_8029AB4C
/* 8029AAF4  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 8029AAF8  41 82 00 08 */	beq lbl_8029AB00
/* 8029AAFC  B0 9D 00 32 */	sth r4, 0x32(r29)
lbl_8029AB00:
/* 8029AB00  3B C0 00 00 */	li r30, 0
/* 8029AB04  3B E0 00 00 */	li r31, 0
lbl_8029AB08:
/* 8029AB08  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8029AB0C  7C 7D 1A 14 */	add r3, r29, r3
/* 8029AB10  80 03 00 00 */	lwz r0, 0(r3)
/* 8029AB14  28 00 00 00 */	cmplwi r0, 0
/* 8029AB18  41 82 00 08 */	beq lbl_8029AB20
/* 8029AB1C  48 00 14 C9 */	bl release__13JASOscillatorFv
lbl_8029AB20:
/* 8029AB20  3B DE 00 01 */	addi r30, r30, 1
/* 8029AB24  28 1E 00 02 */	cmplwi r30, 2
/* 8029AB28  3B FF 00 20 */	addi r31, r31, 0x20
/* 8029AB2C  41 80 FF DC */	blt lbl_8029AB08
/* 8029AB30  A0 1D 00 98 */	lhz r0, 0x98(r29)
/* 8029AB34  7C 00 46 70 */	srawi r0, r0, 8
/* 8029AB38  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8029AB3C  80 7D 00 08 */	lwz r3, 8(r29)
/* 8029AB40  48 00 29 F5 */	bl setPriority__13JASDSPChannelFUc
/* 8029AB44  38 00 00 02 */	li r0, 2
/* 8029AB48  90 1D 00 00 */	stw r0, 0(r29)
lbl_8029AB4C:
/* 8029AB4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029AB50  48 0C 76 D9 */	bl _restgpr_29
/* 8029AB54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029AB58  7C 08 03 A6 */	mtlr r0
/* 8029AB5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029AB60  4E 80 00 20 */	blr 
