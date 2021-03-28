lbl_80A26138:
/* 80A26138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2613C  7C 08 02 A6 */	mflr r0
/* 80A26140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26144  4B 83 CF 4C */	b ModuleUnresolved
/* 80A26148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2614C  7C 08 03 A6 */	mtlr r0
/* 80A26150  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26154  4E 80 00 20 */	blr 
