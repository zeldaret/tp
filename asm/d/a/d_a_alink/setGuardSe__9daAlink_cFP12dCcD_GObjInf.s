lbl_800DD114:
/* 800DD114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DD118  7C 08 02 A6 */	mflr r0
/* 800DD11C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DD120  39 61 00 20 */	addi r11, r1, 0x20
/* 800DD124  48 28 50 B5 */	bl _savegpr_28
/* 800DD128  7C 7C 1B 78 */	mr r28, r3
/* 800DD12C  7C 9D 23 78 */	mr r29, r4
/* 800DD130  4B FF F8 FD */	bl checkWoodShieldEquipNotIronBall__9daAlink_cCFv
/* 800DD134  2C 03 00 00 */	cmpwi r3, 0
/* 800DD138  41 82 00 20 */	beq lbl_800DD158
/* 800DD13C  7F 83 E3 78 */	mr r3, r28
/* 800DD140  4B FF A6 89 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 800DD144  2C 03 00 00 */	cmpwi r3, 0
/* 800DD148  40 82 00 10 */	bne lbl_800DD158
/* 800DD14C  3B E0 00 29 */	li r31, 0x29
/* 800DD150  3B C0 00 00 */	li r30, 0
/* 800DD154  48 00 00 0C */	b lbl_800DD160
lbl_800DD158:
/* 800DD158  3B E0 00 28 */	li r31, 0x28
/* 800DD15C  3B C0 00 01 */	li r30, 1
lbl_800DD160:
/* 800DD160  7F A3 EB 78 */	mr r3, r29
/* 800DD164  4B FA 73 E5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 800DD168  28 03 00 00 */	cmplwi r3, 0
/* 800DD16C  41 82 00 24 */	beq lbl_800DD190
/* 800DD170  7F A3 EB 78 */	mr r3, r29
/* 800DD174  4B FA 73 D5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 800DD178  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800DD17C  28 00 00 20 */	cmplwi r0, 0x20
/* 800DD180  40 82 00 10 */	bne lbl_800DD190
/* 800DD184  3C 60 00 04 */	lis r3, 0x0004 /* 0x0004000B@ha */
/* 800DD188  38 83 00 0B */	addi r4, r3, 0x000B /* 0x0004000B@l */
/* 800DD18C  48 00 00 18 */	b lbl_800DD1A4
lbl_800DD190:
/* 800DD190  7F A3 EB 78 */	mr r3, r29
/* 800DD194  4B FA 73 E9 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 800DD198  7F C4 F3 78 */	mr r4, r30
/* 800DD19C  4B FA 74 15 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 800DD1A0  7C 64 1B 78 */	mr r4, r3
lbl_800DD1A4:
/* 800DD1A4  38 7C 2C A8 */	addi r3, r28, 0x2ca8
/* 800DD1A8  7F E5 FB 78 */	mr r5, r31
/* 800DD1AC  81 9C 2C A8 */	lwz r12, 0x2ca8(r28)
/* 800DD1B0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800DD1B4  7D 89 03 A6 */	mtctr r12
/* 800DD1B8  4E 80 04 21 */	bctrl 
/* 800DD1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 800DD1C0  48 28 50 65 */	bl _restgpr_28
/* 800DD1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DD1C8  7C 08 03 A6 */	mtlr r0
/* 800DD1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 800DD1D0  4E 80 00 20 */	blr 
