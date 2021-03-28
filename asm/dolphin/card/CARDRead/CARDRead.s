lbl_803588CC:
/* 803588CC  7C 08 02 A6 */	mflr r0
/* 803588D0  3C E0 80 35 */	lis r7, __CARDSyncCallback@ha
/* 803588D4  90 01 00 04 */	stw r0, 4(r1)
/* 803588D8  38 E7 2A 34 */	addi r7, r7, __CARDSyncCallback@l
/* 803588DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803588E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803588E4  3B E3 00 00 */	addi r31, r3, 0
/* 803588E8  4B FF FE A1 */	bl CARDReadAsync
/* 803588EC  2C 03 00 00 */	cmpwi r3, 0
/* 803588F0  40 80 00 08 */	bge lbl_803588F8
/* 803588F4  48 00 00 0C */	b lbl_80358900
lbl_803588F8:
/* 803588F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 803588FC  4B FF B5 25 */	bl __CARDSync
lbl_80358900:
/* 80358900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358904  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358908  38 21 00 20 */	addi r1, r1, 0x20
/* 8035890C  7C 08 03 A6 */	mtlr r0
/* 80358910  4E 80 00 20 */	blr 
