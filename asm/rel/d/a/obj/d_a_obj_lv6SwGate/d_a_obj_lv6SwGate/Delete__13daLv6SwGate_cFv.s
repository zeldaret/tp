lbl_80C752F8:
/* 80C752F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C752FC  7C 08 02 A6 */	mflr r0
/* 80C75300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C75308  7C 7F 1B 78 */	mr r31, r3
/* 80C7530C  38 7F 14 AC */	addi r3, r31, 0x14ac
/* 80C75310  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C75314  38 84 55 8C */	addi r4, r4, stringBase0@l
/* 80C75318  4B 3B 7C F0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C7531C  80 7F 14 C4 */	lwz r3, 0x14c4(r31)
/* 80C75320  28 03 00 00 */	cmplwi r3, 0
/* 80C75324  41 82 00 24 */	beq lbl_80C75348
/* 80C75328  4B 5F 2E AC */	b ChkUsed__9cBgW_BgIdCFv
/* 80C7532C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C75330  41 82 00 18 */	beq lbl_80C75348
/* 80C75334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C75338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7533C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C75340  80 9F 14 C4 */	lwz r4, 0x14c4(r31)
/* 80C75344  4B 3F EF 0C */	b Release__4cBgSFP9dBgW_Base
lbl_80C75348:
/* 80C75348  38 60 00 01 */	li r3, 1
/* 80C7534C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C75350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75354  7C 08 03 A6 */	mtlr r0
/* 80C75358  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7535C  4E 80 00 20 */	blr 
