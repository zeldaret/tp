lbl_80A6FA64:
/* 80A6FA64  38 C3 FF FC */	addi r6, r3, -4
/* 80A6FA68  38 85 FF FC */	addi r4, r5, -4
/* 80A6FA6C  38 00 00 03 */	li r0, 3
/* 80A6FA70  7C 09 03 A6 */	mtctr r0
lbl_80A6FA74:
/* 80A6FA74  80 64 00 04 */	lwz r3, 4(r4)
/* 80A6FA78  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A6FA7C  90 66 00 04 */	stw r3, 4(r6)
/* 80A6FA80  94 06 00 08 */	stwu r0, 8(r6)
/* 80A6FA84  42 00 FF F0 */	bdnz lbl_80A6FA74
/* 80A6FA88  80 04 00 04 */	lwz r0, 4(r4)
/* 80A6FA8C  90 06 00 04 */	stw r0, 4(r6)
/* 80A6FA90  4E 80 00 20 */	blr 
