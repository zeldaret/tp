lbl_80CC2220:
/* 80CC2220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC2224  7C 08 02 A6 */	mflr r0
/* 80CC2228  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC222C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC2230  4B 69 FF AD */	bl _savegpr_29
/* 80CC2234  7C 7D 1B 78 */	mr r29, r3
/* 80CC2238  3B C0 00 00 */	li r30, 0
/* 80CC223C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC2240  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80CC2244:
/* 80CC2244  7F E3 FB 78 */	mr r3, r31
/* 80CC2248  A0 1D 05 CA */	lhz r0, 0x5ca(r29)
/* 80CC224C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CC2250  7C 9E 02 14 */	add r4, r30, r0
/* 80CC2254  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CC2258  7C 05 07 74 */	extsb r5, r0
/* 80CC225C  4B 37 31 05 */	bl isSwitch__10dSv_info_cCFii
/* 80CC2260  38 1E 05 D6 */	addi r0, r30, 0x5d6
/* 80CC2264  7C 1D 00 AE */	lbzx r0, r29, r0
/* 80CC2268  7C 00 18 00 */	cmpw r0, r3
/* 80CC226C  41 82 00 0C */	beq lbl_80CC2278
/* 80CC2270  7F C3 F3 78 */	mr r3, r30
/* 80CC2274  48 00 00 14 */	b lbl_80CC2288
lbl_80CC2278:
/* 80CC2278  3B DE 00 01 */	addi r30, r30, 1
/* 80CC227C  2C 1E 00 04 */	cmpwi r30, 4
/* 80CC2280  41 80 FF C4 */	blt lbl_80CC2244
/* 80CC2284  38 60 FF FF */	li r3, -1
lbl_80CC2288:
/* 80CC2288  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC228C  4B 69 FF 9D */	bl _restgpr_29
/* 80CC2290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC2294  7C 08 03 A6 */	mtlr r0
/* 80CC2298  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC229C  4E 80 00 20 */	blr 
