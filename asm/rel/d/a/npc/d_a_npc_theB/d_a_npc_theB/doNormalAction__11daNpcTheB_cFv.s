lbl_80AFE920:
/* 80AFE920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AFE924  7C 08 02 A6 */	mflr r0
/* 80AFE928  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFE92C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AFE930  7C 7F 1B 78 */	mr r31, r3
/* 80AFE934  38 00 00 00 */	li r0, 0
/* 80AFE938  B0 03 09 E6 */	sth r0, 0x9e6(r3)
/* 80AFE93C  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80AFE940  4B 86 36 D9 */	bl __ptmf_test
/* 80AFE944  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE948  41 82 00 B8 */	beq lbl_80AFEA00
/* 80AFE94C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80AFE950  38 9F 0D C0 */	addi r4, r31, 0xdc0
/* 80AFE954  4B 86 36 F5 */	bl __ptmf_cmpr
/* 80AFE958  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE95C  40 82 00 1C */	bne lbl_80AFE978
/* 80AFE960  7F E3 FB 78 */	mr r3, r31
/* 80AFE964  38 80 00 00 */	li r4, 0
/* 80AFE968  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80AFE96C  4B 86 37 19 */	bl __ptmf_scall
/* 80AFE970  60 00 00 00 */	nop 
/* 80AFE974  48 00 00 8C */	b lbl_80AFEA00
lbl_80AFE978:
/* 80AFE978  80 7F 0D C0 */	lwz r3, 0xdc0(r31)
/* 80AFE97C  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80AFE980  90 61 00 08 */	stw r3, 8(r1)
/* 80AFE984  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AFE988  80 1F 0D C8 */	lwz r0, 0xdc8(r31)
/* 80AFE98C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AFE990  38 00 00 03 */	li r0, 3
/* 80AFE994  B0 1F 0E 02 */	sth r0, 0xe02(r31)
/* 80AFE998  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80AFE99C  4B 86 36 7D */	bl __ptmf_test
/* 80AFE9A0  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE9A4  41 82 00 18 */	beq lbl_80AFE9BC
/* 80AFE9A8  7F E3 FB 78 */	mr r3, r31
/* 80AFE9AC  38 80 00 00 */	li r4, 0
/* 80AFE9B0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80AFE9B4  4B 86 36 D1 */	bl __ptmf_scall
/* 80AFE9B8  60 00 00 00 */	nop 
lbl_80AFE9BC:
/* 80AFE9BC  38 00 00 00 */	li r0, 0
/* 80AFE9C0  B0 1F 0E 02 */	sth r0, 0xe02(r31)
/* 80AFE9C4  80 61 00 08 */	lwz r3, 8(r1)
/* 80AFE9C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AFE9CC  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80AFE9D0  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80AFE9D4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AFE9D8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80AFE9DC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80AFE9E0  4B 86 36 39 */	bl __ptmf_test
/* 80AFE9E4  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE9E8  41 82 00 18 */	beq lbl_80AFEA00
/* 80AFE9EC  7F E3 FB 78 */	mr r3, r31
/* 80AFE9F0  38 80 00 00 */	li r4, 0
/* 80AFE9F4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80AFE9F8  4B 86 36 8D */	bl __ptmf_scall
/* 80AFE9FC  60 00 00 00 */	nop 
lbl_80AFEA00:
/* 80AFEA00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AFEA04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AFEA08  7C 08 03 A6 */	mtlr r0
/* 80AFEA0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AFEA10  4E 80 00 20 */	blr 
