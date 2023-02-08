lbl_80C5AC10:
/* 80C5AC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5AC14  7C 08 02 A6 */	mflr r0
/* 80C5AC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5AC1C  88 83 05 E7 */	lbz r4, 0x5e7(r3)
/* 80C5AC20  88 03 05 E9 */	lbz r0, 0x5e9(r3)
/* 80C5AC24  7C 04 00 40 */	cmplw r4, r0
/* 80C5AC28  41 82 00 3C */	beq lbl_80C5AC64
/* 80C5AC2C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C5AC30  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C5AC34  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C5AC38  41 82 00 18 */	beq lbl_80C5AC50
/* 80C5AC3C  38 63 05 A8 */	addi r3, r3, 0x5a8
/* 80C5AC40  38 A0 00 FF */	li r5, 0xff
/* 80C5AC44  38 C0 00 01 */	li r6, 1
/* 80C5AC48  4B 3E DC F9 */	bl orderEvent__17dEvLib_callback_cFiii
/* 80C5AC4C  48 00 00 5C */	b lbl_80C5ACA8
lbl_80C5AC50:
/* 80C5AC50  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C5AC54  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C5AC58  7D 89 03 A6 */	mtctr r12
/* 80C5AC5C  4E 80 04 21 */	bctrl 
/* 80C5AC60  48 00 00 48 */	b lbl_80C5ACA8
lbl_80C5AC64:
/* 80C5AC64  88 83 05 E8 */	lbz r4, 0x5e8(r3)
/* 80C5AC68  88 03 05 EA */	lbz r0, 0x5ea(r3)
/* 80C5AC6C  7C 04 00 40 */	cmplw r4, r0
/* 80C5AC70  41 82 00 38 */	beq lbl_80C5ACA8
/* 80C5AC74  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C5AC78  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C5AC7C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C5AC80  41 82 00 18 */	beq lbl_80C5AC98
/* 80C5AC84  38 63 05 A8 */	addi r3, r3, 0x5a8
/* 80C5AC88  38 A0 00 FF */	li r5, 0xff
/* 80C5AC8C  38 C0 00 01 */	li r6, 1
/* 80C5AC90  4B 3E DC B1 */	bl orderEvent__17dEvLib_callback_cFiii
/* 80C5AC94  48 00 00 14 */	b lbl_80C5ACA8
lbl_80C5AC98:
/* 80C5AC98  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C5AC9C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C5ACA0  7D 89 03 A6 */	mtctr r12
/* 80C5ACA4  4E 80 04 21 */	bctrl 
lbl_80C5ACA8:
/* 80C5ACA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5ACAC  7C 08 03 A6 */	mtlr r0
/* 80C5ACB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5ACB4  4E 80 00 20 */	blr 
