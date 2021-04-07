lbl_80AAE94C:
/* 80AAE94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAE950  7C 08 02 A6 */	mflr r0
/* 80AAE954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAE958  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 80AAE95C  2C 00 00 02 */	cmpwi r0, 2
/* 80AAE960  41 82 00 3C */	beq lbl_80AAE99C
/* 80AAE964  40 80 00 14 */	bge lbl_80AAE978
/* 80AAE968  2C 00 00 00 */	cmpwi r0, 0
/* 80AAE96C  41 82 00 1C */	beq lbl_80AAE988
/* 80AAE970  40 80 00 20 */	bge lbl_80AAE990
/* 80AAE974  48 00 00 50 */	b lbl_80AAE9C4
lbl_80AAE978:
/* 80AAE978  2C 00 00 04 */	cmpwi r0, 4
/* 80AAE97C  41 82 00 40 */	beq lbl_80AAE9BC
/* 80AAE980  40 80 00 44 */	bge lbl_80AAE9C4
/* 80AAE984  48 00 00 2C */	b lbl_80AAE9B0
lbl_80AAE988:
/* 80AAE988  38 60 00 00 */	li r3, 0
/* 80AAE98C  48 00 00 3C */	b lbl_80AAE9C8
lbl_80AAE990:
/* 80AAE990  38 60 01 CA */	li r3, 0x1ca
/* 80AAE994  4B 69 E1 19 */	bl daNpcT_chkEvtBit__FUl
/* 80AAE998  48 00 00 30 */	b lbl_80AAE9C8
lbl_80AAE99C:
/* 80AAE99C  38 60 01 CA */	li r3, 0x1ca
/* 80AAE9A0  4B 69 E1 0D */	bl daNpcT_chkEvtBit__FUl
/* 80AAE9A4  7C 60 00 34 */	cntlzw r0, r3
/* 80AAE9A8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AAE9AC  48 00 00 1C */	b lbl_80AAE9C8
lbl_80AAE9B0:
/* 80AAE9B0  38 60 01 CA */	li r3, 0x1ca
/* 80AAE9B4  4B 69 E0 F9 */	bl daNpcT_chkEvtBit__FUl
/* 80AAE9B8  48 00 00 10 */	b lbl_80AAE9C8
lbl_80AAE9BC:
/* 80AAE9BC  38 60 00 00 */	li r3, 0
/* 80AAE9C0  48 00 00 08 */	b lbl_80AAE9C8
lbl_80AAE9C4:
/* 80AAE9C4  38 60 00 00 */	li r3, 0
lbl_80AAE9C8:
/* 80AAE9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAE9CC  7C 08 03 A6 */	mtlr r0
/* 80AAE9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAE9D4  4E 80 00 20 */	blr 
