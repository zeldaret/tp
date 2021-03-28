lbl_8079C128:
/* 8079C128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079C12C  7C 08 02 A6 */	mflr r0
/* 8079C130  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079C134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079C138  7C 7F 1B 78 */	mr r31, r3
/* 8079C13C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8079C140  3C 80 80 7A */	lis r4, stringBase0@ha
/* 8079C144  38 84 D7 18 */	addi r4, r4, stringBase0@l
/* 8079C148  38 84 00 07 */	addi r4, r4, 7
/* 8079C14C  4B 89 0E BC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8079C150  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8079C154  28 00 00 00 */	cmplwi r0, 0
/* 8079C158  41 82 00 14 */	beq lbl_8079C16C
/* 8079C15C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079C160  4B 87 51 B0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 8079C164  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8079C168  4B 87 51 A8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8079C16C:
/* 8079C16C  38 60 00 01 */	li r3, 1
/* 8079C170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079C174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079C178  7C 08 03 A6 */	mtlr r0
/* 8079C17C  38 21 00 10 */	addi r1, r1, 0x10
/* 8079C180  4E 80 00 20 */	blr 
