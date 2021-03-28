lbl_80BDED64:
/* 80BDED64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDED68  7C 08 02 A6 */	mflr r0
/* 80BDED6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDED70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDED74  7C 7F 1B 78 */	mr r31, r3
/* 80BDED78  3C 60 80 BE */	lis r3, lit_3719@ha
/* 80BDED7C  C0 23 F8 80 */	lfs f1, lit_3719@l(r3)
/* 80BDED80  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 80BDED84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BDED88  40 82 00 44 */	bne lbl_80BDEDCC
/* 80BDED8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BDED90  3C 60 80 BE */	lis r3, lit_4092@ha
/* 80BDED94  C0 03 F8 D8 */	lfs f0, lit_4092@l(r3)
/* 80BDED98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BDED9C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BDEDA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDEDA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDEDA8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BDEDAC  38 80 00 04 */	li r4, 4
/* 80BDEDB0  38 A0 00 1F */	li r5, 0x1f
/* 80BDEDB4  38 C1 00 08 */	addi r6, r1, 8
/* 80BDEDB8  4B 49 0C 6C */	b StartShock__12dVibration_cFii4cXyz
/* 80BDEDBC  7F E3 FB 78 */	mr r3, r31
/* 80BDEDC0  4B FF FC 5D */	bl modeSwWaitLowerInit__17daObjDmElevator_cFv
/* 80BDEDC4  38 00 00 00 */	li r0, 0
/* 80BDEDC8  98 1F 06 2B */	stb r0, 0x62b(r31)
lbl_80BDEDCC:
/* 80BDEDCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDEDD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDEDD4  7C 08 03 A6 */	mtlr r0
/* 80BDEDD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDEDDC  4E 80 00 20 */	blr 
