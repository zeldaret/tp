lbl_809B5770:
/* 809B5770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B5774  7C 08 02 A6 */	mflr r0
/* 809B5778  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B577C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B5780  3B E0 00 00 */	li r31, 0
/* 809B5784  80 04 00 00 */	lwz r0, 0(r4)
/* 809B5788  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B578C  41 82 00 6C */	beq lbl_809B57F8
/* 809B5790  40 80 00 1C */	bge lbl_809B57AC
/* 809B5794  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B5798  41 82 00 44 */	beq lbl_809B57DC
/* 809B579C  40 80 00 84 */	bge lbl_809B5820
/* 809B57A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B57A4  41 82 00 14 */	beq lbl_809B57B8
/* 809B57A8  48 00 00 78 */	b lbl_809B5820
lbl_809B57AC:
/* 809B57AC  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B57B0  41 82 00 6C */	beq lbl_809B581C
/* 809B57B4  48 00 00 6C */	b lbl_809B5820
lbl_809B57B8:
/* 809B57B8  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B57BC  38 04 FF FF */	addi r0, r4, -1
/* 809B57C0  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B57C4  7C 00 07 35 */	extsh. r0, r0
/* 809B57C8  41 81 00 58 */	bgt lbl_809B5820
/* 809B57CC  38 60 00 0B */	li r3, 0xb
/* 809B57D0  4B 7F 30 14 */	b dKy_change_colpat__FUc
/* 809B57D4  3B E0 00 01 */	li r31, 1
/* 809B57D8  48 00 00 48 */	b lbl_809B5820
lbl_809B57DC:
/* 809B57DC  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B57E0  38 04 FF FF */	addi r0, r4, -1
/* 809B57E4  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B57E8  7C 00 07 35 */	extsh. r0, r0
/* 809B57EC  41 81 00 34 */	bgt lbl_809B5820
/* 809B57F0  3B E0 00 01 */	li r31, 1
/* 809B57F4  48 00 00 2C */	b lbl_809B5820
lbl_809B57F8:
/* 809B57F8  38 80 00 00 */	li r4, 0
/* 809B57FC  38 A0 00 00 */	li r5, 0
/* 809B5800  38 C0 00 00 */	li r6, 0
/* 809B5804  38 E0 00 00 */	li r7, 0
/* 809B5808  4B 79 64 70 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B580C  2C 03 00 00 */	cmpwi r3, 0
/* 809B5810  41 82 00 10 */	beq lbl_809B5820
/* 809B5814  3B E0 00 01 */	li r31, 1
/* 809B5818  48 00 00 08 */	b lbl_809B5820
lbl_809B581C:
/* 809B581C  3B E0 00 01 */	li r31, 1
lbl_809B5820:
/* 809B5820  7F E3 FB 78 */	mr r3, r31
/* 809B5824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B5828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B582C  7C 08 03 A6 */	mtlr r0
/* 809B5830  38 21 00 10 */	addi r1, r1, 0x10
/* 809B5834  4E 80 00 20 */	blr 
