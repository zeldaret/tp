lbl_80CC4054:
/* 80CC4054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4058  7C 08 02 A6 */	mflr r0
/* 80CC405C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4064  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC4068  7C 7E 1B 78 */	mr r30, r3
/* 80CC406C  7C 9F 23 78 */	mr r31, r4
/* 80CC4070  48 00 00 35 */	bl moveProc__10daSaidan_cFv
/* 80CC4074  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CC4078  38 03 00 24 */	addi r0, r3, 0x24
/* 80CC407C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC4080  7F C3 F3 78 */	mr r3, r30
/* 80CC4084  4B FF FD A5 */	bl setBaseMtx__10daSaidan_cFv
/* 80CC4088  38 60 00 01 */	li r3, 1
/* 80CC408C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4090  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC4094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4098  7C 08 03 A6 */	mtlr r0
/* 80CC409C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC40A0  4E 80 00 20 */	blr 
