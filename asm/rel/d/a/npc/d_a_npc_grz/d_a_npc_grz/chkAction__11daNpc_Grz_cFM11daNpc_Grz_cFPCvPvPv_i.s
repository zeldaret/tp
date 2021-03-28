lbl_809EBA3C:
/* 809EBA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EBA40  7C 08 02 A6 */	mflr r0
/* 809EBA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EBA48  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 809EBA4C  4B 97 65 FC */	b __ptmf_cmpr
/* 809EBA50  7C 60 00 34 */	cntlzw r0, r3
/* 809EBA54  54 03 D9 7E */	srwi r3, r0, 5
/* 809EBA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EBA5C  7C 08 03 A6 */	mtlr r0
/* 809EBA60  38 21 00 10 */	addi r1, r1, 0x10
/* 809EBA64  4E 80 00 20 */	blr 
