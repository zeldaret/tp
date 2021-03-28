lbl_8029F78C:
/* 8029F78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F790  7C 08 02 A6 */	mflr r0
/* 8029F794  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F79C  7C 7F 1B 78 */	mr r31, r3
/* 8029F7A0  88 03 00 2E */	lbz r0, 0x2e(r3)
/* 8029F7A4  2C 00 00 03 */	cmpwi r0, 3
/* 8029F7A8  41 82 00 90 */	beq lbl_8029F838
/* 8029F7AC  40 80 00 1C */	bge lbl_8029F7C8
/* 8029F7B0  2C 00 00 01 */	cmpwi r0, 1
/* 8029F7B4  41 82 00 64 */	beq lbl_8029F818
/* 8029F7B8  40 80 00 24 */	bge lbl_8029F7DC
/* 8029F7BC  2C 00 00 00 */	cmpwi r0, 0
/* 8029F7C0  40 80 00 40 */	bge lbl_8029F800
/* 8029F7C4  48 00 00 74 */	b lbl_8029F838
lbl_8029F7C8:
/* 8029F7C8  2C 00 00 07 */	cmpwi r0, 7
/* 8029F7CC  40 80 00 6C */	bge lbl_8029F838
/* 8029F7D0  2C 00 00 05 */	cmpwi r0, 5
/* 8029F7D4  40 80 00 64 */	bge lbl_8029F838
/* 8029F7D8  48 00 00 58 */	b lbl_8029F830
lbl_8029F7DC:
/* 8029F7DC  38 60 00 00 */	li r3, 0
/* 8029F7E0  88 1F 00 2F */	lbz r0, 0x2f(r31)
/* 8029F7E4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8029F7E8  98 1F 00 2F */	stb r0, 0x2f(r31)
/* 8029F7EC  38 60 00 01 */	li r3, 1
/* 8029F7F0  88 1F 00 2F */	lbz r0, 0x2f(r31)
/* 8029F7F4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8029F7F8  98 1F 00 2F */	stb r0, 0x2f(r31)
/* 8029F7FC  48 00 00 3C */	b lbl_8029F838
lbl_8029F800:
/* 8029F800  4B FF FE ED */	bl prepare_getSeqData___5JAISeFv
/* 8029F804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029F808  41 82 00 30 */	beq lbl_8029F838
/* 8029F80C  38 00 00 05 */	li r0, 5
/* 8029F810  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 8029F814  48 00 00 24 */	b lbl_8029F838
lbl_8029F818:
/* 8029F818  4B FF FE D5 */	bl prepare_getSeqData___5JAISeFv
/* 8029F81C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029F820  41 82 00 18 */	beq lbl_8029F838
/* 8029F824  38 00 00 03 */	li r0, 3
/* 8029F828  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 8029F82C  48 00 00 0C */	b lbl_8029F838
lbl_8029F830:
/* 8029F830  38 00 00 05 */	li r0, 5
/* 8029F834  98 1F 00 2E */	stb r0, 0x2e(r31)
lbl_8029F838:
/* 8029F838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F840  7C 08 03 A6 */	mtlr r0
/* 8029F844  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F848  4E 80 00 20 */	blr 
