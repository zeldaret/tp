lbl_8099C3A0:
/* 8099C3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099C3A4  7C 08 02 A6 */	mflr r0
/* 8099C3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099C3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099C3B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099C3B4  41 82 00 1C */	beq lbl_8099C3D0
/* 8099C3B8  3C A0 80 9A */	lis r5, __vt__8cM3dGAab@ha
/* 8099C3BC  38 05 D5 54 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8099C3C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8099C3C4  7C 80 07 35 */	extsh. r0, r4
/* 8099C3C8  40 81 00 08 */	ble lbl_8099C3D0
/* 8099C3CC  4B 93 29 70 */	b __dl__FPv
lbl_8099C3D0:
/* 8099C3D0  7F E3 FB 78 */	mr r3, r31
/* 8099C3D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099C3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099C3DC  7C 08 03 A6 */	mtlr r0
/* 8099C3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8099C3E4  4E 80 00 20 */	blr 
