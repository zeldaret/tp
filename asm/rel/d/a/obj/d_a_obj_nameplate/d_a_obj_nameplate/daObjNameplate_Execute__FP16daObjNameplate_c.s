lbl_80594A6C:
/* 80594A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594A70  7C 08 02 A6 */	mflr r0
/* 80594A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594A7C  7C 7F 1B 78 */	mr r31, r3
/* 80594A80  4B FF F8 CD */	bl calcAngle__16daObjNameplate_cFv
/* 80594A84  7F E3 FB 78 */	mr r3, r31
/* 80594A88  4B FF F6 F5 */	bl setBaseMtx__16daObjNameplate_cFv
/* 80594A8C  7F E3 FB 78 */	mr r3, r31
/* 80594A90  4B FF F8 29 */	bl setCcSphere__16daObjNameplate_cFv
/* 80594A94  7F E3 FB 78 */	mr r3, r31
/* 80594A98  4B FF FD 61 */	bl messageProc__16daObjNameplate_cFv
/* 80594A9C  38 60 00 01 */	li r3, 1
/* 80594AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594AA8  7C 08 03 A6 */	mtlr r0
/* 80594AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80594AB0  4E 80 00 20 */	blr 
