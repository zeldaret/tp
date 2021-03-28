lbl_80C6D3D0:
/* 80C6D3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D3D4  7C 08 02 A6 */	mflr r0
/* 80C6D3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D3DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6D3E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6D3E4  41 82 00 1C */	beq lbl_80C6D400
/* 80C6D3E8  3C A0 80 C7 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C6D3EC  38 05 D6 44 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C6D3F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6D3F4  7C 80 07 35 */	extsh. r0, r4
/* 80C6D3F8  40 81 00 08 */	ble lbl_80C6D400
/* 80C6D3FC  4B 66 19 40 */	b __dl__FPv
lbl_80C6D400:
/* 80C6D400  7F E3 FB 78 */	mr r3, r31
/* 80C6D404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6D408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D40C  7C 08 03 A6 */	mtlr r0
/* 80C6D410  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D414  4E 80 00 20 */	blr 
