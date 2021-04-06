lbl_80A9D3D0:
/* 80A9D3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D3D4  7C 08 02 A6 */	mflr r0
/* 80A9D3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D3DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9D3E0  7C 7F 1B 78 */	mr r31, r3
/* 80A9D3E4  4B 57 B8 FD */	bl fopAc_IsActor__FPv
/* 80A9D3E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D3EC  40 82 00 0C */	bne lbl_80A9D3F8
/* 80A9D3F0  38 60 00 00 */	li r3, 0
/* 80A9D3F4  48 00 00 30 */	b lbl_80A9D424
lbl_80A9D3F8:
/* 80A9D3F8  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A9D3FC  2C 00 02 72 */	cmpwi r0, 0x272
/* 80A9D400  41 82 00 0C */	beq lbl_80A9D40C
/* 80A9D404  38 60 00 00 */	li r3, 0
/* 80A9D408  48 00 00 1C */	b lbl_80A9D424
lbl_80A9D40C:
/* 80A9D40C  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80A9D410  28 00 00 02 */	cmplwi r0, 2
/* 80A9D414  40 82 00 0C */	bne lbl_80A9D420
/* 80A9D418  7F E3 FB 78 */	mr r3, r31
/* 80A9D41C  48 00 00 08 */	b lbl_80A9D424
lbl_80A9D420:
/* 80A9D420  38 60 00 00 */	li r3, 0
lbl_80A9D424:
/* 80A9D424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9D428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D42C  7C 08 03 A6 */	mtlr r0
/* 80A9D430  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D434  4E 80 00 20 */	blr 
