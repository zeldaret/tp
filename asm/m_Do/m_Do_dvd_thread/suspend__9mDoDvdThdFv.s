lbl_800158B4:
/* 800158B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800158B8  7C 08 02 A6 */	mflr r0
/* 800158BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800158C0  3C 60 80 3E */	lis r3, l_thread__9mDoDvdThd@ha /* 0x803DD940@ha */
/* 800158C4  38 63 D9 40 */	addi r3, r3, l_thread__9mDoDvdThd@l /* 0x803DD940@l */
/* 800158C8  48 32 C1 75 */	bl OSSuspendThread
/* 800158CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800158D0  7C 08 03 A6 */	mtlr r0
/* 800158D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800158D8  4E 80 00 20 */	blr 
