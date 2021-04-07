lbl_8036CDE8:
/* 8036CDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CDEC  7C 08 02 A6 */	mflr r0
/* 8036CDF0  3C 60 80 45 */	lis r3, gTRKEventQueue@ha /* 0x8044D890@ha */
/* 8036CDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CDF8  38 63 D8 90 */	addi r3, r3, gTRKEventQueue@l /* 0x8044D890@l */
/* 8036CDFC  48 00 26 AD */	bl TRKInitializeMutex
/* 8036CE00  3C 60 80 45 */	lis r3, gTRKEventQueue@ha /* 0x8044D890@ha */
/* 8036CE04  38 63 D8 90 */	addi r3, r3, gTRKEventQueue@l /* 0x8044D890@l */
/* 8036CE08  48 00 26 99 */	bl TRKAcquireMutex
/* 8036CE0C  3C 60 80 45 */	lis r3, gTRKEventQueue@ha /* 0x8044D890@ha */
/* 8036CE10  38 80 00 00 */	li r4, 0
/* 8036CE14  38 63 D8 90 */	addi r3, r3, gTRKEventQueue@l /* 0x8044D890@l */
/* 8036CE18  38 00 01 00 */	li r0, 0x100
/* 8036CE1C  90 83 00 04 */	stw r4, 4(r3)
/* 8036CE20  90 83 00 08 */	stw r4, 8(r3)
/* 8036CE24  90 03 00 24 */	stw r0, 0x24(r3)
/* 8036CE28  48 00 26 71 */	bl TRKReleaseMutex
/* 8036CE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CE30  38 60 00 00 */	li r3, 0
/* 8036CE34  7C 08 03 A6 */	mtlr r0
/* 8036CE38  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CE3C  4E 80 00 20 */	blr 
