lbl_80CA58F4:
/* 80CA58F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA58F8  7C 08 02 A6 */	mflr r0
/* 80CA58FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA5900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA5904  7C 7F 1B 78 */	mr r31, r3
/* 80CA5908  88 03 06 CB */	lbz r0, 0x6cb(r3)
/* 80CA590C  2C 00 00 01 */	cmpwi r0, 1
/* 80CA5910  41 82 00 7C */	beq lbl_80CA598C
/* 80CA5914  40 80 00 10 */	bge lbl_80CA5924
/* 80CA5918  2C 00 00 00 */	cmpwi r0, 0
/* 80CA591C  40 80 00 14 */	bge lbl_80CA5930
/* 80CA5920  48 00 00 88 */	b lbl_80CA59A8
lbl_80CA5924:
/* 80CA5924  2C 00 00 03 */	cmpwi r0, 3
/* 80CA5928  40 80 00 80 */	bge lbl_80CA59A8
/* 80CA592C  48 00 00 70 */	b lbl_80CA599C
lbl_80CA5930:
/* 80CA5930  A8 7F 06 E8 */	lha r3, 0x6e8(r31)
/* 80CA5934  38 03 FF FF */	addi r0, r3, -1
/* 80CA5938  B0 1F 06 E8 */	sth r0, 0x6e8(r31)
/* 80CA593C  A8 1F 06 E8 */	lha r0, 0x6e8(r31)
/* 80CA5940  2C 00 00 00 */	cmpwi r0, 0
/* 80CA5944  41 81 00 0C */	bgt lbl_80CA5950
/* 80CA5948  38 00 00 00 */	li r0, 0
/* 80CA594C  B0 1F 06 E8 */	sth r0, 0x6e8(r31)
lbl_80CA5950:
/* 80CA5950  A8 1F 06 E8 */	lha r0, 0x6e8(r31)
/* 80CA5954  2C 00 00 00 */	cmpwi r0, 0
/* 80CA5958  40 82 00 14 */	bne lbl_80CA596C
/* 80CA595C  80 1F 13 64 */	lwz r0, 0x1364(r31)
/* 80CA5960  60 00 00 01 */	ori r0, r0, 1
/* 80CA5964  90 1F 13 64 */	stw r0, 0x1364(r31)
/* 80CA5968  48 00 00 10 */	b lbl_80CA5978
lbl_80CA596C:
/* 80CA596C  80 1F 13 64 */	lwz r0, 0x1364(r31)
/* 80CA5970  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CA5974  90 1F 13 64 */	stw r0, 0x1364(r31)
lbl_80CA5978:
/* 80CA5978  7F E3 FB 78 */	mr r3, r31
/* 80CA597C  4B FF FB 69 */	bl CylAction__15daObjOCTHASHI_cFv
/* 80CA5980  7F E3 FB 78 */	mr r3, r31
/* 80CA5984  4B FF F5 21 */	bl SetCoCyl__15daObjOCTHASHI_cFv
/* 80CA5988  48 00 00 20 */	b lbl_80CA59A8
lbl_80CA598C:
/* 80CA598C  4B FF FC 39 */	bl SphAction__15daObjOCTHASHI_cFv
/* 80CA5990  7F E3 FB 78 */	mr r3, r31
/* 80CA5994  4B FF F4 69 */	bl SetCoSph__15daObjOCTHASHI_cFv
/* 80CA5998  48 00 00 10 */	b lbl_80CA59A8
lbl_80CA599C:
/* 80CA599C  4B FF FE A9 */	bl SphAction2__15daObjOCTHASHI_cFv
/* 80CA59A0  7F E3 FB 78 */	mr r3, r31
/* 80CA59A4  4B FF F4 59 */	bl SetCoSph__15daObjOCTHASHI_cFv
lbl_80CA59A8:
/* 80CA59A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA59AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA59B0  7C 08 03 A6 */	mtlr r0
/* 80CA59B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA59B8  4E 80 00 20 */	blr 
