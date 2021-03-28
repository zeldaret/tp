lbl_80C18920:
/* 80C18920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18924  7C 08 02 A6 */	mflr r0
/* 80C18928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1892C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18930  7C 7F 1B 78 */	mr r31, r3
/* 80C18934  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C18938  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C1893C  40 82 00 1C */	bne lbl_80C18958
/* 80C18940  28 1F 00 00 */	cmplwi r31, 0
/* 80C18944  41 82 00 08 */	beq lbl_80C1894C
/* 80C18948  4B FF F9 95 */	bl __ct__Q29nObjMHasu12daObjMHasu_cFv
lbl_80C1894C:
/* 80C1894C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C18950  60 00 00 08 */	ori r0, r0, 8
/* 80C18954  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C18958:
/* 80C18958  7F E3 FB 78 */	mr r3, r31
/* 80C1895C  4B FF F9 E5 */	bl create1st__Q29nObjMHasu12daObjMHasu_cFv
/* 80C18960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18968  7C 08 03 A6 */	mtlr r0
/* 80C1896C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18970  4E 80 00 20 */	blr 
