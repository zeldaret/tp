lbl_80AB18DC:
/* 80AB18DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB18E0  7C 08 02 A6 */	mflr r0
/* 80AB18E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB18E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB18EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB18F0  41 82 00 30 */	beq lbl_80AB1920
/* 80AB18F4  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha
/* 80AB18F8  38 03 2B C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AB18FC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB1900  41 82 00 10 */	beq lbl_80AB1910
/* 80AB1904  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha
/* 80AB1908  38 03 2B B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AB190C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AB1910:
/* 80AB1910  7C 80 07 35 */	extsh. r0, r4
/* 80AB1914  40 81 00 0C */	ble lbl_80AB1920
/* 80AB1918  7F E3 FB 78 */	mr r3, r31
/* 80AB191C  4B 81 D4 20 */	b __dl__FPv
lbl_80AB1920:
/* 80AB1920  7F E3 FB 78 */	mr r3, r31
/* 80AB1924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB1928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB192C  7C 08 03 A6 */	mtlr r0
/* 80AB1930  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1934  4E 80 00 20 */	blr 
