lbl_8033CC44:
/* 8033CC44  7C 08 02 A6 */	mflr r0
/* 8033CC48  90 01 00 04 */	stw r0, 4(r1)
/* 8033CC4C  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8033CC50  7C 80 23 78 */	mr r0, r4
/* 8033CC54  7C A6 2B 78 */	mr r6, r5
/* 8033CC58  7C 64 1B 78 */	mr r4, r3
/* 8033CC5C  7C 05 03 78 */	mr r5, r0
/* 8033CC60  38 61 00 14 */	addi r3, r1, 0x14
/* 8033CC64  38 E0 00 00 */	li r7, 0
/* 8033CC68  39 00 00 00 */	li r8, 0
/* 8033CC6C  48 00 E0 C1 */	bl DVDReadAbsAsyncPrio
/* 8033CC70  48 00 00 04 */	b lbl_8033CC74
lbl_8033CC74:
/* 8033CC74  48 00 00 04 */	b lbl_8033CC78
lbl_8033CC78:
/* 8033CC78  48 00 00 18 */	b lbl_8033CC90
lbl_8033CC7C:
/* 8033CC7C  48 00 E9 AD */	bl DVDCheckDisk
/* 8033CC80  2C 03 00 00 */	cmpwi r3, 0
/* 8033CC84  40 82 00 0C */	bne lbl_8033CC90
/* 8033CC88  38 60 00 00 */	li r3, 0
/* 8033CC8C  48 00 2B D9 */	bl __OSDoHotReset
lbl_8033CC90:
/* 8033CC90  38 61 00 14 */	addi r3, r1, 0x14
/* 8033CC94  48 00 E4 E9 */	bl DVDGetCommandBlockStatus
/* 8033CC98  2C 03 00 00 */	cmpwi r3, 0
/* 8033CC9C  40 82 FF E0 */	bne lbl_8033CC7C
/* 8033CCA0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8033CCA4  38 21 00 48 */	addi r1, r1, 0x48
/* 8033CCA8  7C 08 03 A6 */	mtlr r0
/* 8033CCAC  4E 80 00 20 */	blr 
