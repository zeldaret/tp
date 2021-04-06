lbl_80A9E700:
/* 80A9E700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9E704  7C 08 02 A6 */	mflr r0
/* 80A9E708  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9E70C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E710  4B 8C 3A C9 */	bl _savegpr_28
/* 80A9E714  7C 7C 1B 78 */	mr r28, r3
/* 80A9E718  3B A0 00 00 */	li r29, 0
/* 80A9E71C  3B E0 00 00 */	li r31, 0
lbl_80A9E720:
/* 80A9E720  38 1D 00 02 */	addi r0, r29, 2
/* 80A9E724  54 03 18 38 */	slwi r3, r0, 3
/* 80A9E728  38 63 0F 8C */	addi r3, r3, 0xf8c
/* 80A9E72C  7C 7C 1A 14 */	add r3, r28, r3
/* 80A9E730  4B 6A 6F D9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E734  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A9E738  41 82 00 1C */	beq lbl_80A9E754
/* 80A9E73C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80A9E740  81 9E 05 A4 */	lwz r12, 0x5a4(r30)
/* 80A9E744  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A9E748  7D 89 03 A6 */	mtctr r12
/* 80A9E74C  4E 80 04 21 */	bctrl 
/* 80A9E750  93 FE 06 E4 */	stw r31, 0x6e4(r30)
lbl_80A9E754:
/* 80A9E754  3B BD 00 01 */	addi r29, r29, 1
/* 80A9E758  2C 1D 00 04 */	cmpwi r29, 4
/* 80A9E75C  41 80 FF C4 */	blt lbl_80A9E720
/* 80A9E760  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E764  4B 8C 3A C1 */	bl _restgpr_28
/* 80A9E768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9E76C  7C 08 03 A6 */	mtlr r0
/* 80A9E770  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9E774  4E 80 00 20 */	blr 
