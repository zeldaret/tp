lbl_80359110:
/* 80359110  7C 08 02 A6 */	mflr r0
/* 80359114  3C C0 80 35 */	lis r6, __CARDSyncCallback@ha /* 0x80352A34@ha */
/* 80359118  90 01 00 04 */	stw r0, 4(r1)
/* 8035911C  38 C6 2A 34 */	addi r6, r6, __CARDSyncCallback@l /* 0x80352A34@l */
/* 80359120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359124  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359128  3B E3 00 00 */	addi r31, r3, 0
/* 8035912C  4B FF FE 71 */	bl CARDSetStatusAsync
/* 80359130  2C 03 00 00 */	cmpwi r3, 0
/* 80359134  40 80 00 08 */	bge lbl_8035913C
/* 80359138  48 00 00 0C */	b lbl_80359144
lbl_8035913C:
/* 8035913C  7F E3 FB 78 */	mr r3, r31
/* 80359140  4B FF AC E1 */	bl __CARDSync
lbl_80359144:
/* 80359144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359148  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035914C  38 21 00 20 */	addi r1, r1, 0x20
/* 80359150  7C 08 03 A6 */	mtlr r0
/* 80359154  4E 80 00 20 */	blr 
