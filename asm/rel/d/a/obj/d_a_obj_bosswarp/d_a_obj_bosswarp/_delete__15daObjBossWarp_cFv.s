lbl_8057B23C:
/* 8057B23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B240  7C 08 02 A6 */	mflr r0
/* 8057B244  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B24C  7C 7F 1B 78 */	mr r31, r3
/* 8057B250  38 80 00 00 */	li r4, 0
/* 8057B254  4B FF EB B5 */	bl disappear__15daObjBossWarp_cFi
/* 8057B258  38 7F 05 68 */	addi r3, r31, 0x568
/* 8057B25C  3C 80 80 58 */	lis r4, l_arcName@ha
/* 8057B260  38 84 B6 78 */	addi r4, r4, l_arcName@l
/* 8057B264  80 84 00 00 */	lwz r4, 0(r4)
/* 8057B268  4B AB 1D A0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8057B26C  38 60 00 01 */	li r3, 1
/* 8057B270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B278  7C 08 03 A6 */	mtlr r0
/* 8057B27C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B280  4E 80 00 20 */	blr 
