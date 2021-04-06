lbl_80272DD0:
/* 80272DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272DD4  7C 08 02 A6 */	mflr r0
/* 80272DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80272DE0  7C 7F 1B 78 */	mr r31, r3
/* 80272DE4  3C 60 80 43 */	lis r3, sList__8JFWAlarm@ha /* 0x80430FE4@ha */
/* 80272DE8  38 63 0F E4 */	addi r3, r3, sList__8JFWAlarm@l /* 0x80430FE4@l */
/* 80272DEC  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80272DF0  48 06 93 6D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80272DF4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80272DF8  48 0C E9 BD */	bl OSResumeThread
/* 80272DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80272E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272E04  7C 08 03 A6 */	mtlr r0
/* 80272E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80272E0C  4E 80 00 20 */	blr 
