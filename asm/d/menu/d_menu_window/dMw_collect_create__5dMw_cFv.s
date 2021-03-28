lbl_801FBFF8:
/* 801FBFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBFFC  7C 08 02 A6 */	mflr r0
/* 801FC000  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC008  7C 7F 1B 78 */	mr r31, r3
/* 801FC00C  48 00 10 89 */	bl markMemSize__5dMw_cFv
/* 801FC010  38 60 00 0C */	li r3, 0xc
/* 801FC014  48 0D 2C 39 */	bl __nw__FUl
/* 801FC018  7C 60 1B 79 */	or. r0, r3, r3
/* 801FC01C  41 82 00 18 */	beq lbl_801FC034
/* 801FC020  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 801FC024  80 BF 01 04 */	lwz r5, 0x104(r31)
/* 801FC028  80 DF 01 08 */	lwz r6, 0x108(r31)
/* 801FC02C  4B FB B8 95 */	bl __ct__15dMenu_Collect_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801FC030  7C 60 1B 78 */	mr r0, r3
lbl_801FC034:
/* 801FC034  90 1F 01 14 */	stw r0, 0x114(r31)
/* 801FC038  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 801FC03C  4B FB B9 D1 */	bl _create__15dMenu_Collect_cFv
/* 801FC040  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801FC044  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801FC048  88 03 00 39 */	lbz r0, 0x39(r3)
/* 801FC04C  28 00 00 00 */	cmplwi r0, 0
/* 801FC050  41 82 00 14 */	beq lbl_801FC064
/* 801FC054  7F E3 FB 78 */	mr r3, r31
/* 801FC058  38 80 00 01 */	li r4, 1
/* 801FC05C  48 00 0C 91 */	bl dMw_onButtonBit__5dMw_cFUc
/* 801FC060  48 00 00 1C */	b lbl_801FC07C
lbl_801FC064:
/* 801FC064  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 801FC068  28 00 00 00 */	cmplwi r0, 0
/* 801FC06C  41 82 00 10 */	beq lbl_801FC07C
/* 801FC070  7F E3 FB 78 */	mr r3, r31
/* 801FC074  38 80 00 02 */	li r4, 2
/* 801FC078  48 00 0C 75 */	bl dMw_onButtonBit__5dMw_cFUc
lbl_801FC07C:
/* 801FC07C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC084  7C 08 03 A6 */	mtlr r0
/* 801FC088  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC08C  4E 80 00 20 */	blr 
