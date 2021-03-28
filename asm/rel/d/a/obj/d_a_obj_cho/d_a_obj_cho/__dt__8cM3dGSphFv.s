lbl_80BCC3C8:
/* 80BCC3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC3CC  7C 08 02 A6 */	mflr r0
/* 80BCC3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC3D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCC3D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCC3DC  41 82 00 1C */	beq lbl_80BCC3F8
/* 80BCC3E0  3C A0 80 BD */	lis r5, __vt__8cM3dGSph@ha
/* 80BCC3E4  38 05 C6 D8 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BCC3E8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BCC3EC  7C 80 07 35 */	extsh. r0, r4
/* 80BCC3F0  40 81 00 08 */	ble lbl_80BCC3F8
/* 80BCC3F4  4B 70 29 48 */	b __dl__FPv
lbl_80BCC3F8:
/* 80BCC3F8  7F E3 FB 78 */	mr r3, r31
/* 80BCC3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC404  7C 08 03 A6 */	mtlr r0
/* 80BCC408  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC40C  4E 80 00 20 */	blr 
