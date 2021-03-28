lbl_80B9A664:
/* 80B9A664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A668  7C 08 02 A6 */	mflr r0
/* 80B9A66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9A674  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9A678  41 82 00 1C */	beq lbl_80B9A694
/* 80B9A67C  3C A0 80 BA */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80B9A680  38 05 B8 0C */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80B9A684  90 1F 00 04 */	stw r0, 4(r31)
/* 80B9A688  7C 80 07 35 */	extsh. r0, r4
/* 80B9A68C  40 81 00 08 */	ble lbl_80B9A694
/* 80B9A690  4B 73 46 AC */	b __dl__FPv
lbl_80B9A694:
/* 80B9A694  7F E3 FB 78 */	mr r3, r31
/* 80B9A698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9A69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A6A0  7C 08 03 A6 */	mtlr r0
/* 80B9A6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A6A8  4E 80 00 20 */	blr 
