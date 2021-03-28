lbl_80C3B8D0:
/* 80C3B8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3B8D4  7C 08 02 A6 */	mflr r0
/* 80C3B8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3B8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3B8E0  7C 7F 1B 78 */	mr r31, r3
/* 80C3B8E4  38 7F 0A 68 */	addi r3, r31, 0xa68
/* 80C3B8E8  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C3B8EC  38 84 C7 64 */	addi r4, r4, stringBase0@l
/* 80C3B8F0  4B 3F 17 18 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C3B8F4  88 1F 0A 70 */	lbz r0, 0xa70(r31)
/* 80C3B8F8  28 00 00 00 */	cmplwi r0, 0
/* 80C3B8FC  41 82 00 10 */	beq lbl_80C3B90C
/* 80C3B900  38 00 00 00 */	li r0, 0
/* 80C3B904  3C 60 80 C4 */	lis r3, data_80C3C838@ha
/* 80C3B908  98 03 C8 38 */	stb r0, data_80C3C838@l(r3)
lbl_80C3B90C:
/* 80C3B90C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C3B910  28 00 00 00 */	cmplwi r0, 0
/* 80C3B914  41 82 00 0C */	beq lbl_80C3B920
/* 80C3B918  80 7F 0A 64 */	lwz r3, 0xa64(r31)
/* 80C3B91C  4B 3D 59 F4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80C3B920:
/* 80C3B920  38 60 00 01 */	li r3, 1
/* 80C3B924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3B928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3B92C  7C 08 03 A6 */	mtlr r0
/* 80C3B930  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3B934  4E 80 00 20 */	blr 
