lbl_80822D4C:
/* 80822D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80822D50  7C 08 02 A6 */	mflr r0
/* 80822D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80822D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80822D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80822D60  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80822D64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80822D68  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80822D6C  7D 89 03 A6 */	mtctr r12
/* 80822D70  4E 80 04 21 */	bctrl 
/* 80822D74  28 03 00 00 */	cmplwi r3, 0
/* 80822D78  41 82 00 2C */	beq lbl_80822DA4
/* 80822D7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80822D80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80822D84  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80822D88  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80822D8C  3C 60 80 83 */	lis r3, lit_4295@ha /* 0x8082889C@ha */
/* 80822D90  C0 03 88 9C */	lfs f0, lit_4295@l(r3)  /* 0x8082889C@l */
/* 80822D94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80822D98  40 81 00 0C */	ble lbl_80822DA4
/* 80822D9C  38 60 00 01 */	li r3, 1
/* 80822DA0  48 00 00 08 */	b lbl_80822DA8
lbl_80822DA4:
/* 80822DA4  38 60 00 00 */	li r3, 0
lbl_80822DA8:
/* 80822DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80822DAC  7C 08 03 A6 */	mtlr r0
/* 80822DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80822DB4  4E 80 00 20 */	blr 
