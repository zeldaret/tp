lbl_80C86378:
/* 80C86378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8637C  7C 08 02 A6 */	mflr r0
/* 80C86380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C86388  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8638C  7C 9E 23 78 */	mr r30, r4
/* 80C86390  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C86394  41 82 00 3C */	beq lbl_80C863D0
/* 80C86398  4B 39 29 48 */	b fopAc_IsActor__FPv
/* 80C8639C  2C 03 00 00 */	cmpwi r3, 0
/* 80C863A0  41 82 00 30 */	beq lbl_80C863D0
/* 80C863A4  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80C863A8  2C 00 00 B3 */	cmpwi r0, 0xb3
/* 80C863AC  40 82 00 24 */	bne lbl_80C863D0
/* 80C863B0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C863B4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C863B8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C863BC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C863C0  7C 03 00 40 */	cmplw r3, r0
/* 80C863C4  40 82 00 0C */	bne lbl_80C863D0
/* 80C863C8  7F E3 FB 78 */	mr r3, r31
/* 80C863CC  48 00 00 08 */	b lbl_80C863D4
lbl_80C863D0:
/* 80C863D0  38 60 00 00 */	li r3, 0
lbl_80C863D4:
/* 80C863D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C863D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C863DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C863E0  7C 08 03 A6 */	mtlr r0
/* 80C863E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C863E8  4E 80 00 20 */	blr 
