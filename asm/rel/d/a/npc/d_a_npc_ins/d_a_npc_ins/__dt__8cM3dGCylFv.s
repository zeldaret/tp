lbl_80A0E3D0:
/* 80A0E3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0E3D4  7C 08 02 A6 */	mflr r0
/* 80A0E3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0E3DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0E3E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0E3E4  41 82 00 1C */	beq lbl_80A0E400
/* 80A0E3E8  3C A0 80 A1 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A0E3EC  38 05 45 C0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A0E3F0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A0E3F4  7C 80 07 35 */	extsh. r0, r4
/* 80A0E3F8  40 81 00 08 */	ble lbl_80A0E400
/* 80A0E3FC  4B 8C 09 40 */	b __dl__FPv
lbl_80A0E400:
/* 80A0E400  7F E3 FB 78 */	mr r3, r31
/* 80A0E404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0E408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0E40C  7C 08 03 A6 */	mtlr r0
/* 80A0E410  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0E414  4E 80 00 20 */	blr 
