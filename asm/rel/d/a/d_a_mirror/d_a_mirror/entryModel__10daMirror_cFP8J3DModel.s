lbl_80872560:
/* 80872560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80872564  7C 08 02 A6 */	mflr r0
/* 80872568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8087256C  38 63 05 70 */	addi r3, r3, 0x570
/* 80872570  4B FF E7 E9 */	bl entryModel__16dMirror_packet_cFP8J3DModel
/* 80872574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80872578  7C 08 03 A6 */	mtlr r0
/* 8087257C  38 21 00 10 */	addi r1, r1, 0x10
/* 80872580  4E 80 00 20 */	blr 
