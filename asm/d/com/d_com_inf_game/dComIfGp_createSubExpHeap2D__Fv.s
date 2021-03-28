lbl_8002E22C:
/* 8002E22C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8002E230  7C 08 02 A6 */	mflr r0
/* 8002E234  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002E238  39 61 00 30 */	addi r11, r1, 0x30
/* 8002E23C  48 33 3F 95 */	bl _savegpr_26
/* 8002E240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E244  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8002E248  80 7D 5E BC */	lwz r3, 0x5ebc(r29)
/* 8002E24C  48 2A 05 39 */	bl getTotalFreeSize__7JKRHeapFv
/* 8002E250  C8 22 83 10 */	lfd f1, lit_6337(r2)
/* 8002E254  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8002E258  90 01 00 0C */	stw r0, 0xc(r1)
/* 8002E25C  3C 00 43 30 */	lis r0, 0x4330
/* 8002E260  90 01 00 08 */	stw r0, 8(r1)
/* 8002E264  C8 01 00 08 */	lfd f0, 8(r1)
/* 8002E268  EC 20 08 28 */	fsubs f1, f0, f1
/* 8002E26C  C0 02 83 08 */	lfs f0, lit_6335(r2)
/* 8002E270  EC 20 00 72 */	fmuls f1, f0, f1
/* 8002E274  48 33 3E 39 */	bl __cvt_fp2unsigned
/* 8002E278  7C 7B 1B 78 */	mr r27, r3
/* 8002E27C  3B 40 00 00 */	li r26, 0
/* 8002E280  3B E0 00 00 */	li r31, 0
/* 8002E284  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E288  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_8002E28C:
/* 8002E28C  7C 7E FA 14 */	add r3, r30, r31
/* 8002E290  3B 83 5E C0 */	addi r28, r3, 0x5ec0
/* 8002E294  80 03 5E C0 */	lwz r0, 0x5ec0(r3)
/* 8002E298  28 00 00 00 */	cmplwi r0, 0
/* 8002E29C  40 82 00 18 */	bne lbl_8002E2B4
/* 8002E2A0  7F 63 DB 78 */	mr r3, r27
/* 8002E2A4  80 9D 5E BC */	lwz r4, 0x5ebc(r29)
/* 8002E2A8  38 A0 00 00 */	li r5, 0
/* 8002E2AC  48 2A 0B 81 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8002E2B0  90 7C 00 00 */	stw r3, 0(r28)
lbl_8002E2B4:
/* 8002E2B4  3B 5A 00 01 */	addi r26, r26, 1
/* 8002E2B8  2C 1A 00 02 */	cmpwi r26, 2
/* 8002E2BC  3B FF 00 04 */	addi r31, r31, 4
/* 8002E2C0  41 80 FF CC */	blt lbl_8002E28C
/* 8002E2C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8002E2C8  48 33 3F 55 */	bl _restgpr_26
/* 8002E2CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8002E2D0  7C 08 03 A6 */	mtlr r0
/* 8002E2D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8002E2D8  4E 80 00 20 */	blr 
