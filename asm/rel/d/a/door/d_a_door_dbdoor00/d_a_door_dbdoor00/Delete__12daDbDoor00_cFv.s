lbl_8045E428:
/* 8045E428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E42C  7C 08 02 A6 */	mflr r0
/* 8045E430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045E438  7C 7F 1B 78 */	mr r31, r3
/* 8045E43C  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 8045E440  28 00 00 00 */	cmplwi r0, 0
/* 8045E444  41 82 00 18 */	beq lbl_8045E45C
/* 8045E448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E44C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E450  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045E454  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 8045E458  4B C1 5D F9 */	bl Release__4cBgSFP9dBgW_Base
lbl_8045E45C:
/* 8045E45C  7F E3 FB 78 */	mr r3, r31
/* 8045E460  4B FF F0 41 */	bl getBmdArcName__12daDbDoor00_cFv
/* 8045E464  7C 64 1B 78 */	mr r4, r3
/* 8045E468  38 7F 05 68 */	addi r3, r31, 0x568
/* 8045E46C  4B BC EB 9D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8045E470  7F E3 FB 78 */	mr r3, r31
/* 8045E474  4B FF EF FD */	bl getAlwaysArcName__12daDbDoor00_cFv
/* 8045E478  7C 64 1B 78 */	mr r4, r3
/* 8045E47C  38 7F 05 70 */	addi r3, r31, 0x570
/* 8045E480  4B BC EB 89 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8045E484  38 60 00 01 */	li r3, 1
/* 8045E488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045E48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E490  7C 08 03 A6 */	mtlr r0
/* 8045E494  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E498  4E 80 00 20 */	blr 
