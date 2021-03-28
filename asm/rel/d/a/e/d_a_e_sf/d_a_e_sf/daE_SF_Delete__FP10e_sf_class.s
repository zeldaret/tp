lbl_80788D40:
/* 80788D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80788D44  7C 08 02 A6 */	mflr r0
/* 80788D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80788D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80788D50  7C 7F 1B 78 */	mr r31, r3
/* 80788D54  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80788D58  3C 80 80 79 */	lis r4, stringBase0@ha
/* 80788D5C  38 84 9D 84 */	addi r4, r4, stringBase0@l
/* 80788D60  4B 8A 42 A8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80788D64  88 1F 0F AC */	lbz r0, 0xfac(r31)
/* 80788D68  28 00 00 00 */	cmplwi r0, 0
/* 80788D6C  41 82 00 10 */	beq lbl_80788D7C
/* 80788D70  38 00 00 00 */	li r0, 0
/* 80788D74  3C 60 80 79 */	lis r3, struct_8078A06C+0x1@ha
/* 80788D78  98 03 A0 6D */	stb r0, struct_8078A06C+0x1@l(r3)
lbl_80788D7C:
/* 80788D7C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80788D80  28 00 00 00 */	cmplwi r0, 0
/* 80788D84  41 82 00 0C */	beq lbl_80788D90
/* 80788D88  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80788D8C  4B 88 85 84 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80788D90:
/* 80788D90  38 60 00 01 */	li r3, 1
/* 80788D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80788D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80788D9C  7C 08 03 A6 */	mtlr r0
/* 80788DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80788DA4  4E 80 00 20 */	blr 
