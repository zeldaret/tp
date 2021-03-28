lbl_80A3B7FC:
/* 80A3B7FC  38 C3 FF FC */	addi r6, r3, -4
/* 80A3B800  38 85 FF FC */	addi r4, r5, -4
/* 80A3B804  38 00 00 03 */	li r0, 3
/* 80A3B808  7C 09 03 A6 */	mtctr r0
lbl_80A3B80C:
/* 80A3B80C  80 64 00 04 */	lwz r3, 4(r4)
/* 80A3B810  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A3B814  90 66 00 04 */	stw r3, 4(r6)
/* 80A3B818  94 06 00 08 */	stwu r0, 8(r6)
/* 80A3B81C  42 00 FF F0 */	bdnz lbl_80A3B80C
/* 80A3B820  80 04 00 04 */	lwz r0, 4(r4)
/* 80A3B824  90 06 00 04 */	stw r0, 4(r6)
/* 80A3B828  4E 80 00 20 */	blr 
