lbl_800290C0:
/* 800290C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800290C4  7C 08 02 A6 */	mflr r0
/* 800290C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800290CC  4B FF F7 F9 */	bl getDispType__15renderingAmap_cCFv
/* 800290D0  38 80 00 01 */	li r4, 1
/* 800290D4  38 03 FF FF */	addi r0, r3, -1
/* 800290D8  38 60 FF FF */	li r3, -1
/* 800290DC  7C 00 20 10 */	subfc r0, r0, r4
/* 800290E0  7C 03 01 90 */	subfze r0, r3
/* 800290E4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800290E8  40 82 00 08 */	bne lbl_800290F0
/* 800290EC  38 80 00 00 */	li r4, 0
lbl_800290F0:
/* 800290F0  7C 83 23 78 */	mr r3, r4
/* 800290F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800290F8  7C 08 03 A6 */	mtlr r0
/* 800290FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80029100  4E 80 00 20 */	blr 
