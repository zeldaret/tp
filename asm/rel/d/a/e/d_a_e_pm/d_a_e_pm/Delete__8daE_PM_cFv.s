lbl_8074AAC0:
/* 8074AAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074AAC4  7C 08 02 A6 */	mflr r0
/* 8074AAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074AACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074AAD0  7C 7F 1B 78 */	mr r31, r3
/* 8074AAD4  38 7F 07 14 */	addi r3, r31, 0x714
/* 8074AAD8  3C 80 80 75 */	lis r4, stringBase0@ha
/* 8074AADC  38 84 C1 48 */	addi r4, r4, stringBase0@l
/* 8074AAE0  4B 8E 25 28 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8074AAE4  88 1F 0B 78 */	lbz r0, 0xb78(r31)
/* 8074AAE8  28 00 00 00 */	cmplwi r0, 0
/* 8074AAEC  41 82 00 10 */	beq lbl_8074AAFC
/* 8074AAF0  38 00 00 00 */	li r0, 0
/* 8074AAF4  3C 60 80 75 */	lis r3, struct_8074C384+0x1@ha
/* 8074AAF8  98 03 C3 85 */	stb r0, struct_8074C384+0x1@l(r3)
lbl_8074AAFC:
/* 8074AAFC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8074AB00  28 00 00 00 */	cmplwi r0, 0
/* 8074AB04  41 82 00 0C */	beq lbl_8074AB10
/* 8074AB08  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 8074AB0C  4B 8C 68 04 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8074AB10:
/* 8074AB10  38 60 00 01 */	li r3, 1
/* 8074AB14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074AB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074AB1C  7C 08 03 A6 */	mtlr r0
/* 8074AB20  38 21 00 10 */	addi r1, r1, 0x10
/* 8074AB24  4E 80 00 20 */	blr 
