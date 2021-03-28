lbl_8036D68C:
/* 8036D68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036D690  7C 08 02 A6 */	mflr r0
/* 8036D694  2C 03 FF FF */	cmpwi r3, -1
/* 8036D698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036D69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036D6A0  41 82 00 3C */	beq lbl_8036D6DC
/* 8036D6A4  2C 03 00 00 */	cmpwi r3, 0
/* 8036D6A8  41 80 00 34 */	blt lbl_8036D6DC
/* 8036D6AC  2C 03 00 03 */	cmpwi r3, 3
/* 8036D6B0  40 80 00 2C */	bge lbl_8036D6DC
/* 8036D6B4  1C 83 08 90 */	mulli r4, r3, 0x890
/* 8036D6B8  3C 60 80 45 */	lis r3, gTRKMsgBufs@ha
/* 8036D6BC  38 03 D8 C0 */	addi r0, r3, gTRKMsgBufs@l
/* 8036D6C0  7F E0 22 14 */	add r31, r0, r4
/* 8036D6C4  7F E3 FB 78 */	mr r3, r31
/* 8036D6C8  48 00 1D D9 */	bl TRKAcquireMutex
/* 8036D6CC  38 00 00 00 */	li r0, 0
/* 8036D6D0  7F E3 FB 78 */	mr r3, r31
/* 8036D6D4  90 1F 00 04 */	stw r0, 4(r31)
/* 8036D6D8  48 00 1D C1 */	bl TRKReleaseMutex
lbl_8036D6DC:
/* 8036D6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036D6E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036D6E4  7C 08 03 A6 */	mtlr r0
/* 8036D6E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8036D6EC  4E 80 00 20 */	blr 
