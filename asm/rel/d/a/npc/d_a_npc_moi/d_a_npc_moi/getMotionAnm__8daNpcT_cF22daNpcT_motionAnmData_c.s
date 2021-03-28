lbl_80A7AB34:
/* 80A7AB34  38 C3 FF FC */	addi r6, r3, -4
/* 80A7AB38  38 85 FF FC */	addi r4, r5, -4
/* 80A7AB3C  38 00 00 03 */	li r0, 3
/* 80A7AB40  7C 09 03 A6 */	mtctr r0
lbl_80A7AB44:
/* 80A7AB44  80 64 00 04 */	lwz r3, 4(r4)
/* 80A7AB48  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A7AB4C  90 66 00 04 */	stw r3, 4(r6)
/* 80A7AB50  94 06 00 08 */	stwu r0, 8(r6)
/* 80A7AB54  42 00 FF F0 */	bdnz lbl_80A7AB44
/* 80A7AB58  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7AB5C  90 06 00 04 */	stw r0, 4(r6)
/* 80A7AB60  4E 80 00 20 */	blr 
