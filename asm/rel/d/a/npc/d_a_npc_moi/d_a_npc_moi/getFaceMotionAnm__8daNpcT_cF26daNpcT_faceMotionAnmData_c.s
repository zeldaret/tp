lbl_80A7AB04:
/* 80A7AB04  38 C3 FF FC */	addi r6, r3, -4
/* 80A7AB08  38 85 FF FC */	addi r4, r5, -4
/* 80A7AB0C  38 00 00 03 */	li r0, 3
/* 80A7AB10  7C 09 03 A6 */	mtctr r0
lbl_80A7AB14:
/* 80A7AB14  80 64 00 04 */	lwz r3, 4(r4)
/* 80A7AB18  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A7AB1C  90 66 00 04 */	stw r3, 4(r6)
/* 80A7AB20  94 06 00 08 */	stwu r0, 8(r6)
/* 80A7AB24  42 00 FF F0 */	bdnz lbl_80A7AB14
/* 80A7AB28  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7AB2C  90 06 00 04 */	stw r0, 4(r6)
/* 80A7AB30  4E 80 00 20 */	blr 
