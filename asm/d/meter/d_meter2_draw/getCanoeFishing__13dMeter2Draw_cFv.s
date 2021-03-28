lbl_8021BBB4:
/* 8021BBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021BBB8  7C 08 02 A6 */	mflr r0
/* 8021BBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021BBC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021BBC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021BBC8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8021BBCC  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha
/* 8021BBD0  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l
/* 8021BBD4  38 84 01 9F */	addi r4, r4, 0x19f
/* 8021BBD8  48 14 CD BD */	bl strcmp
/* 8021BBDC  2C 03 00 00 */	cmpwi r3, 0
/* 8021BBE0  40 82 00 30 */	bne lbl_8021BC10
/* 8021BBE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021BBE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021BBEC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8021BBF0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8021BBF4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8021BBF8  7D 89 03 A6 */	mtctr r12
/* 8021BBFC  4E 80 04 21 */	bctrl 
/* 8021BC00  28 03 00 00 */	cmplwi r3, 0
/* 8021BC04  41 82 00 0C */	beq lbl_8021BC10
/* 8021BC08  38 60 00 01 */	li r3, 1
/* 8021BC0C  48 00 00 08 */	b lbl_8021BC14
lbl_8021BC10:
/* 8021BC10  38 60 00 00 */	li r3, 0
lbl_8021BC14:
/* 8021BC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021BC18  7C 08 03 A6 */	mtlr r0
/* 8021BC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8021BC20  4E 80 00 20 */	blr 
