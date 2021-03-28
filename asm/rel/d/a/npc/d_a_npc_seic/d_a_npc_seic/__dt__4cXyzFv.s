lbl_80AC885C:
/* 80AC885C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8860  7C 08 02 A6 */	mflr r0
/* 80AC8864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC886C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC8870  41 82 00 10 */	beq lbl_80AC8880
/* 80AC8874  7C 80 07 35 */	extsh. r0, r4
/* 80AC8878  40 81 00 08 */	ble lbl_80AC8880
/* 80AC887C  4B 80 64 C0 */	b __dl__FPv
lbl_80AC8880:
/* 80AC8880  7F E3 FB 78 */	mr r3, r31
/* 80AC8884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC888C  7C 08 03 A6 */	mtlr r0
/* 80AC8890  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8894  4E 80 00 20 */	blr 
