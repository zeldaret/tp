lbl_80878938:
/* 80878938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8087893C  7C 08 02 A6 */	mflr r0
/* 80878940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878944  4B FF FC D9 */	bl daMP_THPPlayerGetState__Fv
/* 80878948  2C 03 00 05 */	cmpwi r3, 5
/* 8087894C  40 82 00 38 */	bne lbl_80878984
/* 80878950  4B FF F9 F5 */	bl daMP_THPPlayerStop__Fv
/* 80878954  4B FF ED 99 */	bl daMP_THPPlayerClose__Fv
/* 80878958  3C 60 80 94 */	lis r3, daMP_buffer@ha
/* 8087895C  38 63 5B 04 */	addi r3, r3, daMP_buffer@l
/* 80878960  80 63 00 00 */	lwz r3, 0(r3)
/* 80878964  28 03 00 00 */	cmplwi r3, 0
/* 80878968  41 82 00 08 */	beq lbl_80878970
/* 8087896C  4B FF FF A9 */	bl JKRFree__FPv
lbl_80878970:
/* 80878970  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80878974  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80878978  38 63 02 EC */	addi r3, r3, 0x2ec
/* 8087897C  4C C6 31 82 */	crclr 6
/* 80878980  4B 78 E1 3C */	b OSReport
lbl_80878984:
/* 80878984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878988  7C 08 03 A6 */	mtlr r0
/* 8087898C  38 21 00 10 */	addi r1, r1, 0x10
/* 80878990  4E 80 00 20 */	blr 
