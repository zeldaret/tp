lbl_800B8930:
/* 800B8930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B8934  7C 08 02 A6 */	mflr r0
/* 800B8938  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B893C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B8940  7C 7F 1B 78 */	mr r31, r3
/* 800B8944  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800B8948  28 00 00 FF */	cmplwi r0, 0xff
/* 800B894C  40 82 00 0C */	bne lbl_800B8958
/* 800B8950  38 60 00 00 */	li r3, 0
/* 800B8954  48 00 00 20 */	b lbl_800B8974
lbl_800B8958:
/* 800B8958  88 7F 2F 9C */	lbz r3, 0x2f9c(r31)
/* 800B895C  4B F7 55 C1 */	bl dComIfGp_getSelectItem__Fi
/* 800B8960  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800B8964  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B8968  7C 00 18 50 */	subf r0, r0, r3
/* 800B896C  7C 00 00 34 */	cntlzw r0, r0
/* 800B8970  54 03 D9 7E */	srwi r3, r0, 5
lbl_800B8974:
/* 800B8974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B8978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B897C  7C 08 03 A6 */	mtlr r0
/* 800B8980  38 21 00 10 */	addi r1, r1, 0x10
/* 800B8984  4E 80 00 20 */	blr 
