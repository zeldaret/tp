lbl_800D21D0:
/* 800D21D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D21D4  7C 08 02 A6 */	mflr r0
/* 800D21D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D21DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D21E0  7C 7F 1B 78 */	mr r31, r3
/* 800D21E4  88 03 05 69 */	lbz r0, 0x569(r3)
/* 800D21E8  28 00 00 04 */	cmplwi r0, 4
/* 800D21EC  40 82 00 0C */	bne lbl_800D21F8
/* 800D21F0  38 80 00 01 */	li r4, 1
/* 800D21F4  4B FF F2 3D */	bl resetCombo__9daAlink_cFi
lbl_800D21F8:
/* 800D21F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D21FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D2200  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800D2204  28 00 00 04 */	cmplwi r0, 4
/* 800D2208  40 82 00 10 */	bne lbl_800D2218
/* 800D220C  7F E3 FB 78 */	mr r3, r31
/* 800D2210  38 80 00 00 */	li r4, 0
/* 800D2214  4B FE 10 3D */	bl setDoStatus__9daAlink_cFUc
lbl_800D2218:
/* 800D2218  88 7F 05 69 */	lbz r3, 0x569(r31)
/* 800D221C  38 03 00 01 */	addi r0, r3, 1
/* 800D2220  98 1F 05 69 */	stb r0, 0x569(r31)
/* 800D2224  38 00 00 00 */	li r0, 0
/* 800D2228  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800D222C  28 03 00 01 */	cmplwi r3, 1
/* 800D2230  41 82 00 0C */	beq lbl_800D223C
/* 800D2234  28 03 00 02 */	cmplwi r3, 2
/* 800D2238  40 82 00 08 */	bne lbl_800D2240
lbl_800D223C:
/* 800D223C  38 00 00 01 */	li r0, 1
lbl_800D2240:
/* 800D2240  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800D2244  41 82 00 28 */	beq lbl_800D226C
/* 800D2248  7F E3 FB 78 */	mr r3, r31
/* 800D224C  48 01 F1 8D */	bl procHorseCutInit__9daAlink_cFv
/* 800D2250  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 800D2254  28 00 00 01 */	cmplwi r0, 1
/* 800D2258  40 81 00 0C */	ble lbl_800D2264
/* 800D225C  38 00 00 01 */	li r0, 1
/* 800D2260  98 1F 05 69 */	stb r0, 0x569(r31)
lbl_800D2264:
/* 800D2264  38 60 00 01 */	li r3, 1
/* 800D2268  48 00 00 08 */	b lbl_800D2270
lbl_800D226C:
/* 800D226C  38 60 00 00 */	li r3, 0
lbl_800D2270:
/* 800D2270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D2274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D2278  7C 08 03 A6 */	mtlr r0
/* 800D227C  38 21 00 10 */	addi r1, r1, 0x10
/* 800D2280  4E 80 00 20 */	blr 
