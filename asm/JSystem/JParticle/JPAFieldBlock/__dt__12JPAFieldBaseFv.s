lbl_8027D3AC:
/* 8027D3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D3B0  7C 08 02 A6 */	mflr r0
/* 8027D3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D3B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D3BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D3C0  41 82 00 1C */	beq lbl_8027D3DC
/* 8027D3C4  3C A0 80 3C */	lis r5, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D3C8  38 05 44 CC */	addi r0, r5, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D3CC  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D3D0  7C 80 07 35 */	extsh. r0, r4
/* 8027D3D4  40 81 00 08 */	ble lbl_8027D3DC
/* 8027D3D8  48 05 19 65 */	bl __dl__FPv
lbl_8027D3DC:
/* 8027D3DC  7F E3 FB 78 */	mr r3, r31
/* 8027D3E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D3E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D3E8  7C 08 03 A6 */	mtlr r0
/* 8027D3EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D3F0  4E 80 00 20 */	blr 
