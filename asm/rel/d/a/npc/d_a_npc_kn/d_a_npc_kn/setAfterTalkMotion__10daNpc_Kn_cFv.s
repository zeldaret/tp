lbl_80A2C1D0:
/* 80A2C1D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2C1D4  7C 08 02 A6 */	mflr r0
/* 80A2C1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2C1DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2C1E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2C1E4  7C 7E 1B 78 */	mr r30, r3
/* 80A2C1E8  80 03 0B 8C */	lwz r0, 0xb8c(r3)
/* 80A2C1EC  2C 00 00 01 */	cmpwi r0, 1
/* 80A2C1F0  41 82 00 28 */	beq lbl_80A2C218
/* 80A2C1F4  83 FE 0B 90 */	lwz r31, 0xb90(r30)
/* 80A2C1F8  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2C1FC  4B 71 96 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2C200  93 FE 0B 90 */	stw r31, 0xb90(r30)
/* 80A2C204  38 00 00 01 */	li r0, 1
/* 80A2C208  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2C20C  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2C210  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2C214  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2C218:
/* 80A2C218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2C21C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2C220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2C224  7C 08 03 A6 */	mtlr r0
/* 80A2C228  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2C22C  4E 80 00 20 */	blr 
