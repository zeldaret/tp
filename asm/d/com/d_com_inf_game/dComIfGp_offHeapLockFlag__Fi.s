lbl_8002E188:
/* 8002E188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E18C  7C 08 02 A6 */	mflr r0
/* 8002E190  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002E198  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002E19C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8002E1A0  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 8002E1A4  28 00 00 05 */	cmplwi r0, 5
/* 8002E1A8  40 82 00 64 */	bne lbl_8002E20C
/* 8002E1AC  2C 03 00 07 */	cmpwi r3, 7
/* 8002E1B0  41 82 00 0C */	beq lbl_8002E1BC
/* 8002E1B4  2C 03 00 08 */	cmpwi r3, 8
/* 8002E1B8  40 82 00 5C */	bne lbl_8002E214
lbl_8002E1BC:
/* 8002E1BC  48 00 01 CD */	bl dComIfGp_searchUseSubHeap2D__Fi
/* 8002E1C0  2C 03 00 00 */	cmpwi r3, 0
/* 8002E1C4  41 80 00 18 */	blt lbl_8002E1DC
/* 8002E1C8  38 A0 00 00 */	li r5, 0
/* 8002E1CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002E1D0  38 04 61 C0 */	addi r0, r4, g_dComIfG_gameInfo@l
/* 8002E1D4  7C 60 1A 14 */	add r3, r0, r3
/* 8002E1D8  98 A3 5E 90 */	stb r5, 0x5e90(r3)
lbl_8002E1DC:
/* 8002E1DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E1E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E1E4  88 03 5E 90 */	lbz r0, 0x5e90(r3)
/* 8002E1E8  28 00 00 00 */	cmplwi r0, 0
/* 8002E1EC  40 82 00 28 */	bne lbl_8002E214
/* 8002E1F0  88 03 5E 91 */	lbz r0, 0x5e91(r3)
/* 8002E1F4  28 00 00 00 */	cmplwi r0, 0
/* 8002E1F8  40 82 00 1C */	bne lbl_8002E214
/* 8002E1FC  48 00 00 E1 */	bl dComIfGp_destroySubExpHeap2D__Fv
/* 8002E200  38 00 00 00 */	li r0, 0
/* 8002E204  98 1F 5E 8F */	stb r0, 0x5e8f(r31)
/* 8002E208  48 00 00 0C */	b lbl_8002E214
lbl_8002E20C:
/* 8002E20C  38 00 00 00 */	li r0, 0
/* 8002E210  98 1F 5E 8F */	stb r0, 0x5e8f(r31)
lbl_8002E214:
/* 8002E214  38 60 00 01 */	li r3, 1
/* 8002E218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002E21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E220  7C 08 03 A6 */	mtlr r0
/* 8002E224  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E228  4E 80 00 20 */	blr 
