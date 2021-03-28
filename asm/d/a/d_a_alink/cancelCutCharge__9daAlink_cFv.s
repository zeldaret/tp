lbl_800D2B88:
/* 800D2B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D2B8C  7C 08 02 A6 */	mflr r0
/* 800D2B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D2B94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D2B98  7C 7F 1B 78 */	mr r31, r3
/* 800D2B9C  88 83 05 69 */	lbz r4, 0x569(r3)
/* 800D2BA0  28 04 00 04 */	cmplwi r4, 4
/* 800D2BA4  40 82 00 1C */	bne lbl_800D2BC0
/* 800D2BA8  38 80 00 01 */	li r4, 1
/* 800D2BAC  4B FF E8 85 */	bl resetCombo__9daAlink_cFi
/* 800D2BB0  7F E3 FB 78 */	mr r3, r31
/* 800D2BB4  38 80 00 00 */	li r4, 0
/* 800D2BB8  4B FE 75 19 */	bl checkNextAction__9daAlink_cFi
/* 800D2BBC  48 00 00 2C */	b lbl_800D2BE8
lbl_800D2BC0:
/* 800D2BC0  38 04 00 01 */	addi r0, r4, 1
/* 800D2BC4  98 1F 05 69 */	stb r0, 0x569(r31)
/* 800D2BC8  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 800D2BCC  28 00 00 03 */	cmplwi r0, 3
/* 800D2BD0  41 81 00 10 */	bgt lbl_800D2BE0
/* 800D2BD4  38 80 00 02 */	li r4, 2
/* 800D2BD8  48 00 03 81 */	bl procCutNormalInit__9daAlink_cFi
/* 800D2BDC  48 00 00 0C */	b lbl_800D2BE8
lbl_800D2BE0:
/* 800D2BE0  38 80 00 01 */	li r4, 1
/* 800D2BE4  48 00 08 F5 */	bl procCutFinishInit__9daAlink_cFi
lbl_800D2BE8:
/* 800D2BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D2BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D2BF0  7C 08 03 A6 */	mtlr r0
/* 800D2BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D2BF8  4E 80 00 20 */	blr 
