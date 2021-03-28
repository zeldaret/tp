lbl_803572F4:
/* 803572F4  7C 08 02 A6 */	mflr r0
/* 803572F8  3C C0 80 35 */	lis r6, __CARDSyncCallback@ha
/* 803572FC  90 01 00 04 */	stw r0, 4(r1)
/* 80357300  38 C6 2A 34 */	addi r6, r6, __CARDSyncCallback@l
/* 80357304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80357308  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035730C  3B E3 00 00 */	addi r31, r3, 0
/* 80357310  4B FF FE 45 */	bl CARDMountAsync
/* 80357314  2C 03 00 00 */	cmpwi r3, 0
/* 80357318  40 80 00 08 */	bge lbl_80357320
/* 8035731C  48 00 00 0C */	b lbl_80357328
lbl_80357320:
/* 80357320  7F E3 FB 78 */	mr r3, r31
/* 80357324  4B FF CA FD */	bl __CARDSync
lbl_80357328:
/* 80357328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035732C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80357330  38 21 00 20 */	addi r1, r1, 0x20
/* 80357334  7C 08 03 A6 */	mtlr r0
/* 80357338  4E 80 00 20 */	blr 
