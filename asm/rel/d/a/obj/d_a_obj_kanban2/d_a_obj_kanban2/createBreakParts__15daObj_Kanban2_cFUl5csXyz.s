lbl_805819BC:
/* 805819BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805819C0  7C 08 02 A6 */	mflr r0
/* 805819C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805819C8  7C 66 1B 78 */	mr r6, r3
/* 805819CC  7C A7 2B 78 */	mr r7, r5
/* 805819D0  38 60 01 1B */	li r3, 0x11b
/* 805819D4  38 A6 04 D0 */	addi r5, r6, 0x4d0
/* 805819D8  88 06 04 E2 */	lbz r0, 0x4e2(r6)
/* 805819DC  7C 06 07 74 */	extsb r6, r0
/* 805819E0  39 00 00 00 */	li r8, 0
/* 805819E4  39 20 FF FF */	li r9, -1
/* 805819E8  4B A9 83 B1 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805819EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805819F0  7C 08 03 A6 */	mtlr r0
/* 805819F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805819F8  4E 80 00 20 */	blr 
