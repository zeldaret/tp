lbl_80CDE868:
/* 80CDE868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE86C  7C 08 02 A6 */	mflr r0
/* 80CDE870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDE878  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDE87C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDE880  7C 9F 23 78 */	mr r31, r4
/* 80CDE884  41 82 00 38 */	beq lbl_80CDE8BC
/* 80CDE888  3C 60 80 CE */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CDEF70@ha */
/* 80CDE88C  38 03 EF 70 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CDEF70@l */
/* 80CDE890  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CDE894  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CDE898  38 80 FF FF */	li r4, -1
/* 80CDE89C  4B 59 06 7D */	bl __dt__8cM3dGCirFv
/* 80CDE8A0  7F C3 F3 78 */	mr r3, r30
/* 80CDE8A4  38 80 00 00 */	li r4, 0
/* 80CDE8A8  4B 58 98 09 */	bl __dt__13cBgS_PolyInfoFv
/* 80CDE8AC  7F E0 07 35 */	extsh. r0, r31
/* 80CDE8B0  40 81 00 0C */	ble lbl_80CDE8BC
/* 80CDE8B4  7F C3 F3 78 */	mr r3, r30
/* 80CDE8B8  4B 5F 04 85 */	bl __dl__FPv
lbl_80CDE8BC:
/* 80CDE8BC  7F C3 F3 78 */	mr r3, r30
/* 80CDE8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDE8C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDE8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE8CC  7C 08 03 A6 */	mtlr r0
/* 80CDE8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE8D4  4E 80 00 20 */	blr 
