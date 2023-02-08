lbl_80BCF860:
/* 80BCF860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCF864  7C 08 02 A6 */	mflr r0
/* 80BCF868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCF86C  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80BCF870  2C 00 00 01 */	cmpwi r0, 1
/* 80BCF874  41 82 00 1C */	beq lbl_80BCF890
/* 80BCF878  40 80 00 1C */	bge lbl_80BCF894
/* 80BCF87C  2C 00 00 00 */	cmpwi r0, 0
/* 80BCF880  40 80 00 08 */	bge lbl_80BCF888
/* 80BCF884  48 00 00 10 */	b lbl_80BCF894
lbl_80BCF888:
/* 80BCF888  4B FF FB 7D */	bl NormalAction__15daObjCRVFENCE_cFv
/* 80BCF88C  48 00 00 08 */	b lbl_80BCF894
lbl_80BCF890:
/* 80BCF890  4B FF F8 21 */	bl BrokenAction__15daObjCRVFENCE_cFv
lbl_80BCF894:
/* 80BCF894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCF898  7C 08 03 A6 */	mtlr r0
/* 80BCF89C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCF8A0  4E 80 00 20 */	blr 
