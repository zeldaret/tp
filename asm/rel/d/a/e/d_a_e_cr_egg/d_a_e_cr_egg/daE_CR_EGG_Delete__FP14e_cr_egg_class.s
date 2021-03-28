lbl_8069A4CC:
/* 8069A4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069A4D0  7C 08 02 A6 */	mflr r0
/* 8069A4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069A4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8069A4DC  7C 7F 1B 78 */	mr r31, r3
/* 8069A4E0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8069A4E4  3C 80 80 6A */	lis r4, stringBase0@ha
/* 8069A4E8  38 84 A9 0C */	addi r4, r4, stringBase0@l
/* 8069A4EC  4B 99 2B 1C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8069A4F0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8069A4F4  4B C2 62 00 */	b stopAnime__10Z2CreatureFv
/* 8069A4F8  38 60 00 01 */	li r3, 1
/* 8069A4FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8069A500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069A504  7C 08 03 A6 */	mtlr r0
/* 8069A508  38 21 00 10 */	addi r1, r1, 0x10
/* 8069A50C  4E 80 00 20 */	blr 
