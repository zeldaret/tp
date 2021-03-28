lbl_8031D3D0:
/* 8031D3D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031D3D4  7C 08 02 A6 */	mflr r0
/* 8031D3D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031D3DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8031D3E0  48 04 4D FD */	bl _savegpr_29
/* 8031D3E4  7C 7D 1B 78 */	mr r29, r3
/* 8031D3E8  3B C0 00 00 */	li r30, 0
/* 8031D3EC  3B E0 00 00 */	li r31, 0
lbl_8031D3F0:
/* 8031D3F0  38 9F 00 08 */	addi r4, r31, 8
/* 8031D3F4  7C 9D 22 14 */	add r4, r29, r4
/* 8031D3F8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031D3FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031D400  41 82 00 0C */	beq lbl_8031D40C
/* 8031D404  7F C3 F3 78 */	mr r3, r30
/* 8031D408  48 00 6B 8D */	bl loadTexNo__FUlRCUs
lbl_8031D40C:
/* 8031D40C  3B DE 00 01 */	addi r30, r30, 1
/* 8031D410  28 1E 00 02 */	cmplwi r30, 2
/* 8031D414  3B FF 00 02 */	addi r31, r31, 2
/* 8031D418  41 80 FF D8 */	blt lbl_8031D3F0
/* 8031D41C  39 61 00 20 */	addi r11, r1, 0x20
/* 8031D420  48 04 4E 09 */	bl _restgpr_29
/* 8031D424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031D428  7C 08 03 A6 */	mtlr r0
/* 8031D42C  38 21 00 20 */	addi r1, r1, 0x20
/* 8031D430  4E 80 00 20 */	blr 
