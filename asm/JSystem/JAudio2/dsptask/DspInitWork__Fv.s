lbl_8029E8E0:
/* 8029E8E0  38 60 00 00 */	li r3, 0
/* 8029E8E4  3C 80 80 43 */	lis r4, taskwork@ha /* 0x80433FE0@ha */
/* 8029E8E8  38 00 00 10 */	li r0, 0x10
/* 8029E8EC  7C 66 1B 78 */	mr r6, r3
/* 8029E8F0  38 A4 3F E0 */	addi r5, r4, taskwork@l /* 0x80433FE0@l */
/* 8029E8F4  7C 09 03 A6 */	mtctr r0
lbl_8029E8F8:
/* 8029E8F8  7C 85 1A 14 */	add r4, r5, r3
/* 8029E8FC  38 63 00 08 */	addi r3, r3, 8
/* 8029E900  90 C4 00 04 */	stw r6, 4(r4)
/* 8029E904  42 00 FF F4 */	bdnz lbl_8029E8F8
/* 8029E908  4E 80 00 20 */	blr 
