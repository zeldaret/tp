lbl_80D38180:
/* 80D38180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38184  7C 08 02 A6 */	mflr r0
/* 80D38188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3818C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D38190  7C 7F 1B 78 */	mr r31, r3
/* 80D38194  48 00 00 E5 */	bl chkEveOccur__13daWindStone_cFv
/* 80D38198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3819C  40 82 00 2C */	bne lbl_80D381C8
/* 80D381A0  7F E3 FB 78 */	mr r3, r31
/* 80D381A4  48 00 02 59 */	bl chkMapDispMode__13daWindStone_cFv
/* 80D381A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D381AC  41 82 00 10 */	beq lbl_80D381BC
/* 80D381B0  38 00 00 01 */	li r0, 1
/* 80D381B4  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80D381B8  48 00 00 18 */	b lbl_80D381D0
lbl_80D381BC:
/* 80D381BC  38 00 00 02 */	li r0, 2
/* 80D381C0  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80D381C4  48 00 00 0C */	b lbl_80D381D0
lbl_80D381C8:
/* 80D381C8  38 00 00 00 */	li r0, 0
/* 80D381CC  98 1F 05 C4 */	stb r0, 0x5c4(r31)
lbl_80D381D0:
/* 80D381D0  38 00 00 00 */	li r0, 0
/* 80D381D4  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80D381D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D381DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D381E0  7C 08 03 A6 */	mtlr r0
/* 80D381E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D381E8  4E 80 00 20 */	blr 
