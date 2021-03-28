lbl_8031D758:
/* 8031D758  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031D75C  7C 08 02 A6 */	mflr r0
/* 8031D760  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031D764  39 61 00 20 */	addi r11, r1, 0x20
/* 8031D768  48 04 4A 75 */	bl _savegpr_29
/* 8031D76C  7C 7D 1B 78 */	mr r29, r3
/* 8031D770  3B C0 00 00 */	li r30, 0
/* 8031D774  3B E0 00 00 */	li r31, 0
lbl_8031D778:
/* 8031D778  38 9F 00 08 */	addi r4, r31, 8
/* 8031D77C  7C 9D 22 14 */	add r4, r29, r4
/* 8031D780  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031D784  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031D788  41 82 00 0C */	beq lbl_8031D794
/* 8031D78C  7F C3 F3 78 */	mr r3, r30
/* 8031D790  48 00 68 05 */	bl loadTexNo__FUlRCUs
lbl_8031D794:
/* 8031D794  3B DE 00 01 */	addi r30, r30, 1
/* 8031D798  28 1E 00 04 */	cmplwi r30, 4
/* 8031D79C  3B FF 00 02 */	addi r31, r31, 2
/* 8031D7A0  41 80 FF D8 */	blt lbl_8031D778
/* 8031D7A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8031D7A8  48 04 4A 81 */	bl _restgpr_29
/* 8031D7AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031D7B0  7C 08 03 A6 */	mtlr r0
/* 8031D7B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8031D7B8  4E 80 00 20 */	blr 
