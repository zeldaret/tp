lbl_800EA844:
/* 800EA844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA848  7C 08 02 A6 */	mflr r0
/* 800EA84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA854  7C 7F 1B 78 */	mr r31, r3
/* 800EA858  38 7F 28 54 */	addi r3, r31, 0x2854
/* 800EA85C  48 07 43 ED */	bl setActor__16daPy_actorKeep_cFv
/* 800EA860  80 1F 28 58 */	lwz r0, 0x2858(r31)
/* 800EA864  28 00 00 00 */	cmplwi r0, 0
/* 800EA868  40 82 00 1C */	bne lbl_800EA884
/* 800EA86C  7F E3 FB 78 */	mr r3, r31
/* 800EA870  48 00 00 61 */	bl cancelSumouMode__9daAlink_cFv
/* 800EA874  7F E3 FB 78 */	mr r3, r31
/* 800EA878  4B FD 8B 41 */	bl procWaitInit__9daAlink_cFv
/* 800EA87C  38 60 00 00 */	li r3, 0
/* 800EA880  48 00 00 3C */	b lbl_800EA8BC
lbl_800EA884:
/* 800EA884  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EA888  28 00 00 0D */	cmplwi r0, 0xd
/* 800EA88C  41 82 00 1C */	beq lbl_800EA8A8
/* 800EA890  28 00 00 0B */	cmplwi r0, 0xb
/* 800EA894  41 82 00 14 */	beq lbl_800EA8A8
/* 800EA898  28 00 00 0C */	cmplwi r0, 0xc
/* 800EA89C  41 82 00 0C */	beq lbl_800EA8A8
/* 800EA8A0  28 00 00 0E */	cmplwi r0, 0xe
/* 800EA8A4  40 82 00 14 */	bne lbl_800EA8B8
lbl_800EA8A8:
/* 800EA8A8  7F E3 FB 78 */	mr r3, r31
/* 800EA8AC  48 00 19 61 */	bl procSumouWinLoseInit__9daAlink_cFv
/* 800EA8B0  38 60 00 00 */	li r3, 0
/* 800EA8B4  48 00 00 08 */	b lbl_800EA8BC
lbl_800EA8B8:
/* 800EA8B8  38 60 00 01 */	li r3, 1
lbl_800EA8BC:
/* 800EA8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA8C4  7C 08 03 A6 */	mtlr r0
/* 800EA8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA8CC  4E 80 00 20 */	blr 
