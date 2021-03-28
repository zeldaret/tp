lbl_800DAC28:
/* 800DAC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAC2C  7C 08 02 A6 */	mflr r0
/* 800DAC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAC34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAC38  7C 7F 1B 78 */	mr r31, r3
/* 800DAC3C  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800DAC40  48 08 38 8D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DAC44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DAC48  41 82 00 24 */	beq lbl_800DAC6C
/* 800DAC4C  7F E3 FB 78 */	mr r3, r31
/* 800DAC50  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 800DAC54  A8 BF 30 08 */	lha r5, 0x3008(r31)
/* 800DAC58  A8 DF 30 80 */	lha r6, 0x3080(r31)
/* 800DAC5C  A8 FF 30 82 */	lha r7, 0x3082(r31)
/* 800DAC60  39 00 00 00 */	li r8, 0
/* 800DAC64  39 20 00 00 */	li r9, 0
/* 800DAC68  4B FF EA 75 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
lbl_800DAC6C:
/* 800DAC6C  38 60 00 01 */	li r3, 1
/* 800DAC70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DAC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DAC78  7C 08 03 A6 */	mtlr r0
/* 800DAC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DAC80  4E 80 00 20 */	blr 
