lbl_80BDEC10:
/* 80BDEC10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDEC14  7C 08 02 A6 */	mflr r0
/* 80BDEC18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDEC1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDEC20  7C 7F 1B 78 */	mr r31, r3
/* 80BDEC24  3C 60 80 BE */	lis r3, l_swOffset@ha
/* 80BDEC28  38 63 F8 70 */	addi r3, r3, l_swOffset@l
/* 80BDEC2C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80BDEC30  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 80BDEC34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BDEC38  40 82 00 48 */	bne lbl_80BDEC80
/* 80BDEC3C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BDEC40  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BDEC44  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 80BDEC48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BDEC4C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BDEC50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDEC54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDEC58  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BDEC5C  38 80 00 04 */	li r4, 4
/* 80BDEC60  38 A0 00 1F */	li r5, 0x1f
/* 80BDEC64  38 C1 00 08 */	addi r6, r1, 8
/* 80BDEC68  4B 49 0D BC */	b StartShock__12dVibration_cFii4cXyz
/* 80BDEC6C  7F E3 FB 78 */	mr r3, r31
/* 80BDEC70  48 00 00 25 */	bl modeSwWaitUpperInit__17daObjDmElevator_cFv
/* 80BDEC74  38 00 00 01 */	li r0, 1
/* 80BDEC78  98 1F 06 2B */	stb r0, 0x62b(r31)
/* 80BDEC7C  98 1F 06 2D */	stb r0, 0x62d(r31)
lbl_80BDEC80:
/* 80BDEC80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDEC84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDEC88  7C 08 03 A6 */	mtlr r0
/* 80BDEC8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDEC90  4E 80 00 20 */	blr 
