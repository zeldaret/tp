lbl_80032044:
/* 80032044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032048  7C 08 02 A6 */	mflr r0
/* 8003204C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032054  7C 7F 1B 78 */	mr r31, r3
/* 80032058  3D 40 80 3A */	lis r10, __vt__9STControl@ha /* 0x803A7260@ha */
/* 8003205C  38 0A 72 60 */	addi r0, r10, __vt__9STControl@l /* 0x803A7260@l */
/* 80032060  90 03 00 00 */	stw r0, 0(r3)
/* 80032064  48 00 00 25 */	bl setWaitParm__9STControlFssssffss
/* 80032068  7F E3 FB 78 */	mr r3, r31
/* 8003206C  48 00 00 41 */	bl init__9STControlFv
/* 80032070  7F E3 FB 78 */	mr r3, r31
/* 80032074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003207C  7C 08 03 A6 */	mtlr r0
/* 80032080  38 21 00 10 */	addi r1, r1, 0x10
/* 80032084  4E 80 00 20 */	blr 
