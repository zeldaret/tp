lbl_80016730:
/* 80016730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80016734  7C 08 02 A6 */	mflr r0
/* 80016738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001673C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80016740  7C 7F 1B 78 */	mr r31, r3
/* 80016744  48 33 D3 85 */	bl CARDInit
/* 80016748  38 60 00 00 */	li r3, 0
/* 8001674C  98 7F 1F BD */	stb r3, 0x1fbd(r31)
/* 80016750  38 00 00 02 */	li r0, 2
/* 80016754  98 1F 1F BE */	stb r0, 0x1fbe(r31)
/* 80016758  90 7F 1F C4 */	stw r3, 0x1fc4(r31)
/* 8001675C  90 7F 1F C0 */	stw r3, 0x1fc0(r31)
/* 80016760  98 7F 1F BC */	stb r3, 0x1fbc(r31)
/* 80016764  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 80016768  48 32 88 A1 */	bl OSInitMutex
/* 8001676C  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 80016770  48 32 8B A1 */	bl OSInitCond
/* 80016774  48 32 A5 11 */	bl OSGetCurrentThread
/* 80016778  48 32 B6 E5 */	bl OSGetThreadPriority
/* 8001677C  7C 68 1B 78 */	mr r8, r3
/* 80016780  3C 60 80 3E */	lis r3, MemCardThread@ha /* 0x803E0C20@ha */
/* 80016784  38 63 0C 20 */	addi r3, r3, MemCardThread@l /* 0x803E0C20@l */
/* 80016788  3C 80 80 01 */	lis r4, mDoMemCd_main__FPv@ha /* 0x8001741C@ha */
/* 8001678C  38 84 74 1C */	addi r4, r4, mDoMemCd_main__FPv@l /* 0x8001741C@l */
/* 80016790  38 A0 00 00 */	li r5, 0
/* 80016794  3C C0 80 3E */	lis r6, MemCardStack@ha /* 0x803DFC20@ha */
/* 80016798  38 C6 FC 20 */	addi r6, r6, MemCardStack@l /* 0x803DFC20@l */
/* 8001679C  38 C6 10 00 */	addi r6, r6, 0x1000
/* 800167A0  38 E0 10 00 */	li r7, 0x1000
/* 800167A4  39 08 00 01 */	addi r8, r8, 1
/* 800167A8  39 20 00 01 */	li r9, 1
/* 800167AC  48 32 AA E1 */	bl OSCreateThread
/* 800167B0  3C 60 80 3E */	lis r3, MemCardThread@ha /* 0x803E0C20@ha */
/* 800167B4  38 63 0C 20 */	addi r3, r3, MemCardThread@l /* 0x803E0C20@l */
/* 800167B8  48 32 AF FD */	bl OSResumeThread
/* 800167BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800167C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800167C4  7C 08 03 A6 */	mtlr r0
/* 800167C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800167CC  4E 80 00 20 */	blr 
