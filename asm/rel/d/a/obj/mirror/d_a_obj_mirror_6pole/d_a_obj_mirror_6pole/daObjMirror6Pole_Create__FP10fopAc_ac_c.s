lbl_80C96220:
/* 80C96220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C96224  7C 08 02 A6 */	mflr r0
/* 80C96228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9622C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C96230  93 C1 00 08 */	stw r30, 8(r1)
/* 80C96234  7C 7F 1B 78 */	mr r31, r3
/* 80C96238  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C9623C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C96240  40 82 00 1C */	bne lbl_80C9625C
/* 80C96244  28 1F 00 00 */	cmplwi r31, 0
/* 80C96248  41 82 00 08 */	beq lbl_80C96250
/* 80C9624C  4B 38 29 19 */	bl __ct__10fopAc_ac_cFv
lbl_80C96250:
/* 80C96250  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C96254  60 00 00 08 */	ori r0, r0, 8
/* 80C96258  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C9625C:
/* 80C9625C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C96260  3C 80 80 C9 */	lis r4, l_arcName@ha /* 0x80C9654C@ha */
/* 80C96264  38 84 65 4C */	addi r4, r4, l_arcName@l /* 0x80C9654C@l */
/* 80C96268  80 84 00 00 */	lwz r4, 0(r4)
/* 80C9626C  4B 39 6C 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C96270  7C 7E 1B 78 */	mr r30, r3
/* 80C96274  2C 1E 00 04 */	cmpwi r30, 4
/* 80C96278  40 82 00 94 */	bne lbl_80C9630C
/* 80C9627C  7F E3 FB 78 */	mr r3, r31
/* 80C96280  3C 80 80 C9 */	lis r4, createHeapCallBack__18daObjMirror6Pole_cFP10fopAc_ac_c@ha /* 0x80C95F50@ha */
/* 80C96284  38 84 5F 50 */	addi r4, r4, createHeapCallBack__18daObjMirror6Pole_cFP10fopAc_ac_c@l /* 0x80C95F50@l */
/* 80C96288  38 A0 1C 00 */	li r5, 0x1c00
/* 80C9628C  4B 38 42 25 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C96290  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C96294  40 82 00 0C */	bne lbl_80C962A0
/* 80C96298  3B C0 00 05 */	li r30, 5
/* 80C9629C  48 00 00 70 */	b lbl_80C9630C
lbl_80C962A0:
/* 80C962A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C962A4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C962A8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C962AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C962B0  4B 37 6A B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C962B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C962B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C962BC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C962C0  4B 37 61 75 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C962C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C962C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C962CC  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C962D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C962D4  4B 6B 01 DD */	bl PSMTXCopy
/* 80C962D8  38 00 00 00 */	li r0, 0
/* 80C962DC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C962E0  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80C962E4  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80C962E8  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80C962EC  3C 60 80 C9 */	lis r3, ActionTable__18daObjMirror6Pole_c@ha /* 0x80C96580@ha */
/* 80C962F0  38 03 65 80 */	addi r0, r3, ActionTable__18daObjMirror6Pole_c@l /* 0x80C96580@l */
/* 80C962F4  7C 00 22 14 */	add r0, r0, r4
/* 80C962F8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80C962FC  7F E3 FB 78 */	mr r3, r31
/* 80C96300  81 9F 05 78 */	lwz r12, 0x578(r31)
/* 80C96304  4B 6C BD 81 */	bl __ptmf_scall
/* 80C96308  60 00 00 00 */	nop 
lbl_80C9630C:
/* 80C9630C  7F C3 F3 78 */	mr r3, r30
/* 80C96310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C96314  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C96318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9631C  7C 08 03 A6 */	mtlr r0
/* 80C96320  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96324  4E 80 00 20 */	blr 
