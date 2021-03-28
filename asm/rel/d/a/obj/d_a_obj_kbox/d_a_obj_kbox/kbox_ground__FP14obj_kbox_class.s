lbl_80C3DA18:
/* 80C3DA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3DA1C  7C 08 02 A6 */	mflr r0
/* 80C3DA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3DA24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3DA28  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3DA2C  7C 7E 1B 78 */	mr r30, r3
/* 80C3DA30  3C 60 80 C4 */	lis r3, lit_3648@ha
/* 80C3DA34  3B E3 F0 58 */	addi r31, r3, lit_3648@l
/* 80C3DA38  80 1E 08 40 */	lwz r0, 0x840(r30)
/* 80C3DA3C  60 00 00 01 */	ori r0, r0, 1
/* 80C3DA40  90 1E 08 40 */	stw r0, 0x840(r30)
/* 80C3DA44  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C3DA48  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C3DA4C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80C3DA50  4B 63 20 30 */	b cLib_addCalc0__FPfff
/* 80C3DA54  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80C3DA58  60 00 00 10 */	ori r0, r0, 0x10
/* 80C3DA5C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C3DA60  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C3DA64  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C3DA68  41 82 00 34 */	beq lbl_80C3DA9C
/* 80C3DA6C  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80C3DA70  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C3DA74  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C3DA78  38 00 00 01 */	li r0, 1
/* 80C3DA7C  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 80C3DA80  38 00 00 00 */	li r0, 0
/* 80C3DA84  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80C3DA88  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C3DA8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C3DA90  80 1E 08 40 */	lwz r0, 0x840(r30)
/* 80C3DA94  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C3DA98  90 1E 08 40 */	stw r0, 0x840(r30)
lbl_80C3DA9C:
/* 80C3DA9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3DAA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3DAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3DAA8  7C 08 03 A6 */	mtlr r0
/* 80C3DAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3DAB0  4E 80 00 20 */	blr 
