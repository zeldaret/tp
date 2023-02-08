lbl_80AA12F0:
/* 80AA12F0  38 C3 FF FC */	addi r6, r3, -4
/* 80AA12F4  38 85 FF FC */	addi r4, r5, -4
/* 80AA12F8  38 00 00 03 */	li r0, 3
/* 80AA12FC  7C 09 03 A6 */	mtctr r0
lbl_80AA1300:
/* 80AA1300  80 64 00 04 */	lwz r3, 4(r4)
/* 80AA1304  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AA1308  90 66 00 04 */	stw r3, 4(r6)
/* 80AA130C  94 06 00 08 */	stwu r0, 8(r6)
/* 80AA1310  42 00 FF F0 */	bdnz lbl_80AA1300
/* 80AA1314  80 04 00 04 */	lwz r0, 4(r4)
/* 80AA1318  90 06 00 04 */	stw r0, 4(r6)
/* 80AA131C  4E 80 00 20 */	blr 
