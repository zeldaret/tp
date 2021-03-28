lbl_80AC3DA0:
/* 80AC3DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3DA4  7C 08 02 A6 */	mflr r0
/* 80AC3DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3DB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3DB4  41 82 00 30 */	beq lbl_80AC3DE4
/* 80AC3DB8  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha
/* 80AC3DBC  38 03 4E BC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AC3DC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC3DC4  41 82 00 10 */	beq lbl_80AC3DD4
/* 80AC3DC8  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha
/* 80AC3DCC  38 03 4E B0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AC3DD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AC3DD4:
/* 80AC3DD4  7C 80 07 35 */	extsh. r0, r4
/* 80AC3DD8  40 81 00 0C */	ble lbl_80AC3DE4
/* 80AC3DDC  7F E3 FB 78 */	mr r3, r31
/* 80AC3DE0  4B 80 AF 5C */	b __dl__FPv
lbl_80AC3DE4:
/* 80AC3DE4  7F E3 FB 78 */	mr r3, r31
/* 80AC3DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3DF0  7C 08 03 A6 */	mtlr r0
/* 80AC3DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3DF8  4E 80 00 20 */	blr 
