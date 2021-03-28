lbl_8057CC44:
/* 8057CC44  A8 83 05 78 */	lha r4, 0x578(r3)
/* 8057CC48  38 04 00 01 */	addi r0, r4, 1
/* 8057CC4C  B0 03 05 78 */	sth r0, 0x578(r3)
/* 8057CC50  38 80 00 00 */	li r4, 0
/* 8057CC54  38 00 00 02 */	li r0, 2
/* 8057CC58  7C 09 03 A6 */	mtctr r0
lbl_8057CC5C:
/* 8057CC5C  38 C4 05 7E */	addi r6, r4, 0x57e
/* 8057CC60  7C A3 32 AE */	lhax r5, r3, r6
/* 8057CC64  2C 05 00 00 */	cmpwi r5, 0
/* 8057CC68  41 82 00 0C */	beq lbl_8057CC74
/* 8057CC6C  38 05 FF FF */	addi r0, r5, -1
/* 8057CC70  7C 03 33 2E */	sthx r0, r3, r6
lbl_8057CC74:
/* 8057CC74  38 84 00 02 */	addi r4, r4, 2
/* 8057CC78  42 00 FF E4 */	bdnz lbl_8057CC5C
/* 8057CC7C  38 60 00 01 */	li r3, 1
/* 8057CC80  4E 80 00 20 */	blr 
