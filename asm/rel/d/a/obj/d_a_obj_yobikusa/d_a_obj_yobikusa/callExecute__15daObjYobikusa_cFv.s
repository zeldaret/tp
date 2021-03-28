lbl_8059CA54:
/* 8059CA54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059CA58  7C 08 02 A6 */	mflr r0
/* 8059CA5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059CA60  80 83 05 AC */	lwz r4, 0x5ac(r3)
/* 8059CA64  39 84 00 0C */	addi r12, r4, 0xc
/* 8059CA68  4B DC 56 1C */	b __ptmf_scall
/* 8059CA6C  60 00 00 00 */	nop 
/* 8059CA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059CA74  7C 08 03 A6 */	mtlr r0
/* 8059CA78  38 21 00 10 */	addi r1, r1, 0x10
/* 8059CA7C  4E 80 00 20 */	blr 
