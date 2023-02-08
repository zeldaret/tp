lbl_8033F5D0:
/* 8033F5D0  7C 08 02 A6 */	mflr r0
/* 8033F5D4  90 01 00 04 */	stw r0, 4(r1)
/* 8033F5D8  94 21 FD 18 */	stwu r1, -0x2e8(r1)
/* 8033F5DC  93 E1 02 E4 */	stw r31, 0x2e4(r1)
/* 8033F5E0  3B E4 00 00 */	addi r31, r4, 0
/* 8033F5E4  93 C1 02 E0 */	stw r30, 0x2e0(r1)
/* 8033F5E8  3B C3 00 00 */	addi r30, r3, 0
/* 8033F5EC  4B FF E1 09 */	bl OSDisableInterrupts
/* 8033F5F0  3C 60 81 28 */	lis r3, 0x8128
/* 8033F5F4  4B FF BC B1 */	bl OSSetArenaLo
/* 8033F5F8  3C 60 81 2F */	lis r3, 0x812f
/* 8033F5FC  4B FF BC A1 */	bl OSSetArenaHi
/* 8033F600  38 61 00 18 */	addi r3, r1, 0x18
/* 8033F604  4B FF C9 FD */	bl OSClearContext
/* 8033F608  38 61 00 18 */	addi r3, r1, 0x18
/* 8033F60C  4B FF C8 2D */	bl OSSetCurrentContext
/* 8033F610  38 00 00 00 */	li r0, 0
/* 8033F614  90 01 00 10 */	stw r0, 0x10(r1)
/* 8033F618  38 7F 00 00 */	addi r3, r31, 0
/* 8033F61C  67 C4 80 00 */	oris r4, r30, 0x8000
/* 8033F620  38 A1 00 10 */	addi r5, r1, 0x10
/* 8033F624  4B FF DC 21 */	bl __OSBootDol
/* 8033F628  80 01 02 EC */	lwz r0, 0x2ec(r1)
/* 8033F62C  83 E1 02 E4 */	lwz r31, 0x2e4(r1)
/* 8033F630  83 C1 02 E0 */	lwz r30, 0x2e0(r1)
/* 8033F634  38 21 02 E8 */	addi r1, r1, 0x2e8
/* 8033F638  7C 08 03 A6 */	mtlr r0
/* 8033F63C  4E 80 00 20 */	blr 
