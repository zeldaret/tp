lbl_80C1C3CC:
/* 80C1C3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C3D0  7C 08 02 A6 */	mflr r0
/* 80C1C3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1C3DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1C3E0  41 82 00 1C */	beq lbl_80C1C3FC
/* 80C1C3E4  3C A0 80 C2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C1C3E8  38 05 C9 60 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C1C3EC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1C3F0  7C 80 07 35 */	extsh. r0, r4
/* 80C1C3F4  40 81 00 08 */	ble lbl_80C1C3FC
/* 80C1C3F8  4B 6B 29 44 */	b __dl__FPv
lbl_80C1C3FC:
/* 80C1C3FC  7F E3 FB 78 */	mr r3, r31
/* 80C1C400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1C404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C408  7C 08 03 A6 */	mtlr r0
/* 80C1C40C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C410  4E 80 00 20 */	blr 
