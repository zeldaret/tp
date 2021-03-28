lbl_80358C48:
/* 80358C48  7C 08 02 A6 */	mflr r0
/* 80358C4C  3C E0 80 35 */	lis r7, __CARDSyncCallback@ha
/* 80358C50  90 01 00 04 */	stw r0, 4(r1)
/* 80358C54  38 E7 2A 34 */	addi r7, r7, __CARDSyncCallback@l
/* 80358C58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358C5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358C60  3B E3 00 00 */	addi r31, r3, 0
/* 80358C64  4B FF FE D1 */	bl CARDWriteAsync
/* 80358C68  2C 03 00 00 */	cmpwi r3, 0
/* 80358C6C  40 80 00 08 */	bge lbl_80358C74
/* 80358C70  48 00 00 0C */	b lbl_80358C7C
lbl_80358C74:
/* 80358C74  80 7F 00 00 */	lwz r3, 0(r31)
/* 80358C78  4B FF B1 A9 */	bl __CARDSync
lbl_80358C7C:
/* 80358C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358C80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80358C88  7C 08 03 A6 */	mtlr r0
/* 80358C8C  4E 80 00 20 */	blr 
