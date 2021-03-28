lbl_8067B620:
/* 8067B620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067B624  7C 08 02 A6 */	mflr r0
/* 8067B628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067B62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067B630  7C 7F 1B 78 */	mr r31, r3
/* 8067B634  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 8067B638  3C 80 80 68 */	lis r4, stringBase0@ha
/* 8067B63C  38 84 C5 38 */	addi r4, r4, stringBase0@l
/* 8067B640  4B 9B 19 C8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8067B644  88 1F 0D 40 */	lbz r0, 0xd40(r31)
/* 8067B648  28 00 00 00 */	cmplwi r0, 0
/* 8067B64C  41 82 00 10 */	beq lbl_8067B65C
/* 8067B650  38 00 00 00 */	li r0, 0
/* 8067B654  3C 60 80 68 */	lis r3, data_8067C698@ha
/* 8067B658  98 03 C6 98 */	stb r0, data_8067C698@l(r3)
lbl_8067B65C:
/* 8067B65C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8067B660  28 00 00 00 */	cmplwi r0, 0
/* 8067B664  41 82 00 0C */	beq lbl_8067B670
/* 8067B668  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8067B66C  4B 99 5C A4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8067B670:
/* 8067B670  38 60 00 01 */	li r3, 1
/* 8067B674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067B678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067B67C  7C 08 03 A6 */	mtlr r0
/* 8067B680  38 21 00 10 */	addi r1, r1, 0x10
/* 8067B684  4E 80 00 20 */	blr 
