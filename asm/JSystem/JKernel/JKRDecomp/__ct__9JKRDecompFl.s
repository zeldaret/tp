lbl_802DB6E0:
/* 802DB6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB6E4  7C 08 02 A6 */	mflr r0
/* 802DB6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB6F0  7C 7F 1B 78 */	mr r31, r3
/* 802DB6F4  7C 86 23 78 */	mr r6, r4
/* 802DB6F8  38 80 08 00 */	li r4, 0x800
/* 802DB6FC  38 A0 00 10 */	li r5, 0x10
/* 802DB700  4B FF 5E 69 */	bl __ct__9JKRThreadFUlii
/* 802DB704  3C 60 80 3D */	lis r3, __vt__9JKRDecomp@ha /* 0x803CC4A0@ha */
/* 802DB708  38 03 C4 A0 */	addi r0, r3, __vt__9JKRDecomp@l /* 0x803CC4A0@l */
/* 802DB70C  90 1F 00 00 */	stw r0, 0(r31)
/* 802DB710  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802DB714  48 06 60 A1 */	bl OSResumeThread
/* 802DB718  7F E3 FB 78 */	mr r3, r31
/* 802DB71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB724  7C 08 03 A6 */	mtlr r0
/* 802DB728  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB72C  4E 80 00 20 */	blr 
