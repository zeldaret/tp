lbl_80A68B74:
/* 80A68B74  38 C3 FF FC */	addi r6, r3, -4
/* 80A68B78  38 85 FF FC */	addi r4, r5, -4
/* 80A68B7C  38 00 00 03 */	li r0, 3
/* 80A68B80  7C 09 03 A6 */	mtctr r0
lbl_80A68B84:
/* 80A68B84  80 64 00 04 */	lwz r3, 4(r4)
/* 80A68B88  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A68B8C  90 66 00 04 */	stw r3, 4(r6)
/* 80A68B90  94 06 00 08 */	stwu r0, 8(r6)
/* 80A68B94  42 00 FF F0 */	bdnz lbl_80A68B84
/* 80A68B98  80 04 00 04 */	lwz r0, 4(r4)
/* 80A68B9C  90 06 00 04 */	stw r0, 4(r6)
/* 80A68BA0  4E 80 00 20 */	blr 
