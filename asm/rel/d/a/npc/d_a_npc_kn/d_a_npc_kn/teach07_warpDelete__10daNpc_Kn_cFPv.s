lbl_80A31FBC:
/* 80A31FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A31FC0  7C 08 02 A6 */	mflr r0
/* 80A31FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A31FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A31FCC  7C 7F 1B 78 */	mr r31, r3
/* 80A31FD0  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A31FD4  2C 00 00 02 */	cmpwi r0, 2
/* 80A31FD8  41 82 00 28 */	beq lbl_80A32000
/* 80A31FDC  40 80 00 48 */	bge lbl_80A32024
/* 80A31FE0  2C 00 00 00 */	cmpwi r0, 0
/* 80A31FE4  40 80 00 0C */	bge lbl_80A31FF0
/* 80A31FE8  48 00 00 3C */	b lbl_80A32024
/* 80A31FEC  48 00 00 38 */	b lbl_80A32024
lbl_80A31FF0:
/* 80A31FF0  38 00 00 01 */	li r0, 1
/* 80A31FF4  98 1F 17 0C */	stb r0, 0x170c(r31)
/* 80A31FF8  38 00 00 02 */	li r0, 2
/* 80A31FFC  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A32000:
/* 80A32000  38 00 00 01 */	li r0, 1
/* 80A32004  98 1F 17 0C */	stb r0, 0x170c(r31)
/* 80A32008  7F E3 FB 78 */	mr r3, r31
/* 80A3200C  48 00 B6 CD */	bl ctrlWarp__10daNpc_Kn_cFv
/* 80A32010  88 1F 17 0C */	lbz r0, 0x170c(r31)
/* 80A32014  28 00 00 02 */	cmplwi r0, 2
/* 80A32018  40 82 00 0C */	bne lbl_80A32024
/* 80A3201C  7F E3 FB 78 */	mr r3, r31
/* 80A32020  4B 5E 7C 5D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A32024:
/* 80A32024  38 60 00 01 */	li r3, 1
/* 80A32028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3202C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A32030  7C 08 03 A6 */	mtlr r0
/* 80A32034  38 21 00 10 */	addi r1, r1, 0x10
/* 80A32038  4E 80 00 20 */	blr 
