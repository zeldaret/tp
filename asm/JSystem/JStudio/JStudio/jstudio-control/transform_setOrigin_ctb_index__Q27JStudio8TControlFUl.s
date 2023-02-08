lbl_8028543C:
/* 8028543C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285440  7C 08 02 A6 */	mflr r0
/* 80285444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028544C  7C 7F 1B 78 */	mr r31, r3
/* 80285450  38 7F 00 74 */	addi r3, r31, 0x74
/* 80285454  4B FF BD DD */	bl getObject_index__Q37JStudio3ctb8TControlFUl
/* 80285458  7C 64 1B 79 */	or. r4, r3, r3
/* 8028545C  40 82 00 0C */	bne lbl_80285468
/* 80285460  38 60 00 00 */	li r3, 0
/* 80285464  48 00 00 10 */	b lbl_80285474
lbl_80285468:
/* 80285468  7F E3 FB 78 */	mr r3, r31
/* 8028546C  4B FF FE FD */	bl transform_setOrigin_ctb__Q27JStudio8TControlFRCQ37JStudio3ctb7TObject
/* 80285470  38 60 00 01 */	li r3, 1
lbl_80285474:
/* 80285474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028547C  7C 08 03 A6 */	mtlr r0
/* 80285480  38 21 00 10 */	addi r1, r1, 0x10
/* 80285484  4E 80 00 20 */	blr 
