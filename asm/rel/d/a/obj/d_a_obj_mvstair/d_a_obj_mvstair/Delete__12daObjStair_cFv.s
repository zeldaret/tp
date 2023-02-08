lbl_80C9D7B4:
/* 80C9D7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D7B8  7C 08 02 A6 */	mflr r0
/* 80C9D7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D7C4  7C 7F 1B 78 */	mr r31, r3
/* 80C9D7C8  80 63 05 AC */	lwz r3, 0x5ac(r3)
/* 80C9D7CC  28 03 00 00 */	cmplwi r3, 0
/* 80C9D7D0  41 82 00 20 */	beq lbl_80C9D7F0
/* 80C9D7D4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C9D7D8  60 00 00 01 */	ori r0, r0, 1
/* 80C9D7DC  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C9D7E0  38 00 00 01 */	li r0, 1
/* 80C9D7E4  90 03 00 24 */	stw r0, 0x24(r3)
/* 80C9D7E8  38 00 00 00 */	li r0, 0
/* 80C9D7EC  90 1F 05 AC */	stw r0, 0x5ac(r31)
lbl_80C9D7F0:
/* 80C9D7F0  7F E3 FB 78 */	mr r3, r31
/* 80C9D7F4  48 00 0D AD */	bl removeParticle__12daObjStair_cFv
/* 80C9D7F8  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C9D7FC  88 1F 06 69 */	lbz r0, 0x669(r31)
/* 80C9D800  54 00 10 3A */	slwi r0, r0, 2
/* 80C9D804  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C9E940@ha */
/* 80C9D808  38 84 E9 40 */	addi r4, r4, l_arcName@l /* 0x80C9E940@l */
/* 80C9D80C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C9D810  4B 38 F7 F9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C9D814  38 60 00 01 */	li r3, 1
/* 80C9D818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D81C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D820  7C 08 03 A6 */	mtlr r0
/* 80C9D824  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D828  4E 80 00 20 */	blr 
