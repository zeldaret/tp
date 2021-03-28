lbl_8001EAD8:
/* 8001EAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EADC  7C 08 02 A6 */	mflr r0
/* 8001EAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EAE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EAE8  7C 7F 1B 78 */	mr r31, r3
/* 8001EAEC  88 03 00 00 */	lbz r0, 0(r3)
/* 8001EAF0  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 8001EAF4  28 00 00 01 */	cmplwi r0, 1
/* 8001EAF8  41 82 00 10 */	beq lbl_8001EB08
/* 8001EAFC  4B FF FF B9 */	bl fopOvlpReq_Is_PeektimeLimit__FP21overlap_request_class
/* 8001EB00  2C 03 00 00 */	cmpwi r3, 0
/* 8001EB04  40 82 00 0C */	bne lbl_8001EB10
lbl_8001EB08:
/* 8001EB08  38 60 00 00 */	li r3, 0
/* 8001EB0C  48 00 00 14 */	b lbl_8001EB20
lbl_8001EB10:
/* 8001EB10  7F E3 FB 78 */	mr r3, r31
/* 8001EB14  38 80 00 02 */	li r4, 2
/* 8001EB18  48 24 7D 39 */	bl cReq_Create__FP18request_base_classUc
/* 8001EB1C  38 60 00 01 */	li r3, 1
lbl_8001EB20:
/* 8001EB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001EB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EB28  7C 08 03 A6 */	mtlr r0
/* 8001EB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EB30  4E 80 00 20 */	blr 
