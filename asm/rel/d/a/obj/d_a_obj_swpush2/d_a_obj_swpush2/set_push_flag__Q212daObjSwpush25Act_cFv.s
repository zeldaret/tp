lbl_80CFEC4C:
/* 80CFEC4C  88 83 05 D3 */	lbz r4, 0x5d3(r3)
/* 80CFEC50  28 04 00 00 */	cmplwi r4, 0
/* 80CFEC54  41 82 00 0C */	beq lbl_80CFEC60
/* 80CFEC58  38 04 FF FF */	addi r0, r4, -1
/* 80CFEC5C  98 03 05 D3 */	stb r0, 0x5d3(r3)
lbl_80CFEC60:
/* 80CFEC60  88 03 05 D8 */	lbz r0, 0x5d8(r3)
/* 80CFEC64  28 00 00 00 */	cmplwi r0, 0
/* 80CFEC68  41 82 00 78 */	beq lbl_80CFECE0
/* 80CFEC6C  88 03 05 D4 */	lbz r0, 0x5d4(r3)
/* 80CFEC70  28 00 00 00 */	cmplwi r0, 0
/* 80CFEC74  41 82 00 4C */	beq lbl_80CFECC0
/* 80CFEC78  28 00 00 02 */	cmplwi r0, 2
/* 80CFEC7C  40 82 00 24 */	bne lbl_80CFECA0
/* 80CFEC80  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80CFEC84  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFEC88  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFEC8C  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFEC90  7C 80 2A 14 */	add r4, r0, r5
/* 80CFEC94  A8 04 00 26 */	lha r0, 0x26(r4)
/* 80CFEC98  B0 03 05 D6 */	sth r0, 0x5d6(r3)
/* 80CFEC9C  48 00 00 94 */	b lbl_80CFED30
lbl_80CFECA0:
/* 80CFECA0  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80CFECA4  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFECA8  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFECAC  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFECB0  7C 80 2A 14 */	add r4, r0, r5
/* 80CFECB4  A8 04 00 22 */	lha r0, 0x22(r4)
/* 80CFECB8  B0 03 05 D6 */	sth r0, 0x5d6(r3)
/* 80CFECBC  48 00 00 74 */	b lbl_80CFED30
lbl_80CFECC0:
/* 80CFECC0  A8 83 05 D6 */	lha r4, 0x5d6(r3)
/* 80CFECC4  38 04 FF FF */	addi r0, r4, -1
/* 80CFECC8  B0 03 05 D6 */	sth r0, 0x5d6(r3)
/* 80CFECCC  7C 00 07 35 */	extsh. r0, r0
/* 80CFECD0  41 81 00 60 */	bgt lbl_80CFED30
/* 80CFECD4  38 00 00 00 */	li r0, 0
/* 80CFECD8  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80CFECDC  48 00 00 54 */	b lbl_80CFED30
lbl_80CFECE0:
/* 80CFECE0  88 03 05 D4 */	lbz r0, 0x5d4(r3)
/* 80CFECE4  28 00 00 00 */	cmplwi r0, 0
/* 80CFECE8  41 82 00 40 */	beq lbl_80CFED28
/* 80CFECEC  A8 83 05 D6 */	lha r4, 0x5d6(r3)
/* 80CFECF0  38 04 00 01 */	addi r0, r4, 1
/* 80CFECF4  B0 03 05 D6 */	sth r0, 0x5d6(r3)
/* 80CFECF8  7C 06 07 34 */	extsh r6, r0
/* 80CFECFC  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80CFED00  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFED04  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFED08  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFED0C  7C 80 2A 14 */	add r4, r0, r5
/* 80CFED10  A8 04 00 22 */	lha r0, 0x22(r4)
/* 80CFED14  7C 06 00 00 */	cmpw r6, r0
/* 80CFED18  41 80 00 18 */	blt lbl_80CFED30
/* 80CFED1C  38 00 00 01 */	li r0, 1
/* 80CFED20  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80CFED24  48 00 00 0C */	b lbl_80CFED30
lbl_80CFED28:
/* 80CFED28  38 00 00 00 */	li r0, 0
/* 80CFED2C  B0 03 05 D6 */	sth r0, 0x5d6(r3)
lbl_80CFED30:
/* 80CFED30  88 03 05 DE */	lbz r0, 0x5de(r3)
/* 80CFED34  28 00 00 00 */	cmplwi r0, 0
/* 80CFED38  41 82 00 50 */	beq lbl_80CFED88
/* 80CFED3C  88 03 05 D9 */	lbz r0, 0x5d9(r3)
/* 80CFED40  28 00 00 00 */	cmplwi r0, 0
/* 80CFED44  41 82 00 24 */	beq lbl_80CFED68
/* 80CFED48  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80CFED4C  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFED50  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFED54  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFED58  7C 80 2A 14 */	add r4, r0, r5
/* 80CFED5C  A8 04 00 24 */	lha r0, 0x24(r4)
/* 80CFED60  B0 03 05 DC */	sth r0, 0x5dc(r3)
/* 80CFED64  4E 80 00 20 */	blr 
lbl_80CFED68:
/* 80CFED68  A8 83 05 DC */	lha r4, 0x5dc(r3)
/* 80CFED6C  38 04 FF FF */	addi r0, r4, -1
/* 80CFED70  B0 03 05 DC */	sth r0, 0x5dc(r3)
/* 80CFED74  7C 00 07 35 */	extsh. r0, r0
/* 80CFED78  4D 81 00 20 */	bgtlr 
/* 80CFED7C  38 00 00 00 */	li r0, 0
/* 80CFED80  98 03 05 DE */	stb r0, 0x5de(r3)
/* 80CFED84  4E 80 00 20 */	blr 
lbl_80CFED88:
/* 80CFED88  88 03 05 D9 */	lbz r0, 0x5d9(r3)
/* 80CFED8C  28 00 00 00 */	cmplwi r0, 0
/* 80CFED90  41 82 00 40 */	beq lbl_80CFEDD0
/* 80CFED94  A8 83 05 DC */	lha r4, 0x5dc(r3)
/* 80CFED98  38 04 00 01 */	addi r0, r4, 1
/* 80CFED9C  B0 03 05 DC */	sth r0, 0x5dc(r3)
/* 80CFEDA0  7C 06 07 34 */	extsh r6, r0
/* 80CFEDA4  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80CFEDA8  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFEDAC  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFEDB0  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFEDB4  7C 80 2A 14 */	add r4, r0, r5
/* 80CFEDB8  A8 04 00 24 */	lha r0, 0x24(r4)
/* 80CFEDBC  7C 06 00 00 */	cmpw r6, r0
/* 80CFEDC0  4D 80 00 20 */	bltlr 
/* 80CFEDC4  38 00 00 01 */	li r0, 1
/* 80CFEDC8  98 03 05 DE */	stb r0, 0x5de(r3)
/* 80CFEDCC  4E 80 00 20 */	blr 
lbl_80CFEDD0:
/* 80CFEDD0  38 00 00 00 */	li r0, 0
/* 80CFEDD4  B0 03 05 DC */	sth r0, 0x5dc(r3)
/* 80CFEDD8  4E 80 00 20 */	blr 
