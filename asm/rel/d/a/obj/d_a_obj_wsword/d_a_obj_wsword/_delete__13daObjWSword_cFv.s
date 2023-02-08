lbl_80D3BE54:
/* 80D3BE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BE58  7C 08 02 A6 */	mflr r0
/* 80D3BE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BE60  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D3BF2C@ha */
/* 80D3BE64  38 84 BF 2C */	addi r4, r4, l_arcName@l /* 0x80D3BF2C@l */
/* 80D3BE68  80 84 00 00 */	lwz r4, 0(r4)
/* 80D3BE6C  38 63 05 68 */	addi r3, r3, 0x568
/* 80D3BE70  4B 2F 11 99 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D3BE74  38 60 00 01 */	li r3, 1
/* 80D3BE78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BE7C  7C 08 03 A6 */	mtlr r0
/* 80D3BE80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BE84  4E 80 00 20 */	blr 
