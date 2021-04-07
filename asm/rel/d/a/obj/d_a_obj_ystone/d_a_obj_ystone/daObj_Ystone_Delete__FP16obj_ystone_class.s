lbl_80D3E778:
/* 80D3E778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3E77C  7C 08 02 A6 */	mflr r0
/* 80D3E780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3E784  7C 64 1B 78 */	mr r4, r3
/* 80D3E788  38 64 05 68 */	addi r3, r4, 0x568
/* 80D3E78C  88 04 05 99 */	lbz r0, 0x599(r4)
/* 80D3E790  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E794  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D3ECBC@ha */
/* 80D3E798  38 84 EC BC */	addi r4, r4, l_arcName@l /* 0x80D3ECBC@l */
/* 80D3E79C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3E7A0  4B 2E E8 69 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D3E7A4  38 60 00 01 */	li r3, 1
/* 80D3E7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3E7AC  7C 08 03 A6 */	mtlr r0
/* 80D3E7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3E7B4  4E 80 00 20 */	blr 
