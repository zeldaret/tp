lbl_80358458:
/* 80358458  7C 08 02 A6 */	mflr r0
/* 8035845C  3C E0 80 35 */	lis r7, __CARDSyncCallback@ha /* 0x80352A34@ha */
/* 80358460  90 01 00 04 */	stw r0, 4(r1)
/* 80358464  38 E7 2A 34 */	addi r7, r7, __CARDSyncCallback@l /* 0x80352A34@l */
/* 80358468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035846C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358470  3B E3 00 00 */	addi r31, r3, 0
/* 80358474  4B FF FD C5 */	bl CARDCreateAsync
/* 80358478  2C 03 00 00 */	cmpwi r3, 0
/* 8035847C  40 80 00 08 */	bge lbl_80358484
/* 80358480  48 00 00 0C */	b lbl_8035848C
lbl_80358484:
/* 80358484  7F E3 FB 78 */	mr r3, r31
/* 80358488  4B FF B9 99 */	bl __CARDSync
lbl_8035848C:
/* 8035848C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358490  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358494  38 21 00 20 */	addi r1, r1, 0x20
/* 80358498  7C 08 03 A6 */	mtlr r0
/* 8035849C  4E 80 00 20 */	blr 
